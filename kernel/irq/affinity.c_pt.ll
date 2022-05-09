; ModuleID = '/llk/IR_all_yes/kernel/irq/affinity.c_pt.bc'
source_filename = "../kernel/irq/affinity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.nodemask_t = type { [1 x i32] }
%struct.node_vectors = type { i32, %union.anon }
%union.anon = type { i32 }

@irq_create_affinity_masks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/irq/affinity.c\00", [42 x i8] zeroinitializer }, align 32
@irq_default_affinity = external dso_local local_unnamed_addr global ptr, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__irq_build_affinity_masks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@alloc_nodes_vectors.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@alloc_nodes_vectors.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_topology = external dso_local global [4 x %struct.cpu_topology], align 4
@___asan_gen_.4 = private constant [25 x i8] c"../kernel/irq/affinity.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 442, i32 6 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 108, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irq_create_affinity_masks(i32 noundef %nvecs, ptr noundef %affd) local_unnamed_addr #0 align 64 {
entry:
  %nmsk.i = alloca ptr, align 4
  %npresmsk.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %affd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %affd, align 4
  %post_vectors = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 1
  %2 = ptrtoint ptr %post_vectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %post_vectors, align 4
  %add = add i32 %3, %1
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %nvecs, i32 %add)
  %calc_sets = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 4
  %5 = ptrtoint ptr %calc_sets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %calc_sets, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then4, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %calc_sets to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @default_calc_sets, ptr %calc_sets, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  %8 = ptrtoint ptr %calc_sets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %calc_sets, align 4
  tail call void %9(ptr noundef %affd, i32 noundef %4) #9
  %nr_sets = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 2
  %10 = ptrtoint ptr %nr_sets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp8 = icmp ugt i32 %11, 4
  br i1 %cmp8, label %land.rhs, label %if.end48

land.rhs:                                         ; preds = %if.end6
  %.b150 = load i1, ptr @irq_create_affinity_masks.__already_done, align 1
  br i1 %.b150, label %land.rhs.cleanup98_crit_edge, label %if.then16, !prof !21

land.rhs.cleanup98_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @irq_create_affinity_masks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 442, i32 noundef 9, ptr noundef null) #9
  br label %cleanup98

if.end48:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %nvecs)
  %tobool49.not.not = icmp ult i32 %add, %nvecs
  br i1 %tobool49.not.not, label %if.end51, label %if.end48.cleanup98_crit_edge

if.end48.cleanup98_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.end51:                                         ; preds = %if.end48
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nvecs, i32 8) #9
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end51.cleanup98_crit_edge, label %if.end7.i.i, !prof !22

if.end51.cleanup98_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.end7.i.i:                                      ; preds = %if.end51
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #12
  %tobool52.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool52.not, label %if.end7.i.i.cleanup98_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup98_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

for.cond.preheader:                               ; preds = %if.end7.i.i
  %15 = ptrtoint ptr %affd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %affd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp56169.not = icmp eq i32 %16, 0
  br i1 %cmp56169.not, label %for.cond.preheader.for.cond57.preheader_crit_edge, label %for.body.preheader

for.cond.preheader.for.cond57.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond57.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_default_affinity to i32))
  %17 = load ptr, ptr @irq_default_affinity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %18, 31
  %19 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %19, 536870908
  %20 = ptrtoint ptr %affd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %affd, align 4
  br label %for.body

for.cond57.preheader:                             ; preds = %for.body.for.cond57.preheader_crit_edge, %for.cond.preheader.for.cond57.preheader_crit_edge
  %curvec.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.cond57.preheader_crit_edge ], [ %inc, %for.body.for.cond57.preheader_crit_edge ]
  %22 = ptrtoint ptr %nr_sets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp59171.not = icmp eq i32 %23, 0
  br i1 %cmp59171.not, label %for.cond57.preheader.for.end71_crit_edge, label %for.cond57.preheader.for.body60_crit_edge

for.cond57.preheader.for.body60_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body60

for.cond57.preheader.for.end71_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end71

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %curvec.0170 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.irq_affinity_desc, ptr %call8.i.i, i32 %curvec.0170
  %24 = call ptr @memcpy(ptr %arrayidx, ptr %17, i32 %mul.i.i)
  %inc = add nuw i32 %curvec.0170, 1
  %cmp56 = icmp ult i32 %inc, %21
  br i1 %cmp56, label %for.body.for.body_crit_edge, label %for.body.for.cond57.preheader_crit_edge

for.body.for.cond57.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond57.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body60:                                       ; preds = %for.inc69.for.body60_crit_edge, %for.cond57.preheader.for.body60_crit_edge
  %curvec.1174 = phi i32 [ %add66, %for.inc69.for.body60_crit_edge ], [ %curvec.0.lcssa, %for.cond57.preheader.for.body60_crit_edge ]
  %i.0173 = phi i32 [ %inc70, %for.inc69.for.body60_crit_edge ], [ 0, %for.cond57.preheader.for.body60_crit_edge ]
  %usedvecs.0172 = phi i32 [ %add67, %for.inc69.for.body60_crit_edge ], [ 0, %for.cond57.preheader.for.body60_crit_edge ]
  %arrayidx61 = getelementptr %struct.irq_affinity, ptr %affd, i32 0, i32 3, i32 %i.0173
  %25 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx61, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmsk.i) #9
  %27 = ptrtoint ptr %nmsk.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -1 to ptr), ptr %nmsk.i, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npresmsk.i) #9
  %28 = ptrtoint ptr %npresmsk.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %npresmsk.i, align 4, !annotation !23
  %call.i = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %nmsk.i, i32 noundef 3264) #9
  br i1 %call.i, label %if.end.i, label %for.body60.cleanup_crit_edge

for.body60.cleanup_crit_edge:                     ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.body60
  %call1.i = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %npresmsk.i, i32 noundef 3264) #9
  br i1 %call1.i, label %if.end3.i, label %fail_nmsk.thread.i

fail_nmsk.thread.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %nmsk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nmsk.i, align 4
  call void @free_cpumask_var(ptr noundef %30) #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end3.i.fail_nmsk.i_crit_edge, label %for.body.i.i

if.end3.i.fail_nmsk.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_nmsk.i

for.body.i.i:                                     ; preds = %if.end3.i
  %call1.i.i = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 3264) #9
  br i1 %call1.i.i, label %if.end6.i, label %for.body.i.i.fail_nmsk.sink.split.i_crit_edge

for.body.i.i.fail_nmsk.sink.split.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_nmsk.sink.split.i

if.end6.i:                                        ; preds = %for.body.i.i
  call void @cpus_read_lock() #9
  %call4.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.i, i32 %32)
  %cmp5.i.i = icmp ult i32 %call4.i.i, %32
  br i1 %cmp5.i.i, label %if.end6.i.cpumask_set_cpu.exit.i.i_crit_edge, label %if.end6.i.build_node_to_cpumask.exit.i_crit_edge

if.end6.i.build_node_to_cpumask.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_node_to_cpumask.exit.i

if.end6.i.cpumask_set_cpu.exit.i.i_crit_edge:     ; preds = %if.end6.i
  br label %cpumask_set_cpu.exit.i.i

cpumask_set_cpu.exit.i.i:                         ; preds = %cpumask_set_cpu.exit.i.i.cpumask_set_cpu.exit.i.i_crit_edge, %if.end6.i.cpumask_set_cpu.exit.i.i_crit_edge
  %call6.i.i = phi i32 [ %call.i.i, %cpumask_set_cpu.exit.i.i.cpumask_set_cpu.exit.i.i_crit_edge ], [ %call4.i.i, %if.end6.i.cpumask_set_cpu.exit.i.i_crit_edge ]
  %33 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i.i.i.i, align 8
  call void @_set_bit(i32 noundef %call6.i.i, ptr noundef %34) #9
  %call.i.i = call i32 @cpumask_next(i32 noundef %call6.i.i, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i = icmp ult i32 %call.i.i, %35
  br i1 %cmp.i.i, label %cpumask_set_cpu.exit.i.i.cpumask_set_cpu.exit.i.i_crit_edge, label %cpumask_set_cpu.exit.i.i.build_node_to_cpumask.exit.i_crit_edge

cpumask_set_cpu.exit.i.i.build_node_to_cpumask.exit.i_crit_edge: ; preds = %cpumask_set_cpu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %build_node_to_cpumask.exit.i

cpumask_set_cpu.exit.i.i.cpumask_set_cpu.exit.i.i_crit_edge: ; preds = %cpumask_set_cpu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i.i

build_node_to_cpumask.exit.i:                     ; preds = %cpumask_set_cpu.exit.i.i.build_node_to_cpumask.exit.i_crit_edge, %if.end6.i.build_node_to_cpumask.exit.i_crit_edge
  %36 = ptrtoint ptr %nmsk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nmsk.i, align 4
  %call7.i = call fastcc i32 @__irq_build_affinity_masks(i32 noundef %curvec.1174, i32 noundef %26, i32 noundef %curvec.1174, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull @__cpu_present_mask, ptr noundef %37, ptr noundef nonnull %call8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %build_node_to_cpumask.exit.i.fail_build_affinity.i_crit_edge, label %if.end9.i

build_node_to_cpumask.exit.i.fail_build_affinity.i_crit_edge: ; preds = %build_node_to_cpumask.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_build_affinity.i

if.end9.i:                                        ; preds = %build_node_to_cpumask.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %26)
  %cmp10.not.i = icmp ult i32 %call7.i, %26
  %add.i = select i1 %cmp10.not.i, i32 %call7.i, i32 0
  %curvec.0.i = add i32 %add.i, %curvec.1174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %39 = ptrtoint ptr %npresmsk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %npresmsk.i, align 4
  %call.i.i.i = call i32 @__bitmap_andnot(ptr noundef %40, ptr noundef nonnull @__cpu_possible_mask, ptr noundef nonnull @__cpu_present_mask, i32 noundef %38) #9
  %41 = ptrtoint ptr %npresmsk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %npresmsk.i, align 4
  %43 = ptrtoint ptr %nmsk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nmsk.i, align 4
  %call14.i = call fastcc i32 @__irq_build_affinity_masks(i32 noundef %curvec.0.i, i32 noundef %26, i32 noundef %curvec.1174, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %42, ptr noundef %44, ptr noundef nonnull %call8.i.i) #9
  %45 = call i32 @llvm.smax.i32(i32 %call14.i, i32 0) #9
  br label %fail_build_affinity.i

fail_build_affinity.i:                            ; preds = %if.end9.i, %build_node_to_cpumask.exit.i.fail_build_affinity.i_crit_edge
  %nr_present.0.i = phi i32 [ 0, %build_node_to_cpumask.exit.i.fail_build_affinity.i_crit_edge ], [ %call7.i, %if.end9.i ]
  %nr_others.0.i = phi i32 [ 0, %build_node_to_cpumask.exit.i.fail_build_affinity.i_crit_edge ], [ %45, %if.end9.i ]
  %ret.0.i = phi i32 [ %call7.i, %build_node_to_cpumask.exit.i.fail_build_affinity.i_crit_edge ], [ %call14.i, %if.end9.i ]
  call void @cpus_read_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp18.i = icmp sgt i32 %ret.0.i, -1
  %add20.i = add nuw i32 %nr_others.0.i, %nr_present.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add20.i, i32 %26)
  %cmp21.i = icmp ult i32 %add20.i, %26
  %or.cond.i = select i1 %cmp18.i, i1 %cmp21.i, i1 false
  br i1 %or.cond.i, label %do.end.i, label %fail_build_affinity.i.if.end43.i_crit_edge, !prof !24

fail_build_affinity.i.if.end43.i_crit_edge:       ; preds = %fail_build_affinity.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

do.end.i:                                         ; preds = %fail_build_affinity.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 9, ptr noundef null) #9
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end.i, %fail_build_affinity.i.if.end43.i_crit_edge
  %46 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call7.i.i.i.i.i, align 8
  call void @free_cpumask_var(ptr noundef %47) #9
  br label %fail_nmsk.sink.split.i

fail_nmsk.sink.split.i:                           ; preds = %if.end43.i, %for.body.i.i.fail_nmsk.sink.split.i_crit_edge
  %ret.1.ph.i = phi i32 [ %ret.0.i, %if.end43.i ], [ -12, %for.body.i.i.fail_nmsk.sink.split.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #9
  br label %fail_nmsk.i

fail_nmsk.i:                                      ; preds = %fail_nmsk.sink.split.i, %if.end3.i.fail_nmsk.i_crit_edge
  %ret.1.i = phi i32 [ -12, %if.end3.i.fail_nmsk.i_crit_edge ], [ %ret.1.ph.i, %fail_nmsk.sink.split.i ]
  %48 = ptrtoint ptr %npresmsk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %npresmsk.i, align 4
  call void @free_cpumask_var(ptr noundef %49) #9
  %50 = ptrtoint ptr %nmsk.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nmsk.i, align 4
  call void @free_cpumask_var(ptr noundef %51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp44.i = icmp slt i32 %ret.1.i, 0
  br i1 %cmp44.i, label %fail_nmsk.i.cleanup_crit_edge, label %for.inc69

fail_nmsk.i.cleanup_crit_edge:                    ; preds = %fail_nmsk.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %fail_nmsk.i.cleanup_crit_edge, %fail_nmsk.thread.i, %for.body60.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npresmsk.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmsk.i) #9
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup98

for.inc69:                                        ; preds = %fail_nmsk.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npresmsk.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmsk.i) #9
  %add66 = add i32 %26, %curvec.1174
  %add67 = add i32 %26, %usedvecs.0172
  %inc70 = add nuw i32 %i.0173, 1
  %52 = ptrtoint ptr %nr_sets to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_sets, align 4
  %cmp59 = icmp ult i32 %inc70, %53
  br i1 %cmp59, label %for.inc69.for.body60_crit_edge, label %for.inc69.for.end71_crit_edge

for.inc69.for.end71_crit_edge:                    ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end71

for.inc69.for.body60_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60

for.end71:                                        ; preds = %for.inc69.for.end71_crit_edge, %for.cond57.preheader.for.end71_crit_edge
  %usedvecs.0.lcssa = phi i32 [ 0, %for.cond57.preheader.for.end71_crit_edge ], [ %add67, %for.inc69.for.end71_crit_edge ]
  %54 = ptrtoint ptr %affd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %affd, align 4
  %56 = call i32 @llvm.umin.i32(i32 %usedvecs.0.lcssa, i32 %4)
  %add78 = add i32 %55, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %add78, i32 %nvecs)
  %cmp81179 = icmp ult i32 %add78, %nvecs
  br i1 %cmp81179, label %for.body82.preheader, label %for.end71.for.end87_crit_edge

for.end71.for.end87_crit_edge:                    ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end87

for.body82.preheader:                             ; preds = %for.end71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_default_affinity to i32))
  %57 = load ptr, ptr @irq_default_affinity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %58 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i154 = add i32 %58, 31
  %59 = lshr i32 %sub.i.i154, 3
  %mul.i.i155 = and i32 %59, 536870908
  br label %for.body82

for.body82:                                       ; preds = %for.body82.for.body82_crit_edge, %for.body82.preheader
  %curvec.4180 = phi i32 [ %inc86, %for.body82.for.body82_crit_edge ], [ %add78, %for.body82.preheader ]
  %arrayidx83 = getelementptr %struct.irq_affinity_desc, ptr %call8.i.i, i32 %curvec.4180
  %60 = call ptr @memcpy(ptr %arrayidx83, ptr %57, i32 %mul.i.i155)
  %inc86 = add nuw i32 %curvec.4180, 1
  %exitcond.not = icmp eq i32 %inc86, %nvecs
  br i1 %exitcond.not, label %for.body82.for.end87_crit_edge, label %for.body82.for.body82_crit_edge

for.body82.for.body82_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body82

for.body82.for.end87_crit_edge:                   ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end87

for.end87:                                        ; preds = %for.body82.for.end87_crit_edge, %for.end71.for.end87_crit_edge
  %61 = ptrtoint ptr %affd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %affd, align 4
  %63 = ptrtoint ptr %post_vectors to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %post_vectors, align 4
  %sub91181 = sub i32 %nvecs, %64
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %sub91181)
  %cmp92182 = icmp ult i32 %62, %sub91181
  br i1 %cmp92182, label %for.body93.preheader, label %for.end87.cleanup98_crit_edge

for.end87.cleanup98_crit_edge:                    ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

for.body93.preheader:                             ; preds = %for.end87
  %65 = ptrtoint ptr %post_vectors to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %post_vectors, align 4
  %sub91 = sub i32 %nvecs, %66
  br label %for.body93

for.body93:                                       ; preds = %for.body93.for.body93_crit_edge, %for.body93.preheader
  %i.1183 = phi i32 [ %inc96, %for.body93.for.body93_crit_edge ], [ %62, %for.body93.preheader ]
  %is_managed = getelementptr %struct.irq_affinity_desc, ptr %call8.i.i, i32 %i.1183, i32 1
  %67 = ptrtoint ptr %is_managed to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load = load i8, ptr %is_managed, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %is_managed, align 4
  %inc96 = add nuw i32 %i.1183, 1
  %cmp92 = icmp ult i32 %inc96, %sub91
  br i1 %cmp92, label %for.body93.for.body93_crit_edge, label %for.body93.cleanup98_crit_edge

for.body93.cleanup98_crit_edge:                   ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

for.body93.for.body93_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body93

cleanup98:                                        ; preds = %for.body93.cleanup98_crit_edge, %for.end87.cleanup98_crit_edge, %cleanup, %if.end7.i.i.cleanup98_crit_edge, %if.end51.cleanup98_crit_edge, %if.end48.cleanup98_crit_edge, %if.then16, %land.rhs.cleanup98_crit_edge
  %retval.2 = phi ptr [ null, %cleanup ], [ null, %if.then16 ], [ null, %if.end48.cleanup98_crit_edge ], [ null, %if.end7.i.i.cleanup98_crit_edge ], [ null, %land.rhs.cleanup98_crit_edge ], [ null, %if.end51.cleanup98_crit_edge ], [ %call8.i.i, %for.end87.cleanup98_crit_edge ], [ %call8.i.i, %for.body93.cleanup98_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @default_calc_sets(ptr nocapture noundef writeonly %affd, i32 noundef %affvecs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_sets = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 2
  %0 = ptrtoint ptr %nr_sets to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %nr_sets, align 4
  %set_size = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 3
  %1 = ptrtoint ptr %set_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %affvecs, ptr %set_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_calc_affinity_vectors(i32 noundef %minvec, i32 noundef %maxvec, ptr nocapture noundef readonly %affd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %affd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %affd, align 4
  %post_vectors = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 1
  %2 = ptrtoint ptr %post_vectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %post_vectors, align 4
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %minvec)
  %cmp = icmp ugt i32 %add, %minvec
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %calc_sets = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 4
  %4 = ptrtoint ptr %calc_sets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %calc_sets, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %maxvec, %add
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cpus_read_lock() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %6) #9
  tail call void @cpus_read_unlock() #9
  %.pre = sub i32 %maxvec, %add
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %sub3.pre-phi = phi i32 [ %.pre, %if.else ], [ %sub, %if.then1 ]
  %set_vecs.0 = phi i32 [ %call4.i.i, %if.else ], [ %sub, %if.then1 ]
  %7 = tail call i32 @llvm.umin.i32(i32 %set_vecs.0, i32 %sub3.pre-phi)
  %add5 = add i32 %7, %add
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add5, %if.end2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__irq_build_affinity_masks(i32 noundef %startvec, i32 noundef %numvecs, i32 noundef %firstvec, ptr nocapture noundef readonly %node_to_cpumask, ptr noundef %cpu_mask, ptr noundef %nmsk, ptr noundef %masks) unnamed_addr #0 align 64 {
entry:
  %nodemsk = alloca %struct.nodemask_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %firstvec, %numvecs
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nodemsk) #9
  %0 = ptrtoint ptr %nodemsk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nodemsk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %cpu_mask, i32 noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %entry.cleanup94_crit_edge, label %if.else.i.i.i

entry.cleanup94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

if.else.i.i.i:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = ptrtoint ptr %node_to_cpumask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node_to_cpumask, align 4
  %call.i.i.i = tail call i32 @__bitmap_intersects(ptr noundef %cpu_mask, ptr noundef %4, i32 noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i.i.i.get_nodes_in_cpumask.exit_crit_edge, label %if.then.i

if.else.i.i.i.get_nodes_in_cpumask.exit_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_nodes_in_cpumask.exit

if.then.i:                                        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %nodemsk) #9
  br label %get_nodes_in_cpumask.exit

get_nodes_in_cpumask.exit:                        ; preds = %if.then.i, %if.else.i.i.i.get_nodes_in_cpumask.exit_crit_edge
  %nodes.0.lcssa.i = phi i32 [ 1, %if.then.i ], [ 0, %if.else.i.i.i.get_nodes_in_cpumask.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nodes.0.lcssa.i, i32 %numvecs)
  %cmp.not = icmp ult i32 %nodes.0.lcssa.i, %numvecs
  br i1 %cmp.not, label %if.end15, label %if.then2

if.then2:                                         ; preds = %get_nodes_in_cpumask.exit
  %5 = ptrtoint ptr %nodemsk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nodemsk, align 4
  %and3.i.i154 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i154)
  %tobool4.not.not = icmp eq i32 %and3.i.i154, 0
  br i1 %tobool4.not.not, label %if.then2.cleanup94_crit_edge, label %if.else.i.i

if.then2.cleanup94_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

if.else.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = ptrtoint ptr %node_to_cpumask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node_to_cpumask, align 4
  %arrayidx = getelementptr %struct.irq_affinity_desc, ptr %masks, i32 %startvec
  call void @__bitmap_or(ptr noundef %arrayidx, ptr noundef %arrayidx, ptr noundef %9, i32 noundef %7) #9
  br label %cleanup94

if.end15:                                         ; preds = %get_nodes_in_cpumask.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 8) #13
  %tobool17.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool17.not, label %if.end15.cleanup94_crit_edge, label %if.end19

if.end15.cleanup94_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

if.end19:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %nodemsk to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.0.load = load i32, ptr %nodemsk, align 4
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %call7.i.i.i, align 8
  %13 = getelementptr inbounds %struct.node_vectors, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %and3.i.i.i159 = and i32 %.fca.0.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i159)
  %tobool.not.not.i = icmp eq i32 %and3.i.i.i159, 0
  br i1 %tobool.not.not.i, label %if.end19.if.end14.i_crit_edge, label %if.end.i.i.i

if.end19.if.end14.i_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end.i.i.i:                                     ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = ptrtoint ptr %node_to_cpumask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node_to_cpumask, align 4
  %call.i.i.i165 = call i32 @__bitmap_and(ptr noundef %nmsk, ptr noundef %cpu_mask, ptr noundef %17, i32 noundef %15) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef %nmsk, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool8.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool8.not.i, label %if.end.i.i.i.if.end14.i_crit_edge, label %if.end.i

if.end.i.i.i.if.end14.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.end.i:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call4.i.i.i, ptr %13, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i, %if.end.i.i.i.if.end14.i_crit_edge, %if.end19.if.end14.i_crit_edge
  %remaining_ncpus.2.i = phi i32 [ 0, %if.end19.if.end14.i_crit_edge ], [ %call4.i.i.i, %if.end.i ], [ 0, %if.end.i.i.i.if.end14.i_crit_edge ]
  %20 = call i32 @llvm.umin.i32(i32 %remaining_ncpus.2.i, i32 %numvecs) #9
  call void @sort(ptr noundef nonnull %call7.i.i.i, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @ncpus_cmp_func, ptr noundef null) #9
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp21.i = icmp eq i32 %22, -1
  br i1 %cmp21.i, label %if.end14.i.for.end93_crit_edge, label %if.end23.i

if.end14.i.for.end93_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

if.end23.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp24.i = icmp eq i32 %20, 0
  br i1 %cmp24.i, label %land.rhs.i, label %if.end23.i.if.end55.i_crit_edge

if.end23.i.if.end55.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

land.rhs.i:                                       ; preds = %if.end23.i
  %.b175.i = load i1, ptr @alloc_nodes_vectors.__already_done, align 1
  br i1 %.b175.i, label %land.rhs.i.if.end55.i_crit_edge, label %if.then32.i, !prof !21

land.rhs.i.if.end55.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.then32.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @alloc_nodes_vectors.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef null) #9
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then32.i, %land.rhs.i.if.end55.i_crit_edge, %if.end23.i.if.end55.i_crit_edge
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %13, align 4
  %mul.i = mul i32 %24, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining_ncpus.2.i, i32 %mul.i)
  %cmp65.i = icmp ugt i32 %remaining_ncpus.2.i, %mul.i
  br i1 %cmp65.i, label %if.end55.i.cond.end68.i_crit_edge, label %cond.false67.i

if.end55.i.cond.end68.i_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end68.i

cond.false67.i:                                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = udiv i32 %mul.i, %remaining_ncpus.2.i
  br label %cond.end68.i

cond.end68.i:                                     ; preds = %cond.false67.i, %if.end55.i.cond.end68.i_crit_edge
  %cond69.i = phi i32 [ %div.i, %cond.false67.i ], [ 1, %if.end55.i.cond.end68.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond69.i, i32 %24)
  %cmp71.i = icmp ugt i32 %cond69.i, %24
  br i1 %cmp71.i, label %land.rhs78.i, label %cond.end68.i.for.body22_crit_edge

cond.end68.i.for.body22_crit_edge:                ; preds = %cond.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

land.rhs78.i:                                     ; preds = %cond.end68.i
  %.b173174.i = load i1, ptr @alloc_nodes_vectors.__already_done.2, align 1
  br i1 %.b173174.i, label %land.rhs78.i.for.body22_crit_edge, label %if.then89.i, !prof !21

land.rhs78.i.for.body22_crit_edge:                ; preds = %land.rhs78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

if.then89.i:                                      ; preds = %land.rhs78.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @alloc_nodes_vectors.__already_done.2, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #9
  br label %for.body22

for.body22:                                       ; preds = %if.then89.i, %land.rhs78.i.for.body22_crit_edge, %cond.end68.i.for.body22_crit_edge
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond69.i, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond69.i)
  %cmp24 = icmp eq i32 %cond69.i, -1
  br i1 %cmp24, label %for.body22.for.end93_crit_edge, label %if.end.i.i172

for.body22.for.end93_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

if.end.i.i172:                                    ; preds = %for.body22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call7.i.i.i, align 8
  %arrayidx27 = getelementptr ptr, ptr %node_to_cpumask, i32 %28
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx27, align 4
  %call.i.i = call i32 @__bitmap_and(ptr noundef %nmsk, ptr noundef %cpu_mask, ptr noundef %30, i32 noundef %26) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i271 = call i32 @__bitmap_weight(ptr noundef %nmsk, i32 noundef %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i271)
  %tobool30.not = icmp eq i32 %call4.i.i271, 0
  br i1 %tobool30.not, label %if.end.i.i172.for.end93_crit_edge, label %if.end32

if.end.i.i172.for.end93_crit_edge:                ; preds = %if.end.i.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

if.end32:                                         ; preds = %if.end.i.i172
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %call4.i.i271)
  %cmp33 = icmp ugt i32 %33, %call4.i.i271
  br i1 %cmp33, label %land.rhs, label %if.end32.if.end63_crit_edge

if.end32.if.end63_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.rhs:                                         ; preds = %if.end32
  %.b150 = load i1, ptr @__irq_build_affinity_masks.__already_done, align 1
  br i1 %.b150, label %land.rhs.for.body73.preheader_crit_edge, label %if.then41, !prof !21

land.rhs.for.body73.preheader_crit_edge:          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body73.preheader

if.then41:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__irq_build_affinity_masks.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef null) #9
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %13, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then41, %if.end32.if.end63_crit_edge
  %35 = phi i32 [ %33, %if.end32.if.end63_crit_edge ], [ %.pr, %if.then41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp72288.not = icmp eq i32 %35, 0
  br i1 %cmp72288.not, label %if.end63.for.end93_crit_edge, label %if.end63.for.body73.preheader_crit_edge

if.end63.for.body73.preheader_crit_edge:          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body73.preheader

if.end63.for.end93_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

for.body73.preheader:                             ; preds = %if.end63.for.body73.preheader_crit_edge, %land.rhs.for.body73.preheader_crit_edge
  %36 = phi i32 [ %35, %if.end63.for.body73.preheader_crit_edge ], [ %33, %land.rhs.for.body73.preheader_crit_edge ]
  %37 = urem i32 %call4.i.i271, %36
  br label %for.body73

for.body73:                                       ; preds = %irq_spread_init_one.exit.for.body73_crit_edge, %for.body73.preheader
  %38 = phi i32 [ %47, %irq_spread_init_one.exit.for.body73_crit_edge ], [ %36, %for.body73.preheader ]
  %v.0291 = phi i32 [ %inc85, %irq_spread_init_one.exit.for.body73_crit_edge ], [ 0, %for.body73.preheader ]
  %curvec.3290 = phi i32 [ %inc86, %irq_spread_init_one.exit.for.body73_crit_edge ], [ %startvec, %for.body73.preheader ]
  %extra_vecs.0289 = phi i32 [ %extra_vecs.1, %irq_spread_init_one.exit.for.body73_crit_edge ], [ %37, %for.body73.preheader ]
  %div74 = udiv i32 %call4.i.i271, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_vecs.0289)
  %tobool75.not = icmp eq i32 %extra_vecs.0289, 0
  %dec = add i32 %extra_vecs.0289, -1
  %not.tobool75.not = xor i1 %tobool75.not, true
  %inc77 = zext i1 %not.tobool75.not to i32
  %cpus_per_vec.0 = add i32 %div74, %inc77
  %extra_vecs.1 = select i1 %tobool75.not, i32 0, i32 %dec
  call void @__sanitizer_cov_trace_cmp4(i32 %curvec.3290, i32 %add)
  %cmp79.not = icmp ult i32 %curvec.3290, %add
  %curvec.4 = select i1 %cmp79.not, i32 %curvec.3290, i32 %firstvec
  %arrayidx82 = getelementptr %struct.irq_affinity_desc, ptr %masks, i32 %curvec.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpus_per_vec.0)
  %cmp.not41.i = icmp eq i32 %cpus_per_vec.0, 0
  br i1 %cmp.not41.i, label %for.body73.irq_spread_init_one.exit_crit_edge, label %for.body.i.preheader

for.body73.irq_spread_init_one.exit_crit_edge:    ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_spread_init_one.exit

for.body.i.preheader:                             ; preds = %for.body73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i275284 = call i32 @_find_first_bit_be(ptr noundef %nmsk, i32 noundef %39) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i275284, i32 %40)
  %cmp1.not.i285 = icmp ult i32 %call.i.i275284, %40
  br i1 %cmp1.not.i285, label %for.body.i.preheader.cpumask_clear_cpu.exit.i_crit_edge, label %for.body.i.preheader.irq_spread_init_one.exit_crit_edge

for.body.i.preheader.irq_spread_init_one.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_spread_init_one.exit

for.body.i.preheader.cpumask_clear_cpu.exit.i_crit_edge: ; preds = %for.body.i.preheader
  br label %cpumask_clear_cpu.exit.i

for.body.i.loopexit:                              ; preds = %for.cond2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i275 = call i32 @_find_first_bit_be(ptr noundef %nmsk, i32 noundef %41) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %cmp1.not.i = icmp ult i32 %call.i.i275, %42
  br i1 %cmp1.not.i, label %for.body.i.loopexit.cpumask_clear_cpu.exit.i_crit_edge, label %for.body.i.loopexit.irq_spread_init_one.exit_crit_edge

for.body.i.loopexit.irq_spread_init_one.exit_crit_edge: ; preds = %for.body.i.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_spread_init_one.exit

for.body.i.loopexit.cpumask_clear_cpu.exit.i_crit_edge: ; preds = %for.body.i.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %for.body.i.loopexit.cpumask_clear_cpu.exit.i_crit_edge, %for.body.i.preheader.cpumask_clear_cpu.exit.i_crit_edge
  %call.i.i275287 = phi i32 [ %call.i.i275, %for.body.i.loopexit.cpumask_clear_cpu.exit.i_crit_edge ], [ %call.i.i275284, %for.body.i.preheader.cpumask_clear_cpu.exit.i_crit_edge ]
  %cpus_per_vec.addr.042.i286 = phi i32 [ %cpus_per_vec.addr.1.ph.i283, %for.body.i.loopexit.cpumask_clear_cpu.exit.i_crit_edge ], [ %cpus_per_vec.0, %for.body.i.preheader.cpumask_clear_cpu.exit.i_crit_edge ]
  call void @_clear_bit(i32 noundef %call.i.i275287, ptr noundef %nmsk) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %43 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %call.i.i275287)
  %cmp.not.i.i.i28.i = icmp ugt i32 %43, %call.i.i275287
  br i1 %cmp.not.i.i.i28.i, label %cpumask_clear_cpu.exit.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i30.i

cpumask_clear_cpu.exit.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %cpumask_clear_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i30.i:                               ; preds = %cpumask_clear_cpu.exit.i
  %.b37.i.i.i29.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i29.i, label %land.rhs.i.i.i30.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i31.i, !prof !21

land.rhs.i.i.i30.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i31.i:                                ; preds = %land.rhs.i.i.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i31.i, %land.rhs.i.i.i30.i.cpumask_set_cpu.exit.i_crit_edge, %cpumask_clear_cpu.exit.i.cpumask_set_cpu.exit.i_crit_edge
  call void @_set_bit(i32 noundef %call.i.i275287, ptr noundef %arrayidx82) #9
  %thread_sibling.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call.i.i275287, i32 5
  %cpus_per_vec.addr.1.ph.i280 = add i32 %cpus_per_vec.addr.042.i286, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpus_per_vec.addr.1.ph.i280)
  %cmp3.not.i281 = icmp eq i32 %cpus_per_vec.addr.1.ph.i280, 0
  br i1 %cmp3.not.i281, label %cpumask_set_cpu.exit.i.irq_spread_init_one.exit_crit_edge, label %cpumask_set_cpu.exit.i.for.cond2.i.preheader_crit_edge

cpumask_set_cpu.exit.i.for.cond2.i.preheader_crit_edge: ; preds = %cpumask_set_cpu.exit.i
  br label %for.cond2.i.preheader

cpumask_set_cpu.exit.i.irq_spread_init_one.exit_crit_edge: ; preds = %cpumask_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_spread_init_one.exit

for.cond2.i.preheader:                            ; preds = %cpumask_set_cpu.exit40.i.for.cond2.i.preheader_crit_edge, %cpumask_set_cpu.exit.i.for.cond2.i.preheader_crit_edge
  %cpus_per_vec.addr.1.ph.i283 = phi i32 [ %cpus_per_vec.addr.1.ph.i, %cpumask_set_cpu.exit40.i.for.cond2.i.preheader_crit_edge ], [ %cpus_per_vec.addr.1.ph.i280, %cpumask_set_cpu.exit.i.for.cond2.i.preheader_crit_edge ]
  %sibl.0.ph.i282 = phi i32 [ %call5.i, %cpumask_set_cpu.exit40.i.for.cond2.i.preheader_crit_edge ], [ -1, %cpumask_set_cpu.exit.i.for.cond2.i.preheader_crit_edge ]
  br label %for.cond2.i

for.cond2.i:                                      ; preds = %cpumask_test_and_clear_cpu.exit.i.for.cond2.i_crit_edge, %for.cond2.i.preheader
  %sibl.0.i = phi i32 [ %call5.i, %cpumask_test_and_clear_cpu.exit.i.for.cond2.i_crit_edge ], [ %sibl.0.ph.i282, %for.cond2.i.preheader ]
  %call5.i = call i32 @cpumask_next(i32 noundef %sibl.0.i, ptr noundef %thread_sibling.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %44 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %44)
  %cmp6.not.i = icmp ult i32 %call5.i, %44
  br i1 %cmp6.not.i, label %cpumask_test_and_clear_cpu.exit.i, label %for.body.i.loopexit

cpumask_test_and_clear_cpu.exit.i:                ; preds = %for.cond2.i
  %call1.i.i = call i32 @_test_and_clear_bit(i32 noundef %call5.i, ptr noundef %nmsk) #9
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %cpumask_test_and_clear_cpu.exit.i.for.cond2.i_crit_edge, label %if.end11.i

cpumask_test_and_clear_cpu.exit.i.for.cond2.i_crit_edge: ; preds = %cpumask_test_and_clear_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.i

if.end11.i:                                       ; preds = %cpumask_test_and_clear_cpu.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %call5.i)
  %cmp.not.i.i.i36.i = icmp ugt i32 %45, %call5.i
  br i1 %cmp.not.i.i.i36.i, label %if.end11.i.cpumask_set_cpu.exit40.i_crit_edge, label %land.rhs.i.i.i38.i

if.end11.i.cpumask_set_cpu.exit40.i_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit40.i

land.rhs.i.i.i38.i:                               ; preds = %if.end11.i
  %.b37.i.i.i37.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i37.i, label %land.rhs.i.i.i38.i.cpumask_set_cpu.exit40.i_crit_edge, label %if.then.i.i.i39.i, !prof !21

land.rhs.i.i.i38.i.cpumask_set_cpu.exit40.i_crit_edge: ; preds = %land.rhs.i.i.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit40.i

if.then.i.i.i39.i:                                ; preds = %land.rhs.i.i.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit40.i

cpumask_set_cpu.exit40.i:                         ; preds = %if.then.i.i.i39.i, %land.rhs.i.i.i38.i.cpumask_set_cpu.exit40.i_crit_edge, %if.end11.i.cpumask_set_cpu.exit40.i_crit_edge
  call void @_set_bit(i32 noundef %call5.i, ptr noundef %arrayidx82) #9
  %cpus_per_vec.addr.1.ph.i = add i32 %cpus_per_vec.addr.1.ph.i283, -1
  %cmp3.not.i = icmp eq i32 %cpus_per_vec.addr.1.ph.i, 0
  br i1 %cmp3.not.i, label %cpumask_set_cpu.exit40.i.irq_spread_init_one.exit_crit_edge, label %cpumask_set_cpu.exit40.i.for.cond2.i.preheader_crit_edge

cpumask_set_cpu.exit40.i.for.cond2.i.preheader_crit_edge: ; preds = %cpumask_set_cpu.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.i.preheader

cpumask_set_cpu.exit40.i.irq_spread_init_one.exit_crit_edge: ; preds = %cpumask_set_cpu.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_spread_init_one.exit

irq_spread_init_one.exit:                         ; preds = %cpumask_set_cpu.exit40.i.irq_spread_init_one.exit_crit_edge, %cpumask_set_cpu.exit.i.irq_spread_init_one.exit_crit_edge, %for.body.i.loopexit.irq_spread_init_one.exit_crit_edge, %for.body.i.preheader.irq_spread_init_one.exit_crit_edge, %for.body73.irq_spread_init_one.exit_crit_edge
  %inc85 = add nuw i32 %v.0291, 1
  %inc86 = add i32 %curvec.4, 1
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %13, align 4
  %cmp72 = icmp ult i32 %inc85, %47
  br i1 %cmp72, label %irq_spread_init_one.exit.for.body73_crit_edge, label %irq_spread_init_one.exit.for.end93_crit_edge

irq_spread_init_one.exit.for.end93_crit_edge:     ; preds = %irq_spread_init_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

irq_spread_init_one.exit.for.body73_crit_edge:    ; preds = %irq_spread_init_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body73

for.end93:                                        ; preds = %irq_spread_init_one.exit.for.end93_crit_edge, %if.end63.for.end93_crit_edge, %if.end.i.i172.for.end93_crit_edge, %for.body22.for.end93_crit_edge, %if.end14.i.for.end93_crit_edge
  %done.0.lcssa = phi i32 [ 0, %for.body22.for.end93_crit_edge ], [ 0, %if.end.i.i172.for.end93_crit_edge ], [ 0, %if.end63.for.end93_crit_edge ], [ 0, %if.end14.i.for.end93_crit_edge ], [ %47, %irq_spread_init_one.exit.for.end93_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup94

cleanup94:                                        ; preds = %for.end93, %if.end15.cleanup94_crit_edge, %if.else.i.i, %if.then2.cleanup94_crit_edge, %entry.cleanup94_crit_edge
  %retval.0 = phi i32 [ %done.0.lcssa, %for.end93 ], [ 0, %entry.cleanup94_crit_edge ], [ %numvecs, %if.then2.cleanup94_crit_edge ], [ -12, %if.end15.cleanup94_crit_edge ], [ %numvecs, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nodemsk) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ncpus_cmp_func(ptr nocapture noundef readonly %l, ptr nocapture noundef readonly %r) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.node_vectors, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.node_vectors, ptr %r, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %sub = sub i32 %2, %5
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/irq/affinity.c", i32 442, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../kernel/irq/affinity.c", i32 303, i32 3}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/irq/affinity.c", i32 233, i32 3}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../kernel/irq/affinity.c", i32 238, i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", i32 1, i32 4001}
