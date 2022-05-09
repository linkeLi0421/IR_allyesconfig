; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-iproc-asiu.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-iproc-asiu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.iproc_asiu = type { ptr, ptr, ptr, ptr }
%struct.iproc_asiu_clk = type { %struct.clk_hw, ptr, ptr, i32, %struct.iproc_asiu_div, %struct.iproc_asiu_gate }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.iproc_asiu_div = type { i32, i32, i32, i32, i32, i32 }
%struct.iproc_asiu_gate = type { i32, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/bcm/clk-iproc-asiu.c\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@iproc_asiu_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @iproc_asiu_clk_enable, ptr @iproc_asiu_clk_disable, ptr null, ptr null, ptr null, ptr null, ptr @iproc_asiu_clk_recalc_rate, ptr @iproc_asiu_clk_round_rate, ptr null, ptr null, ptr null, ptr @iproc_asiu_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iproc_asiu_clk_recalc_rate.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_iproc_asiu\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iproc_asiu_clk_recalc_rate\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: rate: %lu. parent rate: %lu div_h: %u div_l: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 193, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 224, i32 45 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"iproc_asiu_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 177, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [36 x i8] c"../drivers/clk/bcm/clk-iproc-asiu.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 105, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @iproc_asiu_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_asiu_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @iproc_asiu_setup(ptr noundef %node, ptr noundef readonly %div, ptr noundef readonly %gate, i32 noundef %num_clks) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gate, null
  %tobool1.not = icmp eq ptr %div, null
  %spec.select = or i1 %tobool1.not, %tobool.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 193, i32 noundef 9, ptr noundef null) #8
  br label %cleanup349

if.end24:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #11
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %do.end44, label %if.end8.i.i, !prof !20

do.end44:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 9, ptr noundef null) #8
  br label %cleanup349

if.end8.i.i:                                      ; preds = %if.end24
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_clks, i32 4) #8
  %2 = extractvalue { i32, i1 } %1, 1
  %3 = extractvalue { i32, i1 } %1, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %3, i32 4) #8
  %retval.0.i = select i1 %2, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #12
  %clk_data = getelementptr inbounds %struct.iproc_asiu, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %clk_data, align 8
  %tobool65.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool65.not, label %do.end83, label %if.end99.critedge, !prof !20

do.end83:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %err_clks

if.end99.critedge:                                ; preds = %if.end8.i.i
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %num_clks, ptr %call9.i.i, align 128
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_clks, i32 56) #8
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !20

kcalloc.exit.thread:                              ; preds = %if.end99.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %clks412 = getelementptr inbounds %struct.iproc_asiu, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %clks412 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %clks412, align 4
  br label %do.end122

if.end7.i.i:                                      ; preds = %if.end99.critedge
  %9 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #12
  %clks = getelementptr inbounds %struct.iproc_asiu, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %clks, align 4
  %tobool104.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool104.not, label %if.end7.i.i.do.end122_crit_edge, label %if.end138.critedge, !prof !20

if.end7.i.i.do.end122_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122

do.end122:                                        ; preds = %if.end7.i.i.do.end122_crit_edge, %kcalloc.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef null) #8
  br label %err_asiu_clks

if.end138.critedge:                               ; preds = %if.end7.i.i
  %call139 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call139, ptr %call7.i.i, align 8
  %tobool142.not = icmp eq ptr %call139, null
  br i1 %tobool142.not, label %do.end160, label %if.end176.critedge, !prof !20

do.end160:                                        ; preds = %if.end138.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #8
  br label %err_iomap_div

if.end176.critedge:                               ; preds = %if.end138.critedge
  %call177 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 1) #8
  %gate_base = getelementptr inbounds %struct.iproc_asiu, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %gate_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call177, ptr %gate_base, align 4
  %tobool180.not = icmp eq ptr %call177, null
  br i1 %tobool180.not, label %do.end198, label %for.cond.preheader, !prof !20

for.cond.preheader:                               ; preds = %if.end176.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clks)
  %cmp424.not = icmp eq i32 %num_clks, 0
  br i1 %cmp424.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  br label %for.body

do.end198:                                        ; preds = %if.end176.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef null) #8
  br label %err_iomap_gate

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0425 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %13 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #8
  %14 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %15 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !21
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %i.0425) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool217.not = icmp sgt i32 %call.i, -1
  br i1 %tobool217.not, label %if.end249, label %for.body.cleanup.thread_crit_edge, !prof !22

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end249:                                        ; preds = %for.body
  %16 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clks, align 4
  %arrayidx = getelementptr %struct.iproc_asiu_clk, ptr %17, i32 %i.0425
  %18 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_name, align 4
  %name = getelementptr %struct.iproc_asiu_clk, ptr %17, i32 %i.0425, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %name, align 4
  %asiu251 = getelementptr %struct.iproc_asiu_clk, ptr %17, i32 %i.0425, i32 2
  %21 = ptrtoint ptr %asiu251 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %asiu251, align 4
  %div252 = getelementptr %struct.iproc_asiu_clk, ptr %17, i32 %i.0425, i32 4
  %arrayidx253 = getelementptr %struct.iproc_asiu_div, ptr %div, i32 %i.0425
  %22 = call ptr @memcpy(ptr %div252, ptr %arrayidx253, i32 24)
  %gate254 = getelementptr %struct.iproc_asiu_clk, ptr %17, i32 %i.0425, i32 5
  %arrayidx255 = getelementptr %struct.iproc_asiu_gate, ptr %gate, i32 %i.0425
  %23 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %arrayidx255, align 4
  %25 = ptrtoint ptr %gate254 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %gate254, align 4
  %26 = load ptr, ptr %clk_name, align 4
  %27 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %init, align 4
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @iproc_asiu_ops, ptr %ops, align 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %flags, align 4
  %call257 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #8
  %30 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call257, ptr %parent_name, align 4
  %tobool258.not = icmp eq ptr %call257, null
  %parent_name. = select i1 %tobool258.not, ptr null, ptr %parent_name
  %31 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %parent_name., ptr %parent_names, align 4
  %tobool259.not = icmp ne ptr %call257, null
  %conv = zext i1 %tobool259.not to i8
  %32 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %num_parents, align 4
  %init261 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx, i32 0, i32 2
  %33 = ptrtoint ptr %init261 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %init, ptr %init261, align 4
  %call263 = call i32 @clk_hw_register(ptr noundef null, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool265.not = icmp eq i32 %call263, 0
  br i1 %tobool265.not, label %for.inc, label %if.end249.cleanup.thread_crit_edge, !prof !22

if.end249.cleanup.thread_crit_edge:               ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end249.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %.sink = phi i32 [ 226, %for.body.cleanup.thread_crit_edge ], [ 243, %if.end249.cleanup.thread_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  br label %err_clk_register

for.inc:                                          ; preds = %if.end249
  %34 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_data, align 8
  %arrayidx300 = getelementptr %struct.clk_hw_onecell_data, ptr %35, i32 0, i32 1, i32 %i.0425
  %36 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx, ptr %arrayidx300, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  %inc = add nuw i32 %i.0425, 1
  %exitcond.not = icmp eq i32 %inc, %num_clks
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %37 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk_data, align 8
  %call305 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %tobool307.not = icmp eq i32 %call305, 0
  br i1 %tobool307.not, label %for.end.cleanup349_crit_edge, label %do.end323, !prof !22

for.end.cleanup349_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup349

do.end323:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8
  br label %err_clk_register

err_clk_register:                                 ; preds = %do.end323, %cleanup.thread
  %i.0422 = phi i32 [ %i.0425, %cleanup.thread ], [ %num_clks, %do.end323 ]
  %dec426 = add i32 %i.0422, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec426)
  %cmp340427 = icmp sgt i32 %dec426, -1
  br i1 %cmp340427, label %err_clk_register.while.body_crit_edge, label %err_clk_register.while.end_crit_edge

err_clk_register.while.end_crit_edge:             ; preds = %err_clk_register
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

err_clk_register.while.body_crit_edge:            ; preds = %err_clk_register
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_clk_register.while.body_crit_edge
  %dec428 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec426, %err_clk_register.while.body_crit_edge ]
  %39 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk_data, align 8
  %arrayidx344 = getelementptr %struct.clk_hw_onecell_data, ptr %40, i32 0, i32 1, i32 %dec428
  %41 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx344, align 4
  call void @clk_hw_unregister(ptr noundef %42) #8
  %dec = add nsw i32 %dec428, -1
  %cmp340 = icmp sgt i32 %dec428, 0
  br i1 %cmp340, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %err_clk_register.while.end_crit_edge
  %43 = ptrtoint ptr %gate_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gate_base, align 4
  call void @iounmap(ptr noundef %44) #8
  br label %err_iomap_gate

err_iomap_gate:                                   ; preds = %while.end, %do.end198
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  call void @iounmap(ptr noundef %46) #8
  br label %err_iomap_div

err_iomap_div:                                    ; preds = %err_iomap_gate, %do.end160
  %47 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clks, align 4
  call void @kfree(ptr noundef %48) #8
  br label %err_asiu_clks

err_asiu_clks:                                    ; preds = %err_iomap_div, %do.end122
  %49 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk_data, align 8
  call void @kfree(ptr noundef %50) #8
  br label %err_clks

err_clks:                                         ; preds = %err_asiu_clks, %do.end83
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup349

cleanup349:                                       ; preds = %err_clks, %for.end.cleanup349_crit_edge, %do.end44, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_asiu_clk_enable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gate = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %asiu1 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %asiu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asiu1, align 4
  %gate_base = getelementptr inbounds %struct.iproc_asiu, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gate_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gate_base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !23
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !24
  %en_shift = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %en_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %en_shift, align 4
  %shl = shl nuw i32 1, %9
  %or = or i32 %shl, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %gate_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gate_base, align 4
  %13 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gate, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %10) #8, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_asiu_clk_disable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gate = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %asiu1 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %asiu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asiu1, align 4
  %gate_base = getelementptr inbounds %struct.iproc_asiu, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gate_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gate_base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !23
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  %en_shift = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %en_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %en_shift, align 4
  %shl = shl nuw i32 1, %9
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %gate_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gate_base, align 4
  %13 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gate, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %10) #8, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_asiu_clk_recalc_rate(ptr nocapture noundef %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp = icmp eq i32 %parent_rate, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rate = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rate, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %asiu1 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %asiu1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %asiu1, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %div = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %div, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 %6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !23
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !29
  %en_shift = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %en_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %en_shift, align 4
  %shl = shl nuw i32 1, %10
  %and = and i32 %shl, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rate8 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 3
  %11 = ptrtoint ptr %rate8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %parent_rate, ptr %rate8, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %high_shift = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %high_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %high_shift, align 4
  %shr = lshr i32 %8, %13
  %high_width = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %high_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %high_width, align 4
  %notmask = shl nsw i32 -1, %15
  %sub = xor i32 %notmask, -1
  %and13 = and i32 %shr, %sub
  %inc = add i32 %and13, 1
  %low_shift = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %low_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %low_shift, align 4
  %shr15 = lshr i32 %8, %17
  %low_width = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 5
  %18 = ptrtoint ptr %low_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %low_width, align 4
  %notmask56 = shl nsw i32 -1, %19
  %sub18 = xor i32 %notmask56, -1
  %and19 = and i32 %shr15, %sub18
  %inc20 = add i32 %and19, 1
  %add = add i32 %inc20, %inc
  %div21 = udiv i32 %parent_rate, %add
  %rate22 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 3
  %20 = ptrtoint ptr %rate22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div21, ptr %rate22, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_asiu_clk_recalc_rate.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_asiu_clk_recalc_rate, %if.then27)) #8
          to label %do.end [label %if.then27], !srcloc !30

if.then27:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %rate22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate22, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iproc_asiu_clk_recalc_rate.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %22, i32 noundef %parent_rate, i32 noundef %inc, i32 noundef %inc20) #8
  br label %do.end

do.end:                                           ; preds = %if.then27, %if.end9
  %23 = ptrtoint ptr %rate22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate22, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %parent_rate, %if.then7 ], [ %24, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iproc_asiu_clk_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp2 = icmp eq i32 %1, %rate
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %div520 = lshr i32 %rate, 1
  %add = add i32 %1, %div520
  %div6 = udiv i32 %add, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div6)
  %cmp7 = icmp ult i32 %div6, 2
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %div10 = udiv i32 %1, %div6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div10, %if.end9 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %rate, %if.end.cleanup_crit_edge ], [ %1, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_asiu_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %asiu1 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %asiu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asiu1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp2 = icmp eq i32 %parent_rate, 0
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp3 = icmp eq i32 %rate, %parent_rate
  br i1 %cmp3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %div5 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %div5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div5, align 4
  %add.ptr6 = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !23
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !31
  %en_shift = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %en_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %en_shift, align 4
  %shl = shl nuw i32 1, %9
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %div5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %div5, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %10) #8, !srcloc !26
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %div16129 = lshr i32 %rate, 1
  %add = add i32 %div16129, %parent_rate
  %div17 = udiv i32 %add, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div17)
  %cmp18 = icmp ult i32 %div17, 2
  br i1 %cmp18, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %shr = lshr i32 %div17, 1
  %dec = add nsw i32 %shr, -1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %div25 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4
  %17 = ptrtoint ptr %div25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %div25, align 4
  %add.ptr27 = getelementptr i8, ptr %16, i32 %18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #8, !srcloc !23
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %en_shift32 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %en_shift32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %en_shift32, align 4
  %shl33 = shl nuw i32 1, %22
  %or = or i32 %shl33, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %high_width46 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %high_width46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %high_width46, align 4
  %notmask = shl nsw i32 -1, %24
  %sub48 = xor i32 %notmask, -1
  %high_shift50 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %high_shift50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %high_shift50, align 4
  %shl51 = shl i32 %sub48, %26
  br i1 %tobool.not, label %if.else68, label %if.then56

if.then56:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %neg39 = xor i32 %shl51, -1
  %and40 = and i32 %or, %neg39
  %shl43 = shl i32 %dec, %26
  %or44 = or i32 %and40, %shl43
  %low_width = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 5
  %27 = ptrtoint ptr %low_width to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %low_width, align 4
  %notmask131 = shl nsw i32 -1, %28
  %sub59 = xor i32 %notmask131, -1
  %low_shift = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %low_shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %low_shift, align 4
  %shl61 = shl i32 %sub59, %30
  %neg62 = xor i32 %shl61, -1
  %and63 = and i32 %or44, %neg62
  %shl66 = shl i32 %dec, %30
  %or67 = or i32 %and63, %shl66
  br label %do.body79

if.else68:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %low_width70 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %low_width70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %low_width70, align 4
  %notmask130 = shl nsw i32 -1, %32
  %sub72 = xor i32 %notmask130, -1
  %low_shift74 = getelementptr inbounds %struct.iproc_asiu_clk, ptr %hw, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %low_shift74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %low_shift74, align 4
  %shl75 = shl i32 %sub72, %34
  %35 = or i32 %shl75, %shl51
  %36 = xor i32 %35, -1
  %and77 = and i32 %or, %36
  br label %do.body79

do.body79:                                        ; preds = %if.else68, %if.then56
  %val.1 = phi i32 [ %or67, %if.then56 ], [ %and77, %if.else68 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = ptrtoint ptr %div25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %div25, align 4
  %add.ptr85 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %37) #8, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %do.body79, %if.end14.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %do.body79 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-iproc-asiu.c", i32 193, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/bcm/clk-iproc-asiu.c", i32 224, i32 45}
!4 = !{ptr @iproc_asiu_ops, !5, !"iproc_asiu_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/bcm/clk-iproc-asiu.c", i32 177, i32 29}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/bcm/clk-iproc-asiu.c", i32 105, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @iproc_asiu_clk_recalc_rate.__UNIQUE_ID_ddebug183, !7, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 4031792}
!24 = !{i64 2152913707}
!25 = !{i64 2152913938}
!26 = !{i64 4031374}
!27 = !{i64 2152915900}
!28 = !{i64 2152916131}
!29 = !{i64 2152918074}
!30 = !{i64 2148696315, i64 2148696320, i64 2148696333, i64 2148696377, i64 2148696411, i64 2148696432}
!31 = !{i64 2152922914}
!32 = !{i64 2152923143}
!33 = !{i64 2152924199}
!34 = !{i64 2152924590}
