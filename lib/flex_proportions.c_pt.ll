; ModuleID = '/llk/IR_all_yes/lib/flex_proportions.c_pt.bc'
source_filename = "../lib/flex_proportions.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fprop_local_single = type { i32, i32, %struct.raw_spinlock }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }

@fprop_global_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fprop_global_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&p->sequence\00", [19 x i8] zeroinitializer }, align 32
@fprop_local_init_single.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pl->lock\00", [22 x i8] zeroinitializer }, align 32
@fprop_local_init_percpu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fprop_local_init_percpu.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 44, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 47, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 98, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 176, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private constant [26 x i8] c"../lib/flex_proportions.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 180, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 271, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @fprop_global_init.__key, ptr @fprop_global_init.__key.1, ptr @.str, ptr @fprop_local_init_single.__key, ptr @.str.2, ptr @fprop_local_init_percpu.__key, ptr @fprop_local_init_percpu.__key.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fprop_global_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fprop_global_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fprop_local_init_single.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fprop_local_init_percpu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fprop_local_init_percpu.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fprop_global_init(ptr noundef %p, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %period = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %period, align 8
  %call = tail call i32 @__percpu_counter_init(ptr noundef %p, i64 noundef 1, i32 noundef %gfp, ptr noundef nonnull @fprop_global_init.__key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sequence = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 2
  %dep_map.i = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 2, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str, ptr noundef nonnull @fprop_global_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %1 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sequence, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fprop_global_destroy(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @percpu_counter_destroy(ptr noundef %p) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fprop_new_period(ptr noundef %p, i32 noundef %periods) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !24
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end11, label %do.end11.thread

do.end11:                                         ; preds = %entry
  tail call void @trace_hardirqs_off() #10
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call.i)
  %cmp14 = icmp slt i64 %call.i, 2
  br i1 %cmp14, label %if.then26, label %do.end11.do.body49_crit_edge

do.end11.do.body49_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body49

do.end11.thread:                                  ; preds = %entry
  %call.i136 = tail call i64 @__percpu_counter_sum(ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %call.i136)
  %cmp14137 = icmp slt i64 %call.i136, 2
  br i1 %cmp14137, label %do.end11.thread.do.body28_crit_edge, label %do.end11.thread.do.body49_crit_edge

do.end11.thread.do.body49_crit_edge:              ; preds = %do.end11.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body49

do.end11.thread.do.body28_crit_edge:              ; preds = %do.end11.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.then26:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #10
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %do.end11.thread.do.body28_crit_edge
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !25
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !26

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !27
  br label %cleanup

do.body49:                                        ; preds = %do.end11.thread.do.body49_crit_edge, %do.end11.do.body49_crit_edge
  %call.i138 = phi i64 [ %call.i136, %do.end11.thread.do.body49_crit_edge ], [ %call.i, %do.end11.do.body49_crit_edge ]
  %sequence = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.body49.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

do.body49.__seqprop_assert.exit_crit_edge:        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %do.body49
  %3 = tail call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %6, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  %7 = tail call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i133 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i133 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, ptrtoint (ptr @lockdep_recursion to i32)
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  %16 = tail call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i.i7.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not.i = icmp eq i32 %15, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %20 = tail call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i.i9.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %27, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %31, ptrtoint (ptr @hardirqs_enabled to i32)
  %32 = inttoptr i32 %add47.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  %35 = tail call i32 @llvm.read_register.i32(metadata !15) #10
  %and.i.i.i12.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %38, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool54.not.i = icmp eq i32 %34, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !32

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %do.body49.__seqprop_assert.exit_crit_edge
  %39 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sequence, align 4
  %inc.i.i.i = add i32 %40, 1
  store i32 %inc.i.i.i, ptr %sequence, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !33
  %dep_map.i.i = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 2, i32 1
  %41 = tail call ptr @llvm.returnaddress(i32 0) #10
  %42 = ptrtoint ptr %41 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %periods)
  %cmp61 = icmp slt i32 %periods, 64
  br i1 %cmp61, label %if.then63, label %__seqprop_assert.exit.if.end64_crit_edge

__seqprop_assert.exit.if.end64_crit_edge:         ; preds = %__seqprop_assert.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then63:                                        ; preds = %__seqprop_assert.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom = zext i32 %periods to i64
  %shr144 = lshr i64 %call.i138, %sh_prom
  %sub = sub nsw i64 %call.i138, %shr144
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %__seqprop_assert.exit.if.end64_crit_edge
  %events.0 = phi i64 [ %sub, %if.then63 ], [ %call.i138, %__seqprop_assert.exit.if.end64_crit_edge ]
  %sub66 = sub nsw i64 0, %events.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %43 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %p, i64 noundef %sub66, i32 noundef %43) #10
  %period = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 1
  %44 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %period, align 8
  %add = add i32 %45, %periods
  store i32 %add, ptr %period, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %42) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !34
  %46 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sequence, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %sequence, align 4
  br i1 %tobool.not, label %if.then88, label %if.end64.do.body90_crit_edge

if.end64.do.body90_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body90

if.then88:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #10
  br label %do.body90

do.body90:                                        ; preds = %if.then88, %if.end64.do.body90_crit_edge
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !25
  %and.i.i135 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i135)
  %tobool98.not = icmp eq i32 %and.i.i135, 0
  br i1 %tobool98.not, label %if.then107, label %do.body90.do.end110_crit_edge, !prof !26

do.body90.do.end110_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

if.then107:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end110

do.end110:                                        ; preds = %if.then107, %do.body90.do.end110_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %do.end43
  %cmp14139 = phi i1 [ true, %do.end110 ], [ false, %do.end43 ]
  ret i1 %cmp14139
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fprop_local_init_single(ptr noundef %pl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pl, align 4
  %period = getelementptr inbounds %struct.fprop_local_single, ptr %pl, i32 0, i32 1
  %1 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %period, align 4
  %lock = getelementptr inbounds %struct.fprop_local_single, ptr %pl, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @fprop_local_init_single.__key, i16 noundef signext 2) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fprop_local_destroy_single(ptr nocapture noundef %pl) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__fprop_inc_single(ptr noundef %p, ptr noundef %pl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %period1.i = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %period1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %period1.i, align 8
  %period2.i = getelementptr inbounds %struct.fprop_local_single, ptr %pl, i32 0, i32 1
  %2 = ptrtoint ptr %period2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %period2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i = icmp eq i32 %3, %1
  br i1 %cmp.i, label %entry.fprop_reflect_period_single.exit_crit_edge, label %do.body.i

entry.fprop_reflect_period_single.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fprop_reflect_period_single.exit

do.body.i:                                        ; preds = %entry
  %lock.i = getelementptr inbounds %struct.fprop_local_single, ptr %pl, i32 0, i32 2
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %4 = ptrtoint ptr %period2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp5.not.i = icmp ugt i32 %1, %5
  br i1 %cmp5.not.i, label %if.end17.i, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end17.i:                                       ; preds = %do.body.i
  %sub.i = sub i32 %1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp19.i = icmp ult i32 %sub.i, 32
  br i1 %cmp19.i, label %if.then21.i, label %if.end17.i.if.end25.i_crit_edge

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pl, align 4
  %shr.i = lshr i32 %7, %sub.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end17.i.if.end25.i_crit_edge
  %storemerge.i = phi i32 [ %shr.i, %if.then21.i ], [ 0, %if.end17.i.if.end25.i_crit_edge ]
  %8 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %pl, align 4
  %9 = ptrtoint ptr %period2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %period2.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end25.i, %do.body.i.cleanup.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #10
  br label %fprop_reflect_period_single.exit

fprop_reflect_period_single.exit:                 ; preds = %cleanup.sink.split.i, %entry.fprop_reflect_period_single.exit_crit_edge
  %10 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pl, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %pl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %12 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %p, i64 noundef 1, i32 noundef %12) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fprop_fraction_single(ptr noundef %p, ptr noundef %pl, ptr nocapture noundef writeonly %numerator, ptr nocapture noundef writeonly %denominator) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %sequence = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 2
  %period1.i = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 1
  %period2.i = getelementptr inbounds %struct.fprop_local_single, ptr %pl, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.fprop_local_single, ptr %pl, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.percpu_counter, ptr %p, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %fprop_reflect_period_single.exit.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %sequence)
  %0 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sequence, align 4
  %and44 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool.not45 = icmp eq i32 %and44, 0
  br i1 %tobool.not45, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !35
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !36
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sequence, align 4
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %do.body.while.end_crit_edge ], [ %3, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  %4 = ptrtoint ptr %period1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period1.i, align 8
  %6 = ptrtoint ptr %period2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp eq i32 %7, %5
  br i1 %cmp.i, label %while.end.fprop_reflect_period_single.exit_crit_edge, label %do.body.i

while.end.fprop_reflect_period_single.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fprop_reflect_period_single.exit

do.body.i:                                        ; preds = %while.end
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %8 = ptrtoint ptr %period2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp5.not.i = icmp ugt i32 %5, %9
  br i1 %cmp5.not.i, label %if.end17.i, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end17.i:                                       ; preds = %do.body.i
  %sub.i = sub i32 %5, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp19.i = icmp ult i32 %sub.i, 32
  br i1 %cmp19.i, label %if.then21.i, label %if.end17.i.if.end25.i_crit_edge

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pl, align 4
  %shr.i = lshr i32 %11, %sub.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end17.i.if.end25.i_crit_edge
  %storemerge.i = phi i32 [ %shr.i, %if.then21.i ], [ 0, %if.end17.i.if.end25.i_crit_edge ]
  %12 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge.i, ptr %pl, align 4
  %13 = ptrtoint ptr %period2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %period2.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end25.i, %do.body.i.cleanup.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #10
  br label %fprop_reflect_period_single.exit

fprop_reflect_period_single.exit:                 ; preds = %cleanup.sink.split.i, %while.end.fprop_reflect_period_single.exit_crit_edge
  %14 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pl, align 4
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load volatile i64, ptr %count.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !38
  %18 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sequence, align 4
  %cmp.i.i.not = icmp eq i32 %19, %.lcssa
  br i1 %cmp.i.i.not, label %do.end25, label %fprop_reflect_period_single.exit.do.body_crit_edge

fprop_reflect_period_single.exit.do.body_crit_edge: ; preds = %fprop_reflect_period_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end25:                                         ; preds = %fprop_reflect_period_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call i64 @llvm.smax.i64(i64 %17, i64 0) #10
  %conv = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %conv)
  %cmp.not = icmp ugt i64 %20, %conv
  %extract.t41 = trunc i64 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not = icmp eq i32 %15, 0
  %. = select i1 %tobool27.not, i32 1, i32 %15
  %den.0.off0 = select i1 %cmp.not, i32 %extract.t41, i32 %.
  %21 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %den.0.off0, ptr %denominator, align 4
  %22 = ptrtoint ptr %numerator to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %numerator, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqcount_lockdep_reader_access(ptr noundef %s) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !24
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #10
  %dep_map.c = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dep_map.c48 = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48, i32 noundef %4) #10
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !25
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !26

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fprop_local_init_percpu(ptr noundef %pl, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @__percpu_counter_init(ptr noundef %pl, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @fprop_local_init_percpu.__key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %period = getelementptr inbounds %struct.fprop_local_percpu, ptr %pl, i32 0, i32 1
  %0 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %period, align 8
  %lock = getelementptr inbounds %struct.fprop_local_percpu, ptr %pl, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @fprop_local_init_percpu.__key.3, i16 noundef signext 2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fprop_local_destroy_percpu(ptr noundef %pl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @percpu_counter_destroy(ptr noundef %pl) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__fprop_add_percpu(ptr noundef %p, ptr noundef %pl, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @fprop_reflect_period_percpu(ptr noundef %p, ptr noundef %pl)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #10, !range !39
  %conv = sext i32 %nr to i64
  %sub.i.op.i = shl nuw nsw i32 %1, 3
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 248
  %sub.i.op.i.op.op = add nuw nsw i32 %sub.i.op.i.op, 8
  %mul = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.op.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %pl, i64 noundef %conv, i32 noundef %mul) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %2 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %p, i64 noundef %conv, i32 noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fprop_reflect_period_percpu(ptr nocapture noundef readonly %p, ptr noundef %pl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %period1 = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %period1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %period1, align 8
  %period2 = getelementptr inbounds %struct.fprop_local_percpu, ptr %pl, i32 0, i32 1
  %2 = ptrtoint ptr %period2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %period2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp eq i32 %3, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.fprop_local_percpu, ptr %pl, i32 0, i32 2
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %4 = ptrtoint ptr %period2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp5.not = icmp ugt i32 %1, %5
  br i1 %cmp5.not, label %if.end17, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end17:                                         ; preds = %do.body
  %sub = sub i32 %1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp19 = icmp ult i32 %sub, 32
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end17
  %count.i = getelementptr inbounds %struct.percpu_counter, ptr %pl, i32 0, i32 1
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %count.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 true) #10, !range !39
  %sub.i.op.i = shl nuw nsw i32 %9, 3
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 248
  %sub.i.op.i.op.op = add nuw nsw i32 %sub.i.op.i.op, 8
  %mul = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.op.i.op.op
  %mul32 = mul i32 %mul, %8
  %conv33 = zext i32 %mul32 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv33)
  %cmp34 = icmp slt i64 %7, %conv33
  br i1 %cmp34, label %if.then36, label %if.then21.if.end39_crit_edge

if.then21.if.end39_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then36:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i64 @__percpu_counter_sum(ptr noundef %pl) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then21.if.end39_crit_edge
  %val.0 = phi i64 [ %call.i, %if.then36 ], [ %7, %if.then21.if.end39_crit_edge ]
  %10 = ptrtoint ptr %period2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period2, align 8
  %sub43 = sub i32 %1, %11
  %sh_prom = zext i32 %sub43 to i64
  %shr = ashr i64 %val.0, %sh_prom
  %add44 = sub i64 %shr, %val.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i95 = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #10, !range !39
  %sub.i.op.i96 = shl nuw nsw i32 %13, 3
  %sub.i.op.i96.op = xor i32 %sub.i.op.i96, 248
  %sub.i.op.i96.op.op = add nuw nsw i32 %sub.i.op.i96.op, 8
  %mul60 = select i1 %tobool.not.i.i95, i32 0, i32 %sub.i.op.i96.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %pl, i64 noundef %add44, i32 noundef %mul60) #10
  br label %if.end62

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @percpu_counter_set(ptr noundef %pl, i64 noundef 0) #10
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.end39
  %14 = ptrtoint ptr %period2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %1, ptr %period2, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end62, %do.body.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fprop_fraction_percpu(ptr noundef %p, ptr noundef %pl, ptr nocapture noundef writeonly %numerator, ptr nocapture noundef writeonly %denominator) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %sequence = getelementptr inbounds %struct.fprop_global, ptr %p, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.percpu_counter, ptr %pl, i32 0, i32 1
  %count.i41 = getelementptr inbounds %struct.percpu_counter, ptr %p, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %sequence)
  %0 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sequence, align 4
  %and44 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool.not45 = icmp eq i32 %and44, 0
  br i1 %tobool.not45, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !40
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !41
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sequence, align 4
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %do.body.while.end_crit_edge ], [ %3, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call fastcc void @fprop_reflect_period_percpu(ptr noundef %p, ptr noundef %pl)
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load volatile i64, ptr %count.i, align 8
  %6 = ptrtoint ptr %count.i41 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load volatile i64, ptr %count.i41, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !38
  %8 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sequence, align 4
  %cmp.i.i.not = icmp eq i32 %9, %.lcssa
  br i1 %cmp.i.i.not, label %do.end26, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end26:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i64 @llvm.smax.i64(i64 %7, i64 0) #10
  %11 = tail call i64 @llvm.smax.i64(i64 %5, i64 0) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %11)
  %cmp.not = icmp ugt i64 %10, %11
  %extract.t40 = trunc i64 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %5)
  %tobool27.not = icmp slt i64 %5, 1
  %extract.t = trunc i64 %11 to i32
  %spec.select = select i1 %tobool27.not, i32 1, i32 %extract.t
  %den.0.off0 = select i1 %cmp.not, i32 %extract.t40, i32 %spec.select
  %12 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %den.0.off0, ptr %denominator, align 4
  %13 = ptrtoint ptr %numerator to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %extract.t, ptr %numerator, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__fprop_add_percpu_max(ptr noundef %p, ptr noundef %pl, i32 noundef %max_frac, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  %numerator = alloca i32, align 4
  %denominator = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %max_frac)
  %cmp = icmp ult i32 %max_frac, 1024
  br i1 %cmp, label %if.then, label %entry.if.end21_crit_edge, !prof !26

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %numerator) #10
  %0 = ptrtoint ptr %numerator to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %numerator, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %denominator) #10
  %1 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %denominator, align 4, !annotation !43
  call void @fprop_fraction_percpu(ptr noundef %p, ptr noundef %pl, ptr noundef nonnull %numerator, ptr noundef nonnull %denominator)
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator, align 4
  %conv = zext i32 %3 to i64
  %conv233 = zext i32 %max_frac to i64
  %mul = mul nuw nsw i64 %conv, %conv233
  %4 = ptrtoint ptr %numerator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numerator, align 4
  %conv3 = zext i32 %5 to i64
  %shl.neg = mul nsw i64 %conv3, -1024
  %sub = add nsw i64 %shl.neg, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp4 = icmp slt i64 %sub, 0
  br i1 %cmp4, label %cleanup, label %if.else

if.else:                                          ; preds = %if.then
  %sub7 = sub nuw nsw i32 1024, %max_frac
  %mul8 = mul i32 %sub7, %nr
  %conv9 = zext i32 %mul8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv9)
  %cmp10 = icmp ult i64 %sub, %conv9
  br i1 %cmp10, label %if.then12, label %if.else.cleanup.thread_crit_edge

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then12:                                        ; preds = %if.else
  %add = sub nuw nsw i64 1023, %conv233
  %sub15 = add nuw nsw i64 %add, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub15)
  %cmp164.i.i = icmp ult i64 %sub15, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !32

if.then168.i.i:                                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %sub15 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %sub7
  br label %cleanup.thread

if.else174.i.i:                                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub7, i64 %sub15) #11, !srcloc !44
  %asmresult1.i.i.i = extractvalue { i64, i64 } %6, 1
  %extract.t37 = trunc i64 %asmresult1.i.i.i to i32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else174.i.i, %if.then168.i.i, %if.else.cleanup.thread_crit_edge
  %nr.addr.1.ph = phi i32 [ %nr, %if.else.cleanup.thread_crit_edge ], [ %div172.i.i, %if.then168.i.i ], [ %extract.t37, %if.else174.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %denominator) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numerator) #10
  br label %if.end21

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %denominator) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numerator) #10
  br label %return

if.end21:                                         ; preds = %cleanup.thread, %entry.if.end21_crit_edge
  %nr.addr.2 = phi i32 [ %nr, %entry.if.end21_crit_edge ], [ %nr.addr.1.ph, %cleanup.thread ]
  tail call fastcc void @fprop_reflect_period_percpu(ptr noundef %p, ptr noundef %pl) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #10, !range !39
  %conv.i = sext i32 %nr.addr.2 to i64
  %sub.i.op.i.i = shl nuw nsw i32 %8, 3
  %sub.i.op.i.i.op = xor i32 %sub.i.op.i.i, 248
  %sub.i.op.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.op, 8
  %mul.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.op.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %pl, i64 noundef %conv.i, i32 noundef %mul.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %9 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %p, i64 noundef %conv.i, i32 noundef %9) #10
  br label %return

return:                                           ; preds = %if.end21, %cleanup
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @fprop_global_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../lib/flex_proportions.c", i32 44, i32 8}
!2 = !{ptr @fprop_global_init.__key.1, !3, !"__key", i1 false, i1 false}
!3 = !{!"../lib/flex_proportions.c", i32 47, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @fprop_local_init_single.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../lib/flex_proportions.c", i32 98, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @fprop_local_init_percpu.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../lib/flex_proportions.c", i32 176, i32 8}
!10 = !{ptr @fprop_local_init_percpu.__key.3, !11, !"__key", i1 false, i1 false}
!11 = !{!"../lib/flex_proportions.c", i32 180, i32 2}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 894855, i64 894916}
!25 = !{i64 897587}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 897872}
!28 = !{i64 2149646785}
!29 = !{i64 2149651717}
!30 = !{i64 2149673429}
!31 = !{i64 2149678321}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2149754778}
!34 = !{i64 2149755103}
!35 = !{i64 2151141527}
!36 = !{i64 2151141369}
!37 = !{i64 2151141697}
!38 = !{i64 2149754453}
!39 = !{i32 0, i32 33}
!40 = !{i64 2151151955}
!41 = !{i64 2151151797}
!42 = !{i64 2151152125}
!43 = !{!"auto-init"}
!44 = !{i64 2148339960, i64 2148340240, i64 2148340574, i64 2148340908}
