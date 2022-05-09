; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/rtrs/rtrs-clt-stats.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/rtrs/rtrs-clt-stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.rtrs_clt_path = type { %struct.rtrs_path, ptr, %struct.wait_queue_head, i32, %struct.atomic_t, %struct.mutex, ptr, %struct.delayed_work, %struct.work_struct, i32, i8, ptr, i32, i32, i32, i32, i32, i32, %struct.kobject, i8, ptr, i8, [64 x i8], ptr }
%struct.rtrs_path = type { %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, [255 x i8], %struct.uuid_t, ptr, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.delayed_work, i32, i32, i32, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.uuid_t = type { [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtrs_clt_con = type { %struct.rtrs_con, ptr, i32, i32, %struct.mutex, i32 }
%struct.rtrs_con = type { ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t }
%struct.rtrs_clt_stats = type { %struct.kobject, ptr, %struct.rtrs_clt_stats_reconnects, %struct.atomic_t }
%struct.rtrs_clt_stats_reconnects = type { i32, i32 }
%struct.rtrs_clt_stats_cpu_migr = type { %struct.atomic_t, i32 }
%struct.rtrs_clt_stats_pcpu = type { %struct.rtrs_clt_stats_cpu_migr, %struct.rtrs_clt_stats_rdma }
%struct.rtrs_clt_stats_rdma = type { [2 x %struct.anon.176], i64 }
%struct.anon.176 = type { i64, i64 }
%struct.rtrs_clt_io_req = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.ib_cqe, %struct.completion, i32, i8, i8, %struct.refcount_struct }
%struct.ib_cqe = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%llu %llu %llu %llu %u %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"echo 1 to reset all statistics\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 52, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 56, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 81, i32 25 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 103, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [48 x i8] c"../drivers/infiniband/ulp/rtrs/rtrs-clt-stats.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 111, i32 26 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtrs_clt_update_wc_stats(ptr nocapture noundef readonly %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con, align 4
  %stats1 = getelementptr inbounds %struct.rtrs_clt_path, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !10) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu3 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu3, align 4
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %9, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %cpu11 = getelementptr inbounds %struct.rtrs_clt_con, ptr %con, i32 0, i32 3
  %10 = ptrtoint ptr %cpu11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp.not = icmp eq i32 %11, %7
  br i1 %cmp.not, label %entry.do.body24_crit_edge, label %if.then

entry.do.body24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %cpu3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu3, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %pcpu_stats = getelementptr inbounds %struct.rtrs_clt_stats, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_stats, align 4
  %18 = ptrtoint ptr %17 to i32
  %add = add i32 %15, %18
  %19 = inttoptr i32 %add to ptr
  %to = getelementptr inbounds %struct.rtrs_clt_stats_cpu_migr, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %to, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %to, align 4
  %22 = load ptr, ptr %pcpu_stats, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = ptrtoint ptr %cpu11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu11, align 4
  %arrayidx21 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %27, %23
  %28 = inttoptr i32 %add22 to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %28, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %28, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #8, !srcloc !21
  br label %do.body24

do.body24:                                        ; preds = %if.then, %entry.do.body24_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !22
  %30 = tail call i32 @llvm.read_register.i32(metadata !10) #8
  %and.i.i.i36 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i36 to ptr
  %preempt_count.i.i37 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i37, align 4
  %sub.i = add i32 %33, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i37, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtrs_clt_inc_failover_cnt(ptr nocapture noundef readonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !10) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !23
  %pcpu_stats = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 1
  %4 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_stats, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !10) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %failover_cnt = getelementptr inbounds %struct.rtrs_clt_stats_pcpu, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %failover_cnt to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %failover_cnt, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %failover_cnt, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  %16 = tail call i32 @llvm.read_register.i32(metadata !10) #8
  %and.i.i.i14 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i14 to ptr
  %preempt_count.i.i15 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i15, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_stats_migration_from_cnt_to_str(ptr nocapture noundef readonly %stats, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call14 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %0)
  %cmp15 = icmp ult i32 %call14, %0
  br i1 %cmp15, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %pcpu_stats = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call17 = phi i32 [ %call14, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %used.016 = phi i32 [ 0, %do.body.lr.ph ], [ %add4, %do.body.do.body_crit_edge ]
  %1 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_stats, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call17
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %used.016, ptr noundef nonnull @.str, i32 noundef %8) #8
  %add4 = add i32 %call3, %used.016
  %call = tail call i32 @cpumask_next(i32 noundef %call17, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add4, %do.body.for.end_crit_edge ]
  %call5 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %used.0.lcssa, ptr noundef nonnull @.str.1) #8
  %add6 = add i32 %call5, %used.0.lcssa
  ret i32 %add6
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_stats_migration_to_cnt_to_str(ptr nocapture noundef readonly %stats, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call13 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %0)
  %cmp14 = icmp ult i32 %call13, %0
  br i1 %cmp14, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %pcpu_stats = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call16 = phi i32 [ %call13, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %used.015 = phi i32 [ 0, %do.body.lr.ph ], [ %add3, %do.body.do.body_crit_edge ]
  %1 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_stats, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %to = getelementptr inbounds %struct.rtrs_clt_stats_cpu_migr, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %to, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %used.015, ptr noundef nonnull @.str, i32 noundef %8) #8
  %add3 = add i32 %call2, %used.015
  %call = tail call i32 @cpumask_next(i32 noundef %call16, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add3, %do.body.for.end_crit_edge ]
  %call4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %used.0.lcssa, ptr noundef nonnull @.str.1) #8
  %add5 = add i32 %call4, %used.0.lcssa
  ret i32 %add5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_stats_reconnects_to_str(ptr nocapture noundef readonly %stats, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reconnects = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 2
  %0 = ptrtoint ptr %reconnects to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reconnects, align 4
  %fail_cnt = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %fail_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fail_cnt, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %1, i32 noundef %3) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_stats_rdma_to_str(ptr noundef %stats, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call65 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call65, i32 %0)
  %cmp66 = icmp ult i32 %call65, %0
  br i1 %cmp66, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %pcpu_stats = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 1
  %1 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_stats, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call72 = phi i32 [ %call65, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %sum.sroa.0.071 = phi i64 [ 0, %do.body.lr.ph ], [ %add6, %do.body.do.body_crit_edge ]
  %sum.sroa.8.070 = phi i64 [ 0, %do.body.lr.ph ], [ %add12, %do.body.do.body_crit_edge ]
  %sum.sroa.12.069 = phi i64 [ 0, %do.body.lr.ph ], [ %add19, %do.body.do.body_crit_edge ]
  %sum.sroa.16.068 = phi i64 [ 0, %do.body.lr.ph ], [ %add26, %do.body.do.body_crit_edge ]
  %sum.sroa.20.067 = phi i64 [ 0, %do.body.lr.ph ], [ %add28, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call72
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %rdma = getelementptr inbounds %struct.rtrs_clt_stats_pcpu, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %rdma to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rdma, align 8
  %add6 = add i64 %8, %sum.sroa.0.071
  %size_total = getelementptr inbounds %struct.rtrs_clt_stats_pcpu, ptr %6, i32 0, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %size_total to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size_total, align 8
  %add12 = add i64 %10, %sum.sroa.8.070
  %arrayidx14 = getelementptr %struct.rtrs_clt_stats_pcpu, ptr %6, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx14, align 8
  %add19 = add i64 %12, %sum.sroa.12.069
  %size_total22 = getelementptr %struct.rtrs_clt_stats_pcpu, ptr %6, i32 0, i32 1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %size_total22 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %size_total22, align 8
  %add26 = add i64 %14, %sum.sroa.16.068
  %failover_cnt = getelementptr inbounds %struct.rtrs_clt_stats_pcpu, ptr %6, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %failover_cnt to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %failover_cnt, align 8
  %add28 = add i64 %16, %sum.sroa.20.067
  %call = tail call i32 @cpumask_next(i32 noundef %call72, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sum.sroa.20.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add28, %do.body.for.end_crit_edge ]
  %sum.sroa.16.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add26, %do.body.for.end_crit_edge ]
  %sum.sroa.12.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add19, %do.body.for.end_crit_edge ]
  %sum.sroa.8.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add12, %do.body.for.end_crit_edge ]
  %sum.sroa.0.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add6, %do.body.for.end_crit_edge ]
  %inflight = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight, i32 noundef 4) #8
  %17 = ptrtoint ptr %inflight to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %inflight, align 4
  %call43 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.3, i64 noundef %sum.sroa.0.0.lcssa, i64 noundef %sum.sroa.8.0.lcssa, i64 noundef %sum.sroa.12.0.lcssa, i64 noundef %sum.sroa.16.0.lcssa, i32 noundef %18, i64 noundef %sum.sroa.20.0.lcssa) #8
  ret i32 %call43
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_reset_all_help(ptr nocapture noundef readnone %s, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.4) #8
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_reset_rdma_stats(ptr nocapture noundef readonly %stats, i1 noundef zeroext %enable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %0)
  %cmp6 = icmp ult i32 %call5, %0
  br i1 %cmp6, label %do.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %pcpu_stats = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call7 = phi i32 [ %call5, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %1 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_stats, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %rdma = getelementptr inbounds %struct.rtrs_clt_stats_pcpu, ptr %6, i32 0, i32 1
  %7 = call ptr @memset(ptr %rdma, i32 0, i32 40)
  %call = tail call i32 @cpumask_next(i32 noundef %call7, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_reset_cpu_migr_stats(ptr nocapture noundef readonly %stats, i1 noundef zeroext %enable) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %0)
  %cmp6 = icmp ult i32 %call5, %0
  br i1 %cmp6, label %do.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %pcpu_stats = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call7 = phi i32 [ %call5, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %1 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_stats, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %6, align 8
  %call = tail call i32 @cpumask_next(i32 noundef %call7, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %8
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rtrs_clt_reset_reconnects_stat(ptr nocapture noundef writeonly %stats, i1 noundef zeroext %enable) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reconnects = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 2
  %0 = ptrtoint ptr %reconnects to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %reconnects, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_reset_all_stats(ptr noundef %s, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call5.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %0)
  %cmp6.i = icmp ult i32 %call5.i, %0
  br i1 %cmp6.i, label %do.body.lr.ph.i, label %if.then.rtrs_clt_reset_rdma_stats.exit_crit_edge

if.then.rtrs_clt_reset_rdma_stats.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtrs_clt_reset_rdma_stats.exit

do.body.lr.ph.i:                                  ; preds = %if.then
  %pcpu_stats.i = getelementptr inbounds %struct.rtrs_clt_stats, ptr %s, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call7.i = phi i32 [ %call5.i, %do.body.lr.ph.i ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  %1 = ptrtoint ptr %pcpu_stats.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_stats.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, %3
  %6 = inttoptr i32 %add.i to ptr
  %rdma.i = getelementptr inbounds %struct.rtrs_clt_stats_pcpu, ptr %6, i32 0, i32 1
  %7 = call ptr @memset(ptr %rdma.i, i32 0, i32 40)
  %call.i = tail call i32 @cpumask_next(i32 noundef %call7.i, ptr noundef nonnull @__cpu_possible_mask) #11
  %cmp.i = icmp ult i32 %call.i, %0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.rtrs_clt_reset_rdma_stats.exit_crit_edge

do.body.i.rtrs_clt_reset_rdma_stats.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtrs_clt_reset_rdma_stats.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

rtrs_clt_reset_rdma_stats.exit:                   ; preds = %do.body.i.rtrs_clt_reset_rdma_stats.exit_crit_edge, %if.then.rtrs_clt_reset_rdma_stats.exit_crit_edge
  %call5.i12 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i12, i32 %0)
  %cmp6.i13 = icmp ult i32 %call5.i12, %0
  br i1 %cmp6.i13, label %do.body.lr.ph.i15, label %rtrs_clt_reset_rdma_stats.exit.rtrs_clt_reset_cpu_migr_stats.exit_crit_edge

rtrs_clt_reset_rdma_stats.exit.rtrs_clt_reset_cpu_migr_stats.exit_crit_edge: ; preds = %rtrs_clt_reset_rdma_stats.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtrs_clt_reset_cpu_migr_stats.exit

do.body.lr.ph.i15:                                ; preds = %rtrs_clt_reset_rdma_stats.exit
  %pcpu_stats.i14 = getelementptr inbounds %struct.rtrs_clt_stats, ptr %s, i32 0, i32 1
  br label %do.body.i21

do.body.i21:                                      ; preds = %do.body.i21.do.body.i21_crit_edge, %do.body.lr.ph.i15
  %call7.i16 = phi i32 [ %call5.i12, %do.body.lr.ph.i15 ], [ %call.i19, %do.body.i21.do.body.i21_crit_edge ]
  %8 = ptrtoint ptr %pcpu_stats.i14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_stats.i14, align 4
  %10 = ptrtoint ptr %9 to i32
  %arrayidx.i17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call7.i16
  %11 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i17, align 4
  %add.i18 = add i32 %12, %10
  %13 = inttoptr i32 %add.i18 to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %13, align 8
  %call.i19 = tail call i32 @cpumask_next(i32 noundef %call7.i16, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i20 = icmp ult i32 %call.i19, %15
  br i1 %cmp.i20, label %do.body.i21.do.body.i21_crit_edge, label %do.body.i21.rtrs_clt_reset_cpu_migr_stats.exit_crit_edge

do.body.i21.rtrs_clt_reset_cpu_migr_stats.exit_crit_edge: ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtrs_clt_reset_cpu_migr_stats.exit

do.body.i21.do.body.i21_crit_edge:                ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i21

rtrs_clt_reset_cpu_migr_stats.exit:               ; preds = %do.body.i21.rtrs_clt_reset_cpu_migr_stats.exit_crit_edge, %rtrs_clt_reset_rdma_stats.exit.rtrs_clt_reset_cpu_migr_stats.exit_crit_edge
  %reconnects.i = getelementptr inbounds %struct.rtrs_clt_stats, ptr %s, i32 0, i32 2
  %16 = ptrtoint ptr %reconnects.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %reconnects.i, align 4
  %inflight = getelementptr inbounds %struct.rtrs_clt_stats, ptr %s, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #8
  %17 = ptrtoint ptr %inflight to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %inflight, align 4
  br label %return

return:                                           ; preds = %rtrs_clt_reset_cpu_migr_stats.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %rtrs_clt_reset_cpu_migr_stats.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtrs_clt_update_all_stats(ptr nocapture noundef readonly %req, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %con1 = getelementptr inbounds %struct.rtrs_clt_io_req, ptr %req, i32 0, i32 10
  %0 = ptrtoint ptr %con1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %stats2 = getelementptr inbounds %struct.rtrs_clt_path, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats2, align 8
  %usr_len = getelementptr inbounds %struct.rtrs_clt_io_req, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %usr_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usr_len, align 4
  %data_len = getelementptr inbounds %struct.rtrs_clt_io_req, ptr %req, i32 0, i32 5
  %8 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len, align 4
  %add = add i32 %9, %7
  %10 = tail call i32 @llvm.read_register.i32(metadata !10) #8
  %and.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %13, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %pcpu_stats.i = getelementptr inbounds %struct.rtrs_clt_stats, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %pcpu_stats.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcpu_stats.i, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !10) #8
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %22, %16
  %23 = inttoptr i32 %add.i to ptr
  %rdma.i = getelementptr inbounds %struct.rtrs_clt_stats_pcpu, ptr %23, i32 0, i32 1
  %arrayidx6.i = getelementptr [2 x %struct.anon.176], ptr %rdma.i, i32 0, i32 %dir
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx6.i, align 8
  %inc.i = add i64 %25, 1
  store i64 %inc.i, ptr %arrayidx6.i, align 8
  %conv.i = zext i32 %add to i64
  %size_total.i = getelementptr [2 x %struct.anon.176], ptr %rdma.i, i32 0, i32 %dir, i32 1
  %26 = ptrtoint ptr %size_total.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size_total.i, align 8
  %add10.i = add i64 %27, %conv.i
  store i64 %add10.i, ptr %size_total.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %28 = tail call i32 @llvm.read_register.i32(metadata !10) #8
  %and.i.i.i21.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i21.i to ptr
  %preempt_count.i.i22.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i22.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i22.i, align 4
  %mp_policy = getelementptr inbounds %struct.rtrs_clt_io_req, ptr %req, i32 0, i32 9
  %32 = ptrtoint ptr %mp_policy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mp_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp = icmp eq i32 %33, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inflight = getelementptr inbounds %struct.rtrs_clt_stats, ptr %5, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %inflight, i32 1, i32 3, i32 1) #8
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight, ptr %inflight, i32 1, ptr elementtype(i32) %inflight) #8, !srcloc !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_init_stats(ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 48, i32 noundef 8) #12
  %pcpu_stats = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %pcpu_stats, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reconnects = getelementptr inbounds %struct.rtrs_clt_stats, ptr %stats, i32 0, i32 2
  %1 = ptrtoint ptr %reconnects to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reconnects, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-stats.c", i32 52, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-stats.c", i32 56, i32 35}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-stats.c", i32 81, i32 25}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-stats.c", i32 103, i32 26}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-stats.c", i32 111, i32 26}
!10 = !{!"sp"}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2158001159}
!21 = !{i64 2148473717, i64 2148473743, i64 2148473772, i64 2148473806, i64 2148473837, i64 2148473860}
!22 = !{i64 2158003080}
!23 = !{i64 2158003363}
!24 = !{i64 2158004496}
!25 = !{i64 2158010099}
!26 = !{i64 2158011232}
