; ModuleID = '/llk/IR_all_yes/drivers/clk/visconti/pll.c_pt.bc'
source_filename = "../drivers/clk/visconti/pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.visconti_pll_provider = type { ptr, ptr, %struct.clk_hw_onecell_data, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.visconti_pll_info = type { i32, ptr, ptr, i32, ptr }
%struct.visconti_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.visconti_pll = type { %struct.clk_hw, ptr, ptr, i32, ptr, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@visconti_register_plls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013failed to register clock %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"visconti_register_plls\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/visconti/pll.c\00", [37 x i8] zeroinitializer }, align 32
@visconti_register_plls._entry_ptr = internal global ptr @visconti_register_plls._entry, section ".printk_index", align 4
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: could not allocate rate table for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.visconti_register_pll = private unnamed_addr constant [22 x i8] c"visconti_register_pll\00", align 1
@visconti_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @visconti_pll_enable, ptr @visconti_pll_disable, ptr @visconti_pll_is_enabled, ptr null, ptr null, ptr null, ptr @visconti_pll_recalc_rate, ptr @visconti_pll_round_rate, ptr null, ptr null, ptr null, ptr @visconti_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@visconti_register_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.visconti_register_pll, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013failed to register pll clock %s : %d\0A\00", [56 x i8] zeroinitializer }, align 32
@visconti_register_pll._entry_ptr = internal global ptr @visconti_register_pll._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 312, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 268, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"visconti_pll_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 231, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [30 x i8] c"../drivers/clk/visconti/pll.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 279, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @visconti_register_pll._entry, ptr @visconti_register_pll._entry_ptr, ptr @visconti_register_plls._entry, ptr @visconti_register_plls._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @visconti_pll_ops, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_register_plls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_register_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @visconti_register_plls(ptr noundef %ctx, ptr nocapture noundef readonly %list, i32 noundef %nr_plls, ptr noundef %lock) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_plls)
  %cmp18.not = icmp eq i32 %nr_plls, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %init.i, i32 12
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %hws.i = getelementptr inbounds %struct.visconti_pll_provider, ptr %ctx, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %list.addr.020 = phi ptr [ %list, %for.body.lr.ph ], [ %incdec.ptr, %cleanup.for.body_crit_edge ]
  %idx.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.visconti_pll_info, ptr %list.addr.020, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %parent = getelementptr inbounds %struct.visconti_pll_info, ptr %list.addr.020, i32 0, i32 2
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %base_reg = getelementptr inbounds %struct.visconti_pll_info, ptr %list.addr.020, i32 0, i32 3
  %5 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_reg, align 4
  %rate_table = getelementptr inbounds %struct.visconti_pll_info, ptr %list.addr.020, i32 0, i32 4
  %7 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rate_table, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %9 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %4, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %10 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 36) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %visconti_register_pll.exit.thread, label %if.end.i

visconti_register_pll.exit.thread:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %12 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %init.i, align 4
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %flags.i, align 4
  %14 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_name.addr.i, ptr %parent_names.i, align 4
  %15 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %num_parents.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end.i
  %len.0.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.visconti_pll_rate_table, ptr %8, i32 %len.0.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %cmp.not.i = icmp eq i32 %17, 0
  %inc.i = add i32 %len.0.i, 1
  br i1 %cmp.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %rate_count.i = getelementptr inbounds %struct.visconti_pll, ptr %call7.i.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %len.0.i, ptr %rate_count.i, align 4
  %mul.i = shl i32 %len.0.i, 5
  %call4.i = call ptr @kmemdup(ptr noundef %8, i32 noundef %mul.i, i32 noundef 3264) #10
  %rate_table5.i = getelementptr inbounds %struct.visconti_pll, ptr %call7.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %rate_table5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call4.i, ptr %rate_table5.i, align 8
  %tobool7.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool7.not.i, label %do.end.i, label %for.end.i.if.end23.i_crit_edge, !prof !24

for.end.i.if.end23.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 268, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.visconti_register_pll, ptr noundef %2) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end.i, %for.end.i.if.end23.i_crit_edge
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @visconti_pll_ops, ptr %ops.i, align 4
  %init30.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %init30.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %init.i, ptr %init30.i, align 8
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %6
  %pll_base.i = getelementptr inbounds %struct.visconti_pll, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %pll_base.i, align 4
  %lock31.i = getelementptr inbounds %struct.visconti_pll, ptr %call7.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %lock31.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lock, ptr %lock31.i, align 8
  %ctx32.i = getelementptr inbounds %struct.visconti_pll, ptr %call7.i.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %ctx32.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ctx, ptr %ctx32.i, align 8
  %call35.i = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end23.i.visconti_register_pll.exit_crit_edge, label %do.end40.i

if.end23.i.visconti_register_pll.exit_crit_edge:  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %visconti_register_pll.exit

do.end40.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %2, i32 noundef %call35.i) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %27 = inttoptr i32 %call35.i to ptr
  br label %visconti_register_pll.exit

visconti_register_pll.exit:                       ; preds = %do.end40.i, %if.end23.i.visconti_register_pll.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %do.end40.i ], [ %call7.i.i.i, %if.end23.i.visconti_register_pll.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %visconti_register_pll.exit.do.end_crit_edge, label %if.end

visconti_register_pll.exit.do.end_crit_edge:      ; preds = %visconti_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %visconti_register_pll.exit.do.end_crit_edge, %visconti_register_pll.exit.thread
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %29) #14
  br label %cleanup

if.end:                                           ; preds = %visconti_register_pll.exit
  %30 = ptrtoint ptr %list.addr.020 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %list.addr.020, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i13 = icmp eq i32 %31, 0
  br i1 %tobool.not.i13, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i14 = getelementptr [0 x ptr], ptr %hws.i, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i, ptr %arrayidx.i14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %do.end
  %inc = add nuw i32 %idx.019, 1
  %incdec.ptr = getelementptr %struct.visconti_pll_info, ptr %list.addr.020, i32 1
  %exitcond.not = icmp eq i32 %inc, %nr_plls
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @visconti_init_pll(ptr noundef %np, ptr noundef %base, i32 noundef %nr_plls) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_plls, i32 4) #10
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 16) #10
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_plls)
  %cmp15.not = icmp eq i32 %nr_plls, 0
  br i1 %cmp15.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hws = getelementptr inbounds %struct.visconti_pll_provider, ptr %call9.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %i.016
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %nr_plls
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %node = getelementptr inbounds %struct.visconti_pll_provider, ptr %call9.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %np, ptr %node, align 4
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %base, ptr %call9.i.i, align 128
  %clk_data4 = getelementptr inbounds %struct.visconti_pll_provider, ptr %call9.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %clk_data4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nr_plls, ptr %clk_data4, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %for.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pll_enable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1 = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %rate_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1, align 4
  %pll_base.i = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !26
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #10, !srcloc !28
  %10 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_base.i, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #10, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !29
  %13 = or i32 %12, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !30
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pll_base.i, align 4
  %add.ptr20 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #10, !srcloc !28
  tail call fastcc void @visconti_pll_set_params(ptr noundef %hw, ptr noundef %1)
  %16 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pll_base.i, align 4
  %add.ptr25 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !31
  %19 = and i32 %18, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !32
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pll_base.i, align 4
  %add.ptr33 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %19) #10, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #10
  %23 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pll_base.i, align 4
  %add.ptr37 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #10, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !33
  %26 = or i32 %25, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !34
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pll_base.i, align 4
  %add.ptr46 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %26) #10, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 8589920) #10
  %30 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pll_base.i, align 4
  %add.ptr50 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #10, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !35
  %33 = and i32 %32, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !36
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pll_base.i, align 4
  %add.ptr59 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %33) #10, !srcloc !28
  %36 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @visconti_pll_disable(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_base.i = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !26
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !37
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 16777216) #10, !srcloc !28
  %8 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_base.i, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !38
  %11 = or i32 %10, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_base.i, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %11) #10, !srcloc !28
  %14 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pll_base.i, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #10, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !40
  %17 = and i32 %16, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !41
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pll_base.i, align 4
  %add.ptr31 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %17) #10, !srcloc !28
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pll_is_enabled(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_base = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !25
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !26
  %and = and i32 %3, 16
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  %rate_table = alloca %struct.visconti_pll_rate_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rate_table) #10
  %0 = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 1
  %1 = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 2
  %2 = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 3
  %3 = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 4
  %4 = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 5
  %5 = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 6
  %6 = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 7
  %pll_base.i = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !25
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !42
  %and.i = lshr i32 %10, 4
  %shr.i = and i32 %and.i, 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr.i, ptr %0, align 4
  %and31.i = and i32 %10, 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and31.i, ptr %1, align 4
  %13 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pll_base.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #10, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  %16 = and i32 %15, -256
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %4, align 4
  %19 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pll_base.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %20, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #10, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !44
  %22 = and i32 %21, -15794176
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %3, align 4
  %25 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pll_base.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #10, !srcloc !25
  %28 = lshr i32 %27, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !45
  %and56.i = and i32 %28, 63
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and56.i, ptr %2, align 4
  %30 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pll_base.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %31, i32 32
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #10, !srcloc !25
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  %and64.i = and i32 %33, 7
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and64.i, ptr %5, align 4
  %shr65.i = lshr i32 %33, 4
  %and66.i = and i32 %shr65.i, 7
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and66.i, ptr %6, align 4
  %rate_table1.i = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 4
  %36 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 5
  %38 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp16.not.i = icmp eq i32 %39, 0
  br i1 %cmp16.not.i, label %entry.visconti_get_pll_rate_from_data.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.visconti_get_pll_rate_from_data.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %visconti_get_pll_rate_from_data.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %dacen.i3 = getelementptr %struct.visconti_pll_rate_table, ptr %37, i32 %i.017.i, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(28) %dacen.i3, ptr noundef dereferenceable(28) %0, i32 28) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp3.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.visconti_pll_rate_table, ptr %37, i32 %i.017.i
  br label %visconti_get_pll_rate_from_data.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %39
  br i1 %exitcond.not.i, label %for.inc.i.visconti_get_pll_rate_from_data.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.visconti_get_pll_rate_from_data.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %visconti_get_pll_rate_from_data.exit

visconti_get_pll_rate_from_data.exit:             ; preds = %for.inc.i.visconti_get_pll_rate_from_data.exit_crit_edge, %if.then.i, %entry.visconti_get_pll_rate_from_data.exit_crit_edge
  %retval.0.in.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %37, %entry.visconti_get_pll_rate_from_data.exit_crit_edge ], [ %37, %for.inc.i.visconti_get_pll_rate_from_data.exit_crit_edge ]
  %40 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rate_table) #10
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pll_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1 = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %rate_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1, align 4
  %rate_count = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %rate_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not = icmp eq i32 %3, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.visconti_pll_rate_table, ptr %1, i32 %i.019
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp3.not = icmp ugt i32 %5, %rate
  br i1 %cmp3.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = add i32 %3, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %arrayidx6 = getelementptr %struct.visconti_pll_rate_table, ptr %1, i32 %i.0.lcssa
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %for.end ], [ %5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_table1.i = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.visconti_pll, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.visconti_pll_rate_table, ptr %1, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp3.i = icmp eq i32 %5, %rate
  br i1 %cmp3.i, label %visconti_get_pll_settings.exit, label %for.cond.i

visconti_get_pll_settings.exit:                   ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %visconti_get_pll_settings.exit.cleanup_crit_edge, label %if.end

visconti_get_pll_settings.exit.cleanup_crit_edge: ; preds = %visconti_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %visconti_get_pll_settings.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @visconti_pll_set_params(ptr noundef %hw, ptr noundef nonnull %arrayidx.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %visconti_get_pll_settings.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %visconti_get_pll_settings.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @visconti_pll_set_params(ptr nocapture noundef readonly %pll, ptr nocapture noundef readonly %rate_table) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  %dacen = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 1
  %0 = ptrtoint ptr %dacen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dacen, align 4
  %shl = shl i32 %1, 4
  %dsmen = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 2
  %2 = ptrtoint ptr %dsmen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsmen, align 4
  %or = or i32 %shl, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %pll_base = getelementptr inbounds %struct.visconti_pll, ptr %pll, i32 0, i32 1
  %5 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pll_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #10, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !48
  tail call void @arm_heavy_mb() #10
  %postdiv2 = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 7
  %7 = ptrtoint ptr %postdiv2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %postdiv2, align 4
  %shl3 = shl i32 %8, 4
  %postdiv1 = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 6
  %9 = ptrtoint ptr %postdiv1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %postdiv1, align 4
  %or4 = or i32 %shl3, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %12 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_base, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %11) #10, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !49
  tail call void @arm_heavy_mb() #10
  %intin = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 4
  %14 = ptrtoint ptr %intin to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intin, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pll_base, align 4
  %add.ptr10 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %16) #10, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %fracin = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 5
  %19 = ptrtoint ptr %fracin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fracin, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pll_base, align 4
  %add.ptr14 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %21) #10, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !51
  tail call void @arm_heavy_mb() #10
  %refdiv = getelementptr inbounds %struct.visconti_pll_rate_table, ptr %rate_table, i32 0, i32 3
  %24 = ptrtoint ptr %refdiv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %refdiv, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pll_base, align 4
  %add.ptr18 = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %26) #10, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/visconti/pll.c", i32 312, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @visconti_register_plls._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @visconti_register_plls._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/visconti/pll.c", i32 268, i32 2}
!8 = !{ptr @__func__.visconti_register_pll, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/visconti/pll.c", i32 279, i32 3}
!11 = !{ptr @visconti_register_pll._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @visconti_register_pll._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @visconti_pll_ops, !14, !"visconti_pll_ops", i1 false, i1 false}
!14 = !{!"../drivers/clk/visconti/pll.c", i32 231, i32 29}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 4989203}
!26 = !{i64 2152657896}
!27 = !{i64 2152658660}
!28 = !{i64 4988785}
!29 = !{i64 2152659425}
!30 = !{i64 2152659735}
!31 = !{i64 2152660428}
!32 = !{i64 2152660736}
!33 = !{i64 2152661965}
!34 = !{i64 2152666334}
!35 = !{i64 2152667569}
!36 = !{i64 2152667879}
!37 = !{i64 2152668741}
!38 = !{i64 2152669506}
!39 = !{i64 2152669816}
!40 = !{i64 2152670509}
!41 = !{i64 2152670817}
!42 = !{i64 2152618320}
!43 = !{i64 2152649739}
!44 = !{i64 2152650935}
!45 = !{i64 2152652131}
!46 = !{i64 2152653318}
!47 = !{i64 2152655005}
!48 = !{i64 2152655656}
!49 = !{i64 2152656226}
!50 = !{i64 2152656689}
!51 = !{i64 2152657155}
