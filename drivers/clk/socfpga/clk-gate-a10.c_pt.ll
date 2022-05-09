; ModuleID = '/llk/IR_all_yes/drivers/clk/socfpga/clk-gate-a10.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-gate-a10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.socfpga_gate_clk = type { %struct.clk_gate, ptr, i32, ptr, ptr, ptr, i32, i32, i32, [2 x i32] }

@gateclk_ops = internal global { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @socfpga_clk_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_gate_clk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clk/socfpga/clk-gate-a10.c\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk-gate\00", [23 x i8] zeroinitializer }, align 32
@clk_mgr_a10_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@clk_gate_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fixed-divider\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div-reg\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-phase\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"altr,sys-mgr\00", [19 x i8] zeroinitializer }, align 32
@__socfpga_gate_init._entry = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 148, ptr null, ptr null }, align 1
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: failed to find altr,sys-mgr regmap!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__socfpga_gate_init\00", [44 x i8] zeroinitializer }, align 32
@__socfpga_gate_init._entry_ptr = internal global ptr @__socfpga_gate_init._entry, section ".printk_index", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@socfpga_clk_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013%s: cannot set clk_phase because sys_mgr_base_addr is not available!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"socfpga_clk_prepare\00", [44 x i8] zeroinitializer }, align 32
@socfpga_clk_prepare._entry_ptr = internal global ptr @socfpga_clk_prepare._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 45, i64 90, i64 135, i64 180, i64 225, i64 270, i64 315]
@__sancov_gen_cov_switch_values.11 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 45, i64 90, i64 135, i64 180, i64 225, i64 270, i64 315]
@___asan_gen_.12 = private unnamed_addr constant [12 x i8] c"gateclk_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 89, i32 23 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 109, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 112, i32 40 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 124, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 130, i32 40 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 139, i32 40 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 145, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 147, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 154, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [38 x i8] c"../drivers/clk/socfpga/clk-gate-a10.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 83, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__socfpga_gate_init._entry, ptr @__socfpga_gate_init._entry_ptr, ptr @socfpga_clk_prepare._entry, ptr @socfpga_clk_prepare._entry_ptr, ptr @gateclk_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gateclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_clk_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @socfpga_a10_gate_init(ptr noundef %node) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__socfpga_gate_init(ptr noundef %node) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__socfpga_gate_init(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %clk_gate = alloca [2 x i32], align 4
  %div_reg = alloca [3 x i32], align 4
  %clk_phase = alloca [2 x i32], align 4
  %fixed_div = alloca i32, align 4
  %clk_name = alloca ptr, align 4
  %parent_name = alloca [5 x ptr], align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_gate) #7
  %0 = ptrtoint ptr %clk_gate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clk_gate, align 4, !annotation !35
  %1 = getelementptr inbounds [2 x i32], ptr %clk_gate, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %div_reg) #7
  %3 = ptrtoint ptr %div_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %div_reg, align 4, !annotation !35
  %4 = getelementptr inbounds [3 x i32], ptr %div_reg, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !35
  %6 = getelementptr inbounds [3 x i32], ptr %div_reg, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase) #7
  %8 = ptrtoint ptr %clk_phase to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %clk_phase, align 4, !annotation !35
  %9 = getelementptr inbounds [2 x i32], ptr %clk_phase, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fixed_div) #7
  %11 = ptrtoint ptr %fixed_div to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %fixed_div, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node, align 4
  %14 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %parent_name) #7
  %15 = call ptr @memset(ptr %parent_name, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %16 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !36

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %clk_gate, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool25.not = icmp sgt i32 %call.i, -1
  br i1 %tobool25.not, label %if.end27, label %if.end27.thread

if.end27.thread:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %clk_gate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %clk_gate, align 4
  br label %if.end34

if.end27:                                         ; preds = %if.end23
  %19 = ptrtoint ptr %clk_gate to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %clk_gate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool29.not = icmp eq i32 %.pr, 0
  br i1 %tobool29.not, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_a10_base_addr to i32))
  %20 = load ptr, ptr @clk_mgr_a10_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %.pr
  %reg = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %reg, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %conv = trunc i32 %23 to i8
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %bit_idx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  store ptr %25, ptr getelementptr inbounds (%struct.clk_ops, ptr @gateclk_ops, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  store ptr %26, ptr getelementptr inbounds (%struct.clk_ops, ptr @gateclk_ops, i32 0, i32 5), align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end27.if.end34_crit_edge, %if.end27.thread
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.2, ptr noundef nonnull %fixed_div, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool36.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool36.not, label %if.else, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fixed_div, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end34.if.end40_crit_edge
  %.sink = phi i32 [ %28, %if.else ], [ 0, %if.end34.if.end40_crit_edge ]
  %29 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 4
  %call.i1 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull %div_reg, i32 noundef 3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %tobool43.not = icmp sgt i32 %call.i1, -1
  br i1 %tobool43.not, label %if.then44, label %if.end40.if.end52_crit_edge

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_a10_base_addr to i32))
  %31 = load ptr, ptr @clk_mgr_a10_base_addr, align 4
  %32 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %div_reg, align 4
  %add.ptr46 = getelementptr i8, ptr %31, i32 %33
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %4, align 4
  %shift = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %shift, align 8
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %6, align 4
  %width = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %width, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then44, %if.end40.if.end52_crit_edge
  %.sink4 = phi ptr [ %add.ptr46, %if.then44 ], [ null, %if.end40.if.end52_crit_edge ]
  %40 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %.sink4, ptr %40, align 8
  %call.i2 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull %clk_phase, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i2)
  %tobool55.not = icmp sgt i32 %call.i2, -1
  br i1 %tobool55.not, label %if.then56, label %if.end52.if.end73_crit_edge

if.end52.if.end73_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then56:                                        ; preds = %if.end52
  %42 = ptrtoint ptr %clk_phase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %clk_phase, align 4
  %clk_phase58 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 9
  %44 = ptrtoint ptr %clk_phase58 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %clk_phase58, align 8
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %9, align 4
  %arrayidx62 = getelementptr %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx62, align 4
  %call63 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.5) #7
  %sys_mgr_base_addr = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %sys_mgr_base_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call63, ptr %sys_mgr_base_addr, align 8
  %cmp.i = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end69, label %if.then56.if.end73_crit_edge

if.then56.if.end73_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

do.end69:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end73:                                         ; preds = %if.then56.if.end73_crit_edge, %if.end52.if.end73_crit_edge
  %call74 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.8, ptr noundef nonnull %clk_name) #7
  %49 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk_name, align 4
  %51 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %init, align 4
  %ops76 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %52 = ptrtoint ptr %ops76 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @gateclk_ops, ptr %ops76, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %flags, align 4
  %call78 = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %parent_name, i32 noundef 5) #7
  %conv79 = trunc i32 %call78 to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %54 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv79, ptr %num_parents, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %55 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %parent_name, ptr %parent_names, align 4
  %init83 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %init83 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %init, ptr %init83, align 8
  %call86 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.then88

if.then88:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end89:                                         ; preds = %if.end73
  %call90 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool92.not = icmp eq i32 %call90, 0
  br i1 %tobool92.not, label %if.end89.cleanup_crit_edge, label %do.end108, !prof !37

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end108:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end108, %if.end89.cleanup_crit_edge, %if.then88, %do.end69, %do.end
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %parent_name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fixed_div) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %div_reg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_gate) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_clk_prepare(ptr nocapture noundef readonly %hwclk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_phase1 = getelementptr %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 9
  %0 = ptrtoint ptr %clk_phase1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_phase1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.end32_crit_edge, label %if.thenthread-pre-split

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.thenthread-pre-split:                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %clk_phase1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %clk_phase1, align 4
  br label %if.then

if.then:                                          ; preds = %if.thenthread-pre-split, %entry.if.then_crit_edge
  %5 = phi i32 [ %.pr, %if.thenthread-pre-split ], [ %1, %entry.if.then_crit_edge ]
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.then.for.inc_crit_edge [
    i32 315, label %sw.bb20
    i32 45, label %sw.bb8
    i32 90, label %sw.bb10
    i32 135, label %sw.bb12
    i32 180, label %sw.bb14
    i32 225, label %sw.bb16
    i32 270, label %sw.bb18
  ]

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb18:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb20:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %if.then.for.inc_crit_edge
  %clk_phase.sroa.0.0 = phi i32 [ 112, %sw.bb20 ], [ 96, %sw.bb18 ], [ 80, %sw.bb16 ], [ 64, %sw.bb14 ], [ 48, %sw.bb12 ], [ 32, %sw.bb10 ], [ 16, %sw.bb8 ], [ 0, %if.then.for.inc_crit_edge ]
  %arrayidx6.1 = getelementptr %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6.1, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %8, label %sw.default.1 [
    i32 0, label %sw.bb.1
    i32 45, label %sw.bb8.1
    i32 90, label %sw.bb10.1
    i32 135, label %sw.bb12.1
    i32 180, label %sw.bb14.1
    i32 225, label %sw.bb16.1
    i32 270, label %sw.bb18.1
    i32 315, label %for.inc.for.inc.1_crit_edge
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb18.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb16.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb14.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb12.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb10.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb8.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

sw.default.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.default.1, %sw.bb.1, %sw.bb8.1, %sw.bb10.1, %sw.bb12.1, %sw.bb14.1, %sw.bb16.1, %sw.bb18.1, %for.inc.for.inc.1_crit_edge
  %clk_phase.sroa.13.0 = phi i32 [ 0, %sw.default.1 ], [ 6, %sw.bb18.1 ], [ 5, %sw.bb16.1 ], [ 4, %sw.bb14.1 ], [ 3, %sw.bb12.1 ], [ 2, %sw.bb10.1 ], [ 1, %sw.bb8.1 ], [ 0, %sw.bb.1 ], [ 7, %for.inc.for.inc.1_crit_edge ]
  %sys_mgr_base_addr = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 5
  %10 = ptrtoint ptr %sys_mgr_base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys_mgr_base_addr, align 4
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then27

if.then27:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %clk_phase.sroa.0.0, %clk_phase.sroa.13.0
  %call29 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 40, i32 noundef %or) #7
  br label %if.end32

do.end:                                           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.then27, %lor.lhs.false.if.end32_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_gate_clk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_div = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 2
  %0 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.else:                                          ; preds = %entry
  %div_reg = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 3
  %2 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %div_reg, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else.if.end10_crit_edge, label %if.then3

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #7, !srcloc !38
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/socfpga/clk-gate-a10.c", i32 109, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/socfpga/clk-gate-a10.c", i32 112, i32 40}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/socfpga/clk-gate-a10.c", i32 124, i32 34}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/socfpga/clk-gate-a10.c", i32 130, i32 40}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/socfpga/clk-gate-a10.c", i32 139, i32 40}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/socfpga/clk-gate-a10.c", i32 145, i32 39}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/socfpga/clk-gate-a10.c", i32 147, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__socfpga_gate_init._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @__socfpga_gate_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/socfpga/clk-gate-a10.c", i32 154, i32 32}
!19 = !{ptr @gateclk_ops, !20, !"gateclk_ops", i1 false, i1 false}
!20 = !{!"../drivers/clk/socfpga/clk-gate-a10.c", i32 89, i32 23}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/socfpga/clk-gate-a10.c", i32 83, i32 4}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @socfpga_clk_prepare._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @socfpga_clk_prepare._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 4949688}
!39 = !{i64 2152589099}
