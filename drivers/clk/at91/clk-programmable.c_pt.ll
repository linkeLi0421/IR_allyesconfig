; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-programmable.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-programmable.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_programmable_layout = type { i8, i8, i8, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_programmable = type { %struct.clk_hw, ptr, ptr, i8, ptr, %struct.at91_clk_pms }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@programmable_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_programmable_save_context, ptr @clk_programmable_restore_context, ptr @clk_programmable_recalc_rate, ptr null, ptr @clk_programmable_determine_rate, ptr @clk_programmable_set_parent, ptr @clk_programmable_get_parent, ptr @clk_programmable_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@at91rm9200_programmable_layout = dso_local constant { %struct.clk_programmable_layout, [27 x i8] } { %struct.clk_programmable_layout { i8 7, i8 2, i8 3, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@at91sam9g45_programmable_layout = dso_local constant { %struct.clk_programmable_layout, [27 x i8] } { %struct.clk_programmable_layout { i8 7, i8 2, i8 3, i8 1, i8 0 }, [27 x i8] zeroinitializer }, align 32
@at91sam9x5_programmable_layout = dso_local constant { %struct.clk_programmable_layout, [27 x i8] } { %struct.clk_programmable_layout { i8 7, i8 4, i8 7, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"programmable_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 205, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [31 x i8] c"at91rm9200_programmable_layout\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 256, i32 38 }
@___asan_gen_.7 = private unnamed_addr constant [32 x i8] c"at91sam9g45_programmable_layout\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 264, i32 38 }
@___asan_gen_.10 = private unnamed_addr constant [31 x i8] c"at91sam9x5_programmable_layout\00", align 1
@___asan_gen_.11 = private constant [39 x i8] c"../drivers/clk/at91/clk-programmable.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 272, i32 38 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @programmable_ops, ptr @at91rm9200_programmable_layout, ptr @at91sam9g45_programmable_layout, ptr @at91sam9x5_programmable_layout], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @programmable_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91rm9200_programmable_layout to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9g45_programmable_layout to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_programmable_layout to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_programmable(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i8 noundef zeroext %id, ptr noundef %layout, ptr noundef %mux_table) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %id)
  %cmp = icmp ugt i8 %id, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @programmable_ops, ptr %ops, align 4
  %parent_names7 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent_names, ptr %parent_names7, align 4
  %num_parents8 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %num_parents8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %num_parents, ptr %num_parents8, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %flags, align 4
  %id9 = getelementptr inbounds %struct.clk_programmable, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %id9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %id, ptr %id9, align 4
  %layout10 = getelementptr inbounds %struct.clk_programmable, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %layout10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %layout, ptr %layout10, align 8
  %init12 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %init, ptr %init12, align 8
  %regmap13 = getelementptr inbounds %struct.clk_programmable, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %regmap13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %regmap, ptr %regmap13, align 4
  %mux_table14 = getelementptr inbounds %struct.clk_programmable, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %mux_table14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mux_table, ptr %mux_table14, align 8
  %call17 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end5.cleanup_crit_edge, label %if.then19

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %13 = inttoptr i32 %call17 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %13, %if.then19 ], [ %call7.i.i, %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_programmable_save_context(ptr noundef %hw) #5 align 64 {
entry:
  %pckr.i14 = alloca i32, align 4
  %pckr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  %layout1.i = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %layout1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pckr.i) #6
  %2 = ptrtoint ptr %pckr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pckr.i, align 4, !annotation !17
  %regmap.i = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %id.i = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %6 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 64
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %pckr.i) #6
  %7 = ptrtoint ptr %pckr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pckr.i, align 4
  %css_mask.i = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %css_mask.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %css_mask.i, align 1
  %11 = trunc i32 %8 to i8
  %conv3.i = and i8 %10, %11
  %have_slck_mck.i = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %have_slck_mck.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %have_slck_mck.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %and5.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool6.not.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3.i)
  %tobool8.not.i = icmp eq i8 %conv3.i, 0
  %spec.store.select.i = select i1 %tobool8.not.i, i8 4, i8 %conv3.i
  %ret.0.i = select i1 %or.cond.i, i8 %conv3.i, i8 %spec.store.select.i
  %mux_table.i = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %mux_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux_table.i, align 4
  %tobool9.not.i = icmp eq ptr %15, null
  br i1 %tobool9.not.i, label %entry.clk_programmable_get_parent.exit_crit_edge, label %if.then10.i

entry.clk_programmable_get_parent.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_programmable_get_parent.exit

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = zext i8 %ret.0.i to i32
  %call14.i = call i32 @clk_mux_val_to_index(ptr noundef %hw, ptr noundef nonnull %15, i32 noundef 0, i32 noundef %conv13.i) #6
  %conv15.i = trunc i32 %call14.i to i8
  br label %clk_programmable_get_parent.exit

clk_programmable_get_parent.exit:                 ; preds = %if.then10.i, %entry.clk_programmable_get_parent.exit_crit_edge
  %ret.1.i = phi i8 [ %conv15.i, %if.then10.i ], [ %ret.0.i, %entry.clk_programmable_get_parent.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pckr.i) #6
  %conv = zext i8 %ret.1.i to i32
  %parent = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %parent, align 4
  %call2 = call i32 @clk_hw_get_rate(ptr noundef %call) #6
  %parent_rate = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2, ptr %parent_rate, align 4
  %18 = ptrtoint ptr %layout1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %layout1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pckr.i14) #6
  %20 = ptrtoint ptr %pckr.i14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %pckr.i14, align 4, !annotation !17
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id.i, align 4
  %conv.i18 = zext i8 %24 to i32
  %mul.i19 = shl nuw nsw i32 %conv.i18, 2
  %add.i20 = add nuw nsw i32 %mul.i19, 64
  %call.i21 = call i32 @regmap_read(ptr noundef %22, i32 noundef %add.i20, ptr noundef nonnull %pckr.i14) #6
  %is_pres_direct.i = getelementptr inbounds %struct.clk_programmable_layout, ptr %19, i32 0, i32 4
  %25 = ptrtoint ptr %is_pres_direct.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_pres_direct.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i22 = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %pckr.i14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pckr.i14, align 4
  %pres_shift5.i = getelementptr inbounds %struct.clk_programmable_layout, ptr %19, i32 0, i32 1
  %29 = ptrtoint ptr %pres_shift5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pres_shift5.i, align 1
  %conv6.i = zext i8 %30 to i32
  %shr7.i = lshr i32 %28, %conv6.i
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %19, align 1
  %conv9.i = zext i8 %32 to i32
  %and10.i = and i32 %shr7.i, %conv9.i
  br i1 %tobool.not.i22, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %clk_programmable_get_parent.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add4.i = add nuw nsw i32 %and10.i, 1
  %div.i = udiv i32 %call2, %add4.i
  br label %clk_programmable_recalc_rate.exit

if.else.i:                                        ; preds = %clk_programmable_get_parent.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shr11.i = lshr i32 %call2, %and10.i
  br label %clk_programmable_recalc_rate.exit

clk_programmable_recalc_rate.exit:                ; preds = %if.else.i, %if.then.i
  %rate.0.i = phi i32 [ %div.i, %if.then.i ], [ %shr11.i, %if.else.i ]
  %pms = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pckr.i14) #6
  %33 = ptrtoint ptr %pms to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rate.0.i, ptr %pms, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_programmable_restore_context(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent, align 4
  %conv = trunc i32 %1 to i8
  %layout1.i = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %layout1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layout1.i, align 4
  %css_mask.i = getelementptr inbounds %struct.clk_programmable_layout, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %css_mask.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %css_mask.i, align 1
  %conv.i = zext i8 %5 to i32
  %conv2.i = and i32 %1, 255
  %have_slck_mck.i = getelementptr inbounds %struct.clk_programmable_layout, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %have_slck_mck.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %have_slck_mck.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %or.i = or i32 %conv.i, 256
  %spec.select.i = select i1 %tobool.not.i, i32 %conv.i, i32 %or.i
  %mux_table.i = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %mux_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mux_table.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %entry.if.end6.i_crit_edge, label %if.then4.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @clk_mux_index_to_val(ptr noundef nonnull %9, i32 noundef 0, i8 noundef zeroext %conv) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %entry.if.end6.i_crit_edge
  %pckr.0.i = phi i32 [ %call.i, %if.then4.i ], [ %conv2.i, %entry.if.end6.i_crit_edge ]
  %10 = ptrtoint ptr %css_mask.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %css_mask.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %conv)
  %cmp.i = icmp ult i8 %11, %conv
  br i1 %cmp.i, label %if.then11.i, label %if.end6.i.if.end_crit_edge

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv)
  %cmp13.i = icmp ugt i8 %conv, 3
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.then11.i.if.end18.i_crit_edge

if.then11.i.if.end18.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.then11.i
  %12 = ptrtoint ptr %have_slck_mck.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %have_slck_mck.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not.i = icmp eq i8 %13, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18.i:                                       ; preds = %land.lhs.true.i.if.end18.i_crit_edge, %if.then11.i.if.end18.i_crit_edge
  %or19.i = or i32 %pckr.0.i, 256
  br label %if.end

if.end:                                           ; preds = %if.end18.i, %if.end6.i.if.end_crit_edge
  %pckr.1.i = phi i32 [ %or19.i, %if.end18.i ], [ %pckr.0.i, %if.end6.i.if.end_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %id.i = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 3
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id.i, align 4
  %conv21.i = zext i8 %17 to i32
  %mul.i = shl nuw nsw i32 %conv21.i, 2
  %add.i = add nuw nsw i32 %mul.i, 64
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add.i, i32 noundef %spec.select.i, i32 noundef %pckr.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %pms = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 5
  %18 = ptrtoint ptr %pms to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pms, align 4
  %parent_rate = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %parent_rate, align 4
  %22 = ptrtoint ptr %layout1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %layout1.i, align 4
  %div2.i = udiv i32 %21, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %tobool.not.i10 = icmp ugt i32 %19, %21
  br i1 %tobool.not.i10, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %is_pres_direct.i = getelementptr inbounds %struct.clk_programmable_layout, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %is_pres_direct.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_pres_direct.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not.i11 = icmp eq i8 %25, 0
  br i1 %tobool3.not.i11, label %if.else.i, label %if.then4.i14

if.then4.i14:                                     ; preds = %if.end.i
  %sub.i = add i32 %div2.i, -1
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %23, align 1
  %conv.i12 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i12)
  %cmp.i13 = icmp sgt i32 %sub.i, %conv.i12
  br i1 %cmp.i13, label %if.then4.i14.cleanup_crit_edge, label %if.then4.i14.if.end19.i_crit_edge

if.then4.i14.if.end19.i_crit_edge:                ; preds = %if.then4.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then4.i14.cleanup_crit_edge:                   ; preds = %if.then4.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  %28 = tail call i32 @llvm.ctlz.i32(i32 %div2.i, i1 false) #6, !range !18
  %shl.i = lshr i32 -2147483648, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.i, i32 %shl.i)
  %cmp9.not.i = icmp eq i32 %div2.i, %shl.i
  br i1 %cmp9.not.i, label %if.end12.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.else.i
  %sub8.i = sub nsw i32 31, %28
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %23, align 1
  %conv14.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8.i, i32 %conv14.i)
  %cmp15.not.i = icmp slt i32 %sub8.i, %conv14.i
  br i1 %cmp15.not.i, label %if.end12.i.if.end19.i_crit_edge, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end12.i.if.end19.i_crit_edge, %if.then4.i14.if.end19.i_crit_edge
  %shift.0.i = phi i32 [ %sub.i, %if.then4.i14.if.end19.i_crit_edge ], [ %sub8.i, %if.end12.i.if.end19.i_crit_edge ]
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %id.i, align 4
  %conv20.i = zext i8 %34 to i32
  %mul.i17 = shl nuw nsw i32 %conv20.i, 2
  %add.i18 = add nuw nsw i32 %mul.i17, 64
  %35 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %23, align 1
  %conv22.i = zext i8 %36 to i32
  %pres_shift.i = getelementptr inbounds %struct.clk_programmable_layout, ptr %23, i32 0, i32 1
  %37 = ptrtoint ptr %pres_shift.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pres_shift.i, align 1
  %conv23.i = zext i8 %38 to i32
  %shl24.i = shl i32 %conv22.i, %conv23.i
  %shl27.i = shl i32 %shift.0.i, %conv23.i
  %call.i.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %add.i18, i32 noundef %shl24.i, i32 noundef %shl27.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19.i, %if.end12.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then4.i14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_programmable_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  %pckr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %layout1 = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pckr) #6
  %2 = ptrtoint ptr %pckr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pckr, align 4, !annotation !17
  %regmap = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %conv = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 64
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %pckr) #6
  %is_pres_direct = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %is_pres_direct to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_pres_direct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %pckr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pckr, align 4
  %pres_shift5 = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %pres_shift5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pres_shift5, align 1
  %conv6 = zext i8 %12 to i32
  %shr7 = lshr i32 %10, %conv6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %conv9 = zext i8 %14 to i32
  %and10 = and i32 %shr7, %conv9
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add4 = add nuw nsw i32 %and10, 1
  %div = udiv i32 %parent_rate, %add4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr11 = lshr i32 %parent_rate, %and10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rate.0 = phi i32 [ %div, %if.then ], [ %shr11, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pckr) #6
  ret i32 %rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_programmable_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %layout1 = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1, align 4
  %call102 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103.not = icmp eq i32 %call102, 0
  br i1 %cmp103.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %is_pres_direct = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc46.for.body_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc47, %for.inc46.for.body_crit_edge ]
  %tmp_rate.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %tmp_rate.4, %for.inc46.for.body_crit_edge ]
  %best_rate.0104 = phi i32 [ -22, %for.body.lr.ph ], [ %best_rate.2, %for.inc46.for.body_crit_edge ]
  %call2 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.0106) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.for.inc46_crit_edge, label %if.end

for.body.for.inc46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46

if.end:                                           ; preds = %for.body
  %call3 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call2) #6
  %2 = ptrtoint ptr %is_pres_direct to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_pres_direct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv16 = zext i8 %5 to i32
  br i1 %tobool4.not, label %for.cond14.preheader, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %if.end
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 4
  br label %for.body9

for.cond14.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1799.not = icmp eq i8 %5, 0
  br i1 %cmp1799.not, label %for.cond14.preheader.if.end28_crit_edge, label %for.body19.lr.ph

for.cond14.preheader.if.end28_crit_edge:          ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.body19.lr.ph:                                 ; preds = %for.cond14.preheader
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %req, align 4
  br label %for.body19

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond6.preheader
  %shift.098 = phi i32 [ 0, %for.cond6.preheader ], [ %add, %for.body9.for.body9_crit_edge ]
  %add = add nuw nsw i32 %shift.098, 1
  %div = udiv i32 %call3, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %7)
  %cmp10.not = icmp ule i32 %div, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.098, i32 %conv16)
  %cmp7.not = icmp uge i32 %shift.098, %conv16
  %or.cond = select i1 %cmp10.not, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %for.body9.if.end28_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

for.body9.if.end28_crit_edge:                     ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.body19.lr.ph
  %shift.1100 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc26, %for.body19.for.body19_crit_edge ]
  %shr = lshr i32 %call3, %shift.1100
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %9)
  %cmp21.not = icmp ugt i32 %shr, %9
  %inc26 = add nuw nsw i32 %shift.1100, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc26, i32 %conv16)
  %cmp17 = icmp ult i32 %inc26, %conv16
  %or.cond108 = select i1 %cmp21.not, i1 %cmp17, i1 false
  br i1 %or.cond108, label %for.body19.for.body19_crit_edge, label %for.body19.if.end28_crit_edge

for.body19.if.end28_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19

if.end28:                                         ; preds = %for.body19.if.end28_crit_edge, %for.body9.if.end28_crit_edge, %for.cond14.preheader.if.end28_crit_edge
  %tmp_rate.3 = phi i32 [ %tmp_rate.0105, %for.cond14.preheader.if.end28_crit_edge ], [ %shr, %for.body19.if.end28_crit_edge ], [ %div, %for.body9.if.end28_crit_edge ]
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %tmp_rate.3)
  %cmp30 = icmp ult i32 %11, %tmp_rate.3
  br i1 %cmp30, label %if.end28.for.inc46_crit_edge, label %if.end33

if.end28.for.inc46_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.0104)
  %cmp34 = icmp slt i32 %best_rate.0104, 0
  br i1 %cmp34, label %if.end33.if.then41_crit_edge, label %lor.lhs.false

if.end33.if.then41_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

lor.lhs.false:                                    ; preds = %if.end33
  %sub = sub i32 %11, %tmp_rate.3
  %sub38 = sub i32 %11, %best_rate.0104
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub38)
  %cmp39 = icmp ult i32 %sub, %sub38
  br i1 %cmp39, label %lor.lhs.false.if.then41_crit_edge, label %lor.lhs.false.if.end42_crit_edge

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

if.then41:                                        ; preds = %lor.lhs.false.if.then41_crit_edge, %if.end33.if.then41_crit_edge
  %12 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3, ptr %best_parent_rate, align 4
  %13 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2, ptr %best_parent_hw, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %lor.lhs.false.if.end42_crit_edge
  %best_rate.1 = phi i32 [ %tmp_rate.3, %if.then41 ], [ %best_rate.0104, %lor.lhs.false.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.1)
  %tobool43.not = icmp eq i32 %best_rate.1, 0
  br i1 %tobool43.not, label %if.end42.if.end52_crit_edge, label %if.end42.for.inc46_crit_edge

if.end42.for.inc46_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc46

if.end42.if.end52_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

for.inc46:                                        ; preds = %if.end42.for.inc46_crit_edge, %if.end28.for.inc46_crit_edge, %for.body.for.inc46_crit_edge
  %best_rate.2 = phi i32 [ %best_rate.0104, %if.end28.for.inc46_crit_edge ], [ %best_rate.1, %if.end42.for.inc46_crit_edge ], [ %best_rate.0104, %for.body.for.inc46_crit_edge ]
  %tmp_rate.4 = phi i32 [ %tmp_rate.3, %if.end28.for.inc46_crit_edge ], [ %tmp_rate.3, %if.end42.for.inc46_crit_edge ], [ %tmp_rate.0105, %for.body.for.inc46_crit_edge ]
  %inc47 = add nuw i32 %i.0106, 1
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #6
  %cmp = icmp ult i32 %inc47, %call
  br i1 %cmp, label %for.inc46.for.body_crit_edge, label %for.end48

for.inc46.for.body_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end48:                                        ; preds = %for.inc46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.2)
  %cmp49 = icmp slt i32 %best_rate.2, 0
  br i1 %cmp49, label %for.end48.cleanup_crit_edge, label %for.end48.if.end52_crit_edge

for.end48.if.end52_crit_edge:                     ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

for.end48.cleanup_crit_edge:                      ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %for.end48.if.end52_crit_edge, %if.end42.if.end52_crit_edge
  %best_rate.394 = phi i32 [ %best_rate.2, %for.end48.if.end52_crit_edge ], [ 0, %if.end42.if.end52_crit_edge ]
  %14 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %best_rate.394, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %for.end48.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ %best_rate.2, %for.end48.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_programmable_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %layout1 = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1, align 4
  %css_mask = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %css_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %css_mask, align 1
  %conv = zext i8 %3 to i32
  %conv2 = zext i8 %index to i32
  %have_slck_mck = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %have_slck_mck to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %have_slck_mck, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %or = or i32 %conv, 256
  %spec.select = select i1 %tobool.not, i32 %conv, i32 %or
  %mux_table = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %mux_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mux_table, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %entry.if.end6_crit_edge, label %if.then4

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_mux_index_to_val(ptr noundef nonnull %7, i32 noundef 0, i8 noundef zeroext %index) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  %pckr.0 = phi i32 [ %call, %if.then4 ], [ %conv2, %entry.if.end6_crit_edge ]
  %8 = ptrtoint ptr %css_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %css_mask, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %index)
  %cmp = icmp ult i8 %9, %index
  br i1 %cmp, label %if.then11, label %if.end6.if.end20_crit_edge

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %index)
  %cmp13 = icmp ugt i8 %index, 3
  br i1 %cmp13, label %land.lhs.true, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then11
  %10 = ptrtoint ptr %have_slck_mck to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %have_slck_mck, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool16.not = icmp eq i8 %11, 0
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.then11.if.end18_crit_edge
  %or19 = or i32 %pckr.0, 256
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end6.if.end20_crit_edge
  %pckr.1 = phi i32 [ %or19, %if.end18 ], [ %pckr.0, %if.end6.if.end20_crit_edge ]
  %regmap = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 3
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id, align 4
  %conv21 = zext i8 %15 to i32
  %mul = shl nuw nsw i32 %conv21, 2
  %add = add nuw nsw i32 %mul, 64
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %add, i32 noundef %spec.select, i32 noundef %pckr.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_programmable_get_parent(ptr noundef %hw) #5 align 64 {
entry:
  %pckr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %layout1 = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pckr) #6
  %2 = ptrtoint ptr %pckr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pckr, align 4, !annotation !17
  %regmap = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %conv = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 64
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %pckr) #6
  %7 = ptrtoint ptr %pckr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pckr, align 4
  %css_mask = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %css_mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %css_mask, align 1
  %11 = trunc i32 %8 to i8
  %conv3 = and i8 %10, %11
  %have_slck_mck = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %have_slck_mck to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %have_slck_mck, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %and5 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool8.not = icmp eq i8 %conv3, 0
  %spec.store.select = select i1 %tobool8.not, i8 4, i8 %conv3
  %ret.0 = select i1 %or.cond, i8 %conv3, i8 %spec.store.select
  %mux_table = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %mux_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux_table, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %entry.if.end16_crit_edge, label %if.then10

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv13 = zext i8 %ret.0 to i32
  %call14 = call i32 @clk_mux_val_to_index(ptr noundef %hw, ptr noundef nonnull %15, i32 noundef 0, i32 noundef %conv13) #6
  %conv15 = trunc i32 %call14 to i8
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %entry.if.end16_crit_edge
  %ret.1 = phi i8 [ %conv15, %if.then10 ], [ %ret.0, %entry.if.end16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pckr) #6
  ret i8 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_programmable_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %layout1 = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %layout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout1, align 4
  %div2 = udiv i32 %parent_rate, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %tobool.not = icmp ugt i32 %rate, %parent_rate
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_pres_direct = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_pres_direct to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_pres_direct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %sub = add i32 %div2, -1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp = icmp sgt i32 %sub, %conv
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %if.then4.if.end19_crit_edge

if.then4.if.end19_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %6 = tail call i32 @llvm.ctlz.i32(i32 %div2, i1 false) #6, !range !18
  %shl = lshr i32 -2147483648, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %div2, i32 %shl)
  %cmp9.not = icmp eq i32 %div2, %shl
  br i1 %cmp9.not, label %if.end12, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %sub8 = sub nsw i32 31, %6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %conv14 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %conv14)
  %cmp15.not = icmp slt i32 %sub8, %conv14
  br i1 %cmp15.not, label %if.end12.if.end19_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %if.end12.if.end19_crit_edge, %if.then4.if.end19_crit_edge
  %shift.0 = phi i32 [ %sub, %if.then4.if.end19_crit_edge ], [ %sub8, %if.end12.if.end19_crit_edge ]
  %regmap = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %id = getelementptr inbounds %struct.clk_programmable, ptr %hw, i32 0, i32 3
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 4
  %conv20 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv20, 2
  %add = add nuw nsw i32 %mul, 64
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %conv22 = zext i8 %14 to i32
  %pres_shift = getelementptr inbounds %struct.clk_programmable_layout, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %pres_shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pres_shift, align 1
  %conv23 = zext i8 %16 to i32
  %shl24 = shl i32 %conv22, %conv23
  %shl27 = shl i32 %shift.0, %conv23
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %add, i32 noundef %shl24, i32 noundef %shl27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @at91rm9200_programmable_layout, !1, !"at91rm9200_programmable_layout", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-programmable.c", i32 256, i32 38}
!2 = !{ptr @at91sam9g45_programmable_layout, !3, !"at91sam9g45_programmable_layout", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/clk-programmable.c", i32 264, i32 38}
!4 = !{ptr @at91sam9x5_programmable_layout, !5, !"at91sam9x5_programmable_layout", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/clk-programmable.c", i32 272, i32 38}
!6 = !{ptr @programmable_ops, !7, !"programmable_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/at91/clk-programmable.c", i32 205, i32 29}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{i32 0, i32 33}
