; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-factors.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-factors.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.factors_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.clk_factors = type { %struct.clk_hw, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.factors_request = type { i32, i32, i8, i8, i8, i8, i8 }
%struct.clk_factors_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_factors_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_factors_recalc_rate, ptr null, ptr @clk_factors_determine_rate, ptr null, ptr null, ptr @clk_factors_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 201, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"clk_factors_ops\00", align 1
@___asan_gen_.5 = private constant [35 x i8] c"../drivers/clk/sunxi/clk-factors.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 170, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @clk_factors_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_factors_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sunxi_factors_register(ptr noundef %node, ptr nocapture noundef readonly %data, ptr noundef %lock, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__sunxi_factors_register(ptr noundef %node, ptr noundef %data, ptr noundef %lock, ptr noundef %reg)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__sunxi_factors_register(ptr noundef %node, ptr nocapture noundef readonly %data, ptr noundef %lock, ptr noundef %reg) unnamed_addr #0 align 64 {
entry:
  %clk_name = alloca ptr, align 4
  %parents = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #5
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %parents) #5
  %3 = call ptr @memset(ptr %parents, i32 255, i32 20)
  %call = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %parents, i32 noundef 5) #5
  %name1 = getelementptr inbounds %struct.factors_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %clk_name, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %clk_name) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 40) #8
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %reg8 = getelementptr inbounds %struct.clk_factors, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg, ptr %reg8, align 4
  %table = getelementptr inbounds %struct.factors_data, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %table, align 4
  %config = getelementptr inbounds %struct.clk_factors, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %config, align 8
  %getter = getelementptr inbounds %struct.factors_data, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %getter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %getter, align 4
  %get_factors = getelementptr inbounds %struct.clk_factors, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %get_factors to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %get_factors, align 4
  %recalc = getelementptr inbounds %struct.factors_data, ptr %data, i32 0, i32 5
  %15 = ptrtoint ptr %recalc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %recalc, align 4
  %recalc9 = getelementptr inbounds %struct.clk_factors, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %recalc9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %recalc9, align 8
  %lock10 = getelementptr inbounds %struct.clk_factors, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %lock10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %lock, ptr %lock10, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not = icmp eq i32 %20, 0
  br i1 %tobool11.not, label %if.end7.if.end22_crit_edge, label %if.then12

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then12:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 24) #8
  %tobool14.not = icmp eq ptr %call7.i.i1, null
  br i1 %tobool14.not, label %if.then12.err_gate_crit_edge, label %if.end16

if.then12.err_gate_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_gate

if.end16:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %gate17 = getelementptr inbounds %struct.clk_factors, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %gate17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i1, ptr %gate17, align 4
  %reg18 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i1, i32 0, i32 1
  %23 = ptrtoint ptr %reg18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %reg, ptr %reg18, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  %conv = trunc i32 %25 to i8
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i1, i32 0, i32 2
  %26 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %bit_idx, align 8
  %27 = ptrtoint ptr %lock10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lock10, align 4
  %lock21 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i1, i32 0, i32 4
  %29 = ptrtoint ptr %lock21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %lock21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end16, %if.end7.if.end22_crit_edge
  %gate_hw.0 = phi ptr [ %call7.i.i1, %if.end16 ], [ null, %if.end7.if.end22_crit_edge ]
  %mux23 = getelementptr inbounds %struct.factors_data, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %mux23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mux23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool24.not = icmp eq i32 %31, 0
  br i1 %tobool24.not, label %if.end22.if.end37_crit_edge, label %if.then25

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then25:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i2 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 32) #8
  %tobool27.not = icmp eq ptr %call7.i.i2, null
  br i1 %tobool27.not, label %if.then25.err_mux_crit_edge, label %if.end29

if.then25.err_mux_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_mux

if.end29:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %mux30 = getelementptr inbounds %struct.clk_factors, ptr %call7.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %mux30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i2, ptr %mux30, align 8
  %reg31 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i2, i32 0, i32 1
  %34 = ptrtoint ptr %reg31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %reg, ptr %reg31, align 4
  %35 = ptrtoint ptr %mux23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mux23, align 4
  %conv33 = trunc i32 %36 to i8
  %shift = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i2, i32 0, i32 4
  %37 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv33, ptr %shift, align 8
  %muxmask = getelementptr inbounds %struct.factors_data, ptr %data, i32 0, i32 2
  %38 = ptrtoint ptr %muxmask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %muxmask, align 4
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i2, i32 0, i32 3
  %40 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %mask, align 4
  %41 = ptrtoint ptr %lock10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lock10, align 4
  %lock35 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i2, i32 0, i32 6
  %43 = ptrtoint ptr %lock35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %lock35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end29, %if.end22.if.end37_crit_edge
  %mux_hw.0 = phi ptr [ %call7.i.i2, %if.end29 ], [ null, %if.end22.if.end37_crit_edge ]
  %44 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk_name, align 4
  %call40 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %45, ptr noundef nonnull %parents, i32 noundef %call, ptr noundef %mux_hw.0, ptr noundef nonnull @clk_mux_ops, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @clk_factors_ops, ptr noundef %gate_hw.0, ptr noundef nonnull @clk_gate_ops, i32 noundef 2048) #5
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end37.err_register_crit_edge, label %if.end43

if.end37.err_register_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_register

if.end43:                                         ; preds = %if.end37
  %call44 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %err_provider

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_provider:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unregister(ptr noundef %call40) #5
  br label %err_register

err_register:                                     ; preds = %err_provider, %if.end37.err_register_crit_edge
  call void @kfree(ptr noundef %mux_hw.0) #5
  br label %err_mux

err_mux:                                          ; preds = %err_register, %if.then25.err_mux_crit_edge
  call void @kfree(ptr noundef %gate_hw.0) #5
  br label %err_gate

err_gate:                                         ; preds = %err_mux, %if.then12.err_gate_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_gate, %if.end43.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call40, %if.end43.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %err_gate ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %parents) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #5
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sunxi_factors_register_critical(ptr noundef %node, ptr nocapture noundef readonly %data, ptr noundef %lock, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__sunxi_factors_register(ptr noundef %node, ptr noundef %data, ptr noundef %lock, ptr noundef %reg)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sunxi_factors_unregister(ptr noundef %node, ptr noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_get_hw(ptr noundef %clk) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @of_clk_del_provider(ptr noundef %node) #5
  tail call void @clk_unregister(ptr noundef %clk) #5
  %mux = getelementptr inbounds %struct.clk_factors, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux, align 4
  tail call void @kfree(ptr noundef %1) #5
  %gate = getelementptr inbounds %struct.clk_factors, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gate, align 4
  tail call void @kfree(ptr noundef %3) #5
  tail call void @kfree(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_factors_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %factors_req = alloca %struct.factors_request, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.clk_factors, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config1, align 4
  %reg2 = getelementptr inbounds %struct.clk_factors, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !13
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !14
  %nwidth = getelementptr inbounds %struct.clk_factors_config, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %nwidth to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nwidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %7 to i32
  %notmask130 = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask130, -1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %conv8 = zext i8 %9 to i32
  %shl9 = shl i32 %sub, %conv8
  %and = and i32 %shl9, %5
  %shr = lshr i32 %and, %conv8
  %conv12 = trunc i32 %shr to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n.0 = phi i8 [ %conv12, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %kwidth = getelementptr inbounds %struct.clk_factors_config, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %kwidth to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %kwidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14.not = icmp eq i8 %11, 0
  br i1 %cmp14.not, label %if.end.if.end28_crit_edge, label %if.then16

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv13 = zext i8 %11 to i32
  %notmask129 = shl nsw i32 -1, %conv13
  %sub20 = xor i32 %notmask129, -1
  %kshift = getelementptr inbounds %struct.clk_factors_config, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %kshift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %kshift, align 1
  %conv21 = zext i8 %13 to i32
  %shl22 = shl i32 %sub20, %conv21
  %and23 = and i32 %shl22, %5
  %shr26 = lshr i32 %and23, %conv21
  %conv27 = trunc i32 %shr26 to i8
  br label %if.end28

if.end28:                                         ; preds = %if.then16, %if.end.if.end28_crit_edge
  %k.0 = phi i8 [ %conv27, %if.then16 ], [ 0, %if.end.if.end28_crit_edge ]
  %mwidth = getelementptr inbounds %struct.clk_factors_config, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %mwidth to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mwidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp30.not = icmp eq i8 %15, 0
  br i1 %cmp30.not, label %if.end28.if.end44_crit_edge, label %if.then32

if.end28.if.end44_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %conv29 = zext i8 %15 to i32
  %notmask128 = shl nsw i32 -1, %conv29
  %sub36 = xor i32 %notmask128, -1
  %mshift = getelementptr inbounds %struct.clk_factors_config, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %mshift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mshift, align 1
  %conv37 = zext i8 %17 to i32
  %shl38 = shl i32 %sub36, %conv37
  %and39 = and i32 %shl38, %5
  %shr42 = lshr i32 %and39, %conv37
  %conv43 = trunc i32 %shr42 to i8
  br label %if.end44

if.end44:                                         ; preds = %if.then32, %if.end28.if.end44_crit_edge
  %m.0 = phi i8 [ %conv43, %if.then32 ], [ 0, %if.end28.if.end44_crit_edge ]
  %pwidth = getelementptr inbounds %struct.clk_factors_config, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %pwidth to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pwidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp46.not = icmp eq i8 %19, 0
  br i1 %cmp46.not, label %if.end44.if.end60_crit_edge, label %if.then48

if.end44.if.end60_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %conv45 = zext i8 %19 to i32
  %notmask = shl nsw i32 -1, %conv45
  %sub52 = xor i32 %notmask, -1
  %pshift = getelementptr inbounds %struct.clk_factors_config, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %pshift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pshift, align 1
  %conv53 = zext i8 %21 to i32
  %shl54 = shl i32 %sub52, %conv53
  %and55 = and i32 %shl54, %5
  %shr58 = lshr i32 %and55, %conv53
  %conv59 = trunc i32 %shr58 to i8
  br label %if.end60

if.end60:                                         ; preds = %if.then48, %if.end44.if.end60_crit_edge
  %p.0 = phi i8 [ %conv59, %if.then48 ], [ 0, %if.end44.if.end60_crit_edge ]
  %recalc = getelementptr inbounds %struct.clk_factors, ptr %hw, i32 0, i32 4
  %22 = ptrtoint ptr %recalc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %recalc, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end80, label %if.then61

if.then61:                                        ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %factors_req) #5
  %24 = getelementptr inbounds i8, ptr %factors_req, i32 12
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %24, align 4
  %26 = ptrtoint ptr %factors_req to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %factors_req, align 4
  %parent_rate63 = getelementptr inbounds %struct.factors_request, ptr %factors_req, i32 0, i32 1
  %27 = ptrtoint ptr %parent_rate63 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %parent_rate, ptr %parent_rate63, align 4
  %parent_index = getelementptr inbounds %struct.factors_request, ptr %factors_req, i32 0, i32 2
  %28 = ptrtoint ptr %parent_index to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %parent_index, align 4
  %n64 = getelementptr inbounds %struct.factors_request, ptr %factors_req, i32 0, i32 3
  %29 = ptrtoint ptr %n64 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %n.0, ptr %n64, align 1
  %k65 = getelementptr inbounds %struct.factors_request, ptr %factors_req, i32 0, i32 4
  %30 = ptrtoint ptr %k65 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %k.0, ptr %k65, align 2
  %m66 = getelementptr inbounds %struct.factors_request, ptr %factors_req, i32 0, i32 5
  %31 = ptrtoint ptr %m66 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %m.0, ptr %m66, align 1
  %p67 = getelementptr inbounds %struct.factors_request, ptr %factors_req, i32 0, i32 6
  %32 = ptrtoint ptr %p67 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %p.0, ptr %p67, align 4
  %mux = getelementptr inbounds %struct.clk_factors, ptr %hw, i32 0, i32 6
  %33 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mux, align 4
  %tobool68.not = icmp eq ptr %34, null
  br i1 %tobool68.not, label %if.then61.if.end77_crit_edge, label %if.then69

if.then61.if.end77_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.then69:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  %shift = getelementptr inbounds %struct.clk_mux, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %shift, align 4
  %conv71 = zext i8 %36 to i32
  %shr72 = lshr i32 %5, %conv71
  %mask = getelementptr inbounds %struct.clk_mux, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask, align 4
  %and74 = and i32 %shr72, %38
  %conv75 = trunc i32 %and74 to i8
  %39 = ptrtoint ptr %parent_index to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv75, ptr %parent_index, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then69, %if.then61.if.end77_crit_edge
  call void %23(ptr noundef nonnull %factors_req) #5
  %40 = ptrtoint ptr %factors_req to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %factors_req, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %factors_req) #5
  br label %cleanup

if.end80:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %conv81 = zext i8 %n.0 to i32
  %n_start = getelementptr inbounds %struct.clk_factors_config, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %n_start to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %n_start, align 1
  %conv82 = zext i8 %43 to i32
  %add = add nuw nsw i32 %conv82, %conv81
  %conv83 = zext i8 %k.0 to i32
  %add84 = add nuw nsw i32 %conv83, 1
  %mul = mul i32 %add84, %parent_rate
  %mul85 = mul i32 %mul, %add
  %conv86 = zext i8 %p.0 to i32
  %shr87 = lshr i32 %mul85, %conv86
  %conv88 = zext i8 %m.0 to i32
  %add89 = add nuw nsw i32 %conv88, 1
  %div = udiv i32 %shr87, %add89
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end77
  %retval.0 = phi i32 [ %41, %if.end77 ], [ %div, %if.end80 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_factors_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  %factors_req = alloca %struct.factors_request, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp52 = icmp sgt i32 %call, 0
  br i1 %cmp52, label %for.body.lr.ph, label %entry.cleanup24_crit_edge

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

for.body.lr.ph:                                   ; preds = %entry
  %parent_rate2 = getelementptr inbounds %struct.factors_request, ptr %factors_req, i32 0, i32 1
  %parent_index = getelementptr inbounds %struct.factors_request, ptr %factors_req, i32 0, i32 2
  %n = getelementptr inbounds %struct.factors_request, ptr %factors_req, i32 0, i32 3
  %get_factors = getelementptr inbounds %struct.clk_factors, ptr %hw, i32 0, i32 3
  %0 = getelementptr inbounds i8, ptr %factors_req, i32 12
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %best_child_rate.056 = phi i32 [ 0, %for.body.lr.ph ], [ %best_child_rate.2, %cleanup.for.body_crit_edge ]
  %best.055 = phi i32 [ 0, %for.body.lr.ph ], [ %best.2, %cleanup.for.body_crit_edge ]
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %best_parent.053 = phi ptr [ null, %for.body.lr.ph ], [ %best_parent.2, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %factors_req) #5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  %4 = ptrtoint ptr %factors_req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %factors_req, align 4
  %5 = ptrtoint ptr %parent_rate2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %parent_rate2, align 4
  %conv = trunc i32 %i.054 to i8
  %6 = ptrtoint ptr %parent_index to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %parent_index, align 4
  %7 = ptrtoint ptr %n to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %n, align 1
  %call3 = call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.054) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call4 = call i32 @clk_hw_get_flags(ptr noundef %hw) #5
  %and = and i32 %call4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %req, align 4
  %call8 = call i32 @clk_hw_round_rate(ptr noundef nonnull %call3, i32 noundef %9) #5
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = call i32 @clk_hw_get_rate(ptr noundef nonnull %call3) #5
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %parent_rate.0 = phi i32 [ %call8, %if.then6 ], [ %call9, %if.else ]
  %10 = ptrtoint ptr %parent_rate2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %parent_rate.0, ptr %parent_rate2, align 4
  %11 = ptrtoint ptr %get_factors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_factors, align 4
  call void %12(ptr noundef nonnull %factors_req) #5
  %13 = ptrtoint ptr %factors_req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %factors_req, align 4
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp14.not = icmp ule i32 %14, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %best_child_rate.056)
  %cmp16 = icmp ugt i32 %14, %best_child_rate.056
  %or.cond = select i1 %cmp14.not, i1 %cmp16, i1 false
  %best_parent.1 = select i1 %or.cond, ptr %call3, ptr %best_parent.053
  %best.1 = select i1 %or.cond, i32 %parent_rate.0, i32 %best.055
  %best_child_rate.1 = select i1 %or.cond, i32 %14, i32 %best_child_rate.056
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %for.body.cleanup_crit_edge
  %best_parent.2 = phi ptr [ %best_parent.1, %if.end10 ], [ %best_parent.053, %for.body.cleanup_crit_edge ]
  %best.2 = phi i32 [ %best.1, %if.end10 ], [ %best.055, %for.body.cleanup_crit_edge ]
  %best_child_rate.2 = phi i32 [ %best_child_rate.1, %if.end10 ], [ %best_child_rate.056, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %factors_req) #5
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup
  %tobool20.not = icmp eq ptr %best_parent.2, null
  br i1 %tobool20.not, label %for.end.cleanup24_crit_edge, label %if.end22

for.end.cleanup24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

if.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %17 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %best_parent.2, ptr %best_parent_hw, align 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %18 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %best.2, ptr %best_parent_rate, align 4
  %19 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %best_child_rate.2, ptr %req, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %if.end22, %for.end.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %for.end.cleanup24_crit_edge ], [ -22, %entry.cleanup24_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_factors_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %req = alloca %struct.factors_request, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #5
  %0 = getelementptr inbounds i8, ptr %req, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rate, ptr %req, align 4
  %parent_rate2 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %parent_rate2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %parent_rate, ptr %parent_rate2, align 4
  %parent_index = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 2
  %n = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 3
  %k = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %p = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %config3 = getelementptr inbounds %struct.clk_factors, ptr %hw, i32 0, i32 2
  %4 = call ptr @memset(ptr %parent_index, i32 0, i32 5)
  %5 = ptrtoint ptr %config3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config3, align 4
  %get_factors = getelementptr inbounds %struct.clk_factors, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %get_factors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_factors, align 4
  call void %8(ptr noundef nonnull %req) #5
  %lock = getelementptr inbounds %struct.clk_factors, ptr %hw, i32 0, i32 5
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #5
  br label %if.end

if.end:                                           ; preds = %do.body4, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call7, %do.body4 ], [ 0, %entry.if.end_crit_edge ]
  %reg10 = getelementptr inbounds %struct.clk_factors, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %reg10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg10, align 4
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !13
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !15
  %nwidth = getelementptr inbounds %struct.clk_factors_config, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %nwidth to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nwidth, align 1
  %conv14 = zext i8 %16 to i32
  %notmask = shl nsw i32 -1, %conv14
  %sub = xor i32 %notmask, -1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %6, align 1
  %conv15 = zext i8 %18 to i32
  %shl16 = shl i32 %sub, %conv15
  %neg = xor i32 %shl16, -1
  %and = and i32 %14, %neg
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %n, align 1
  %conv18 = zext i8 %20 to i32
  %shl21 = shl i32 %conv18, %conv15
  %or = or i32 %and, %shl21
  %kwidth = getelementptr inbounds %struct.clk_factors_config, ptr %6, i32 0, i32 3
  %21 = ptrtoint ptr %kwidth to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %kwidth, align 1
  %conv22 = zext i8 %22 to i32
  %notmask93 = shl nsw i32 -1, %conv22
  %sub24 = xor i32 %notmask93, -1
  %kshift = getelementptr inbounds %struct.clk_factors_config, ptr %6, i32 0, i32 2
  %23 = ptrtoint ptr %kshift to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %kshift, align 1
  %conv25 = zext i8 %24 to i32
  %shl26 = shl i32 %sub24, %conv25
  %neg27 = xor i32 %shl26, -1
  %and28 = and i32 %or, %neg27
  %25 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %k, align 2
  %conv30 = zext i8 %26 to i32
  %shl33 = shl i32 %conv30, %conv25
  %or34 = or i32 %and28, %shl33
  %mwidth = getelementptr inbounds %struct.clk_factors_config, ptr %6, i32 0, i32 5
  %27 = ptrtoint ptr %mwidth to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mwidth, align 1
  %conv35 = zext i8 %28 to i32
  %notmask94 = shl nsw i32 -1, %conv35
  %sub37 = xor i32 %notmask94, -1
  %mshift = getelementptr inbounds %struct.clk_factors_config, ptr %6, i32 0, i32 4
  %29 = ptrtoint ptr %mshift to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mshift, align 1
  %conv38 = zext i8 %30 to i32
  %shl39 = shl i32 %sub37, %conv38
  %neg40 = xor i32 %shl39, -1
  %and41 = and i32 %or34, %neg40
  %31 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %m, align 1
  %conv43 = zext i8 %32 to i32
  %shl46 = shl i32 %conv43, %conv38
  %or47 = or i32 %and41, %shl46
  %pwidth = getelementptr inbounds %struct.clk_factors_config, ptr %6, i32 0, i32 7
  %33 = ptrtoint ptr %pwidth to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pwidth, align 1
  %conv48 = zext i8 %34 to i32
  %notmask95 = shl nsw i32 -1, %conv48
  %sub50 = xor i32 %notmask95, -1
  %pshift = getelementptr inbounds %struct.clk_factors_config, ptr %6, i32 0, i32 6
  %35 = ptrtoint ptr %pshift to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pshift, align 1
  %conv51 = zext i8 %36 to i32
  %shl52 = shl i32 %sub50, %conv51
  %neg53 = xor i32 %shl52, -1
  %and54 = and i32 %or47, %neg53
  %37 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %p, align 4
  %conv56 = zext i8 %38 to i32
  %shl59 = shl i32 %conv56, %conv51
  %or60 = or i32 %and54, %shl59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  call void @arm_heavy_mb() #5
  %39 = call i32 @llvm.bswap.i32(i32 %or60)
  %40 = ptrtoint ptr %reg10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg10, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #5, !srcloc !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_delay_ops to i32))
  %42 = load ptr, ptr @arm_delay_ops, align 4
  %shr = lshr i32 %rate, 20
  %div = mul nuw nsw i32 %shr, 250
  call void %42(i32 noundef %div) #5
  %43 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lock, align 4
  %tobool66.not = icmp eq ptr %44, null
  br i1 %tobool66.not, label %if.end.if.end69_crit_edge, label %if.then67

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then67:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %44, i32 noundef %flags.0) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-factors.c", i32 201, i32 33}
!2 = !{ptr @clk_factors_ops, !3, !"clk_factors_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-factors.c", i32 170, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4556087}
!14 = !{i64 2152538295}
!15 = !{i64 2152542174}
!16 = !{i64 2152543247}
!17 = !{i64 4555669}
