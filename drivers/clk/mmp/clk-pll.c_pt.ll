; ModuleID = '/llk/IR_all_yes/drivers/clk/mmp/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mmp_clk_unit = type { i32, ptr, %struct.clk_onecell_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.mmp_param_pll_clk = type { i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.mmp_clk_pll = type { %struct.clk_hw, i32, ptr, i32, ptr, i8, i32, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@mmp_register_pll_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to register clock %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmp_register_pll_clks\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/mmp/clk-pll.c\00", [38 x i8] zeroinitializer }, align 32
@mmp_register_pll_clks._entry_ptr = internal global ptr @mmp_register_pll_clks._entry, section ".printk_index", align 4
@mmp_clk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @mmp_clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mmp_clk_pll_recalc_rate.postdivs = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\03\04\05\06\08\0A\0C\10", [23 x i8] zeroinitializer }, align 32
@mmp_clk_pll_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013bad refdiv: %d (0x%08x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mmp_clk_pll_recalc_rate\00", [40 x i8] zeroinitializer }, align 32
@mmp_clk_pll_recalc_rate._entry_ptr = internal global ptr @mmp_clk_pll_recalc_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 163, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"mmp_clk_pll_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 95, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"postdivs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 68, i32 19 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [29 x i8] c"../drivers/clk/mmp/clk-pll.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 84, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @mmp_clk_pll_recalc_rate._entry, ptr @mmp_clk_pll_recalc_rate._entry_ptr, ptr @mmp_register_pll_clks._entry, ptr @mmp_register_pll_clks._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mmp_clk_pll_ops, ptr @mmp_clk_pll_recalc_rate.postdivs, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_pll_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_clk_pll_recalc_rate.postdivs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_clk_pll_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_register_pll_clks(ptr nocapture noundef readonly %unit, ptr nocapture noundef readonly %clks, ptr noundef %base, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp58 = icmp sgt i32 %size, 0
  br i1 %cmp58, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %init.i, i32 12
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %clk_table = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mmp_param_pll_clk, ptr %clks, i32 %i.059
  %offset = getelementptr %struct.mmp_param_pll_clk, ptr %clks, i32 %i.059, i32 5
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset, align 4
  %name = getelementptr %struct.mmp_param_pll_clk, ptr %clks, i32 %i.059, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %default_rate = getelementptr %struct.mmp_param_pll_clk, ptr %clks, i32 %i.059, i32 2
  %5 = ptrtoint ptr %default_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %default_rate, align 4
  %enable_offset = getelementptr %struct.mmp_param_pll_clk, ptr %clks, i32 %i.059, i32 3
  %7 = ptrtoint ptr %enable_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable_offset, align 4
  %enable = getelementptr %struct.mmp_param_pll_clk, ptr %clks, i32 %i.059, i32 4
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable, align 4
  %shift = getelementptr %struct.mmp_param_pll_clk, ptr %clks, i32 %i.059, i32 6
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift, align 4
  %input_rate = getelementptr %struct.mmp_param_pll_clk, ptr %clks, i32 %i.059, i32 7
  %13 = ptrtoint ptr %input_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %input_rate, align 4
  %postdiv_offset = getelementptr %struct.mmp_param_pll_clk, ptr %clks, i32 %i.059, i32 8
  %15 = ptrtoint ptr %postdiv_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %postdiv_offset, align 4
  %postdiv_shift = getelementptr %struct.mmp_param_pll_clk, ptr %clks, i32 %i.059, i32 9
  %17 = ptrtoint ptr %postdiv_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %postdiv_shift, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %19 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 44) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %mmp_clk_register_pll.exit.thread, label %if.end.i

mmp_clk_register_pll.exit.thread:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %conv = trunc i32 %18 to i8
  %add.ptr11 = getelementptr i8, ptr %base, i32 %16
  %add.ptr6 = getelementptr i8, ptr %base, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %add.ptr = getelementptr i8, ptr %base, i32 %2
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  %21 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %4, ptr %init.i, align 4
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mmp_clk_pll_ops, ptr %ops.i, align 4
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flags.i, align 4
  %24 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %parent_names.i, align 4
  %25 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %num_parents.i, align 4
  %default_rate3.i = getelementptr inbounds %struct.mmp_clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %default_rate3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %6, ptr %default_rate3.i, align 4
  %enable_reg4.i = getelementptr inbounds %struct.mmp_clk_pll, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %enable_reg4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr6, ptr %enable_reg4.i, align 8
  %enable5.i = getelementptr inbounds %struct.mmp_clk_pll, ptr %call7.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %enable5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %10, ptr %enable5.i, align 4
  %reg6.i = getelementptr inbounds %struct.mmp_clk_pll, ptr %call7.i.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %reg6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.select, ptr %reg6.i, align 8
  %shift7.i = getelementptr inbounds %struct.mmp_clk_pll, ptr %call7.i.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %shift7.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %12, ptr %shift7.i, align 4
  %input_rate8.i = getelementptr inbounds %struct.mmp_clk_pll, ptr %call7.i.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %input_rate8.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %14, ptr %input_rate8.i, align 8
  %postdiv_reg9.i = getelementptr inbounds %struct.mmp_clk_pll, ptr %call7.i.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %postdiv_reg9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr11, ptr %postdiv_reg9.i, align 4
  %postdiv_shift10.i = getelementptr inbounds %struct.mmp_clk_pll, ptr %call7.i.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %postdiv_shift10.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %postdiv_shift10.i, align 8
  %init11.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %init11.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %init.i, ptr %init11.i, align 8
  %call13.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #6
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mmp_clk_register_pll.exit.thread60, label %if.end18

mmp_clk_register_pll.exit.thread60:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br label %do.end

do.end:                                           ; preds = %mmp_clk_register_pll.exit.thread60, %mmp_clk_register_pll.exit.thread
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %36) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool20.not = icmp eq i32 %38, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %clk_table to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk_table, align 4
  %arrayidx24 = getelementptr ptr, ptr %40, i32 %38
  %41 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call13.i, ptr %arrayidx24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end18.cleanup_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_clk_pll_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !24
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %enable = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable, align 4
  %and = and i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp = icmp eq i32 %and, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %default_rate = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %default_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not = icmp ne i32 %7, 0
  %. = zext i1 %cmp3.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_clk_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !24
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %enable = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable, align 4
  %and = and i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %cmp.not = icmp eq i32 %and, %5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %default_rate = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %default_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_rate, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #6, !srcloc !24
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %shift = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 5
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift, align 4
  %conv = zext i8 %13 to i32
  %shr = lshr i32 %11, %conv
  %and8 = and i32 %shr, 511
  %add = add nuw nsw i32 %conv, 9
  %shr11 = lshr i32 %11, %add
  %and12 = and i32 %shr11, 31
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.end.if.end13_crit_edge
  %val.0 = phi i32 [ %11, %if.then3 ], [ %3, %if.end.if.end13_crit_edge ]
  %refdiv.0 = phi i32 [ %and12, %if.then3 ], [ 1, %if.end.if.end13_crit_edge ]
  %fbdiv.0 = phi i32 [ %and8, %if.then3 ], [ 2, %if.end.if.end13_crit_edge ]
  %postdiv_reg = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 7
  %14 = ptrtoint ptr %postdiv_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %postdiv_reg, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.else440, label %if.then15

if.then15:                                        ; preds = %if.end13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #6, !srcloc !24
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %postdiv_shift = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 8
  %18 = ptrtoint ptr %postdiv_shift to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %postdiv_shift, align 4
  %conv20 = zext i8 %19 to i32
  %shr21 = lshr i32 %17, %conv20
  %and22 = and i32 %shr21, 7
  %input_rate = getelementptr inbounds %struct.mmp_clk_pll, ptr %hw, i32 0, i32 6
  %20 = ptrtoint ptr %input_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %input_rate, align 4
  %conv23 = zext i32 %21 to i64
  %mul = shl nuw nsw i32 %fbdiv.0, 1
  %conv24 = zext i32 %mul to i64
  %mul25 = mul nuw nsw i64 %conv23, %conv24
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul25)
  %cmp202 = icmp ult i64 %mul25, 4294967296
  br i1 %cmp202, label %if.then206, label %if.else212, !prof !25

if.then206:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %conv207 = trunc i64 %mul25 to i32
  %div210 = udiv i32 %conv207, %refdiv.0
  %conv211 = zext i32 %div210 to i64
  br label %if.end216

if.else212:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %refdiv.0, i64 %mul25) #11, !srcloc !26
  %asmresult1.i = extractvalue { i64, i64 } %22, 1
  br label %if.end216

if.end216:                                        ; preds = %if.else212, %if.then206
  %rate.0 = phi i64 [ %conv211, %if.then206 ], [ %asmresult1.i, %if.else212 ]
  %arrayidx = getelementptr [9 x i8], ptr @mmp_clk_pll_recalc_rate.postdivs, i32 0, i32 %and22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %conv219 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rate.0)
  %cmp420 = icmp ult i64 %rate.0, 4294967296
  br i1 %cmp420, label %if.then428, label %if.else434, !prof !25

if.then428:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #8
  %conv429 = trunc i64 %rate.0 to i32
  %div432 = udiv i32 %conv429, %conv219
  br label %cleanup

if.else434:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #8
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv219, i64 %rate.0) #11, !srcloc !26
  %asmresult1.i971 = extractvalue { i64, i64 } %25, 1
  %extract.t1070 = trunc i64 %asmresult1.i971 to i32
  br label %cleanup

if.else440:                                       ; preds = %if.end13
  %26 = zext i32 %refdiv.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %refdiv.0, label %do.end [
    i32 3, label %if.else440.if.end452_crit_edge
    i32 4, label %if.then447
  ]

if.else440.if.end452_crit_edge:                   ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end452

if.then447:                                       ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end452

do.end:                                           ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #8
  %call450 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %refdiv.0, i32 noundef %val.0) #10
  br label %cleanup

if.end452:                                        ; preds = %if.then447, %if.else440.if.end452_crit_edge
  %storemerge = phi i64 [ 26000000, %if.then447 ], [ 19200000, %if.else440.if.end452_crit_edge ]
  %add453 = add nuw nsw i32 %fbdiv.0, 2
  %conv454 = zext i32 %add453 to i64
  %mul455 = mul nuw nsw i64 %storemerge, %conv454
  %add457 = add nuw nsw i32 %refdiv.0, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul455)
  %cmp658 = icmp ult i64 %mul455, 4294967296
  br i1 %cmp658, label %if.then666, label %if.else672, !prof !25

if.then666:                                       ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #8
  %conv667 = trunc i64 %mul455 to i32
  %div670 = udiv i32 %conv667, %add457
  br label %cleanup

if.else672:                                       ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #8
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add457, i64 %mul455) #11, !srcloc !26
  %asmresult1.i994 = extractvalue { i64, i64 } %27, 1
  %extract.t1066 = trunc i64 %asmresult1.i994 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else672, %if.then666, %do.end, %if.else434, %if.then428, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %do.end ], [ %div670, %if.then666 ], [ %extract.t1066, %if.else672 ], [ %div432, %if.then428 ], [ %extract.t1070, %if.else434 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/mmp/clk-pll.c", i32 163, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mmp_register_pll_clks._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mmp_register_pll_clks._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @mmp_clk_pll_ops, !7, !"mmp_clk_pll_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/mmp/clk-pll.c", i32 95, i32 29}
!8 = !{ptr @mmp_clk_pll_recalc_rate.postdivs, !9, !"postdivs", i1 false, i1 false}
!9 = !{!"../drivers/clk/mmp/clk-pll.c", i32 68, i32 19}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mmp/clk-pll.c", i32 84, i32 4}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mmp_clk_pll_recalc_rate._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mmp_clk_pll_recalc_rate._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 4949010}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148943657, i64 2148943937, i64 2148944271, i64 2148944605}
