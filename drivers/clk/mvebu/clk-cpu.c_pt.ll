; ModuleID = '/llk/IR_all_yes/drivers/clk/mvebu/clk-cpu.c_pt.bc'
source_filename = "../drivers/clk/mvebu/clk-cpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.cpu_clk = type { %struct.clk_hw, i32, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_armada_xp_cpu_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-cpu-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_cpu_clk_setup }, section "__clk_of_table", align 4
@__of_table_mv98dx3236_cpu_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv98dx3236-cpu-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_mv98dx3236_cpu_clk_setup }, section "__clk_of_table", align 4
@of_cpu_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: clock-complex base register not set\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"of_cpu_clk_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/mvebu/clk-cpu.c\00", [36 x i8] zeroinitializer }, align 32
@of_cpu_clk_setup._entry_ptr = internal global ptr @of_cpu_clk_setup._entry, section ".printk_index", align 4
@of_cpu_clk_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014%s: pmu-dfs base register not set, dynamic frequency scaling not available\0A\00", [50 x i8] zeroinitializer }, align 32
@of_cpu_clk_setup._entry_ptr.5 = internal global ptr @of_cpu_clk_setup._entry.3, section ".printk_index", align 4
@clks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpu%d\00", [26 x i8] zeroinitializer }, align 32
@cpu_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpu_recalc_rate, ptr @clk_cpu_round_rate, ptr null, ptr null, ptr null, ptr @clk_cpu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_data = internal global { %struct.clk_onecell_data, [24 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 175, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 181, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [5 x i8] c"clks\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 42, i32 21 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 204, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 208, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"cpu_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 160, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.39 = private constant [31 x i8] c"../drivers/clk/mvebu/clk-cpu.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 44, i32 32 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__of_table_armada_xp_cpu_clock, ptr @__of_table_mv98dx3236_cpu_clock, ptr @of_cpu_clk_setup._entry, ptr @of_cpu_clk_setup._entry.3, ptr @of_cpu_clk_setup._entry_ptr, ptr @of_cpu_clk_setup._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @clks, ptr @.str.6, ptr @.str.7, ptr @cpu_ops, ptr @clk_data], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_cpu_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_cpu_clk_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_cpu_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %cpu = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #10
  %call1 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  br label %cleanup223

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq ptr %call1, null
  br i1 %cmp3, label %do.end7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  %call11 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #10
  %cmp12.not312 = icmp eq ptr %call11, null
  br i1 %cmp12.not312, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %ncpus.0314 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %dn.0313 = phi ptr [ %call13, %for.body.for.body_crit_edge ], [ %call11, %if.end10.for.body_crit_edge ]
  %inc = add i32 %ncpus.0314, 1
  %call13 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %dn.0313) #10
  %cmp12.not = icmp eq ptr %call13, null
  br i1 %cmp12.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %ncpus.0.lcssa = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %ncpus.0.lcssa, i32 32) #10
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %for.end.do.end27_crit_edge, label %kcalloc.exit.thread, !prof !33

for.end.do.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

kcalloc.exit.thread:                              ; preds = %for.end
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #14
  %tobool.not326 = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not326, label %kcalloc.exit.thread.do.end27_crit_edge, label %if.end7.i.i295, !prof !33

kcalloc.exit.thread.do.end27_crit_edge:           ; preds = %kcalloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.end27:                                         ; preds = %kcalloc.exit.thread.do.end27_crit_edge, %for.end.do.end27_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 188, i32 noundef 9, ptr noundef null) #10
  br label %cpuclk_out

if.end7.i.i295:                                   ; preds = %kcalloc.exit.thread
  %3 = shl nuw nsw i32 %ncpus.0.lcssa, 2
  %call8.i.i294 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #14
  store ptr %call8.i.i294, ptr @clks, align 4
  %tobool46.not = icmp eq ptr %call8.i.i294, null
  br i1 %tobool46.not, label %do.end64, label %if.end80.critedge, !prof !33

do.end64:                                         ; preds = %if.end7.i.i295
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 192, i32 noundef 9, ptr noundef null) #10
  br label %clks_out

if.end80.critedge:                                ; preds = %if.end7.i.i295
  %call81 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #10
  %cmp83.not315 = icmp eq ptr %call81, null
  br i1 %cmp83.not315, label %if.end80.critedge.for.end218_crit_edge, label %for.body84.lr.ph

if.end80.critedge.for.end218_crit_edge:           ; preds = %if.end80.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end218

for.body84.lr.ph:                                 ; preds = %if.end80.critedge
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  br label %for.body84

for.body84:                                       ; preds = %for.inc216.for.body84_crit_edge, %for.body84.lr.ph
  %dn.1316 = phi ptr [ %call81, %for.body84.lr.ph ], [ %call217, %for.inc216.for.body84_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  %4 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu) #10
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %cpu, align 4, !annotation !34
  %tobool87.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool87.not, label %for.body84.bail_out_crit_edge, label %if.end121, !prof !33

for.body84.bail_out_crit_edge:                    ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_out

if.end121:                                        ; preds = %for.body84
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %dn.1316, ptr noundef nonnull @.str.6, ptr noundef nonnull %cpu, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool124.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool124.not, label %if.end156, label %if.end121.bail_out_crit_edge, !prof !35

if.end121.bail_out_crit_edge:                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_out

if.end156:                                        ; preds = %if.end121
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %call157 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.7, i32 noundef %8)
  %call158 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #10
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %parent_name = getelementptr %struct.cpu_clk, ptr %call8.i.i, i32 %10, i32 3
  %11 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call158, ptr %parent_name, align 4
  %clk_name160 = getelementptr %struct.cpu_clk, ptr %call8.i.i, i32 %10, i32 2
  %12 = ptrtoint ptr %clk_name160 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %clk_name160, align 16
  %cpu162 = getelementptr %struct.cpu_clk, ptr %call8.i.i, i32 %10, i32 1
  %13 = ptrtoint ptr %cpu162 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %cpu162, align 4
  %reg_base = getelementptr %struct.cpu_clk, ptr %call8.i.i, i32 %10, i32 4
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %reg_base, align 8
  br i1 %cmp3, label %if.end156.if.end167_crit_edge, label %if.then165

if.end156.if.end167_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

if.then165:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i32 %10, 2
  %add.ptr = getelementptr i8, ptr %call1, i32 %mul
  %pmu_dfs = getelementptr %struct.cpu_clk, ptr %call8.i.i, i32 %10, i32 5
  %15 = ptrtoint ptr %pmu_dfs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %pmu_dfs, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %if.end156.if.end167_crit_edge
  %init169 = getelementptr %struct.cpu_clk, ptr %call8.i.i, i32 %10, i32 0, i32 2
  %16 = ptrtoint ptr %init169 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init, ptr %init169, align 8
  %17 = ptrtoint ptr %clk_name160 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_name160, align 16
  %19 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %init, align 4
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cpu_ops, ptr %ops, align 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flags, align 4
  %22 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %parent_name, ptr %parent_names, align 4
  %23 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %num_parents, align 4
  %arrayidx174 = getelementptr %struct.cpu_clk, ptr %call8.i.i, i32 %10
  %call176 = call ptr @clk_register(ptr noundef null, ptr noundef %arrayidx174) #10
  %cmp.i = icmp ugt ptr %call176, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end167.bail_out_crit_edge, label %for.inc216, !prof !33

if.end167.bail_out_crit_edge:                     ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_out

for.inc216:                                       ; preds = %if.end167
  %24 = load ptr, ptr @clks, align 4
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx211 = getelementptr ptr, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call176, ptr %arrayidx211, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  %call217 = call ptr @of_get_next_cpu_node(ptr noundef nonnull %dn.1316) #10
  %cmp83.not = icmp eq ptr %call217, null
  br i1 %cmp83.not, label %for.inc216.for.end218_crit_edge, label %for.inc216.for.body84_crit_edge

for.inc216.for.body84_crit_edge:                  ; preds = %for.inc216
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body84

for.inc216.for.end218_crit_edge:                  ; preds = %for.inc216
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end218

for.end218:                                       ; preds = %for.inc216.for.end218_crit_edge, %if.end80.critedge.for.end218_crit_edge
  store i32 4, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %28 = load ptr, ptr @clks, align 4
  store ptr %28, ptr @clk_data, align 4
  %call219 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #10
  br label %cleanup223

bail_out:                                         ; preds = %if.end167.bail_out_crit_edge, %if.end121.bail_out_crit_edge, %for.body84.bail_out_crit_edge
  %.sink = phi i32 [ 201, %for.body84.bail_out_crit_edge ], [ 205, %if.end121.bail_out_crit_edge ], [ 225, %if.end167.bail_out_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  %29 = load ptr, ptr @clks, align 4
  call void @kfree(ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncpus.0.lcssa)
  %tobool220.not317 = icmp eq i32 %ncpus.0.lcssa, 0
  br i1 %tobool220.not317, label %bail_out.clks_out_crit_edge, label %bail_out.while.body_crit_edge

bail_out.while.body_crit_edge:                    ; preds = %bail_out
  br label %while.body

bail_out.clks_out_crit_edge:                      ; preds = %bail_out
  call void @__sanitizer_cov_trace_pc() #12
  br label %clks_out

while.body:                                       ; preds = %while.body.while.body_crit_edge, %bail_out.while.body_crit_edge
  %ncpus.1318 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %ncpus.0.lcssa, %bail_out.while.body_crit_edge ]
  %dec = add i32 %ncpus.1318, -1
  %clk_name222 = getelementptr %struct.cpu_clk, ptr %call8.i.i, i32 %dec, i32 2
  %30 = ptrtoint ptr %clk_name222 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_name222, align 16
  call void @kfree(ptr noundef %31) #10
  %tobool220.not = icmp eq i32 %dec, 0
  br i1 %tobool220.not, label %while.body.clks_out_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.clks_out_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %clks_out

clks_out:                                         ; preds = %while.body.clks_out_crit_edge, %bail_out.clks_out_crit_edge, %do.end64
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cpuclk_out

cpuclk_out:                                       ; preds = %clks_out, %do.end27
  call void @iounmap(ptr noundef nonnull %call) #10
  br label %cleanup223

cleanup223:                                       ; preds = %cpuclk_out, %for.end218, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_mv98dx3236_cpu_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef null) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_cpu_recalc_rate(ptr nocapture noundef readonly %hwclk, i32 noundef %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.cpu_clk, ptr %hwclk, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !36
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !37
  %cpu = getelementptr inbounds %struct.cpu_clk, ptr %hwclk, i32 0, i32 1
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %mul = shl i32 %5, 3
  %shr = lshr i32 %3, %mul
  %and = and i32 %shr, 63
  %div4 = udiv i32 %parent_rate, %and
  ret i32 %div4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_cpu_round_rate(ptr nocapture noundef readnone %hwclk, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp = icmp ult i32 %1, %rate
  br i1 %cmp, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div1 = udiv i32 %1, %rate
  %2 = tail call i32 @llvm.umin.i32(i32 %div1, i32 3)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %entry.if.end4_crit_edge
  %div.0 = phi i32 [ %2, %if.else ], [ 1, %entry.if.end4_crit_edge ]
  %div5 = udiv i32 %1, %div.0
  ret i32 %div5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_cpu_set_rate(ptr noundef %hwclk, i32 noundef %rate, i32 noundef %parent_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hwclk, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call zeroext i1 @__clk_is_enabled(ptr noundef %1) #10
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pmu_dfs.i = getelementptr inbounds %struct.cpu_clk, ptr %hwclk, i32 0, i32 5
  %2 = ptrtoint ptr %pmu_dfs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu_dfs.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @clk_hw_get_rate(ptr noundef %hwclk) #10
  %reg_base.i = getelementptr inbounds %struct.cpu_clk, ptr %hwclk, i32 0, i32 4
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #10, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !38
  %7 = lshr i32 %6, 8
  %and.i = and i32 %7, 63
  %mul.i = shl i32 %call.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %rate)
  %cmp.i = icmp eq i32 %mul.i, %rate
  %div1.i = zext i1 %cmp.i to i32
  %target_div.0.i = lshr i32 %and.i, %div1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target_div.0.i)
  %cmp7.i = icmp eq i32 %target_div.0.i, 0
  %8 = ptrtoint ptr %pmu_dfs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmu_dfs.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !39
  %11 = and i32 %10, -16129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %target_div.0.op.i = shl nuw nsw i32 %target_div.0.i, 16
  %shl.i = select i1 %cmp7.i, i32 65536, i32 %target_div.0.op.i
  %or.i = or i32 %12, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !40
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %14 = ptrtoint ptr %pmu_dfs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pmu_dfs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #10, !srcloc !41
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !42
  %19 = or i32 %18, 16711680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #10, !srcloc !41
  %cpu.i = getelementptr inbounds %struct.cpu_clk, ptr %hwclk, i32 0, i32 1
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %call31.i = tail call i32 @mvebu_pmsu_dfs_request(i32 noundef %23) #10
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div1.i7 = udiv i32 %parent_rate, %rate
  %reg_base.i8 = getelementptr inbounds %struct.cpu_clk, ptr %hwclk, i32 0, i32 4
  %24 = ptrtoint ptr %reg_base.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i8, align 4
  %add.ptr2.i = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !36
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !44
  %cpu.i9 = getelementptr inbounds %struct.cpu_clk, ptr %hwclk, i32 0, i32 1
  %28 = ptrtoint ptr %cpu.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i9, align 4
  %mul.i10 = shl i32 %29, 3
  %shl.i11 = shl i32 63, %mul.i10
  %neg.i = xor i32 %shl.i11, -1
  %and.i12 = and i32 %27, %neg.i
  %shl7.i = shl i32 %div1.i7, %mul.i10
  %or.i13 = or i32 %and.i12, %shl7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !45
  tail call void @arm_heavy_mb() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i13) #10
  %31 = ptrtoint ptr %reg_base.i8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base.i8, align 4
  %add.ptr9.i = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %30) #10, !srcloc !41
  %33 = ptrtoint ptr %cpu.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i9, align 4
  %add.i = add i32 %34, 20
  %shl11.i = shl nuw i32 1, %add.i
  %35 = ptrtoint ptr %reg_base.i8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base.i8, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #10, !srcloc !36
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  %or19.i = or i32 %38, %shl11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  %39 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #10
  %40 = ptrtoint ptr %reg_base.i8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #10, !srcloc !41
  %42 = ptrtoint ptr %reg_base.i8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i8, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !48
  %45 = or i32 %44, 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !49
  tail call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %reg_base.i8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base.i8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %45) #10, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #10
  %50 = and i32 %shl11.i, -16777217
  %neg39.i = xor i32 %50, -16777217
  %and40.i = and i32 %46, %neg39.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %51 = tail call i32 @llvm.bswap.i32(i32 %and40.i) #10
  %52 = ptrtoint ptr %reg_base.i8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_base.i8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #10, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #10
  br label %return

return:                                           ; preds = %if.else, %if.end.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ %call31.i, %if.end.i ], [ -19, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__clk_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_pmsu_dfs_request(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__of_table_armada_xp_cpu_clock, !1, !"__of_table_armada_xp_cpu_clock", i1 false, i1 false}
!1 = !{!"../drivers/clk/mvebu/clk-cpu.c", i32 244, i32 1}
!2 = !{ptr @__of_table_mv98dx3236_cpu_clock, !3, !"__of_table_mv98dx3236_cpu_clock", i1 false, i1 false}
!3 = !{!"../drivers/clk/mvebu/clk-cpu.c", i32 252, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/mvebu/clk-cpu.c", i32 175, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @of_cpu_clk_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @of_cpu_clk_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mvebu/clk-cpu.c", i32 181, i32 3}
!12 = !{ptr @of_cpu_clk_setup._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @of_cpu_clk_setup._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/mvebu/clk-cpu.c", i32 204, i32 34}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mvebu/clk-cpu.c", i32 208, i32 21}
!18 = !{ptr @clks, !19, !"clks", i1 false, i1 false}
!19 = !{!"../drivers/clk/mvebu/clk-cpu.c", i32 42, i32 21}
!20 = !{ptr @cpu_ops, !21, !"cpu_ops", i1 false, i1 false}
!21 = !{!"../drivers/clk/mvebu/clk-cpu.c", i32 160, i32 29}
!22 = !{ptr @clk_data, !23, !"clk_data", i1 false, i1 false}
!23 = !{!"../drivers/clk/mvebu/clk-cpu.c", i32 44, i32 32}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{!"auto-init"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 5007414}
!37 = !{i64 2152992004}
!38 = !{i64 2152999111}
!39 = !{i64 2152999597}
!40 = !{i64 2152999820}
!41 = !{i64 5006996}
!42 = !{i64 2153000503}
!43 = !{i64 2153000733}
!44 = !{i64 2152993686}
!45 = !{i64 2152993914}
!46 = !{i64 2152994604}
!47 = !{i64 2152994827}
!48 = !{i64 2152995517}
!49 = !{i64 2152995740}
!50 = !{i64 2152996697}
