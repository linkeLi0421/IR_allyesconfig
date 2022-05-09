; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-generated.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-generated.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_generated = type { %struct.clk_hw, ptr, %struct.clk_range, ptr, ptr, i32, i32, ptr, %struct.at91_clk_pms, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_range = type { i32, i32 }
%struct.at91_clk_pms = type { i32, i32, i32, i32 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@generated_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_generated_enable, ptr @clk_generated_disable, ptr @clk_generated_is_enabled, ptr null, ptr @clk_generated_save_context, ptr @clk_generated_restore_context, ptr @clk_generated_recalc_rate, ptr null, ptr @clk_generated_determine_rate, ptr @clk_generated_set_parent, ptr @clk_generated_get_parent, ptr @clk_generated_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_generated_enable.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_generated\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_generated_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/at91/clk-generated.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"GCLK: %s, gckdiv = %d, parent id = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@clk_generated_determine_rate.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk_generated_determine_rate\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"GCLK: %s, best_rate = %ld, parent clk: %s @ %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"generated_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 276, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 62, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [36 x i8] c"../drivers/clk/at91/clk-generated.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 202, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @generated_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generated_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91_clk_register_generated(ptr noundef %regmap, ptr noundef %lock, ptr noundef %layout, ptr noundef %name, ptr noundef %parent_names, ptr noundef %mux_table, i8 noundef zeroext %num_parents, i8 noundef zeroext %id, ptr nocapture noundef readonly %range, i32 noundef %chg_pid) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 68) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @generated_ops, ptr %ops, align 4
  %parent_names3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent_names, ptr %parent_names3, align 4
  %num_parents4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %num_parents4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %num_parents, ptr %num_parents4, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chg_pid)
  %cmp = icmp sgt i32 %chg_pid, -1
  %spec.select = select i1 %cmp, i32 7, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %flags, align 4
  %conv = zext i8 %id to i32
  %id8 = getelementptr inbounds %struct.clk_generated, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %id8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %id8, align 8
  %init10 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init10, align 8
  %regmap11 = getelementptr inbounds %struct.clk_generated, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap11, align 4
  %lock12 = getelementptr inbounds %struct.clk_generated, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %lock12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock, ptr %lock12, align 8
  %range13 = getelementptr inbounds %struct.clk_generated, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %range to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %range, align 4
  %14 = ptrtoint ptr %range13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %range13, align 8
  %chg_pid14 = getelementptr inbounds %struct.clk_generated, ptr %call7.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %chg_pid14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %chg_pid, ptr %chg_pid14, align 8
  %layout15 = getelementptr inbounds %struct.clk_generated, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %layout15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %layout, ptr %layout15, align 8
  %mux_table16 = getelementptr inbounds %struct.clk_generated, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %mux_table16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mux_table, ptr %mux_table16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %tmp.i, align 4, !annotation !21
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %19 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %layout, align 4
  %pid_mask.i = getelementptr inbounds %struct.clk_pcr_layout, ptr %layout, i32 0, i32 4
  %21 = ptrtoint ptr %pid_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid_mask.i, align 4
  %and.i = and i32 %22, %conv
  %call7.i = call i32 @regmap_write(ptr noundef %regmap, i32 noundef %20, i32 noundef %and.i) #8
  %23 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %layout, align 4
  %call11.i = call i32 @regmap_read(ptr noundef %regmap, i32 noundef %24, ptr noundef nonnull %tmp.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3.i) #8
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp.i, align 4
  %gckcss_mask.i = getelementptr inbounds %struct.clk_pcr_layout, ptr %layout, i32 0, i32 3
  %27 = ptrtoint ptr %gckcss_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gckcss_mask.i, align 4
  %and14.i = and i32 %28, %26
  %29 = call i32 @llvm.cttz.i32(i32 %28, i1 true) #8, !range !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %iszero.i = icmp eq i32 %28, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %29
  %shr.i = lshr i32 %and14.i, %sub.i
  %conv17.i = trunc i32 %shr.i to i8
  %parent_id.i = getelementptr inbounds %struct.clk_generated, ptr %call7.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %parent_id.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv17.i, ptr %parent_id.i, align 4
  %and34.i = lshr i32 %26, 20
  %shr35.i = and i32 %and34.i, 255
  %gckdiv.i = getelementptr inbounds %struct.clk_generated, ptr %call7.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %gckdiv.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr35.i, ptr %gckdiv.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  %call19 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end.cleanup_crit_edge, label %if.then21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %32 = inttoptr i32 %call19 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %32, %if.then21 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_generated_enable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_generated_enable.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_generated_enable, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !23

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %gckdiv = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %gckdiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gckdiv, align 4
  %parent_id = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %parent_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %parent_id, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_generated_enable.__UNIQUE_ID_ddebug172, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %regmap.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %layout.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 7
  %8 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %layout.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %id.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 5
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %pid_mask.i = getelementptr inbounds %struct.clk_pcr_layout, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %pid_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid_mask.i, align 4
  %and.i = and i32 %15, %13
  %call6.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %11, i32 noundef %and.i) #8
  %gckdiv.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 6
  %16 = ptrtoint ptr %gckdiv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gckdiv.i, align 4
  %parent_id.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 9
  %18 = ptrtoint ptr %parent_id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %parent_id.i, align 4
  %20 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %layout.i, align 4
  %cmd.i = getelementptr inbounds %struct.clk_pcr_layout, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd.i, align 4
  %gckcss_mask.i = getelementptr inbounds %struct.clk_pcr_layout, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %gckcss_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gckcss_mask.i, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %21, align 4
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %conv14.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %iszero.i = icmp eq i32 %25, 0
  %30 = tail call i32 @llvm.cttz.i32(i32 %25, i1 true) #8, !range !22
  %sub.i = select i1 %iszero.i, i32 -1, i32 %30
  %shl.i = shl i32 %conv14.i, %sub.i
  %and19.i = and i32 %shl.i, %25
  %or.i = or i32 %23, %25
  %or13.i = or i32 %or.i, 804257792
  %shl43.i = shl i32 %17, 20
  %and44.i = and i32 %shl43.i, 267386880
  %or22.i = or i32 %and44.i, %23
  %or45.i = or i32 %or22.i, %and19.i
  %or46.i = or i32 %or45.i, 536870912
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %27, i32 noundef %or13.i, i32 noundef %or46.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %31 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %call2.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_generated_disable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %regmap = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 7
  %4 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layout, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %id = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %pid_mask = getelementptr inbounds %struct.clk_pcr_layout, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %pid_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid_mask, align 4
  %and = and i32 %11, %9
  %call7 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %7, i32 noundef %and) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %layout, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %cmd = getelementptr inbounds %struct.clk_pcr_layout, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd, align 4
  %or = or i32 %19, 536870912
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %17, i32 noundef %or, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_generated_is_enabled(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !21
  %lock = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %regmap = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %layout = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 7
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layout, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %id = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 5
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %pid_mask = getelementptr inbounds %struct.clk_pcr_layout, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %pid_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid_mask, align 4
  %and = and i32 %12, %10
  %call7 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %8, i32 noundef %and) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %layout, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %call11 = call i32 @regmap_read(ptr noundef %14, i32 noundef %18, ptr noundef nonnull %status) #8
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call3) #8
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %and13 = lshr i32 %22, 29
  %and13.lobit = and i32 %and13, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %and13.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_generated_save_context(ptr nocapture noundef %hw) #4 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status.i, align 4, !annotation !21
  %lock.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %regmap.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %layout.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 7
  %5 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layout.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %id.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 5
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  %pid_mask.i = getelementptr inbounds %struct.clk_pcr_layout, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %pid_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid_mask.i, align 4
  %and.i = and i32 %12, %10
  %call7.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %8, i32 noundef %and.i) #8
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %15 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %layout.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %call11.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %18, ptr noundef nonnull %status.i) #8
  %19 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call3.i) #8
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i, align 4
  %and13.i = lshr i32 %22, 29
  %and13.lobit.i = and i32 %and13.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  %status = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and13.lobit.i, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_generated_restore_context(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %regmap.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %layout.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 7
  %6 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layout.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %id.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 5
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %pid_mask.i = getelementptr inbounds %struct.clk_pcr_layout, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %pid_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid_mask.i, align 4
  %and.i = and i32 %13, %11
  %call6.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %9, i32 noundef %and.i) #8
  %gckdiv.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 6
  %14 = ptrtoint ptr %gckdiv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gckdiv.i, align 4
  %parent_id.i = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 9
  %16 = ptrtoint ptr %parent_id.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %parent_id.i, align 4
  %18 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %layout.i, align 4
  %cmd.i = getelementptr inbounds %struct.clk_pcr_layout, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd.i, align 4
  %gckcss_mask.i = getelementptr inbounds %struct.clk_pcr_layout, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %gckcss_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gckcss_mask.i, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %conv14.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %iszero.i = icmp eq i32 %23, 0
  %28 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true) #8, !range !22
  %sub.i = select i1 %iszero.i, i32 -1, i32 %28
  %shl.i = shl i32 %conv14.i, %sub.i
  %and19.i = and i32 %shl.i, %23
  %or.i = or i32 %21, %23
  %or13.i = or i32 %or.i, 804257792
  %shl43.i = shl i32 %15, 20
  %and44.i = and i32 %shl43.i, 267386880
  %or22.i = or i32 %and44.i, %21
  %or45.i = or i32 %or22.i, %and19.i
  %or46.i = or i32 %or45.i, 536870912
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %25, i32 noundef %or13.i, i32 noundef %or46.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %29 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %call2.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_generated_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gckdiv = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %gckdiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gckdiv, align 4
  %add = add i32 %1, 1
  %div5 = lshr i32 %add, 1
  %add2 = add i32 %div5, %parent_rate
  %div3 = udiv i32 %add2, %add
  ret i32 %div3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_generated_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #4 align 64 {
entry:
  %req_parent = alloca %struct.clk_rate_request, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_parent) #8
  %0 = call ptr @memcpy(ptr %req_parent, ptr %req, i32 20)
  %range = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 2
  %max = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp = icmp ugt i32 %4, %2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.end.if.end17_crit_edge, label %land.lhs.true8

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true8:                                   ; preds = %if.end
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp12 = icmp ult i32 %9, %7
  br i1 %cmp12, label %if.then13, label %land.lhs.true8.if.end17_crit_edge

land.lhs.true8.if.end17_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %req, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %land.lhs.true8.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %call177 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp18178.not = icmp eq i32 %call177, 0
  br i1 %cmp18178.not, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %chg_pid = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 10
  %best_parent_rate.i = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %best_parent_hw.i = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0181 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %best_diff.0180 = phi i32 [ -1, %for.body.lr.ph ], [ %best_diff.2, %for.inc.for.body_crit_edge ]
  %best_rate.0179 = phi i32 [ -22, %for.body.lr.ph ], [ %best_rate.2, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %chg_pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chg_pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %i.0181)
  %cmp19 = icmp eq i32 %12, %i.0181
  br i1 %cmp19, label %for.body.for.inc_crit_edge, label %if.end21

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %call22 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.0181) #8
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.for.inc_crit_edge, label %if.end25

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool30.not = icmp eq i32 %call26, 0
  br i1 %tobool30.not, label %if.end25.for.inc_crit_edge, label %lor.lhs.false

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end25
  %add = add i32 %call26, 128
  %div29155 = lshr i32 %add, 8
  %13 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool33.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div29155, i32 %14)
  %cmp37 = icmp ugt i32 %div29155, %14
  %or.cond = select i1 %tobool33.not, i1 %cmp37, i1 false
  br i1 %or.cond, label %lor.lhs.false.for.inc_crit_edge, label %if.end39

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end39:                                         ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 4
  %div44156 = lshr i32 %16, 1
  %add45 = add i32 %div44156, %call26
  %div46 = udiv i32 %add45, %16
  %17 = tail call i32 @llvm.umin.i32(i32 %div46, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end39.if.end.i_crit_edge, label %if.else.i

if.end39.if.end.i_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %div1.i = udiv i32 %call26, %17
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end39.if.end.i_crit_edge
  %tmp_rate.0.i = phi i32 [ %div1.i, %if.else.i ], [ %call26, %if.end39.if.end.i_crit_edge ]
  %sub.i = sub i32 %16, %tmp_rate.0.i
  %18 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.0180)
  %cmp3.i = icmp sgt i32 %best_diff.0180, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.0180, i32 %18)
  %cmp4.not.i = icmp slt i32 %best_diff.0180, %18
  %or.cond.i = select i1 %cmp3.i, i1 %cmp4.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i.clk_generated_best_diff.exit_crit_edge, label %if.then5.i

if.end.i.clk_generated_best_diff.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_generated_best_diff.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %best_parent_rate.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call26, ptr %best_parent_rate.i, align 4
  %20 = ptrtoint ptr %best_parent_hw.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call22, ptr %best_parent_hw.i, align 4
  br label %clk_generated_best_diff.exit

clk_generated_best_diff.exit:                     ; preds = %if.then5.i, %if.end.i.clk_generated_best_diff.exit_crit_edge
  %best_rate.1 = phi i32 [ %best_rate.0179, %if.end.i.clk_generated_best_diff.exit_crit_edge ], [ %tmp_rate.0.i, %if.then5.i ]
  %best_diff.1 = phi i32 [ %best_diff.0180, %if.end.i.clk_generated_best_diff.exit_crit_edge ], [ %18, %if.then5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.1)
  %tobool50.not = icmp eq i32 %best_diff.1, 0
  br i1 %tobool50.not, label %clk_generated_best_diff.exit.for.end_crit_edge, label %clk_generated_best_diff.exit.for.inc_crit_edge

clk_generated_best_diff.exit.for.inc_crit_edge:   ; preds = %clk_generated_best_diff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

clk_generated_best_diff.exit.for.end_crit_edge:   ; preds = %clk_generated_best_diff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %clk_generated_best_diff.exit.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end25.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_rate.2 = phi i32 [ %best_rate.0179, %for.body.for.inc_crit_edge ], [ %best_rate.0179, %if.end21.for.inc_crit_edge ], [ %best_rate.0179, %if.end25.for.inc_crit_edge ], [ %best_rate.0179, %lor.lhs.false.for.inc_crit_edge ], [ %best_rate.1, %clk_generated_best_diff.exit.for.inc_crit_edge ]
  %best_diff.2 = phi i32 [ %best_diff.0180, %for.body.for.inc_crit_edge ], [ %best_diff.0180, %if.end21.for.inc_crit_edge ], [ %best_diff.0180, %if.end25.for.inc_crit_edge ], [ %best_diff.0180, %lor.lhs.false.for.inc_crit_edge ], [ %best_diff.1, %clk_generated_best_diff.exit.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0181, 1
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  %cmp18 = icmp ult i32 %inc, %call
  br i1 %cmp18, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %clk_generated_best_diff.exit.for.end_crit_edge, %if.end17.for.end_crit_edge
  %best_rate.3 = phi i32 [ -22, %if.end17.for.end_crit_edge ], [ %best_rate.1, %clk_generated_best_diff.exit.for.end_crit_edge ], [ %best_rate.2, %for.inc.for.end_crit_edge ]
  %best_diff.3 = phi i32 [ -1, %if.end17.for.end_crit_edge ], [ 0, %clk_generated_best_diff.exit.for.end_crit_edge ], [ %best_diff.2, %for.inc.for.end_crit_edge ]
  %chg_pid53 = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 10
  %21 = ptrtoint ptr %chg_pid53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chg_pid53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp54 = icmp slt i32 %22, 0
  br i1 %cmp54, label %for.end.do.body_crit_edge, label %if.end56

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end56:                                         ; preds = %for.end
  %call58 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %22) #8
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end56.do.body_crit_edge, label %for.cond62.preheader

if.end56.do.body_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.cond62.preheader:                             ; preds = %if.end56
  %best_parent_rate.i167 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %best_parent_hw.i168 = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  br label %for.body64

for.body64:                                       ; preds = %for.inc75.for.body64_crit_edge, %for.cond62.preheader
  %div.0188 = phi i32 [ 1, %for.cond62.preheader ], [ %inc76, %for.inc75.for.body64_crit_edge ]
  %best_diff.4187 = phi i32 [ %best_diff.3, %for.cond62.preheader ], [ %best_diff.6, %for.inc75.for.body64_crit_edge ]
  %best_rate.4186 = phi i32 [ %best_rate.3, %for.cond62.preheader ], [ %best_rate.6, %for.inc75.for.body64_crit_edge ]
  %23 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %req, align 4
  %mul = mul i32 %24, %div.0188
  %25 = ptrtoint ptr %req_parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %req_parent, align 4
  %call67 = call i32 @__clk_determine_rate(ptr noundef nonnull %call58, ptr noundef nonnull %req_parent) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %for.body64.for.inc75_crit_edge

for.body64.for.inc75_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc75

if.end70:                                         ; preds = %for.body64
  %26 = ptrtoint ptr %req_parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %req_parent, align 4
  %div1.i159 = udiv i32 %27, %div.0188
  %28 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %req, align 4
  %sub.i162 = sub i32 %29, %div1.i159
  %30 = call i32 @llvm.abs.i32(i32 %sub.i162, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_diff.4187)
  %cmp3.i163 = icmp sgt i32 %best_diff.4187, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %best_diff.4187, i32 %30)
  %cmp4.not.i164 = icmp slt i32 %best_diff.4187, %30
  %or.cond.i165 = select i1 %cmp3.i163, i1 %cmp4.not.i164, i1 false
  br i1 %or.cond.i165, label %if.end70.clk_generated_best_diff.exit170_crit_edge, label %if.then5.i169

if.end70.clk_generated_best_diff.exit170_crit_edge: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_generated_best_diff.exit170

if.then5.i169:                                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %best_parent_rate.i167 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %27, ptr %best_parent_rate.i167, align 4
  %32 = ptrtoint ptr %best_parent_hw.i168 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call58, ptr %best_parent_hw.i168, align 4
  br label %clk_generated_best_diff.exit170

clk_generated_best_diff.exit170:                  ; preds = %if.then5.i169, %if.end70.clk_generated_best_diff.exit170_crit_edge
  %best_rate.5 = phi i32 [ %best_rate.4186, %if.end70.clk_generated_best_diff.exit170_crit_edge ], [ %div1.i159, %if.then5.i169 ]
  %best_diff.5 = phi i32 [ %best_diff.4187, %if.end70.clk_generated_best_diff.exit170_crit_edge ], [ %30, %if.then5.i169 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff.5)
  %tobool72.not = icmp eq i32 %best_diff.5, 0
  br i1 %tobool72.not, label %clk_generated_best_diff.exit170.do.body_crit_edge, label %clk_generated_best_diff.exit170.for.inc75_crit_edge

clk_generated_best_diff.exit170.for.inc75_crit_edge: ; preds = %clk_generated_best_diff.exit170
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc75

clk_generated_best_diff.exit170.do.body_crit_edge: ; preds = %clk_generated_best_diff.exit170
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc75:                                        ; preds = %clk_generated_best_diff.exit170.for.inc75_crit_edge, %for.body64.for.inc75_crit_edge
  %best_rate.6 = phi i32 [ %best_rate.5, %clk_generated_best_diff.exit170.for.inc75_crit_edge ], [ %best_rate.4186, %for.body64.for.inc75_crit_edge ]
  %best_diff.6 = phi i32 [ %best_diff.5, %clk_generated_best_diff.exit170.for.inc75_crit_edge ], [ %best_diff.4187, %for.body64.for.inc75_crit_edge ]
  %inc76 = add nuw nsw i32 %div.0188, 1
  %exitcond.not = icmp eq i32 %inc76, 257
  br i1 %exitcond.not, label %for.inc75.do.body_crit_edge, label %for.inc75.for.body64_crit_edge

for.inc75.for.body64_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body64

for.inc75.do.body_crit_edge:                      ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.inc75.do.body_crit_edge, %clk_generated_best_diff.exit170.do.body_crit_edge, %if.end56.do.body_crit_edge, %for.end.do.body_crit_edge
  %best_rate.7 = phi i32 [ %best_rate.3, %for.end.do.body_crit_edge ], [ %best_rate.3, %if.end56.do.body_crit_edge ], [ %best_rate.6, %for.inc75.do.body_crit_edge ], [ %best_rate.5, %clk_generated_best_diff.exit170.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_generated_determine_rate.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_generated_determine_rate, %if.then83)) #8
          to label %do.end [label %if.then83], !srcloc !23

if.then83:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %33 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %best_parent_hw, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk, align 4
  %call84 = call ptr @__clk_get_name(ptr noundef %36) #8
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %37 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %best_parent_rate, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clk_generated_determine_rate.__UNIQUE_ID_ddebug173, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %best_rate.7, ptr noundef %call84, i32 noundef %38) #8
  br label %do.end

do.end:                                           ; preds = %if.then83, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.7)
  %cmp86 = icmp slt i32 %best_rate.7, 0
  br i1 %cmp86, label %do.end.cleanup_crit_edge, label %lor.lhs.false87

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false87:                                  ; preds = %do.end
  %39 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool90.not = icmp ne i32 %40, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %best_rate.7, i32 %40)
  %cmp94 = icmp ugt i32 %best_rate.7, %40
  %or.cond157 = select i1 %tobool90.not, i1 %cmp94, i1 false
  br i1 %or.cond157, label %lor.lhs.false87.cleanup_crit_edge, label %if.end96

lor.lhs.false87.cleanup_crit_edge:                ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end96:                                         ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %best_rate.7, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %lor.lhs.false87.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end96 ], [ -22, %lor.lhs.false87.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_parent) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_generated_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %index to i32
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv)
  %cmp.not = icmp ugt i32 %call, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mux_table = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %mux_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @clk_mux_index_to_val(ptr noundef nonnull %1, i32 noundef 0, i8 noundef zeroext %index) #8
  %conv5 = trunc i32 %call4 to i8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %if.end.cleanup.sink.split_crit_edge
  %conv5.sink = phi i8 [ %conv5, %if.then2 ], [ %index, %if.end.cleanup.sink.split_crit_edge ]
  %parent_id = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 9
  %2 = ptrtoint ptr %parent_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv5.sink, ptr %parent_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @clk_generated_get_parent(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_id = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %parent_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %parent_id, align 4
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_generated_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp = icmp ult i32 %1, %rate
  %or.cond = and i1 %tobool1.not, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %div721 = lshr i32 %rate, 1
  %add = add i32 %div721, %parent_rate
  %div8 = udiv i32 %add, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div8)
  %cmp9 = icmp ugt i32 %div8, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %rate)
  %tobool10.not = icmp ult i32 %add, %rate
  %or.cond22 = or i1 %tobool10.not, %cmp9
  br i1 %or.cond22, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %div8, -1
  %gckdiv = getelementptr inbounds %struct.clk_generated, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %gckdiv to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %gckdiv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_determine_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @generated_ops, !1, !"generated_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-generated.c", i32 276, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/clk-generated.c", i32 62, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @clk_generated_enable.__UNIQUE_ID_ddebug172, !3, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/clk-generated.c", i32 202, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @clk_generated_determine_rate.__UNIQUE_ID_ddebug173, !9, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
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
!22 = !{i32 0, i32 33}
!23 = !{i64 2148955373, i64 2148955378, i64 2148955391, i64 2148955435, i64 2148955469, i64 2148955490}
