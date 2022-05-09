; ModuleID = '/llk/IR_all_yes/drivers/clk/visconti/clkc.c_pt.bc'
source_filename = "../drivers/clk/visconti/clkc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.visconti_clk_provider = type { ptr, ptr, %struct.clk_hw_onecell_data }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.visconti_clk_gate_table = type { i32, ptr, ptr, i8, i8, i32, i32, i8, i32, i8 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.visconti_reset_data = type { i32, i32, i8 }
%struct.visconti_clk_gate = type { %struct.clk_hw, ptr, i32, i32, i8, i8, i32, i32, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_div\00", [25 x i8] zeroinitializer }, align 32
@visconti_clk_register_gates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to register clock %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"visconti_clk_register_gates\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/visconti/clkc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@visconti_clk_register_gates._entry_ptr = internal global ptr @visconti_clk_register_gates._entry, section ".printk_index", align 4
@visconti_clk_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @visconti_gate_clk_enable, ptr @visconti_gate_clk_disable, ptr @visconti_gate_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 146, i32 46 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 176, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"visconti_clk_gate_ops\00", align 1
@___asan_gen_.28 = private constant [31 x i8] c"../drivers/clk/visconti/clkc.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 68, i32 29 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @visconti_clk_register_gates._entry, ptr @visconti_clk_register_gates._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @visconti_clk_gate_ops], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_clk_register_gates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_clk_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @visconti_clk_register_gates(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %clks, i32 noundef %num_gate, ptr nocapture noundef readonly %reset, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_gate)
  %cmp101 = icmp sgt i32 %num_gate, 0
  br i1 %cmp101, label %for.body.lr.ph, label %entry.cleanup53_crit_edge

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

for.body.lr.ph:                                   ; preds = %entry
  %regmap = getelementptr inbounds %struct.visconti_clk_provider, ptr %ctx, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %init.i, i32 8
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %flags9.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %hws = getelementptr inbounds %struct.visconti_clk_provider, ptr %ctx, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.visconti_clk_gate_table, ptr %clks, i32 %i.0102
  %parent_data = getelementptr %struct.visconti_clk_gate_table, ptr %clks, i32 %i.0102, i32 2
  %3 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent_data, align 4
  %name = getelementptr inbounds %struct.clk_parent_data, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.cleanup53_crit_edge, label %if.end

for.body.cleanup53_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

if.end:                                           ; preds = %for.body
  %name4 = getelementptr %struct.visconti_clk_gate_table, ptr %clks, i32 %i.0102, i32 1
  %7 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name4, align 4
  %call5 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %8) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup53_crit_edge, label %if.then12

if.end.cleanup53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

if.then12:                                        ; preds = %if.end
  %rs_id = getelementptr %struct.visconti_clk_gate_table, ptr %clks, i32 %i.0102, i32 9
  %9 = ptrtoint ptr %rs_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rs_id, align 4
  %conv = zext i8 %10 to i32
  %arrayidx15 = getelementptr %struct.visconti_reset_data, ptr %reset, i32 %conv
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15, align 4
  %rsoff_offset21 = getelementptr %struct.visconti_reset_data, ptr %reset, i32 %conv, i32 1
  %13 = ptrtoint ptr %rsoff_offset21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rsoff_offset21, align 4
  %rs_idx26 = getelementptr %struct.visconti_reset_data, ptr %reset, i32 %conv, i32 2
  %15 = ptrtoint ptr %rs_idx26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rs_idx26, align 4
  %div = getelementptr %struct.visconti_clk_gate_table, ptr %clks, i32 %i.0102, i32 8
  %17 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %div, align 4
  %call29 = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %1, ptr noundef nonnull %call5, ptr noundef %6, i32 noundef 0, i32 noundef 1, i32 noundef %18) #5
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call29 to i32
  br label %cleanup53

if.end33:                                         ; preds = %if.then12
  %20 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name4, align 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #5
  %24 = call ptr @memset(ptr %2, i32 255, i32 16)
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end33.visconti_clk_register_gate.exit.thread_crit_edge, label %if.end.i

if.end33.visconti_clk_register_gate.exit.thread_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %visconti_clk_register_gate.exit.thread

if.end.i:                                         ; preds = %if.end33
  %fw_name.i = getelementptr inbounds %struct.clk_parent_data, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5, ptr %fw_name.i, align 4
  %name2.i = getelementptr inbounds %struct.clk_parent_data, ptr %call.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5, ptr %name2.i, align 4
  %call.i50.i = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 44, i32 noundef 3520) #5
  %tobool4.not.i = icmp eq ptr %call.i50.i, null
  br i1 %tobool4.not.i, label %if.end.i.visconti_clk_register_gate.exit.thread_crit_edge, label %visconti_clk_register_gate.exit

if.end.i.visconti_clk_register_gate.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %visconti_clk_register_gate.exit.thread

visconti_clk_register_gate.exit.thread:           ; preds = %if.end.i.visconti_clk_register_gate.exit.thread_crit_edge, %if.end33.visconti_clk_register_gate.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #5
  br label %do.end

visconti_clk_register_gate.exit:                  ; preds = %if.end.i
  %27 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %21, ptr %init.i, align 4
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @visconti_clk_gate_ops, ptr %ops.i, align 4
  %flags.i = getelementptr %struct.visconti_clk_gate_table, ptr %clks, i32 %i.0102, i32 4
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags.i, align 1
  %conv.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %flags9.i, align 4
  %32 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %parent_data.i, align 4
  %33 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %num_parents.i, align 4
  %regmap10.i = getelementptr inbounds %struct.visconti_clk_gate, ptr %call.i50.i, i32 0, i32 1
  %34 = ptrtoint ptr %regmap10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %23, ptr %regmap10.i, align 4
  %ckon_offset.i = getelementptr %struct.visconti_clk_gate_table, ptr %clks, i32 %i.0102, i32 5
  %35 = ptrtoint ptr %ckon_offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ckon_offset.i, align 4
  %ckon_offset11.i = getelementptr inbounds %struct.visconti_clk_gate, ptr %call.i50.i, i32 0, i32 2
  %37 = ptrtoint ptr %ckon_offset11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ckon_offset11.i, align 4
  %ckoff_offset.i = getelementptr %struct.visconti_clk_gate_table, ptr %clks, i32 %i.0102, i32 6
  %38 = ptrtoint ptr %ckoff_offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ckoff_offset.i, align 4
  %ckoff_offset12.i = getelementptr inbounds %struct.visconti_clk_gate, ptr %call.i50.i, i32 0, i32 3
  %40 = ptrtoint ptr %ckoff_offset12.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ckoff_offset12.i, align 4
  %ck_idx.i = getelementptr %struct.visconti_clk_gate_table, ptr %clks, i32 %i.0102, i32 7
  %41 = ptrtoint ptr %ck_idx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ck_idx.i, align 4
  %ck_idx13.i = getelementptr inbounds %struct.visconti_clk_gate, ptr %call.i50.i, i32 0, i32 4
  %43 = ptrtoint ptr %ck_idx13.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %ck_idx13.i, align 4
  %rson_offset14.i = getelementptr inbounds %struct.visconti_clk_gate, ptr %call.i50.i, i32 0, i32 6
  %44 = ptrtoint ptr %rson_offset14.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %12, ptr %rson_offset14.i, align 4
  %rsoff_offset15.i = getelementptr inbounds %struct.visconti_clk_gate, ptr %call.i50.i, i32 0, i32 7
  %45 = ptrtoint ptr %rsoff_offset15.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %14, ptr %rsoff_offset15.i, align 4
  %rs_idx16.i = getelementptr inbounds %struct.visconti_clk_gate, ptr %call.i50.i, i32 0, i32 8
  %46 = ptrtoint ptr %rs_idx16.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %16, ptr %rs_idx16.i, align 4
  %lock17.i = getelementptr inbounds %struct.visconti_clk_gate, ptr %call.i50.i, i32 0, i32 9
  %47 = ptrtoint ptr %lock17.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %lock, ptr %lock17.i, align 4
  %init19.i = getelementptr inbounds %struct.clk_hw, ptr %call.i50.i, i32 0, i32 2
  %48 = ptrtoint ptr %init19.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %init.i, ptr %init19.i, align 4
  %call21.i = call i32 @devm_clk_hw_register(ptr noundef %1, ptr noundef nonnull %call.i50.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  %49 = inttoptr i32 %call21.i to ptr
  %spec.select.i = select i1 %tobool22.not.i, ptr %call.i50.i, ptr %49
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #5
  %cmp.i90 = icmp ugt ptr %spec.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %visconti_clk_register_gate.exit.do.end_crit_edge, label %for.inc

visconti_clk_register_gate.exit.do.end_crit_edge: ; preds = %visconti_clk_register_gate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %visconti_clk_register_gate.exit.do.end_crit_edge, %visconti_clk_register_gate.exit.thread
  %retval.0.i93 = phi ptr [ inttoptr (i32 -12 to ptr), %visconti_clk_register_gate.exit.thread ], [ %spec.select.i, %visconti_clk_register_gate.exit.do.end_crit_edge ]
  %50 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %51) #8
  %52 = ptrtoint ptr %retval.0.i93 to i32
  br label %cleanup53

for.inc:                                          ; preds = %visconti_clk_register_gate.exit
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  %arrayidx45 = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %spec.select.i, ptr %arrayidx45, align 4
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %num_gate
  br i1 %exitcond.not, label %for.inc.cleanup53_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup53_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

cleanup53:                                        ; preds = %for.inc.cleanup53_crit_edge, %do.end, %if.then31, %if.end.cleanup53_crit_edge, %for.body.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.2 = phi i32 [ %52, %do.end ], [ %19, %if.then31 ], [ 0, %entry.cleanup53_crit_edge ], [ 0, %for.inc.cleanup53_crit_edge ], [ -12, %for.body.cleanup53_crit_edge ], [ -12, %if.end.cleanup53_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @visconti_init_clk(ptr noundef %dev, ptr noundef %regmap, i32 noundef %nr_clks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_clks, i32 4) #5
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 12) #5
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clks)
  %cmp18.not = icmp eq i32 %nr_clks, 0
  br i1 %cmp18.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hws = getelementptr inbounds %struct.visconti_clk_provider, ptr %call.i, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %i.019
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  %inc = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %nr_clks
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %clk_data4 = getelementptr inbounds %struct.visconti_clk_provider, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk_data4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nr_clks, ptr %clk_data4, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %regmap6 = getelementptr inbounds %struct.visconti_clk_provider, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %regmap, ptr %regmap6, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %for.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_gate_clk_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ck_idx = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %ck_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ck_idx, align 4
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %lock = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %regmap = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %ckon_offset = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %ckon_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ckon_offset, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @visconti_gate_clk_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ck_idx = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %ck_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ck_idx, align 4
  %lock = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %4 = ptrtoint ptr %ck_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ck_idx, align 4
  %conv.i = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !21
  %regmap.i = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %ckon_offset.i = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 2
  %9 = ptrtoint ptr %ckon_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ckon_offset.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %val.i) #5
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %13 = shl nuw i32 1, %conv.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %ckoff_offset = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 3
  %17 = ptrtoint ptr %ckoff_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ckoff_offset, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %18, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_gate_clk_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ck_idx = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %ck_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ck_idx, align 4
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !21
  %regmap = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %ckon_offset = getelementptr inbounds %struct.visconti_clk_gate, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %ckon_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ckon_offset, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #5
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = lshr i32 %8, %conv
  %10 = and i32 %9, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/visconti/clkc.c", i32 146, i32 46}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/visconti/clkc.c", i32 176, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @visconti_clk_register_gates._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @visconti_clk_register_gates._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @visconti_clk_gate_ops, !11, !"visconti_clk_gate_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/visconti/clkc.c", i32 68, i32 29}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
