; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/coupled.c_pt.bc'
source_filename = "../drivers/cpuidle/coupled.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_coupled = type { %struct.cpumask, [4 x i32], %struct.atomic_t, %struct.atomic_t, i32, i32, i32 }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@cpuidle_coupled_poked = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/cpuidle/coupled.c\00", [38 x i8] zeroinitializer }, align 32
@cpuidle_coupled_poke_cb = weak dso_local global %struct.__call_single_data zeroinitializer, section ".data..percpu", align 16
@__initcall__kmod_coupled__183_791_cpuidle_coupled_init1 = internal global ptr @cpuidle_coupled_init, section ".initcall1.init", align 4
@__pcpu_unique_cpuidle_coupled_poke_cb = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@cpuidle_coupled_poke_pending = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpuidle/coupled:prepare\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpuidle/coupled:online\00", [41 x i8] zeroinitializer }, align 32
@cpuidle_lock = external dso_local global %struct.mutex, align 4
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"cpuidle_coupled_poked\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 129, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 669, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant [29 x i8] c"cpuidle_coupled_poke_pending\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 122, i32 18 }
@___asan_gen_.14 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 108, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 778, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [29 x i8] c"../drivers/cpuidle/coupled.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 784, i32 6 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_coupled__183_791_cpuidle_coupled_init1, ptr @cpuidle_coupled_poked, ptr @.str, ptr @cpuidle_coupled_poke_pending, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_coupled_poked to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_coupled_poke_pending to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuidle_coupled_parallel_barrier(ptr nocapture noundef readonly %dev, ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coupled = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %coupled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coupled, align 4
  %online_count = getelementptr inbounds %struct.cpuidle_coupled, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %online_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %online_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %a, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %a, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %a, ptr %a, i32 1, ptr elementtype(i32) %a) #12, !srcloc !29
  %call.i.i3539 = tail call zeroext i1 @__kasan_check_read(ptr noundef %a, i32 noundef 4) #12
  %5 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp40 = icmp slt i32 %6, %3
  br i1 %cmp40, label %entry.do.end8_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

entry.do.end8_crit_edge:                          ; preds = %entry
  br label %do.end8

do.end8:                                          ; preds = %do.end8.do.end8_crit_edge, %entry.do.end8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !30
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !31
  %call.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef %a, i32 noundef 4) #12
  %7 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %a, align 4
  %cmp = icmp slt i32 %8, %3
  br i1 %cmp, label %do.end8.do.end8_crit_edge, label %do.end8.while.end_crit_edge

do.end8.while.end_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end8.do.end8_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

while.end:                                        ; preds = %do.end8.while.end_crit_edge, %entry.while.end_crit_edge
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %a, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %a, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %a, ptr %a, i32 1, ptr elementtype(i32) %a) #12, !srcloc !33
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !34
  %mul = shl i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %mul)
  %cmp14 = icmp eq i32 %asmresult.i.i.i.i, %mul
  br i1 %cmp14, label %if.then, label %while.cond15.preheader

while.cond15.preheader:                           ; preds = %while.end
  %call.i.i3841 = tail call zeroext i1 @__kasan_check_read(ptr noundef %a, i32 noundef 4) #12
  %10 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp1742 = icmp sgt i32 %11, %3
  br i1 %cmp1742, label %while.cond15.preheader.do.end23_crit_edge, label %while.cond15.preheader.cleanup_crit_edge

while.cond15.preheader.cleanup_crit_edge:         ; preds = %while.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond15.preheader.do.end23_crit_edge:        ; preds = %while.cond15.preheader
  br label %do.end23

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %a, i32 noundef 4) #12
  %12 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %a, align 4
  br label %cleanup

do.end23:                                         ; preds = %do.end23.do.end23_crit_edge, %while.cond15.preheader.do.end23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !35
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !36
  %call.i.i38 = tail call zeroext i1 @__kasan_check_read(ptr noundef %a, i32 noundef 4) #12
  %13 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %a, align 4
  %cmp17 = icmp sgt i32 %14, %3
  br i1 %cmp17, label %do.end23.do.end23_crit_edge, label %do.end23.cleanup_crit_edge

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end23.do.end23_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

cleanup:                                          ; preds = %do.end23.cleanup_crit_edge, %if.then, %while.cond15.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpuidle_state_is_coupled(ptr nocapture noundef readonly %drv, i32 noundef %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %state, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuidle_coupled_state_verify(ptr nocapture noundef readonly %drv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 4
  %0 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_count, align 8
  %i.017 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.017)
  %cmp18 = icmp sgt i32 %i.017, -1
  br i1 %cmp18, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %safe_state_index = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ %i.017, %for.body.lr.ph ], [ %i.0, %for.inc.for.body_crit_edge ]
  %flags.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.019, i32 4
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %safe_state_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %safe_state_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %i.019)
  %cmp1 = icmp ne i32 %5, %i.019
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp3 = icmp sgt i32 %5, -1
  %or.cond.not = and i1 %cmp1, %cmp3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp7.not = icmp slt i32 %5, %1
  %or.cond16 = select i1 %or.cond.not, i1 %cmp7.not, i1 false
  br i1 %or.cond16, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.019, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuidle_enter_state_coupled(ptr noundef %dev, ptr noundef %drv, i32 noundef %next_state) local_unnamed_addr #0 align 64 {
entry:
  %cpus.i = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coupled1 = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %coupled1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coupled1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %prevent = getelementptr inbounds %struct.cpuidle_coupled, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %prevent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prevent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not233 = icmp eq i32 %3, 0
  br i1 %tobool2.not233, label %while.cond.preheader.do.end18_crit_edge, label %while.body.lr.ph

while.cond.preheader.do.end18_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %safe_state_index = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 5
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %call263 = tail call fastcc i32 @cpuidle_coupled_clear_pokes(i32 noundef %5)
  %6 = tail call i32 @llvm.read_register.i32(metadata !18) #12
  %and.i.i264 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i264 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 16384
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not265 = icmp eq i32 %10, 0
  br i1 %tobool.i.not265, label %while.body.lr.ph.if.end5_crit_edge, label %while.body.lr.ph.do.body_crit_edge

while.body.lr.ph.do.body_crit_edge:               ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

while.body.lr.ph.if.end5_crit_edge:               ; preds = %while.body.lr.ph
  br label %if.end5

while.body:                                       ; preds = %if.end12
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %call = tail call fastcc i32 @cpuidle_coupled_clear_pokes(i32 noundef %12)
  %13 = tail call i32 @llvm.read_register.i32(metadata !18) #12
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 16384
  %17 = and i32 %16, 2
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %while.body.if.end5_crit_edge, label %while.body.do.body_crit_edge

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

while.body.if.end5_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.body:                                          ; preds = %while.body.do.body_crit_edge, %while.body.lr.ph.do.body_crit_edge
  %entered_state.0234.lcssa = phi i32 [ -1, %while.body.lr.ph.do.body_crit_edge ], [ %call6, %while.body.do.body_crit_edge ]
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !37
  br label %cleanup

if.end5:                                          ; preds = %while.body.if.end5_crit_edge, %while.body.lr.ph.if.end5_crit_edge
  %18 = ptrtoint ptr %safe_state_index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %safe_state_index, align 4
  %call6 = tail call i32 @cpuidle_enter_state(ptr noundef %dev, ptr noundef %drv, i32 noundef %19) #12
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !38
  %and.i.i174 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i174)
  %tobool9.not = icmp eq i32 %and.i.i174, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !39
  br i1 %tobool9.not, label %if.then11, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end5.if.end12_crit_edge
  %21 = ptrtoint ptr %prevent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prevent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not = icmp eq i32 %22, 0
  br i1 %tobool2.not, label %if.end12.do.end18_crit_edge, label %while.body

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

do.end18:                                         ; preds = %if.end12.do.end18_crit_edge, %while.cond.preheader.do.end18_crit_edge
  %entered_state.0.lcssa = phi i32 [ -1, %while.cond.preheader.do.end18_crit_edge ], [ %call6, %if.end12.do.end18_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !40
  %cpu21 = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %ready_waiting_counts.i = getelementptr inbounds %struct.cpuidle_coupled, ptr %1, i32 0, i32 2
  %online_count = getelementptr inbounds %struct.cpuidle_coupled, ptr %1, i32 0, i32 4
  %safe_state_index48 = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 5
  %abort_barrier = getelementptr inbounds %struct.cpuidle_coupled, ptr %1, i32 0, i32 3
  br label %reset

reset:                                            ; preds = %if.then101, %do.end18
  %entered_state.1 = phi i32 [ %entered_state.0.lcssa, %do.end18 ], [ %entered_state.3.ph.ph, %if.then101 ]
  %23 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %24)
  %cmp.not.i.i.i = icmp ugt i32 %25, %24
  br i1 %cmp.not.i.i.i, label %reset.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

reset.cpumask_clear_cpu.exit_crit_edge:           ; preds = %reset
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %reset
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !41

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %reset.cpumask_clear_cpu.exit_crit_edge
  call void @_clear_bit(i32 noundef %24, ptr noundef nonnull @cpuidle_coupled_poked) #12
  %26 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu21, align 4
  %arrayidx.i = getelementptr %struct.cpuidle_coupled, ptr %1, i32 0, i32 1, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %next_state, ptr %arrayidx.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !32
  call void @llvm.prefetch.p0(ptr %ready_waiting_counts.i, i32 1, i32 3, i32 1) #12
  %29 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ready_waiting_counts.i, ptr %ready_waiting_counts.i, i32 1, ptr elementtype(i32) %ready_waiting_counts.i) #12, !srcloc !33
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !34
  %and.i = and i32 %asmresult.i.i.i.i.i, 65535
  %30 = ptrtoint ptr %online_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %online_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %31)
  %cmp = icmp eq i32 %and.i, %31
  br i1 %cmp, label %if.then24, label %cpumask_clear_cpu.exit.while.cond28.outer.preheader_crit_edge

cpumask_clear_cpu.exit.while.cond28.outer.preheader_crit_edge: ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond28.outer.preheader

if.then24:                                        ; preds = %cpumask_clear_cpu.exit
  %32 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %33)
  %cmp.not.i.i.i175 = icmp ugt i32 %34, %33
  br i1 %cmp.not.i.i.i175, label %if.then24.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i177

if.then24.cpumask_set_cpu.exit_crit_edge:         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i177:                                ; preds = %if.then24
  %.b37.i.i.i176 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i176, label %land.rhs.i.i.i177.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i178, !prof !41

land.rhs.i.i.i177.cpumask_set_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

if.then.i.i.i178:                                 ; preds = %land.rhs.i.i.i177
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i178, %land.rhs.i.i.i177.cpumask_set_cpu.exit_crit_edge, %if.then24.cpumask_set_cpu.exit_crit_edge
  call void @_set_bit(i32 noundef %33, ptr noundef nonnull @cpuidle_coupled_poked) #12
  %35 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu21, align 4
  call fastcc void @cpuidle_coupled_poke_others(i32 noundef %36, ptr noundef nonnull %1)
  br label %while.cond28.outer.preheader

while.cond28.outer.preheader:                     ; preds = %cpumask_set_cpu.exit, %cpumask_clear_cpu.exit.while.cond28.outer.preheader_crit_edge
  br label %while.cond28.outer.outer

while.cond28.outer.outer:                         ; preds = %while.cond28.outer.outer.backedge, %while.cond28.outer.preheader
  %entered_state.3.ph.ph = phi i32 [ %entered_state.1, %while.cond28.outer.preheader ], [ %call49, %while.cond28.outer.outer.backedge ]
  br label %while.cond28.outer

while.cond28.outer:                               ; preds = %cpuidle_coupled_set_not_ready.exit, %while.cond28.outer.outer
  br label %while.cond28

while.cond28:                                     ; preds = %while.body33.while.cond28_crit_edge, %while.cond28.outer
  %call.i.i.i180 = call zeroext i1 @__kasan_check_read(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %ready_waiting_counts.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %ready_waiting_counts.i, align 4
  %and.i181 = and i32 %38, 65535
  %39 = ptrtoint ptr %online_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %online_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i181, i32 %40)
  %cmp.i = icmp eq i32 %and.i181, %40
  br i1 %cmp.i, label %lor.rhs, label %while.cond28.while.body33_crit_edge

while.cond28.while.body33_crit_edge:              ; preds = %while.cond28
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body33

lor.rhs:                                          ; preds = %while.cond28
  %41 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %43 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %42)
  %cmp.not.i.i.i182 = icmp ugt i32 %43, %42
  br i1 %cmp.not.i.i.i182, label %lor.rhs.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i184

lor.rhs.cpumask_test_cpu.exit_crit_edge:          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i184:                                ; preds = %lor.rhs
  %.b37.i.i.i183 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i183, label %land.rhs.i.i.i184.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i185, !prof !41

land.rhs.i.i.i184.cpumask_test_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

if.then.i.i.i185:                                 ; preds = %land.rhs.i.i.i184
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i185, %land.rhs.i.i.i184.cpumask_test_cpu.exit_crit_edge, %lor.rhs.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %42, 5
  %arrayidx.i.i = getelementptr i32, ptr @cpuidle_coupled_poked, i32 %div3.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i186 = and i32 %42, 31
  %46 = shl nuw i32 1, %and.i.i186
  %47 = and i32 %45, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool32.not = icmp eq i32 %47, 0
  br i1 %tobool32.not, label %cpumask_test_cpu.exit.while.body33_crit_edge, label %while.end60

cpumask_test_cpu.exit.while.body33_crit_edge:     ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body33

while.body33:                                     ; preds = %cpumask_test_cpu.exit.while.body33_crit_edge, %while.cond28.while.body33_crit_edge
  %48 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu21, align 4
  %call35 = call fastcc i32 @cpuidle_coupled_clear_pokes(i32 noundef %49)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %while.body33.while.cond28_crit_edge

while.body33.while.cond28_crit_edge:              ; preds = %while.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond28

if.end38:                                         ; preds = %while.body33
  %50 = call i32 @llvm.read_register.i32(metadata !18) #12
  %and.i.i170 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i170 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 16384
  %54 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i171.not = icmp eq i32 %54, 0
  br i1 %tobool.i171.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu21, align 4
  %call.i.i.i188 = call zeroext i1 @__kasan_check_write(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %ready_waiting_counts.i, i32 1, i32 3, i32 1) #12
  %57 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ready_waiting_counts.i, ptr %ready_waiting_counts.i, i32 1, ptr elementtype(i32) %ready_waiting_counts.i) #12, !srcloc !42
  %arrayidx.i189 = getelementptr %struct.cpuidle_coupled, ptr %1, i32 0, i32 1, i32 %56
  %58 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %arrayidx.i189, align 4
  br label %do.body107

if.end42:                                         ; preds = %if.end38
  %59 = ptrtoint ptr %prevent to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %prevent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool44.not = icmp eq i32 %60, 0
  br i1 %tobool44.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu21, align 4
  %call.i.i.i191 = call zeroext i1 @__kasan_check_write(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %ready_waiting_counts.i, i32 1, i32 3, i32 1) #12
  %63 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ready_waiting_counts.i, ptr %ready_waiting_counts.i, i32 1, ptr elementtype(i32) %ready_waiting_counts.i) #12, !srcloc !42
  %arrayidx.i192 = getelementptr %struct.cpuidle_coupled, ptr %1, i32 0, i32 1, i32 %62
  %64 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %arrayidx.i192, align 4
  br label %do.body107

if.end47:                                         ; preds = %if.end42
  %65 = ptrtoint ptr %safe_state_index48 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %safe_state_index48, align 4
  %call49 = call i32 @cpuidle_enter_state(ptr noundef %dev, ptr noundef %drv, i32 noundef %66) #12
  %67 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !38
  %and.i.i193 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i193)
  %tobool53.not = icmp eq i32 %and.i.i193, 0
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !39
  br i1 %tobool53.not, label %if.then56, label %if.end47.while.cond28.outer.outer.backedge_crit_edge

if.end47.while.cond28.outer.outer.backedge_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond28.outer.outer.backedge

if.then56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  br label %while.cond28.outer.outer.backedge

while.cond28.outer.outer.backedge:                ; preds = %if.then56, %if.end47.while.cond28.outer.outer.backedge_crit_edge
  br label %while.cond28.outer.outer

while.end60:                                      ; preds = %cpumask_test_cpu.exit
  %68 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu21, align 4
  %call62 = call fastcc i32 @cpuidle_coupled_clear_pokes(i32 noundef %69)
  %70 = call i32 @llvm.read_register.i32(metadata !18) #12
  %and.i.i172 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i172 to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 16384
  %74 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i173.not = icmp eq i32 %74, 0
  br i1 %tobool.i173.not, label %do.end70, label %if.then64

if.then64:                                        ; preds = %while.end60
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu21, align 4
  %call.i.i.i195 = call zeroext i1 @__kasan_check_write(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %ready_waiting_counts.i, i32 1, i32 3, i32 1) #12
  %77 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ready_waiting_counts.i, ptr %ready_waiting_counts.i, i32 1, ptr elementtype(i32) %ready_waiting_counts.i) #12, !srcloc !42
  %arrayidx.i196 = getelementptr %struct.cpuidle_coupled, ptr %1, i32 0, i32 1, i32 %76
  %78 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %arrayidx.i196, align 4
  br label %do.body107

do.end70:                                         ; preds = %while.end60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !43
  %call.i.i.i198 = call zeroext i1 @__kasan_check_write(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %ready_waiting_counts.i, i32 1, i32 3, i32 1) #12
  %79 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ready_waiting_counts.i, ptr %ready_waiting_counts.i, i32 65536, ptr elementtype(i32) %ready_waiting_counts.i) #12, !srcloc !29
  %call.i.i.i200235 = call zeroext i1 @__kasan_check_read(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  %80 = ptrtoint ptr %ready_waiting_counts.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %ready_waiting_counts.i, align 4
  %shr.i236 = ashr i32 %81, 16
  %82 = ptrtoint ptr %online_count to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %online_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i236, i32 %83)
  %cmp.i202237 = icmp eq i32 %shr.i236, %83
  br i1 %cmp.i202237, label %do.end70.do.end97_crit_edge, label %do.end70.while.body76_crit_edge

do.end70.while.body76_crit_edge:                  ; preds = %do.end70
  br label %while.body76

do.end70.do.end97_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end97

while.body76:                                     ; preds = %do.end88.while.body76_crit_edge, %do.end70.while.body76_crit_edge
  %call.i.i.i204 = call zeroext i1 @__kasan_check_read(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  %84 = ptrtoint ptr %ready_waiting_counts.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %ready_waiting_counts.i, align 4
  %and.i205 = and i32 %85, 65535
  %86 = ptrtoint ptr %online_count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %online_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i205, i32 %87)
  %cmp.i207 = icmp eq i32 %and.i205, %87
  br i1 %cmp.i207, label %while.body76.do.end88_crit_edge, label %if.then78

while.body76.do.end88_crit_edge:                  ; preds = %while.body76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88

if.then78:                                        ; preds = %while.body76
  %shl.i = shl i32 %87, 16
  %or.i = or i32 %shl.i, %87
  %call.i.i.i210 = call zeroext i1 @__kasan_check_write(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !44
  call void @llvm.prefetch.p0(ptr %ready_waiting_counts.i, i32 1, i32 3, i32 1) #12
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %ready_waiting_counts.i, ptr %ready_waiting_counts.i, i32 %or.i, i32 -65536, ptr elementtype(i32) %ready_waiting_counts.i) #12, !srcloc !45
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, %or.i
  br i1 %cmp.not.i.i.i.i, label %if.then78.do.end88_crit_edge, label %cpuidle_coupled_set_not_ready.exit

if.then78.do.end88_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88

cpuidle_coupled_set_not_ready.exit:               ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !46
  br label %while.cond28.outer

do.end88:                                         ; preds = %if.then78.do.end88_crit_edge, %while.body76.do.end88_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !47
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !48
  %call.i.i.i200 = call zeroext i1 @__kasan_check_read(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  %89 = ptrtoint ptr %ready_waiting_counts.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %ready_waiting_counts.i, align 4
  %shr.i = ashr i32 %90, 16
  %91 = ptrtoint ptr %online_count to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %online_count, align 4
  %cmp.i202 = icmp eq i32 %shr.i, %92
  br i1 %cmp.i202, label %do.end88.do.end97_crit_edge, label %do.end88.while.body76_crit_edge

do.end88.while.body76_crit_edge:                  ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body76

do.end88.do.end97_crit_edge:                      ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end97

do.end97:                                         ; preds = %do.end88.do.end97_crit_edge, %do.end70.do.end97_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpus.i) #12
  %93 = ptrtoint ptr %cpus.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %cpus.i, align 4, !annotation !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %94 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i212 = call i32 @__bitmap_and(ptr noundef nonnull %cpus.i, ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull %1, i32 noundef %94) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %95 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i10.i = call i32 @__bitmap_and(ptr noundef nonnull %cpus.i, ptr noundef nonnull @cpuidle_coupled_poke_pending, ptr noundef nonnull %cpus.i, i32 noundef %95) #12
  %tobool.i213.not = icmp eq i32 %call.i.i10.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpus.i) #12
  br i1 %tobool.i213.not, label %if.end103, label %if.then101

if.then101:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cpu21, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %ready_waiting_counts.i, i32 1, i32 3, i32 1) #12
  %98 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ready_waiting_counts.i, ptr %ready_waiting_counts.i, i32 1, ptr elementtype(i32) %ready_waiting_counts.i) #12, !srcloc !42
  %arrayidx.i.i214 = getelementptr %struct.cpuidle_coupled, ptr %1, i32 0, i32 1, i32 %97
  %99 = ptrtoint ptr %arrayidx.i.i214 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %arrayidx.i.i214, align 4
  %call.i.i.i215 = call zeroext i1 @__kasan_check_write(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %ready_waiting_counts.i, i32 1, i32 3, i32 1) #12
  %100 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ready_waiting_counts.i, ptr %ready_waiting_counts.i, i32 65536, ptr elementtype(i32) %ready_waiting_counts.i) #12, !srcloc !42
  call void @cpuidle_coupled_parallel_barrier(ptr noundef %dev, ptr noundef %abort_barrier)
  br label %reset

if.end103:                                        ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #14
  %call104 = call fastcc i32 @cpuidle_coupled_get_state(ptr noundef nonnull %1)
  %call105 = call i32 @cpuidle_enter_state(ptr noundef %dev, ptr noundef %drv, i32 noundef %call104) #12
  %101 = ptrtoint ptr %cpu21 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cpu21, align 4
  call fastcc void @cpuidle_coupled_set_done(i32 noundef %102, ptr noundef nonnull %1)
  br label %do.body107

do.body107:                                       ; preds = %if.end103, %if.then64, %if.then45, %if.then40
  %entered_state.4 = phi i32 [ %entered_state.3.ph.ph, %if.then40 ], [ %entered_state.3.ph.ph, %if.then45 ], [ %entered_state.3.ph.ph, %if.then64 ], [ %call105, %if.end103 ]
  call void @trace_hardirqs_on() #12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !37
  %call.i.i.i217240 = call zeroext i1 @__kasan_check_read(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  %103 = ptrtoint ptr %ready_waiting_counts.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %ready_waiting_counts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %104)
  %cmp.i218241 = icmp ugt i32 %104, 65535
  br i1 %cmp.i218241, label %do.body107.do.end119_crit_edge, label %do.body107.cleanup_crit_edge

do.body107.cleanup_crit_edge:                     ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body107.do.end119_crit_edge:                   ; preds = %do.body107
  br label %do.end119

do.end119:                                        ; preds = %do.end119.do.end119_crit_edge, %do.body107.do.end119_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !52
  %call.i.i.i217 = call zeroext i1 @__kasan_check_read(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  %105 = ptrtoint ptr %ready_waiting_counts.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %ready_waiting_counts.i, align 4
  %cmp.i218 = icmp ugt i32 %106, 65535
  br i1 %cmp.i218, label %do.end119.do.end119_crit_edge, label %do.end119.cleanup_crit_edge

do.end119.cleanup_crit_edge:                      ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end119.do.end119_crit_edge:                    ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end119

cleanup:                                          ; preds = %do.end119.cleanup_crit_edge, %do.body107.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %entered_state.0234.lcssa, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ %entered_state.4, %do.body107.cleanup_crit_edge ], [ %entered_state.4, %do.end119.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpuidle_coupled_clear_pokes(i32 noundef %cpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !41

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i = getelementptr i32, ptr @cpuidle_coupled_poke_pending, i32 %div3.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.return_crit_edge, label %do.body

cpumask_test_cpu.exit.return_crit_edge:           ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body:                                          ; preds = %cpumask_test_cpu.exit
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !37
  br label %while.cond

while.cond:                                       ; preds = %do.end6, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cpu)
  %cmp.not.i.i.i17 = icmp ugt i32 %5, %cpu
  br i1 %cmp.not.i.i.i17, label %while.cond.cpumask_test_cpu.exit26_crit_edge, label %land.rhs.i.i.i19

while.cond.cpumask_test_cpu.exit26_crit_edge:     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit26

land.rhs.i.i.i19:                                 ; preds = %while.cond
  %.b37.i.i.i18 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i18, label %land.rhs.i.i.i19.cpumask_test_cpu.exit26_crit_edge, label %if.then.i.i.i20, !prof !41

land.rhs.i.i.i19.cpumask_test_cpu.exit26_crit_edge: ; preds = %land.rhs.i.i.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit26

if.then.i.i.i20:                                  ; preds = %land.rhs.i.i.i19
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit26

cpumask_test_cpu.exit26:                          ; preds = %if.then.i.i.i20, %land.rhs.i.i.i19.cpumask_test_cpu.exit26_crit_edge, %while.cond.cpumask_test_cpu.exit26_crit_edge
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %8 = and i32 %7, %3
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %do.body9, label %do.end6

do.end6:                                          ; preds = %cpumask_test_cpu.exit26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !54
  br label %while.cond

do.body9:                                         ; preds = %cpumask_test_cpu.exit26
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !38
  %and.i.i27 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool11.not = icmp eq i32 %and.i.i27, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !39
  br i1 %tobool11.not, label %if.then13, label %do.body9.return_crit_edge

do.body9.return_crit_edge:                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %return

return:                                           ; preds = %if.then13, %do.body9.return_crit_edge, %cpumask_test_cpu.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %cpumask_test_cpu.exit.return_crit_edge ], [ 1, %if.then13 ], [ 1, %do.body9.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_enter_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpuidle_coupled_poke_others(i32 noundef %this_cpu, ptr noundef %coupled) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call11 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %coupled) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %0)
  %cmp12 = icmp ult i32 %call11, %0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %call13 = phi i32 [ %call, %if.end.for.body_crit_edge ], [ %call11, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %this_cpu)
  %cmp1.not = icmp eq i32 %call13, %this_cpu
  br i1 %cmp1.not, label %for.body.if.end_crit_edge, label %cpu_online.exit

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cpu_online.exit:                                  ; preds = %for.body
  %div3.i.i.i = lshr i32 %call13, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %call13, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end_crit_edge, label %if.then

cpu_online.exit.if.end_crit_edge:                 ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cpu_online.exit
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call13
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call13)
  %cmp.not.i.i.i.i7 = icmp ugt i32 %7, %call13
  br i1 %cmp.not.i.i.i.i7, label %if.then.cpumask_test_and_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i9

if.then.cpumask_test_and_set_cpu.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_and_set_cpu.exit.i

land.rhs.i.i.i.i9:                                ; preds = %if.then
  %.b37.i.i.i.i8 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i8, label %land.rhs.i.i.i.i9.cpumask_test_and_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i10, !prof !41

land.rhs.i.i.i.i9.cpumask_test_and_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_and_set_cpu.exit.i

if.then.i.i.i.i10:                                ; preds = %land.rhs.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_and_set_cpu.exit.i

cpumask_test_and_set_cpu.exit.i:                  ; preds = %if.then.i.i.i.i10, %land.rhs.i.i.i.i9.cpumask_test_and_set_cpu.exit.i_crit_edge, %if.then.cpumask_test_and_set_cpu.exit.i_crit_edge
  %call1.i.i = tail call i32 @_test_and_set_bit(i32 noundef %call13, ptr noundef nonnull @cpuidle_coupled_poke_pending) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %cpumask_test_and_set_cpu.exit.i.if.end_crit_edge

cpumask_test_and_set_cpu.exit.i.if.end_crit_edge: ; preds = %cpumask_test_and_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %cpumask_test_and_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i32 %6, ptrtoint (ptr @cpuidle_coupled_poke_cb to i32)
  %8 = inttoptr i32 %add.i to ptr
  %call2.i = tail call i32 @smp_call_function_single_async(i32 noundef %call13, ptr noundef %8) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %cpumask_test_and_set_cpu.exit.i.if.end_crit_edge, %cpu_online.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call13, ptr noundef %coupled) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpuidle_coupled_set_done(i32 noundef %cpu, ptr noundef %coupled) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ready_waiting_counts.i = getelementptr inbounds %struct.cpuidle_coupled, ptr %coupled, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ready_waiting_counts.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ready_waiting_counts.i, ptr %ready_waiting_counts.i, i32 1, ptr elementtype(i32) %ready_waiting_counts.i) #12, !srcloc !42
  %arrayidx.i = getelementptr %struct.cpuidle_coupled, ptr %coupled, i32 0, i32 1, i32 %cpu
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %arrayidx.i, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ready_waiting_counts.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ready_waiting_counts.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ready_waiting_counts.i, ptr %ready_waiting_counts.i, i32 65536, ptr elementtype(i32) %ready_waiting_counts.i) #12, !srcloc !42
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpuidle_coupled_get_state(ptr noundef %coupled) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %coupled) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %0)
  %cmp2 = icmp ult i32 %call1, %0
  br i1 %cmp2, label %entry.cpu_online.exit_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.end.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %call4 = phi i32 [ %call, %if.end.cpu_online.exit_crit_edge ], [ %call1, %entry.cpu_online.exit_crit_edge ]
  %state.03 = phi i32 [ %state.1, %if.end.cpu_online.exit_crit_edge ], [ 2147483647, %entry.cpu_online.exit_crit_edge ]
  %div3.i.i.i = lshr i32 %call4, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %call4, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end_crit_edge, label %land.lhs.true

cpu_online.exit.if.end_crit_edge:                 ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.cpuidle_coupled, ptr %coupled, i32 0, i32 1, i32 %call4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %state.03)
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %cpu_online.exit.if.end_crit_edge
  %state.1 = phi i32 [ %state.03, %cpu_online.exit.if.end_crit_edge ], [ %7, %land.lhs.true ]
  %call = tail call i32 @cpumask_next(i32 noundef %call4, ptr noundef %coupled) #15
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %if.end.cpu_online.exit_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.cpu_online.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %state.0.lcssa = phi i32 [ 2147483647, %entry.for.end_crit_edge ], [ %state.1, %if.end.for.end_crit_edge ]
  ret i32 %state.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuidle_coupled_register_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %cpus.i = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coupled_cpus = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %coupled_cpus, i32 noundef %0) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %0)
  %cmp4.i.i = icmp eq i32 %call.i.i, %0
  br i1 %cmp4.i.i, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call292 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %coupled_cpus) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call292, i32 %1)
  %cmp93 = icmp ult i32 %call292, %1
  br i1 %cmp93, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

do.body:                                          ; preds = %if.end8.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %call294 = phi i32 [ %call2, %if.end8.do.body_crit_edge ], [ %call292, %for.cond.preheader.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call294
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpuidle_devices to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.body.if.end8_crit_edge, label %land.lhs.true

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %do.body
  %coupled4 = getelementptr inbounds %struct.cpuidle_device, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %coupled4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %coupled4, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.have_coupled_crit_edge

land.lhs.true.have_coupled_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %have_coupled

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %do.body.if.end8_crit_edge
  %call2 = tail call i32 @cpumask_next(i32 noundef %call294, ptr noundef %coupled_cpus) #15
  %cmp = icmp ult i32 %call2, %1
  br i1 %cmp, label %if.end8.do.body_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #16
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %for.end.cleanup_crit_edge, label %if.end12

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %coupled_cpus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %coupled_cpus, align 8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call7.i.i, align 8
  br label %have_coupled

have_coupled:                                     ; preds = %if.end12, %land.lhs.true.have_coupled_crit_edge
  %coupled.0 = phi ptr [ %call7.i.i, %if.end12 ], [ %8, %land.lhs.true.have_coupled_crit_edge ]
  %coupled15 = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %coupled15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %coupled.0, ptr %coupled15, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i = tail call i32 @__bitmap_equal(ptr noundef %coupled_cpus, ptr noundef nonnull %coupled.0, i32 noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool.i.not = icmp eq i32 %call13.i.i, 0
  br i1 %tobool.i.not, label %do.end31, label %have_coupled.if.end47_crit_edge, !prof !56

have_coupled.if.end47_crit_edge:                  ; preds = %have_coupled
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.end31:                                         ; preds = %have_coupled
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 669, i32 noundef 9, ptr noundef null) #12
  %prevent = getelementptr inbounds %struct.cpuidle_coupled, ptr %coupled.0, i32 0, i32 6
  %15 = ptrtoint ptr %prevent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prevent, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %prevent, align 4
  br label %if.end47

if.end47:                                         ; preds = %do.end31, %have_coupled.if.end47_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpus.i) #12
  %17 = ptrtoint ptr %cpus.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %cpus.i, align 4, !annotation !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = call i32 @__bitmap_and(ptr noundef nonnull %cpus.i, ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull %coupled.0, i32 noundef %18) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull %cpus.i, i32 noundef %19) #12
  %online_count.i = getelementptr inbounds %struct.cpuidle_coupled, ptr %coupled.0, i32 0, i32 4
  %20 = ptrtoint ptr %online_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call4.i.i.i, ptr %online_count.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpus.i) #12
  %refcnt = getelementptr inbounds %struct.cpuidle_coupled, ptr %coupled.0, i32 0, i32 5
  %21 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %refcnt, align 4
  %inc48 = add i32 %22, 1
  store i32 %inc48, ptr %refcnt, align 4
  %cpu56 = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %cpu56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu56, align 4
  %arrayidx57 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx57, align 4
  %add58 = add i32 %26, ptrtoint (ptr @cpuidle_coupled_poke_cb to i32)
  %27 = inttoptr i32 %add58 to ptr
  %28 = inttoptr i32 %24 to ptr
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %27, align 16
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %27, i32 8
  %30 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @cpuidle_coupled_handle_poke, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 8
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %27, i32 12
  %31 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpuidle_coupled_handle_poke(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %0)
  %cmp.not.i.i.i = icmp ugt i32 %1, %0
  br i1 %cmp.not.i.i.i, label %entry.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_set_cpu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !41

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %entry.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %0, ptr noundef nonnull @cpuidle_coupled_poked) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp.not.i.i.i2 = icmp ugt i32 %2, %0
  br i1 %cmp.not.i.i.i2, label %cpumask_set_cpu.exit.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i4

cpumask_set_cpu.exit.cpumask_clear_cpu.exit_crit_edge: ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i4:                                  ; preds = %cpumask_set_cpu.exit
  %.b37.i.i.i3 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i3, label %land.rhs.i.i.i4.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i5, !prof !41

land.rhs.i.i.i4.cpumask_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_clear_cpu.exit

if.then.i.i.i5:                                   ; preds = %land.rhs.i.i.i4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i5, %land.rhs.i.i.i4.cpumask_clear_cpu.exit_crit_edge, %cpumask_set_cpu.exit.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %0, ptr noundef nonnull @cpuidle_coupled_poke_pending) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuidle_coupled_unregister_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coupled1 = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %coupled1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coupled1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %coupled_cpus = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 12
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %coupled_cpus, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %2)
  %cmp4.i.i = icmp eq i32 %call.i.i, %2
  br i1 %cmp4.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.cpuidle_coupled, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcnt, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %1) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %5 = ptrtoint ptr %coupled1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %coupled1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuidle_coupled_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 51, ptr noundef nonnull @.str.2, i1 noundef zeroext false, ptr noundef nonnull @coupled_cpu_up_prepare, ptr noundef nonnull @coupled_cpu_online, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i7 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.3, i1 noundef zeroext false, ptr noundef nonnull @coupled_cpu_online, ptr noundef nonnull @coupled_cpu_up_prepare, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp = icmp slt i32 %call.i7, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__cpuhp_remove_state(i32 noundef 51, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i7, %if.then2 ], [ %call.i7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single_async(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coupled_cpu_up_prepare(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #12
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpuidle_devices to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %coupled = getelementptr inbounds %struct.cpuidle_device, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %coupled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %coupled, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = tail call i32 @llvm.read_register.i32(metadata !18) #12
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %10, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !57
  %11 = tail call i32 @llvm.read_register.i32(metadata !18) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu1.i, align 4
  %prevent.i = getelementptr inbounds %struct.cpuidle_coupled, ptr %6, i32 0, i32 6
  %15 = ptrtoint ptr %prevent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prevent.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %prevent.i, align 4
  tail call fastcc void @cpuidle_coupled_poke_others(i32 noundef %14, ptr noundef nonnull %6) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !58
  %17 = tail call i32 @llvm.read_register.i32(metadata !18) #12
  %and.i.i.i17.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i17.i to ptr
  %preempt_count.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i18.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i18.i, align 4
  %ready_waiting_counts.i.i = getelementptr inbounds %struct.cpuidle_coupled, ptr %6, i32 0, i32 2
  %call.i.i.i20.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ready_waiting_counts.i.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %ready_waiting_counts.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %ready_waiting_counts.i.i, align 4
  %and.i1921.i = and i32 %22, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1921.i)
  %cmp.i.not22.i = icmp eq i32 %and.i1921.i, 0
  br i1 %cmp.i.not22.i, label %if.then.if.end_crit_edge, label %if.then.do.end10.i_crit_edge

if.then.do.end10.i_crit_edge:                     ; preds = %if.then
  br label %do.end10.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end10.i:                                       ; preds = %do.end10.i.do.end10.i_crit_edge, %if.then.do.end10.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !59
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !60
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ready_waiting_counts.i.i, i32 noundef 4) #12
  %23 = ptrtoint ptr %ready_waiting_counts.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %ready_waiting_counts.i.i, align 4
  %and.i19.i = and i32 %24, 65535
  %cmp.i.not.i = icmp eq i32 %and.i19.i, 0
  br i1 %cmp.i.not.i, label %do.end10.i.if.end_crit_edge, label %do.end10.i.do.end10.i_crit_edge

do.end10.i.do.end10.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

do.end10.i.if.end_crit_edge:                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.end10.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coupled_cpu_online(i32 noundef %cpu) #0 align 64 {
entry:
  %cpus.i = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #12
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpuidle_devices to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %coupled = getelementptr inbounds %struct.cpuidle_device, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %coupled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %coupled, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpus.i) #12
  %7 = ptrtoint ptr %cpus.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cpus.i, align 4, !annotation !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = call i32 @__bitmap_and(ptr noundef nonnull %cpus.i, ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull %6, i32 noundef %8) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull %cpus.i, i32 noundef %9) #12
  %online_count.i = getelementptr inbounds %struct.cpuidle_coupled, ptr %6, i32 0, i32 4
  %10 = ptrtoint ptr %online_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4.i.i.i, ptr %online_count.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpus.i) #12
  %11 = ptrtoint ptr %coupled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %coupled, align 4
  %13 = call i32 @llvm.read_register.i32(metadata !18) #12
  %and.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i9 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %16, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !61
  %17 = call i32 @llvm.read_register.i32(metadata !18) #12
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !62
  %prevent.i = getelementptr inbounds %struct.cpuidle_coupled, ptr %12, i32 0, i32 6
  %21 = ptrtoint ptr %prevent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prevent.i, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %prevent.i, align 4
  call fastcc void @cpuidle_coupled_poke_others(i32 noundef %20, ptr noundef %12) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !63
  %23 = call i32 @llvm.read_register.i32(metadata !18) #12
  %and.i.i.i12.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i13.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/coupled.c", i32 669, i32 6}
!2 = !{ptr @__initcall__kmod_coupled__183_791_cpuidle_coupled_init1, !3, !"__initcall__kmod_coupled__183_791_cpuidle_coupled_init1", i1 false, i1 false}
!3 = !{!"../drivers/cpuidle/coupled.c", i32 791, i32 1}
!4 = !{ptr @__pcpu_unique_cpuidle_coupled_poke_cb, !5, !"__pcpu_unique_cpuidle_coupled_poke_cb", i1 false, i1 false}
!5 = !{!"../drivers/cpuidle/coupled.c", i32 114, i32 8}
!6 = !{ptr @cpuidle_coupled_poke_cb, !5, !"cpuidle_coupled_poke_cb", i1 false, i1 false}
!7 = !{ptr @cpuidle_coupled_poked, !8, !"cpuidle_coupled_poked", i1 false, i1 false}
!8 = !{!"../drivers/cpuidle/coupled.c", i32 129, i32 18}
!9 = !{ptr @cpuidle_coupled_poke_pending, !10, !"cpuidle_coupled_poke_pending", i1 false, i1 false}
!10 = !{!"../drivers/cpuidle/coupled.c", i32 122, i32 18}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/cpuidle/coupled.c", i32 778, i32 6}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpuidle/coupled.c", i32 784, i32 6}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2152717949}
!29 = !{i64 2148233547, i64 2148233573, i64 2148233602, i64 2148233636, i64 2148233667, i64 2148233690}
!30 = !{i64 2152718224}
!31 = !{i64 2152718066}
!32 = !{i64 2148318958}
!33 = !{i64 2148234267, i64 2148234299, i64 2148234328, i64 2148234362, i64 2148234393, i64 2148234416}
!34 = !{i64 2148319187}
!35 = !{i64 2152718499}
!36 = !{i64 2152718341}
!37 = !{i64 626273}
!38 = !{i64 628760}
!39 = !{i64 626463}
!40 = !{i64 2152722529}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2148236012, i64 2148236038, i64 2148236067, i64 2148236101, i64 2148236132, i64 2148236155}
!43 = !{i64 2152722908}
!44 = !{i64 2148232966}
!45 = !{i64 717789, i64 717814, i64 717836, i64 717852, i64 717864, i64 717884, i64 717908, i64 717924, i64 717936}
!46 = !{i64 2148233154}
!47 = !{i64 2152723183}
!48 = !{i64 2152723025}
!49 = !{i64 2152723348}
!50 = !{!"auto-init"}
!51 = !{i64 2152723751}
!52 = !{i64 2152723593}
!53 = !{i64 2152721742}
!54 = !{i64 2152721584}
!55 = !{i64 2152720100}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2152726953}
!58 = !{i64 2152727120}
!59 = !{i64 2152727397}
!60 = !{i64 2152727239}
!61 = !{i64 2152727635}
!62 = !{i64 2152727798}
!63 = !{i64 2152727958}
