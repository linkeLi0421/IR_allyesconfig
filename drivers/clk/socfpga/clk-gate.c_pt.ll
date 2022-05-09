; ModuleID = '/llk/IR_all_yes/drivers/clk/socfpga/clk-gate.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-gate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.socfpga_gate_clk = type { %struct.clk_gate, ptr, i32, ptr, ptr, ptr, i32, i32, i32, [2 x i32] }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/socfpga/clk-gate.c\00", [33 x i8] zeroinitializer }, align 32
@gateclk_ops = internal global { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @socfpga_clk_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_clk_recalc_rate, ptr null, ptr null, ptr @socfpga_clk_set_parent, ptr @socfpga_clk_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk-gate\00", [23 x i8] zeroinitializer }, align 32
@clk_mgr_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@clk_gate_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fixed-divider\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div-reg\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk-phase\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"altr,sys-mgr\00", [19 x i8] zeroinitializer }, align 32
@socfpga_clk_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: failed to find altr,sys-mgr regmap!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"socfpga_clk_prepare\00", [44 x i8] zeroinitializer }, align 32
@socfpga_clk_prepare._entry_ptr = internal global ptr @socfpga_clk_prepare._entry, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4_mp_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l4_sp_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdmmc_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nand_x_clk\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 45, i64 90, i64 135, i64 180, i64 225, i64 270, i64 315]
@__sancov_gen_cov_switch_values.14 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 45, i64 90, i64 135, i64 180, i64 225, i64 270, i64 315]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 187, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"gateclk_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 164, i32 23 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 194, i32 40 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 206, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 212, i32 40 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 221, i32 40 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 227, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 120, i32 58 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 122, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 61, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 66, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 73, i32 7 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 76, i32 14 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [34 x i8] c"../drivers/clk/socfpga/clk-gate.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 77, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @socfpga_clk_prepare._entry, ptr @socfpga_clk_prepare._entry_ptr, ptr @.str, ptr @gateclk_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gateclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_clk_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @socfpga_gate_init(ptr noundef %node) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %clk_gate = alloca [2 x i32], align 4
  %div_reg = alloca [3 x i32], align 4
  %clk_phase = alloca [2 x i32], align 4
  %fixed_div = alloca i32, align 4
  %clk_name = alloca ptr, align 4
  %parent_name = alloca [5 x ptr], align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_gate) #8
  %0 = ptrtoint ptr %clk_gate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clk_gate, align 4, !annotation !40
  %1 = getelementptr inbounds [2 x i32], ptr %clk_gate, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %div_reg) #8
  %3 = ptrtoint ptr %div_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %div_reg, align 4, !annotation !40
  %4 = getelementptr inbounds [3 x i32], ptr %div_reg, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !40
  %6 = getelementptr inbounds [3 x i32], ptr %div_reg, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase) #8
  %8 = ptrtoint ptr %clk_phase to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %clk_phase, align 4, !annotation !40
  %9 = getelementptr inbounds [2 x i32], ptr %clk_phase, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fixed_div) #8
  %11 = ptrtoint ptr %fixed_div to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %fixed_div, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node, align 4
  %14 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %parent_name) #8
  %15 = call ptr @memset(ptr %parent_name, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %16 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !41

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call24 = tail call ptr @kmemdup(ptr noundef nonnull @gateclk_ops, i32 noundef 100, i32 noundef 3264) #8
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end44, label %if.end60, !prof !41

do.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end60:                                         ; preds = %if.end23
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %clk_gate, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool62.not = icmp sgt i32 %call.i, -1
  br i1 %tobool62.not, label %if.end64, label %if.end64.thread

if.end64.thread:                                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %clk_gate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %clk_gate, align 4
  br label %if.end71

if.end64:                                         ; preds = %if.end60
  %19 = ptrtoint ptr %clk_gate to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %clk_gate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool66.not = icmp eq i32 %.pr, 0
  br i1 %tobool66.not, label %if.end64.if.end71_crit_edge, label %if.then67

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_base_addr to i32))
  %20 = load ptr, ptr @clk_mgr_base_addr, align 4
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
  %enable = getelementptr inbounds %struct.clk_ops, ptr %call24, i32 0, i32 4
  %26 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %enable, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  %disable = getelementptr inbounds %struct.clk_ops, ptr %call24, i32 0, i32 5
  %28 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %disable, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end64.if.end71_crit_edge, %if.end64.thread
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.2, ptr noundef nonnull %fixed_div, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool73.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool73.not, label %if.else, label %if.end71.if.end77_crit_edge

if.end71.if.end77_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.else:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fixed_div, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.end71.if.end77_crit_edge
  %.sink = phi i32 [ %30, %if.else ], [ 0, %if.end71.if.end77_crit_edge ]
  %31 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %31, align 4
  %call.i201 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull %div_reg, i32 noundef 3, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i201)
  %tobool80.not = icmp sgt i32 %call.i201, -1
  br i1 %tobool80.not, label %if.then81, label %if.end77.if.end89_crit_edge

if.end77.if.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_base_addr to i32))
  %33 = load ptr, ptr @clk_mgr_base_addr, align 4
  %34 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %div_reg, align 4
  %add.ptr83 = getelementptr i8, ptr %33, i32 %35
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %4, align 4
  %shift = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %shift, align 8
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %6, align 4
  %width = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %width, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then81, %if.end77.if.end89_crit_edge
  %.sink204 = phi ptr [ %add.ptr83, %if.then81 ], [ null, %if.end77.if.end89_crit_edge ]
  %42 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %.sink204, ptr %42, align 8
  %call.i202 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull %clk_phase, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i202)
  %tobool92.not = icmp sgt i32 %call.i202, -1
  br i1 %tobool92.not, label %if.then93, label %if.end89.if.end100_crit_edge

if.end89.if.end100_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %clk_phase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %clk_phase, align 4
  %clk_phase95 = getelementptr inbounds %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 9
  %46 = ptrtoint ptr %clk_phase95 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %clk_phase95, align 8
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %9, align 4
  %arrayidx99 = getelementptr %struct.socfpga_gate_clk, ptr %call7.i.i, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx99, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then93, %if.end89.if.end100_crit_edge
  %call101 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.5, ptr noundef nonnull %clk_name) #8
  %50 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk_name, align 4
  %52 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %init, align 4
  %ops103 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %53 = ptrtoint ptr %ops103 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call24, ptr %ops103, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %flags, align 4
  %call105 = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %parent_name, i32 noundef 5) #8
  %conv106 = trunc i32 %call105 to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %55 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv106, ptr %num_parents, align 4
  %conv108 = and i32 %call105, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv108)
  %cmp = icmp eq i32 %conv108, 0
  br i1 %cmp, label %if.then110, label %if.end100.if.end111_crit_edge

if.end100.if.end111_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then110:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %get_parent = getelementptr inbounds %struct.clk_ops, ptr %call24, i32 0, i32 14
  %56 = ptrtoint ptr %get_parent to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %get_parent, align 4
  %set_parent = getelementptr inbounds %struct.clk_ops, ptr %call24, i32 0, i32 13
  %57 = ptrtoint ptr %set_parent to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %set_parent, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end100.if.end111_crit_edge
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %58 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %parent_name, ptr %parent_names, align 4
  %init115 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %init115 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %init, ptr %init115, align 8
  %call118 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.then120

if.then120:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end121:                                        ; preds = %if.end111
  %call122 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool124.not = icmp eq i32 %call122, 0
  br i1 %tobool124.not, label %if.end121.cleanup_crit_edge, label %do.end140, !prof !42

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end140:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end140, %if.end121.cleanup_crit_edge, %if.then120, %do.end44, %do.end
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fixed_div) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %div_reg) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_gate) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_clk_prepare(ptr nocapture noundef readonly %hwclk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_phase1 = getelementptr %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 9
  %0 = ptrtoint ptr %clk_phase1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_phase1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.6) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %4 = ptrtoint ptr %clk_phase1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_phase1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %for.body.preheader.for.inc_crit_edge [
    i32 315, label %sw.bb24
    i32 45, label %sw.bb12
    i32 90, label %sw.bb14
    i32 135, label %sw.bb16
    i32 180, label %sw.bb18
    i32 225, label %sw.bb20
    i32 270, label %sw.bb22
  ]

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  br label %cleanup

sw.bb12:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb14:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb16:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb18:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb20:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb22:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb24:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %for.body.preheader.for.inc_crit_edge
  %clk_phase.sroa.0.0 = phi i32 [ 56, %sw.bb24 ], [ 48, %sw.bb22 ], [ 40, %sw.bb20 ], [ 32, %sw.bb18 ], [ 24, %sw.bb16 ], [ 16, %sw.bb14 ], [ 8, %sw.bb12 ], [ 0, %for.body.preheader.for.inc_crit_edge ]
  %arrayidx10.1 = getelementptr %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx10.1, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %8, label %sw.default.1 [
    i32 0, label %sw.bb.1
    i32 45, label %sw.bb12.1
    i32 90, label %sw.bb14.1
    i32 135, label %sw.bb16.1
    i32 180, label %sw.bb18.1
    i32 225, label %sw.bb20.1
    i32 270, label %sw.bb22.1
    i32 315, label %for.inc.for.inc.1_crit_edge
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

sw.bb22.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

sw.bb20.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

sw.bb18.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

sw.bb16.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

sw.bb14.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

sw.bb12.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

sw.default.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.default.1, %sw.bb.1, %sw.bb12.1, %sw.bb14.1, %sw.bb16.1, %sw.bb18.1, %sw.bb20.1, %sw.bb22.1, %for.inc.for.inc.1_crit_edge
  %clk_phase.sroa.13.0 = phi i32 [ 0, %sw.default.1 ], [ 6, %sw.bb22.1 ], [ 5, %sw.bb20.1 ], [ 4, %sw.bb18.1 ], [ 3, %sw.bb16.1 ], [ 2, %sw.bb14.1 ], [ 1, %sw.bb12.1 ], [ 0, %sw.bb.1 ], [ 7, %for.inc.for.inc.1_crit_edge ]
  %or = or i32 %clk_phase.sroa.0.0, %clk_phase.sroa.13.0
  %call31 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 264, i32 noundef %or) #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %do.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.inc.1 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_clk_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_div = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 2
  %0 = ptrtoint ptr %fixed_div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.else:                                          ; preds = %entry
  %div_reg = getelementptr inbounds %struct.socfpga_gate_clk, ptr %hwclk, i32 0, i32 3
  %2 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %div_reg, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else.if.end17_crit_edge, label %if.then3

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then3:                                         ; preds = %if.else
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #8, !srcloc !43
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
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
  %10 = ptrtoint ptr %div_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %div_reg, align 4
  %12 = ptrtoint ptr %11 to i32
  %and11 = and i32 %12, 168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else15, label %if.then13

if.then13:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %add14 = add i32 %and9, 1
  br label %if.end17

if.else15:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw i32 1, %and9
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13, %if.else.if.end17_crit_edge, %entry.if.end17_crit_edge
  %div.0 = phi i32 [ %add14, %if.then13 ], [ %shl, %if.else15 ], [ 1, %if.else.if.end17_crit_edge ], [ %1, %entry.if.end17_crit_edge ]
  %div18 = udiv i32 %parent_rate, %div.0
  ret i32 %div18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_clk_set_parent(ptr noundef %hwclk, i8 noundef zeroext %parent) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hwclk) #8
  %call1 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_base_addr to i32))
  %0 = load ptr, ptr @clk_mgr_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 112
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  %2 = and i32 %1, -16777217
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i8 %parent to i32
  %or = or i32 %3, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_base_addr to i32))
  %5 = load ptr, ptr @clk_mgr_base_addr, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #8, !srcloc !47
  br label %if.end59

if.else:                                          ; preds = %entry
  %call5 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_base_addr to i32))
  %6 = load ptr, ptr @clk_mgr_base_addr, align 4
  br i1 %cmp6, label %if.then8, label %if.else22

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr11 = getelementptr i8, ptr %6, i32 112
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %8 = and i32 %7, -33554433
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %conv16 = zext i8 %parent to i32
  %shl = shl nuw nsw i32 %conv16, 1
  %or17 = or i32 %9, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or17)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_base_addr to i32))
  %11 = load ptr, ptr @clk_mgr_base_addr, align 4
  %add.ptr21 = getelementptr i8, ptr %11, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %10) #8, !srcloc !47
  br label %if.end59

if.else22:                                        ; preds = %if.else
  %add.ptr25 = getelementptr i8, ptr %6, i32 172
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !43
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %call29 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else36

if.then32:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  %and33 = and i32 %13, -4
  %conv34 = zext i8 %parent to i32
  %or35 = or i32 %and33, %conv34
  br label %do.body54

if.else36:                                        ; preds = %if.else22
  %call37 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(9) @.str.12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.else36.if.then43_crit_edge, label %lor.lhs.false

if.else36.if.then43_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.else36
  %call40 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(11) @.str.13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %lor.lhs.false.if.then43_crit_edge, label %if.else48

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.else36.if.then43_crit_edge
  %and44 = and i32 %13, -13
  %conv45 = zext i8 %parent to i32
  %shl46 = shl nuw nsw i32 %conv45, 2
  %or47 = or i32 %and44, %shl46
  br label %do.body54

if.else48:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %and49 = and i32 %13, -49
  %conv50 = zext i8 %parent to i32
  %shl51 = shl nuw nsw i32 %conv50, 4
  %or52 = or i32 %and49, %shl51
  br label %do.body54

do.body54:                                        ; preds = %if.else48, %if.then43, %if.then32
  %src_reg.0 = phi i32 [ %or35, %if.then32 ], [ %or47, %if.then43 ], [ %or52, %if.else48 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %src_reg.0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_base_addr to i32))
  %15 = load ptr, ptr @clk_mgr_base_addr, align 4
  %add.ptr57 = getelementptr i8, ptr %15, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %14) #8, !srcloc !47
  br label %if.end59

if.end59:                                         ; preds = %do.body54, %if.then8, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @socfpga_clk_get_parent(ptr noundef %hwclk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hwclk) #8
  %call1 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_base_addr to i32))
  %0 = load ptr, ptr @clk_mgr_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 112
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !43
  %2 = lshr i32 %1, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @clk_mgr_base_addr to i32))
  %4 = load ptr, ptr @clk_mgr_base_addr, align 4
  br i1 %cmp5, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr10 = getelementptr i8, ptr %4, i32 112
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  %6 = lshr i32 %5, 25
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %add.ptr20 = getelementptr i8, ptr %4, i32 172
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !43
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call24 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %11 = trunc i32 %10 to i8
  %conv29 = and i8 %11, 3
  br label %cleanup

if.end30:                                         ; preds = %if.end17
  %call31 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(9) @.str.12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.end30.if.then37_crit_edge, label %lor.lhs.false

if.end30.if.then37_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end30
  %call34 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(11) @.str.13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %lor.lhs.false.if.then37_crit_edge, label %if.end40

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.end30.if.then37_crit_edge
  %12 = trunc i32 %10 to i8
  %13 = lshr i8 %12, 2
  %conv39 = and i8 %13, 3
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %14 = trunc i32 %10 to i8
  %15 = lshr i8 %14, 4
  %conv43 = and i8 %15, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then37, %if.then27, %if.then7, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ %8, %if.then7 ], [ %conv29, %if.then27 ], [ %conv39, %if.then37 ], [ %conv43, %if.end40 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 187, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 194, i32 40}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 206, i32 34}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 212, i32 40}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 221, i32 40}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 227, i32 32}
!12 = !{ptr @gateclk_ops, !13, !"gateclk_ops", i1 false, i1 false}
!13 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 164, i32 23}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 120, i32 58}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 122, i32 4}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @socfpga_clk_prepare._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @socfpga_clk_prepare._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 61, i32 6}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 66, i32 13}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 73, i32 7}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 76, i32 14}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/socfpga/clk-gate.c", i32 77, i32 4}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 4951597}
!44 = !{i64 2152595924}
!45 = !{i64 2152591624}
!46 = !{i64 2152591854}
!47 = !{i64 4951179}
!48 = !{i64 2152592620}
!49 = !{i64 2152592850}
!50 = !{i64 2152593563}
!51 = !{i64 2152593952}
!52 = !{i64 2152589802}
!53 = !{i64 2152590374}
!54 = !{i64 2152590893}
