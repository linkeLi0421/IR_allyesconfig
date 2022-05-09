; ModuleID = '/llk/IR_all_yes/drivers/clk/socfpga/clk-gate-s10.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-gate-s10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.stratix10_gate_clock = type { i32, ptr, ptr, ptr, i8, i32, i32, i8, i32, i8, i8, i32, i8, i8 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.socfpga_gate_clk = type { %struct.clk_gate, ptr, i32, ptr, ptr, ptr, i32, i32, i32, [2 x i32] }

@clk_gate_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@gateclk_ops = internal global { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_gate_clk_recalc_rate, ptr null, ptr null, ptr null, ptr @socfpga_gate_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs_pdbg_clk\00", [20 x i8] zeroinitializer }, align 32
@dbgclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_dbg_clk_recalc_rate, ptr null, ptr null, ptr null, ptr @socfpga_gate_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@agilex_gateclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_gate_clk_recalc_rate, ptr null, ptr null, ptr null, ptr @socfpga_agilex_gate_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emac2_clk\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"gateclk_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 112, i32 23 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 161, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"dbgclk_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 122, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"agilex_gateclk_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 117, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 64, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 65, i32 6 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [38 x i8] c"../drivers/clk/socfpga/clk-gate-s10.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 66, i32 6 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @gateclk_ops, ptr @.str, ptr @dbgclk_ops, ptr @agilex_gateclk_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gateclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agilex_gateclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s10_register_gate(ptr nocapture noundef readonly %clks, ptr noundef %regbase) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #6
  %parent_name1 = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 2
  %2 = ptrtoint ptr %parent_name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_name1, align 4
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %parent_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 64) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %gate_reg = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 6
  %6 = ptrtoint ptr %gate_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gate_reg, align 4
  %add.ptr = getelementptr i8, ptr %regbase, i32 %7
  %reg = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %reg, align 4
  %gate_idx = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 7
  %9 = ptrtoint ptr %gate_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gate_idx, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %bit_idx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  store ptr %12, ptr getelementptr inbounds (%struct.clk_ops, ptr @gateclk_ops, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  store ptr %13, ptr getelementptr inbounds (%struct.clk_ops, ptr @gateclk_ops, i32 0, i32 5), align 4
  %fixed_div = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 13
  %14 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fixed_div, align 1
  %conv = zext i8 %15 to i32
  %fixed_div3 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %fixed_div3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %fixed_div3, align 4
  %div_reg = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 8
  %17 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %div_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  %add.ptr7 = getelementptr i8, ptr %regbase, i32 %18
  %spec.select = select i1 %tobool4.not, ptr null, ptr %add.ptr7
  %19 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select, ptr %19, align 8
  %div_width = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 10
  %21 = ptrtoint ptr %div_width to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %div_width, align 1
  %conv11 = zext i8 %22 to i32
  %width = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv11, ptr %width, align 4
  %div_offset = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 9
  %24 = ptrtoint ptr %div_offset to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %div_offset, align 4
  %conv12 = zext i8 %25 to i32
  %shift = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv12, ptr %shift, align 8
  %bypass_reg = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 11
  %27 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bypass_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool13.not = icmp eq i32 %28, 0
  %add.ptr16 = getelementptr i8, ptr %regbase, i32 %28
  %add.ptr16.sink = select i1 %tobool13.not, ptr null, ptr %add.ptr16
  %29 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr16.sink, ptr %29, align 4
  %bypass_shift = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 12
  %31 = ptrtoint ptr %bypass_shift to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bypass_shift, align 4
  %conv21 = zext i8 %32 to i32
  %bypass_shift22 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %bypass_shift22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv21, ptr %bypass_shift22, align 4
  %name = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 1
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %call23 = tail call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(12) @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp eq i32 %call23, 0
  %gateclk_ops.sink = select i1 %cmp, ptr @dbgclk_ops, ptr @gateclk_ops
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %gateclk_ops.sink, ptr %36, align 4
  %38 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %init, align 4
  %flags = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 5
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %flags31 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %41 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %flags31, align 4
  %num_parents = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 4
  %42 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_parents, align 4
  %num_parents32 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %44 = ptrtoint ptr %num_parents32 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %num_parents32, align 4
  %45 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent_name, align 4
  %tobool33.not = icmp eq ptr %46, null
  %parent_name. = select i1 %tobool33.not, ptr null, ptr %parent_name
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %47 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %parent_name., ptr %parent_names, align 4
  br i1 %tobool33.not, label %if.then37, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent_data = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 3
  %48 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent_data, align 4
  %parent_data38 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %50 = ptrtoint ptr %parent_data38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %parent_data38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end.if.end39_crit_edge
  %init42 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %init42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %init, ptr %init42, align 8
  %call47 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end39.cleanup_crit_edge, label %if.then49

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %52 = inttoptr i32 %call47 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %52, %if.then49 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @agilex_register_gate(ptr nocapture noundef readonly %clks, ptr noundef %regbase) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #6
  %parent_name1 = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 2
  %2 = ptrtoint ptr %parent_name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_name1, align 4
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %parent_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 64) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %gate_reg = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 6
  %6 = ptrtoint ptr %gate_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gate_reg, align 4
  %add.ptr = getelementptr i8, ptr %regbase, i32 %7
  %reg = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %reg, align 4
  %gate_idx = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 7
  %9 = ptrtoint ptr %gate_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gate_idx, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %bit_idx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  store ptr %12, ptr getelementptr inbounds (%struct.clk_ops, ptr @gateclk_ops, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  store ptr %13, ptr getelementptr inbounds (%struct.clk_ops, ptr @gateclk_ops, i32 0, i32 5), align 4
  %fixed_div = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 13
  %14 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fixed_div, align 1
  %conv = zext i8 %15 to i32
  %fixed_div3 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %fixed_div3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %fixed_div3, align 4
  %div_reg = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 8
  %17 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %div_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  %add.ptr7 = getelementptr i8, ptr %regbase, i32 %18
  %spec.select = select i1 %tobool4.not, ptr null, ptr %add.ptr7
  %19 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select, ptr %19, align 8
  %div_width = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 10
  %21 = ptrtoint ptr %div_width to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %div_width, align 1
  %conv11 = zext i8 %22 to i32
  %width = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv11, ptr %width, align 4
  %div_offset = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 9
  %24 = ptrtoint ptr %div_offset to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %div_offset, align 4
  %conv12 = zext i8 %25 to i32
  %shift = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv12, ptr %shift, align 8
  %bypass_reg = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 11
  %27 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bypass_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool13.not = icmp eq i32 %28, 0
  %add.ptr16 = getelementptr i8, ptr %regbase, i32 %28
  %add.ptr16.sink = select i1 %tobool13.not, ptr null, ptr %add.ptr16
  %29 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr16.sink, ptr %29, align 4
  %bypass_shift = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 12
  %31 = ptrtoint ptr %bypass_shift to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bypass_shift, align 4
  %conv21 = zext i8 %32 to i32
  %bypass_shift22 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %bypass_shift22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv21, ptr %bypass_shift22, align 4
  %name = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 1
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %call23 = tail call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(12) @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp eq i32 %call23, 0
  %agilex_gateclk_ops.sink = select i1 %cmp, ptr @dbgclk_ops, ptr @agilex_gateclk_ops
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %agilex_gateclk_ops.sink, ptr %36, align 4
  %38 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %init, align 4
  %flags = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 5
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %flags31 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %41 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %flags31, align 4
  %num_parents = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 4
  %42 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_parents, align 4
  %num_parents32 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %44 = ptrtoint ptr %num_parents32 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %num_parents32, align 4
  %45 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent_name, align 4
  %tobool33.not = icmp eq ptr %46, null
  %parent_name. = select i1 %tobool33.not, ptr null, ptr %parent_name
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %47 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %parent_name., ptr %parent_names, align 4
  br i1 %tobool33.not, label %if.then37, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent_data = getelementptr inbounds %struct.stratix10_gate_clock, ptr %clks, i32 0, i32 3
  %48 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent_data, align 4
  %parent_data38 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %50 = ptrtoint ptr %parent_data38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %parent_data38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end.if.end39_crit_edge
  %init42 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %init42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %init, ptr %init42, align 8
  %call47 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end39.cleanup_crit_edge, label %if.then49

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %52 = inttoptr i32 %call47 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %52, %if.then49 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_gate_clk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_div = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 2
  %0 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.else:                                          ; preds = %entry
  %div_reg = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 3
  %2 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %div_reg, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else.if.end10_crit_edge, label %if.then3

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #6, !srcloc !23
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %shift = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 7
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift, align 4
  %shr = lshr i32 %5, %7
  %width = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 6
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %sub7 = sub i32 32, %9
  %shr8 = lshr i32 -1, %sub7
  %and9 = and i32 %shr8, %shr
  %shl = shl nuw i32 1, %and9
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %div.0 = phi i32 [ %shl, %if.then3 ], [ 1, %if.else.if.end10_crit_edge ], [ %1, %entry.if.end10_crit_edge ]
  %div11 = udiv i32 %parent_rate, %div.0
  ret i32 %div11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @socfpga_gate_get_parent(ptr noundef %hwclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hwclk) #6
  %bypass_reg = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 4
  %0 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bypass_reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bypass_shift = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 8
  %2 = ptrtoint ptr %bypass_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bypass_shift, align 4
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #6, !srcloc !23
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  %and = and i32 %5, %shl
  %6 = ptrtoint ptr %bypass_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bypass_shift, align 4
  %shr = lshr i32 %and, %7
  %conv = trunc i32 %shr to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent.0 = phi i8 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call6 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.end.if.then15_crit_edge, label %lor.lhs.false

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end
  %call8 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %lor.lhs.false.if.then15_crit_edge, label %lor.lhs.false11

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call12 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %lor.lhs.false11.if.then15_crit_edge, label %lor.lhs.false11.if.end41_crit_edge

lor.lhs.false11.if.end41_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

lor.lhs.false11.if.then15_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false11.if.then15_crit_edge, %lor.lhs.false.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %8 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bypass_reg, align 4
  %add.ptr19 = getelementptr i8, ptr %9, i32 -44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !23
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  %and23 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %parent.0)
  %cmp27 = icmp eq i8 %parent.0, 0
  %spec.store.select = select i1 %cmp27, i8 2, i8 %parent.0
  %parent.1 = select i1 %tobool24.not, i8 %parent.0, i8 %spec.store.select
  %and32 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then15.if.end41_crit_edge, label %if.then34

if.then15.if.end41_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then34:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %parent.1)
  %cmp36 = icmp eq i8 %parent.1, 1
  %spec.store.select42 = select i1 %cmp36, i8 2, i8 %parent.1
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %if.then15.if.end41_crit_edge, %lor.lhs.false11.if.end41_crit_edge
  %parent.2 = phi i8 [ %spec.store.select42, %if.then34 ], [ %parent.1, %if.then15.if.end41_crit_edge ], [ %parent.0, %lor.lhs.false11.if.end41_crit_edge ]
  ret i8 %parent.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_dbg_clk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div_reg = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 3
  %0 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %div611 = lshr i32 %parent_rate, 2
  ret i32 %div611
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @socfpga_agilex_gate_get_parent(ptr noundef %hwclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hwclk) #6
  %bypass_reg = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 4
  %0 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bypass_reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bypass_shift = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 8
  %2 = ptrtoint ptr %bypass_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bypass_shift, align 4
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #6, !srcloc !23
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %and = and i32 %5, %shl
  %6 = ptrtoint ptr %bypass_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bypass_shift, align 4
  %shr = lshr i32 %and, %7
  %conv = trunc i32 %shr to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent.0 = phi i8 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call6 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.end.if.then15_crit_edge, label %lor.lhs.false

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end
  %call8 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %lor.lhs.false.if.then15_crit_edge, label %lor.lhs.false11

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %call12 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %lor.lhs.false11.if.then15_crit_edge, label %lor.lhs.false11.if.end41_crit_edge

lor.lhs.false11.if.end41_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

lor.lhs.false11.if.then15_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false11.if.then15_crit_edge, %lor.lhs.false.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %8 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bypass_reg, align 4
  %add.ptr19 = getelementptr i8, ptr %9, i32 -12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !23
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %and23 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %parent.0)
  %cmp27 = icmp eq i8 %parent.0, 0
  %spec.store.select = select i1 %cmp27, i8 2, i8 %parent.0
  %parent.1 = select i1 %tobool24.not, i8 %parent.0, i8 %spec.store.select
  %and32 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then15.if.end41_crit_edge, label %if.then34

if.then15.if.end41_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then34:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %parent.1)
  %cmp36 = icmp eq i8 %parent.1, 1
  %spec.store.select42 = select i1 %cmp36, i8 2, i8 %parent.1
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %if.then15.if.end41_crit_edge, %lor.lhs.false11.if.end41_crit_edge
  %parent.2 = phi i8 [ %spec.store.select42, %if.then34 ], [ %parent.1, %if.then15.if.end41_crit_edge ], [ %parent.0, %lor.lhs.false11.if.end41_crit_edge ]
  ret i8 %parent.2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/socfpga/clk-gate-s10.c", i32 161, i32 6}
!2 = !{ptr @gateclk_ops, !3, !"gateclk_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/socfpga/clk-gate-s10.c", i32 112, i32 23}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/socfpga/clk-gate-s10.c", i32 64, i32 6}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/socfpga/clk-gate-s10.c", i32 65, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/socfpga/clk-gate-s10.c", i32 66, i32 6}
!10 = !{ptr @dbgclk_ops, !11, !"dbgclk_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/socfpga/clk-gate-s10.c", i32 122, i32 29}
!12 = !{ptr @agilex_gateclk_ops, !13, !"agilex_gateclk_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/socfpga/clk-gate-s10.c", i32 117, i32 29}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 4031499}
!24 = !{i64 2152508428}
!25 = !{i64 2152513636}
!26 = !{i64 2152514334}
!27 = !{i64 2152511026}
!28 = !{i64 2152516128}
!29 = !{i64 2152516821}
