; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-cpumux.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-cpumux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.mtk_clk_cpumux = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@mtk_clk_register_cpumuxes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Cannot find regmap for %pOF: %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_clk_register_cpumuxes\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-cpumux.c\00", [62 x i8] zeroinitializer }, align 32
@mtk_clk_register_cpumuxes._entry_ptr = internal global ptr @mtk_clk_register_cpumuxes._entry, section ".printk_index", align 4
@mtk_clk_register_cpumuxes._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to register clk %s: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_clk_register_cpumuxes._entry_ptr.5 = internal global ptr @mtk_clk_register_cpumuxes._entry.3, section ".printk_index", align 4
@__UNIQUE_ID_file183 = internal constant [48 x i8] c"clk_cpumux.file=drivers/clk/mediatek/clk-cpumux\00", section ".modinfo", align 1
@__UNIQUE_ID_license184 = internal constant [23 x i8] c"clk_cpumux.license=GPL\00", section ".modinfo", align 1
@clk_cpumux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpumux_set_parent, ptr @clk_cpumux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 90, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 100, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"clk_cpumux_ops\00", align 1
@___asan_gen_.25 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-cpumux.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 44, i32 29 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file183, ptr @__UNIQUE_ID_license184, ptr @mtk_clk_register_cpumuxes._entry, ptr @mtk_clk_register_cpumuxes._entry.3, ptr @mtk_clk_register_cpumuxes._entry_ptr, ptr @mtk_clk_register_cpumuxes._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @clk_cpumux_ops], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_cpumuxes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_clk_register_cpumuxes._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_cpumux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_clk_register_cpumuxes(ptr noundef %node, ptr nocapture noundef readonly %clks, i32 noundef %num, ptr nocapture noundef readonly %clk_data) local_unnamed_addr #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @device_node_to_regmap(ptr noundef %node) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp34 = icmp sgt i32 %num, 0
  br i1 %cmp34, label %for.body.lr.ph, label %for.cond.preheader.cleanup17_crit_edge

for.cond.preheader.cleanup17_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = getelementptr inbounds i8, ptr %init.i, i32 12
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %parent_names3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents4.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %flags5.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node, i32 noundef %1) #8
  br label %cleanup17

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_composite, ptr %clks, i32 %i.035
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #5
  %2 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %mtk_clk_register_cpumux.exit.thread, label %if.end.i

mtk_clk_register_cpumux.exit.thread:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #5
  br label %do.end10

if.end.i:                                         ; preds = %for.body
  %name.i = getelementptr %struct.mtk_composite, ptr %clks, i32 %i.035, i32 1
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 4
  %6 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %init.i, align 4
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @clk_cpumux_ops, ptr %ops.i, align 4
  %parent_names.i = getelementptr %struct.mtk_composite, ptr %clks, i32 %i.035, i32 2
  %8 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_names.i, align 4
  %10 = ptrtoint ptr %parent_names3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %parent_names3.i, align 4
  %num_parents.i = getelementptr %struct.mtk_composite, ptr %clks, i32 %i.035, i32 14
  %11 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_parents.i, align 2
  %13 = ptrtoint ptr %num_parents4.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %num_parents4.i, align 4
  %flags.i = getelementptr %struct.mtk_composite, ptr %clks, i32 %i.035, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flags5.i, align 4
  %mux_reg.i = getelementptr %struct.mtk_composite, ptr %clks, i32 %i.035, i32 5
  %17 = ptrtoint ptr %mux_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mux_reg.i, align 4
  %reg.i = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reg.i, align 8
  %mux_shift.i = getelementptr %struct.mtk_composite, ptr %clks, i32 %i.035, i32 8
  %20 = ptrtoint ptr %mux_shift.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mux_shift.i, align 4
  %shift.i = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %call7.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %shift.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %shift.i, align 8
  %mux_width.i = getelementptr %struct.mtk_composite, ptr %clks, i32 %i.035, i32 9
  %23 = ptrtoint ptr %mux_width.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mux_width.i, align 1
  %conv29.i = zext i8 %24 to i32
  %notmask.i = shl nsw i32 -1, %conv29.i
  %sub.i = xor i32 %notmask.i, -1
  %mask.i = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %call7.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i, ptr %mask.i, align 4
  %regmap6.i = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %regmap6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %regmap6.i, align 4
  %init7.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %init7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %init.i, ptr %init7.i, align 8
  %call9.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #5
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mtk_clk_register_cpumux.exit.thread38, label %if.end14

mtk_clk_register_cpumux.exit.thread38:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #5
  br label %do.end10

do.end10:                                         ; preds = %mtk_clk_register_cpumux.exit.thread38, %mtk_clk_register_cpumux.exit.thread
  %retval.0.i33 = phi ptr [ inttoptr (i32 -12 to ptr), %mtk_clk_register_cpumux.exit.thread ], [ %call9.i, %mtk_clk_register_cpumux.exit.thread38 ]
  %name = getelementptr %struct.mtk_composite, ptr %clks, i32 %i.035, i32 1
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  %30 = ptrtoint ptr %retval.0.i33 to i32
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %29, i32 noundef %30) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #5
  %31 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_data, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr ptr, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i, ptr %arrayidx16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %cleanup.cleanup17_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.cleanup17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup.cleanup17_crit_edge, %do.end, %for.cond.preheader.cleanup17_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ 0, %for.cond.preheader.cleanup17_crit_edge ], [ 0, %cleanup.cleanup17_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_cpumux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %index to i32
  %shift = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %shift, align 4
  %conv1 = zext i8 %1 to i32
  %shl = shl i32 %conv, %conv1
  %mask2 = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask2, align 4
  %shl5 = shl i32 %3, %conv1
  %regmap = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %shl5, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_cpumux_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !24
  %regmap = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #5
  %shift = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %shr = lshr i32 %8, %conv
  %mask = getelementptr inbounds %struct.mtk_clk_cpumux, ptr %hw, i32 0, i32 3
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %and = and i32 %10, %shr
  %conv2 = trunc i32 %and to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i8 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-cpumux.c", i32 90, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mtk_clk_register_cpumuxes._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mtk_clk_register_cpumuxes._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-cpumux.c", i32 100, i32 4}
!8 = !{ptr @mtk_clk_register_cpumuxes._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mtk_clk_register_cpumuxes._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file183, !11, !"__UNIQUE_ID_file183", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-cpumux.c", i32 111, i32 1}
!12 = !{ptr @__UNIQUE_ID_license184, !11, !"__UNIQUE_ID_license184", i1 false, i1 false}
!13 = !{ptr @clk_cpumux_ops, !14, !"clk_cpumux_ops", i1 false, i1 false}
!14 = !{!"../drivers/clk/mediatek/clk-cpumux.c", i32 44, i32 29}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
