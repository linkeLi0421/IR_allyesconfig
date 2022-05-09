; ModuleID = '/llk/IR_all_yes/kernel/cgroup/rstat.c_pt.bc'
source_filename = "../kernel/cgroup/rstat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.atomic_t = type { i32 }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.cgroup_rstat_cpu = type { %struct.u64_stats_sync, %struct.cgroup_base_stat, %struct.cgroup_base_stat, ptr, ptr }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@cgroup_rstat_cpu_lock = weak dso_local global %struct.raw_spinlock zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/cgroup/rstat.c\00", [42 x i8] zeroinitializer }, align 32
@cgroup_rstat_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cgroup_rstat_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&rstatc->bsync)->seq\00", [41 x i8] zeroinitializer }, align 32
@cgroup_rstat_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgroup_rstat_exit.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgroup_rstat_boot.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"per_cpu_ptr(&cgroup_rstat_cpu_lock, cpu)\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"usage_usec %llu\0Auser_usec %llu\0Asystem_usec %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@__pcpu_unique_cgroup_rstat_cpu_lock = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cgroup_rstat_lock\00", [46 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@cgroup_rstat_flush_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@cgroup_rstat_cpu_pop_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 197, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"cgroup_rstat_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 261, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 291, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 459, i32 18 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 6, i32 8 }
@___asan_gen_.36 = private constant [25 x i8] c"../kernel/cgroup/rstat.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 164, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 695, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 723, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 271, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @cgroup_rstat_lock, ptr @cgroup_rstat_init.__key, ptr @.str.1, ptr @cgroup_rstat_boot.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_rstat_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_rstat_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgroup_rstat_boot.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_updated(ptr noundef %cgrp, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cgroup_rstat_cpu_lock to i32)
  %2 = inttoptr i32 %add to ptr
  %rstat_cpu.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 24
  %3 = ptrtoint ptr %rstat_cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rstat_cpu.i, align 8
  %5 = ptrtoint ptr %4 to i32
  %add.i = add i32 %1, %5
  %6 = inttoptr i32 %add.i to ptr
  %updated_next = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %updated_next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %updated_next, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %do.body4, label %entry.cleanup32_crit_edge

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

do.body4:                                         ; preds = %entry
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %9 = ptrtoint ptr %rstat_cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rstat_cpu.i, align 8
  %11 = ptrtoint ptr %10 to i32
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add.i5161 = add i32 %13, %11
  %14 = inttoptr i32 %add.i5161 to ptr
  %updated_next1163 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %updated_next1163 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %updated_next1163, align 4
  %tobool12.not64 = icmp eq ptr %16, null
  br i1 %tobool12.not64, label %do.body4.if.end14_crit_edge, label %do.body4.do.body24_crit_edge

do.body4.do.body24_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

do.body4.if.end14_crit_edge:                      ; preds = %do.body4
  br label %if.end14

if.end14:                                         ; preds = %cleanup.if.end14_crit_edge, %do.body4.if.end14_crit_edge
  %updated_next1166 = phi ptr [ %updated_next11, %cleanup.if.end14_crit_edge ], [ %updated_next1163, %do.body4.if.end14_crit_edge ]
  %17 = phi i32 [ %31, %cleanup.if.end14_crit_edge ], [ %13, %do.body4.if.end14_crit_edge ]
  %cgrp.addr.065 = phi ptr [ %19, %cleanup.if.end14_crit_edge ], [ %cgrp, %do.body4.if.end14_crit_edge ]
  %.in = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp.addr.065, i32 0, i32 12
  %18 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.in, align 8
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %updated_next1166 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cgrp.addr.065, ptr %updated_next1166, align 4
  br label %do.body24

cleanup:                                          ; preds = %if.end14
  %rstat_cpu.i52 = getelementptr inbounds %struct.cgroup, ptr %19, i32 0, i32 24
  %21 = ptrtoint ptr %rstat_cpu.i52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rstat_cpu.i52, align 8
  %23 = ptrtoint ptr %22 to i32
  %add.i54 = add i32 %17, %23
  %24 = inttoptr i32 %add.i54 to ptr
  %updated_children = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %updated_children to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %updated_children, align 8
  %27 = ptrtoint ptr %updated_next1166 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %updated_next1166, align 4
  store ptr %cgrp.addr.065, ptr %updated_children, align 8
  %28 = load ptr, ptr %rstat_cpu.i52, align 8
  %29 = ptrtoint ptr %28 to i32
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %add.i51 = add i32 %31, %29
  %32 = inttoptr i32 %add.i51 to ptr
  %updated_next11 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %updated_next11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %updated_next11, align 4
  %tobool12.not = icmp eq ptr %34, null
  br i1 %tobool12.not, label %cleanup.if.end14_crit_edge, label %cleanup.do.body24_crit_edge

cleanup.do.body24_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

cleanup.if.end14_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.body24:                                        ; preds = %cleanup.do.body24_crit_edge, %if.then16, %do.body4.do.body24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call6) #9
  br label %cleanup32

cleanup32:                                        ; preds = %do.body24, %entry.cleanup32_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_flush(ptr noundef %cgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 197) #9
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_rstat_lock) #9
  tail call fastcc void @cgroup_rstat_flush_locked(ptr noundef %cgrp, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @cgroup_rstat_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cgroup_rstat_flush_locked(ptr noundef %cgrp, i1 noundef zeroext %may_sleep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i98 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @cgroup_rstat_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp.not = icmp eq i32 %call.i98, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !45

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24126 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call24126, i32 %1)
  %cmp25127 = icmp ult i32 %call24126, %1
  br i1 %cmp25127, label %for.body.lr.ph, label %if.end.for.end83_crit_edge

if.end.for.end83_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end83

for.body.lr.ph:                                   ; preds = %if.end
  %rstat_cpu.i.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 24
  %cmp.i124 = icmp eq ptr %cgrp, null
  br label %for.body

for.body:                                         ; preds = %if.end82.for.body_crit_edge, %for.body.lr.ph
  %call24128 = phi i32 [ %call24126, %for.body.lr.ph ], [ %call24, %if.end82.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call24128
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cgroup_rstat_cpu_lock to i32)
  %4 = inttoptr i32 %add to ptr
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  br i1 %cmp.i124, label %for.body.while.end_crit_edge, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  br label %if.end.i

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.i:                                         ; preds = %rcu_read_unlock.exit.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %pos.0125 = phi ptr [ %pos.addr.1.i, %rcu_read_unlock.exit.if.end.i_crit_edge ], [ null, %for.body.if.end.i_crit_edge ]
  %tobool.not.i99 = icmp eq ptr %pos.0125, null
  br i1 %tobool.not.i99, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  %5 = ptrtoint ptr %rstat_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rstat_cpu.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add.i.i = add i32 %9, %7
  %10 = inttoptr i32 %add.i.i to ptr
  %updated_next.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %updated_next.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %updated_next.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %if.then1.i.while.end_crit_edge, label %if.then1.i.if.end6.i_crit_edge

if.then1.i.if.end6.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then1.i.while.end_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos.0125, i32 0, i32 12
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then1.i.if.end6.i_crit_edge
  %pos.addr.0.i = phi ptr [ %14, %if.else.i ], [ %cgrp, %if.then1.i.if.end6.i_crit_edge ]
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end6.i
  %pos.addr.1.i = phi ptr [ %pos.addr.0.i, %if.end6.i ], [ %22, %while.cond.i.while.cond.i_crit_edge ]
  %rstat_cpu.i89.i = getelementptr inbounds %struct.cgroup, ptr %pos.addr.1.i, i32 0, i32 24
  %17 = ptrtoint ptr %rstat_cpu.i89.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rstat_cpu.i89.i, align 8
  %19 = ptrtoint ptr %18 to i32
  %add.i91.i = add i32 %16, %19
  %20 = inttoptr i32 %add.i91.i to ptr
  %updated_children.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %updated_children.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %updated_children.i, align 8
  %cmp8.i = icmp eq ptr %22, %pos.addr.1.i
  br i1 %cmp8.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %rstat_cpu.i89.i.le = getelementptr inbounds %struct.cgroup, ptr %pos.addr.1.i, i32 0, i32 24
  %23 = inttoptr i32 %add.i91.i to ptr
  %parent.i92.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %pos.addr.1.i, i32 0, i32 12
  %24 = ptrtoint ptr %parent.i92.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i92.i, align 8
  %tobool13.not.i = icmp eq ptr %25, null
  br i1 %tobool13.not.i, label %while.end.i.cgroup_rstat_cpu_pop_updated.exit_crit_edge, label %if.then14.i

while.end.i.cgroup_rstat_cpu_pop_updated.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cgroup_rstat_cpu_pop_updated.exit

if.then14.i:                                      ; preds = %while.end.i
  %rstat_cpu.i93.i = getelementptr inbounds %struct.cgroup, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %rstat_cpu.i93.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rstat_cpu.i93.i, align 8
  %28 = ptrtoint ptr %27 to i32
  %add.i95.i = add i32 %16, %28
  %29 = inttoptr i32 %add.i95.i to ptr
  %updated_children16.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %updated_children16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %updated_children16.i, align 4
  %cmp18.not100.i = icmp eq ptr %31, %pos.addr.1.i
  br i1 %cmp18.not100.i, label %if.then14.i.while.end60.i_crit_edge, label %if.then14.i.while.body19.i_crit_edge

if.then14.i.while.body19.i_crit_edge:             ; preds = %if.then14.i
  br label %while.body19.i

if.then14.i.while.end60.i_crit_edge:              ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end60.i

while.body19.i:                                   ; preds = %if.end51.i.while.body19.i_crit_edge, %if.then14.i.while.body19.i_crit_edge
  %32 = phi ptr [ %40, %if.end51.i.while.body19.i_crit_edge ], [ %31, %if.then14.i.while.body19.i_crit_edge ]
  %rstat_cpu.i96.i = getelementptr inbounds %struct.cgroup, ptr %32, i32 0, i32 24
  %33 = ptrtoint ptr %rstat_cpu.i96.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rstat_cpu.i96.i, align 8
  %35 = ptrtoint ptr %34 to i32
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %add.i98.i = add i32 %37, %35
  %38 = inttoptr i32 %add.i98.i to ptr
  %cmp21.i = icmp eq ptr %32, %25
  br i1 %cmp21.i, label %land.rhs.i, label %while.body19.i.if.end51.i_crit_edge

while.body19.i.if.end51.i_crit_edge:              ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

land.rhs.i:                                       ; preds = %while.body19.i
  %.b88.i = load i1, ptr @cgroup_rstat_cpu_pop_updated.__already_done, align 1
  br i1 %.b88.i, label %land.rhs.i.if.end51.i_crit_edge, label %if.then29.i, !prof !46

land.rhs.i.if.end51.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then29.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cgroup_rstat_cpu_pop_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then29.i, %land.rhs.i.if.end51.i_crit_edge, %while.body19.i.if.end51.i_crit_edge
  %updated_next59.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %updated_next59.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %updated_next59.i, align 4
  %cmp18.not.i = icmp eq ptr %40, %pos.addr.1.i
  br i1 %cmp18.not.i, label %while.end60.i.loopexit, label %if.end51.i.while.body19.i_crit_edge

if.end51.i.while.body19.i_crit_edge:              ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body19.i

while.end60.i.loopexit:                           ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = inttoptr i32 %add.i98.i to ptr
  %updated_next59.i.le = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %41, i32 0, i32 4
  br label %while.end60.i

while.end60.i:                                    ; preds = %while.end60.i.loopexit, %if.then14.i.while.end60.i_crit_edge
  %nextp.0.lcssa.i = phi ptr [ %updated_children16.i, %if.then14.i.while.end60.i_crit_edge ], [ %updated_next59.i.le, %while.end60.i.loopexit ]
  %updated_next61.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %23, i32 0, i32 4
  %42 = ptrtoint ptr %updated_next61.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %updated_next61.i, align 4
  %44 = ptrtoint ptr %nextp.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %nextp.0.lcssa.i, align 4
  br label %cgroup_rstat_cpu_pop_updated.exit

cgroup_rstat_cpu_pop_updated.exit:                ; preds = %while.end60.i, %while.end.i.cgroup_rstat_cpu_pop_updated.exit_crit_edge
  %updated_next63.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %23, i32 0, i32 4
  %45 = ptrtoint ptr %updated_next63.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %updated_next63.i, align 4
  %tobool32.not = icmp eq ptr %pos.addr.1.i, null
  br i1 %tobool32.not, label %cgroup_rstat_cpu_pop_updated.exit.while.end_crit_edge, label %while.body

cgroup_rstat_cpu_pop_updated.exit.while.end_crit_edge: ; preds = %cgroup_rstat_cpu_pop_updated.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %cgroup_rstat_cpu_pop_updated.exit
  %46 = ptrtoint ptr %rstat_cpu.i89.i.le to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rstat_cpu.i89.i.le, align 8
  %48 = ptrtoint ptr %47 to i32
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %add.i.i102 = add i32 %50, %48
  %51 = inttoptr i32 %add.i.i102 to ptr
  %52 = ptrtoint ptr %parent.i92.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent.i92.i, align 8
  %tobool.not.i104 = icmp eq ptr %53, null
  br i1 %tobool.not.i104, label %while.body.cgroup_base_stat_flush.exit_crit_edge, label %do.body.preheader.i

while.body.cgroup_base_stat_flush.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cgroup_base_stat_flush.exit

do.body.preheader.i:                              ; preds = %while.body
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.seqcount, ptr %51, i32 0, i32 1
  %bstat.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %51, i32 0, i32 1
  %cur.sroa.5.0.cputime3.sroa_idx.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %51, i32 0, i32 1, i32 0, i32 1
  %cur.sroa.6.0.cputime3.sroa_idx.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %51, i32 0, i32 1, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %__u64_stats_fetch_begin.exit.i.do.body.i_crit_edge, %do.body.preheader.i
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !47
  %and.i.i.i.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %55 = tail call ptr @llvm.returnaddress(i32 0) #9
  %56 = ptrtoint ptr %55 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %56) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %56) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = tail call ptr @llvm.returnaddress(i32 0) #9
  %58 = ptrtoint ptr %57 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %58) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %58) #9
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !48
  %and.i.i.i.i.i105 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i105)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i105, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !45

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #9, !srcloc !49
  %60 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %51, align 4
  %and18.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.__u64_stats_fetch_begin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.__u64_stats_fetch_begin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__u64_stats_fetch_begin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !51
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %51, align 4
  %and.i.i106 = and i32 %63, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i106, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.__u64_stats_fetch_begin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i.__u64_stats_fetch_begin.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__u64_stats_fetch_begin.exit.i

__u64_stats_fetch_begin.exit.i:                   ; preds = %do.end.i.i.__u64_stats_fetch_begin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.__u64_stats_fetch_begin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %61, %seqcount_lockdep_reader_access.exit.i.i.__u64_stats_fetch_begin.exit.i_crit_edge ], [ %63, %do.end.i.i.__u64_stats_fetch_begin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  %64 = ptrtoint ptr %bstat.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %cur.sroa.0.0.copyload.i = load i64, ptr %bstat.i, align 8
  %65 = ptrtoint ptr %cur.sroa.5.0.cputime3.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %cur.sroa.5.0.copyload.i = load i64, ptr %cur.sroa.5.0.cputime3.sroa_idx.i, align 8
  %66 = ptrtoint ptr %cur.sroa.6.0.cputime3.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %cur.sroa.6.0.copyload.i = load i64, ptr %cur.sroa.6.0.cputime3.sroa_idx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %67 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %51, align 4
  %cmp.i.i.i.not.i = icmp eq i32 %68, %.lcssa.i.i
  br i1 %cmp.i.i.i.not.i, label %do.end.i, label %__u64_stats_fetch_begin.exit.i.do.body.i_crit_edge

__u64_stats_fetch_begin.exit.i.do.body.i_crit_edge: ; preds = %__u64_stats_fetch_begin.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %__u64_stats_fetch_begin.exit.i
  %last_bstat.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %51, i32 0, i32 2
  %utime.i.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %51, i32 0, i32 2, i32 0, i32 1
  %69 = ptrtoint ptr %utime.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %utime.i.i, align 8
  %sub.i.i = sub i64 %cur.sroa.5.0.copyload.i, %70
  %71 = ptrtoint ptr %last_bstat.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %last_bstat.i, align 8
  %sub6.i.i = sub i64 %cur.sroa.0.0.copyload.i, %72
  %sum_exec_runtime.i.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %51, i32 0, i32 2, i32 0, i32 2
  %73 = ptrtoint ptr %sum_exec_runtime.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %sum_exec_runtime.i.i, align 8
  %sub10.i.i = sub i64 %cur.sroa.6.0.copyload.i, %74
  %bstat6.i = getelementptr inbounds %struct.cgroup, ptr %pos.addr.1.i, i32 0, i32 27
  %utime2.i35.i = getelementptr inbounds %struct.cgroup, ptr %pos.addr.1.i, i32 0, i32 27, i32 0, i32 1
  %75 = ptrtoint ptr %utime2.i35.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %utime2.i35.i, align 8
  %add.i36.i = add i64 %76, %sub.i.i
  store i64 %add.i36.i, ptr %utime2.i35.i, align 8
  %77 = ptrtoint ptr %bstat6.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %bstat6.i, align 8
  %add6.i.i = add i64 %78, %sub6.i.i
  store i64 %add6.i.i, ptr %bstat6.i, align 8
  %sum_exec_runtime9.i38.i = getelementptr inbounds %struct.cgroup, ptr %pos.addr.1.i, i32 0, i32 27, i32 0, i32 2
  %79 = ptrtoint ptr %sum_exec_runtime9.i38.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %sum_exec_runtime9.i38.i, align 8
  %add10.i.i = add i64 %80, %sub10.i.i
  store i64 %add10.i.i, ptr %sum_exec_runtime9.i38.i, align 8
  %81 = load i64, ptr %utime.i.i, align 8
  %add.i41.i = add i64 %81, %sub.i.i
  store i64 %add.i41.i, ptr %utime.i.i, align 8
  %82 = load i64, ptr %last_bstat.i, align 8
  %add6.i42.i = add i64 %82, %sub6.i.i
  store i64 %add6.i42.i, ptr %last_bstat.i, align 8
  %83 = load i64, ptr %sum_exec_runtime.i.i, align 8
  %add10.i45.i = add i64 %83, %sub10.i.i
  store i64 %add10.i45.i, ptr %sum_exec_runtime.i.i, align 8
  %parent.i46.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %53, i32 0, i32 12
  %84 = ptrtoint ptr %parent.i46.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %parent.i46.i, align 8
  %tobool9.not.i = icmp eq ptr %85, null
  br i1 %tobool9.not.i, label %do.end.i.cgroup_base_stat_flush.exit_crit_edge, label %if.then10.i

do.end.i.cgroup_base_stat_flush.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cgroup_base_stat_flush.exit

if.then10.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %bstat6.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %delta.sroa.0.0.copyload.i = load i64, ptr %bstat6.i, align 8
  %87 = ptrtoint ptr %utime2.i35.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %delta.sroa.13.0.copyload.i = load i64, ptr %utime2.i35.i, align 8
  %88 = ptrtoint ptr %sum_exec_runtime9.i38.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %delta.sroa.23.0.copyload.i = load i64, ptr %sum_exec_runtime9.i38.i, align 8
  %last_bstat12.i = getelementptr inbounds %struct.cgroup, ptr %pos.addr.1.i, i32 0, i32 26
  %utime.i47.i = getelementptr inbounds %struct.cgroup, ptr %pos.addr.1.i, i32 0, i32 26, i32 0, i32 1
  %89 = ptrtoint ptr %utime.i47.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %utime.i47.i, align 8
  %sub.i49.i = sub i64 %delta.sroa.13.0.copyload.i, %90
  %91 = ptrtoint ptr %last_bstat12.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %last_bstat12.i, align 8
  %sub6.i50.i = sub i64 %delta.sroa.0.0.copyload.i, %92
  %sum_exec_runtime.i51.i = getelementptr inbounds %struct.cgroup, ptr %pos.addr.1.i, i32 0, i32 26, i32 0, i32 2
  %93 = ptrtoint ptr %sum_exec_runtime.i51.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %sum_exec_runtime.i51.i, align 8
  %sub10.i53.i = sub i64 %delta.sroa.23.0.copyload.i, %94
  %bstat13.i = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 27
  %utime2.i55.i = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 27, i32 0, i32 1
  %95 = ptrtoint ptr %utime2.i55.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %utime2.i55.i, align 8
  %add.i56.i = add i64 %96, %sub.i49.i
  store i64 %add.i56.i, ptr %utime2.i55.i, align 8
  %97 = ptrtoint ptr %bstat13.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %bstat13.i, align 8
  %add6.i57.i = add i64 %98, %sub6.i50.i
  store i64 %add6.i57.i, ptr %bstat13.i, align 8
  %sum_exec_runtime9.i59.i = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 27, i32 0, i32 2
  %99 = ptrtoint ptr %sum_exec_runtime9.i59.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %sum_exec_runtime9.i59.i, align 8
  %add10.i60.i = add i64 %100, %sub10.i53.i
  store i64 %add10.i60.i, ptr %sum_exec_runtime9.i59.i, align 8
  %101 = load i64, ptr %utime.i47.i, align 8
  %add.i63.i = add i64 %101, %sub.i49.i
  store i64 %add.i63.i, ptr %utime.i47.i, align 8
  %102 = load i64, ptr %last_bstat12.i, align 8
  %add6.i64.i = add i64 %102, %sub6.i50.i
  store i64 %add6.i64.i, ptr %last_bstat12.i, align 8
  %103 = load i64, ptr %sum_exec_runtime.i51.i, align 8
  %add10.i67.i = add i64 %103, %sub10.i53.i
  store i64 %add10.i67.i, ptr %sum_exec_runtime.i51.i, align 8
  br label %cgroup_base_stat_flush.exit

cgroup_base_stat_flush.exit:                      ; preds = %if.then10.i, %do.end.i.cgroup_base_stat_flush.exit_crit_edge, %while.body.cgroup_base_stat_flush.exit_crit_edge
  %104 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %107, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %cgroup_base_stat_flush.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

cgroup_base_stat_flush.exit.rcu_read_lock.exit_crit_edge: ; preds = %cgroup_base_stat_flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %cgroup_base_stat_flush.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %cgroup_base_stat_flush.exit.rcu_read_lock.exit_crit_edge
  %call34 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end43_crit_edge

rcu_read_lock.exit.do.end43_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call36 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true.do.end43_crit_edge, label %land.lhs.true38

land.lhs.true.do.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

land.lhs.true38:                                  ; preds = %land.lhs.true
  %.b97 = load i1, ptr @cgroup_rstat_flush_locked.__warned, align 1
  br i1 %.b97, label %land.lhs.true38.do.end43_crit_edge, label %if.then40

land.lhs.true38.do.end43_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

if.then40:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cgroup_rstat_flush_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 165, ptr noundef nonnull @.str.6) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %land.lhs.true38.do.end43_crit_edge, %land.lhs.true.do.end43_crit_edge, %rcu_read_lock.exit.do.end43_crit_edge
  %rstat_css_list = getelementptr inbounds %struct.cgroup, ptr %pos.addr.1.i, i32 0, i32 25
  %108 = ptrtoint ptr %rstat_css_list to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn121 = load volatile ptr, ptr %rstat_css_list, align 4
  %cmp51.not122 = icmp eq ptr %.pn121, %rstat_css_list
  br i1 %cmp51.not122, label %do.end43.for.end_crit_edge, label %do.end43.for.body52_crit_edge

do.end43.for.body52_crit_edge:                    ; preds = %do.end43
  br label %for.body52

do.end43.for.end_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %do.end43.for.body52_crit_edge
  %.pn123 = phi ptr [ %.pn, %for.body52.for.body52_crit_edge ], [ %.pn121, %do.end43.for.body52_crit_edge ]
  %css.0 = getelementptr i8, ptr %.pn123, i32 -32
  %ss = getelementptr i8, ptr %.pn123, i32 -28
  %109 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ss, align 4
  %css_rstat_flush = getelementptr inbounds %struct.cgroup_subsys, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %css_rstat_flush to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %css_rstat_flush, align 4
  tail call void %112(ptr noundef %css.0, i32 noundef %call24128) #9
  %113 = ptrtoint ptr %.pn123 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pn = load volatile ptr, ptr %.pn123, align 4
  %cmp51.not = icmp eq ptr %.pn, %rstat_css_list
  br i1 %cmp51.not, label %for.body52.for.end_crit_edge, label %for.body52.for.body52_crit_edge

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body52

for.body52.for.end_crit_edge:                     ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body52.for.end_crit_edge, %do.end43.for.end_crit_edge
  %call.i107 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i107, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i110

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i110:                               ; preds = %for.end
  %call1.i108 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108)
  %tobool.not.i109 = icmp eq i32 %call1.i108, 0
  br i1 %tobool.not.i109, label %land.lhs.true.i110.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i112

land.lhs.true.i110.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i112:                              ; preds = %land.lhs.true.i110
  %.b4.i111 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111, label %land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge, label %if.then.i113

land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i113:                                     ; preds = %land.lhs.true2.i112
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i113, %land.lhs.true2.i112.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i110.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %114 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i.i.i114 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i.i.i114 to ptr
  %preempt_count.i.i.i.i115 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i.i.i115, align 4
  %sub.i.i.i = add i32 %117, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i115, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %cmp.i = icmp eq ptr %pos.addr.1.i, %cgrp
  br i1 %cmp.i, label %rcu_read_unlock.exit.while.end_crit_edge, label %rcu_read_unlock.exit.if.end.i_crit_edge

rcu_read_unlock.exit.if.end.i_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

rcu_read_unlock.exit.while.end_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %rcu_read_unlock.exit.while.end_crit_edge, %cgroup_rstat_cpu_pop_updated.exit.while.end_crit_edge, %if.then1.i.while.end_crit_edge, %for.body.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %4) #9
  br i1 %may_sleep, label %land.lhs.true63, label %while.end.if.end82_crit_edge

while.end.if.end82_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

land.lhs.true63:                                  ; preds = %while.end
  %118 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i to ptr
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %119, align 16384
  %122 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.i.not = icmp eq i32 %122, 0
  br i1 %tobool.i.not, label %land.lhs.true63.if.end82_crit_edge, label %if.then67

land.lhs.true63.if.end82_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then67:                                        ; preds = %land.lhs.true63
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @cgroup_rstat_lock) #9
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 0) #9
  %call.i117 = tail call i32 @__cond_resched() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool70.not = icmp eq i32 %call.i117, 0
  br i1 %tobool70.not, label %do.end76, label %if.then67.if.end81_crit_edge

if.then67.if.end81_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

do.end76:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !57
  br label %if.end81

if.end81:                                         ; preds = %do.end76, %if.then67.if.end81_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_rstat_lock) #9
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %land.lhs.true63.if.end82_crit_edge, %while.end.if.end82_crit_edge
  %call24 = tail call i32 @cpumask_next(i32 noundef %call24128, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %123 = load i32, ptr @nr_cpu_ids, align 4
  %cmp25 = icmp ult i32 %call24, %123
  br i1 %cmp25, label %if.end82.for.body_crit_edge, label %if.end82.for.end83_crit_edge

if.end82.for.end83_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end83

if.end82.for.body_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end83:                                        ; preds = %if.end82.for.end83_crit_edge, %if.end.for.end83_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_flush_irqsafe(ptr noundef %cgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cgroup_rstat_lock) #9
  tail call fastcc void @cgroup_rstat_flush_locked(ptr noundef %cgrp, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cgroup_rstat_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_flush_hold(ptr noundef %cgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 231) #9
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_rstat_lock) #9
  tail call fastcc void @cgroup_rstat_flush_locked(ptr noundef %cgrp, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_flush_release() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @cgroup_rstat_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cgroup_rstat_init(ptr noundef %cgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rstat_cpu = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 24
  %0 = ptrtoint ptr %rstat_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rstat_cpu, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 88, i32 noundef 8) #13
  %2 = ptrtoint ptr %rstat_cpu to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %rstat_cpu, align 8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call615 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call615, i32 %3)
  %cmp16 = icmp ult i32 %call615, %3
  br i1 %cmp16, label %if.end5.for.body_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %call617 = phi i32 [ %call6, %for.body.for.body_crit_edge ], [ %call615, %if.end5.for.body_crit_edge ]
  %4 = ptrtoint ptr %rstat_cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstat_cpu, align 8
  %6 = ptrtoint ptr %5 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call617
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %6
  %9 = inttoptr i32 %add.i to ptr
  %updated_children = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %updated_children to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cgrp, ptr %updated_children, align 8
  %dep_map.i = getelementptr inbounds %struct.seqcount, ptr %9, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @cgroup_rstat_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %9, align 4
  %call6 = tail call i32 @cpumask_next(i32 noundef %call617, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_exit(ptr noundef %cgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 197) #9
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_rstat_lock) #9
  tail call fastcc void @cgroup_rstat_flush_locked(ptr noundef %cgrp, i1 noundef zeroext true) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @cgroup_rstat_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %rstat_cpu.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 24
  %1 = ptrtoint ptr %rstat_cpu.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rstat_cpu.i, align 8
  %3 = ptrtoint ptr %2 to i32
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.critedge.for.cond_crit_edge, %entry
  %cpu.0 = phi i32 [ -1, %entry ], [ %call, %lor.lhs.false.critedge.for.cond_crit_edge ]
  %call = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %0)
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, %3
  %6 = inttoptr i32 %add.i to ptr
  %updated_children = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %updated_children to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %updated_children, align 8
  %cmp2.not = icmp eq ptr %8, %cgrp
  br i1 %cmp2.not, label %lor.lhs.false.critedge, label %land.rhs

land.rhs:                                         ; preds = %for.body
  %.b112 = load i1, ptr @cgroup_rstat_exit.__already_done, align 1
  br i1 %.b112, label %land.rhs.cleanup96_crit_edge, label %if.then, !prof !46

land.rhs.cleanup96_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cgroup_rstat_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 277, i32 noundef 9, ptr noundef null) #9
  br label %cleanup96

lor.lhs.false.critedge:                           ; preds = %for.body
  %updated_next = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %6, i32 0, i32 4
  %9 = ptrtoint ptr %updated_next to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %updated_next, align 4
  %tobool39.not = icmp eq ptr %10, null
  br i1 %tobool39.not, label %lor.lhs.false.critedge.for.cond_crit_edge, label %land.rhs46

lor.lhs.false.critedge.for.cond_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

land.rhs46:                                       ; preds = %lor.lhs.false.critedge
  %.b110111 = load i1, ptr @cgroup_rstat_exit.__already_done.2, align 1
  br i1 %.b110111, label %land.rhs46.cleanup96_crit_edge, label %if.then57, !prof !46

land.rhs46.cleanup96_crit_edge:                   ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.then57:                                        ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cgroup_rstat_exit.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #9
  br label %cleanup96

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_percpu(ptr noundef %2) #9
  %11 = ptrtoint ptr %rstat_cpu.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rstat_cpu.i, align 8
  br label %cleanup96

cleanup96:                                        ; preds = %for.end, %if.then57, %land.rhs46.cleanup96_crit_edge, %if.then, %land.rhs.cleanup96_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_rstat_boot() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %0)
  %cmp8 = icmp ult i32 %call7, %0
  br i1 %cmp8, label %entry.do.body1_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.do.body1_crit_edge:                         ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %entry.do.body1_crit_edge
  %call9 = phi i32 [ %call, %do.body1.do.body1_crit_edge ], [ %call7, %entry.do.body1_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @cgroup_rstat_cpu_lock to i32)
  %3 = inttoptr i32 %add to ptr
  tail call void @__raw_spin_lock_init(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @cgroup_rstat_boot.__key, i16 noundef signext 2) #9
  %call = tail call i32 @cpumask_next(i32 noundef %call9, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %4
  br i1 %cmp, label %do.body1.do.body1_crit_edge, label %do.body1.for.end_crit_edge

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

for.end:                                          ; preds = %do.body1.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cgroup_account_cputime(ptr noundef %cgrp, i64 noundef %delta_exec) local_unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !58
  %call = call fastcc ptr @cgroup_base_stat_cputime_account_begin(ptr noundef %cgrp, ptr noundef nonnull %flags)
  %sum_exec_runtime = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %call, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %sum_exec_runtime, align 8
  %add = add i64 %2, %delta_exec
  store i64 %add, ptr %sum_exec_runtime, align 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  tail call fastcc void @cgroup_base_stat_cputime_account_end(ptr noundef %cgrp, ptr noundef %call, i32 noundef %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cgroup_base_stat_cputime_account_begin(ptr nocapture noundef readonly %cgrp, ptr nocapture noundef writeonly %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  %rstat_cpu = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 24
  %4 = ptrtoint ptr %rstat_cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rstat_cpu, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !47
  %and.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.body12.i_crit_edge

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then.i, %entry.do.body12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %do.body12.i.u64_stats_update_begin_irqsave.exit_crit_edge, label %land.lhs.true.i.i

do.body12.i.u64_stats_update_begin_irqsave.exit_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit

land.lhs.true.i.i:                                ; preds = %do.body12.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %18 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i8 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i8 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %23, ptrtoint (ptr @lockdep_recursion to i32)
  %24 = inttoptr i32 %add.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %27 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i7.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin_irqsave.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin_irqsave.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %31 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin_irqsave.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin_irqsave.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %35 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i9.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %38, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %39 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %42, ptrtoint (ptr @hardirqs_enabled to i32)
  %43 = inttoptr i32 %add47.i.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  %46 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i12.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %49, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool54.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin_irqsave.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin_irqsave.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin_irqsave.exit_crit_edge, label %if.then.i.i, !prof !46

land.rhs58.i.i.u64_stats_update_begin_irqsave.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %u64_stats_update_begin_irqsave.exit

u64_stats_update_begin_irqsave.exit:              ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin_irqsave.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin_irqsave.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin_irqsave.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin_irqsave.exit_crit_edge, %do.body12.i.u64_stats_update_begin_irqsave.exit_crit_edge
  %50 = ptrtoint ptr %5 to i32
  %add = add i32 %11, %50
  %51 = inttoptr i32 %add to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %inc.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i, ptr %51, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  %dep_map.i.i.i = getelementptr inbounds %struct.seqcount, ptr %51, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #9
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %55) #9
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %12, ptr %flags, align 4
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cgroup_base_stat_cputime_account_end(ptr noundef %cgrp, ptr noundef %rstatc, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %rstatc, i32 0, i32 1
  %0 = tail call ptr @llvm.returnaddress(i32 0) #9
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  %2 = ptrtoint ptr %rstatc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rstatc, align 4
  %inc.i.i.i = add i32 %3, 1
  store i32 %inc.i.i.i, ptr %rstatc, align 4
  %and.i.i = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then8.i, label %entry.do.body10.i_crit_edge

entry.do.body10.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.then8.i, %entry.do.body10.i_crit_edge
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !48
  %and.i.i.i4 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4)
  %tobool18.not.i = icmp eq i32 %and.i.i.i4, 0
  br i1 %tobool18.not.i, label %if.then22.i, label %do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge, !prof !45

do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_end_irqrestore.exit

if.then22.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %u64_stats_update_end_irqrestore.exit

u64_stats_update_end_irqrestore.exit:             ; preds = %if.then22.i, %do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags) #9, !srcloc !49
  %5 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @cgroup_rstat_cpu_lock to i32)
  %11 = inttoptr i32 %add.i to ptr
  %rstat_cpu.i.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 24
  %12 = ptrtoint ptr %rstat_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rstat_cpu.i.i, align 8
  %14 = ptrtoint ptr %13 to i32
  %add.i.i = add i32 %10, %14
  %15 = inttoptr i32 %add.i.i to ptr
  %updated_next.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %updated_next.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %updated_next.i, align 4
  %tobool.not.i5 = icmp eq ptr %17, null
  br i1 %tobool.not.i5, label %do.body4.i, label %u64_stats_update_end_irqrestore.exit.cgroup_rstat_updated.exit_crit_edge

u64_stats_update_end_irqrestore.exit.cgroup_rstat_updated.exit_crit_edge: ; preds = %u64_stats_update_end_irqrestore.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cgroup_rstat_updated.exit

do.body4.i:                                       ; preds = %u64_stats_update_end_irqrestore.exit
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #9
  %18 = ptrtoint ptr %rstat_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rstat_cpu.i.i, align 8
  %20 = ptrtoint ptr %19 to i32
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i5161.i = add i32 %22, %20
  %23 = inttoptr i32 %add.i5161.i to ptr
  %updated_next1163.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %updated_next1163.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %updated_next1163.i, align 4
  %tobool12.not64.i = icmp eq ptr %25, null
  br i1 %tobool12.not64.i, label %do.body4.i.if.end14.i_crit_edge, label %do.body4.i.do.body24.i_crit_edge

do.body4.i.do.body24.i_crit_edge:                 ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24.i

do.body4.i.if.end14.i_crit_edge:                  ; preds = %do.body4.i
  br label %if.end14.i

if.end14.i:                                       ; preds = %cleanup.i.if.end14.i_crit_edge, %do.body4.i.if.end14.i_crit_edge
  %updated_next1166.i = phi ptr [ %updated_next11.i, %cleanup.i.if.end14.i_crit_edge ], [ %updated_next1163.i, %do.body4.i.if.end14.i_crit_edge ]
  %26 = phi i32 [ %40, %cleanup.i.if.end14.i_crit_edge ], [ %22, %do.body4.i.if.end14.i_crit_edge ]
  %cgrp.addr.065.i = phi ptr [ %28, %cleanup.i.if.end14.i_crit_edge ], [ %cgrp, %do.body4.i.if.end14.i_crit_edge ]
  %.in.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp.addr.065.i, i32 0, i32 12
  %27 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.in.i, align 8
  %tobool15.not.i = icmp eq ptr %28, null
  br i1 %tobool15.not.i, label %if.then16.i, label %cleanup.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %updated_next1166.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cgrp.addr.065.i, ptr %updated_next1166.i, align 4
  br label %do.body24.i

cleanup.i:                                        ; preds = %if.end14.i
  %rstat_cpu.i52.i = getelementptr inbounds %struct.cgroup, ptr %28, i32 0, i32 24
  %30 = ptrtoint ptr %rstat_cpu.i52.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rstat_cpu.i52.i, align 8
  %32 = ptrtoint ptr %31 to i32
  %add.i54.i = add i32 %26, %32
  %33 = inttoptr i32 %add.i54.i to ptr
  %updated_children.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %updated_children.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %updated_children.i, align 8
  %36 = ptrtoint ptr %updated_next1166.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %updated_next1166.i, align 4
  store ptr %cgrp.addr.065.i, ptr %updated_children.i, align 8
  %37 = load ptr, ptr %rstat_cpu.i52.i, align 8
  %38 = ptrtoint ptr %37 to i32
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %add.i51.i = add i32 %40, %38
  %41 = inttoptr i32 %add.i51.i to ptr
  %updated_next11.i = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %updated_next11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %updated_next11.i, align 4
  %tobool12.not.i = icmp eq ptr %43, null
  br i1 %tobool12.not.i, label %cleanup.i.if.end14.i_crit_edge, label %cleanup.i.do.body24.i_crit_edge

cleanup.i.do.body24.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24.i

cleanup.i.if.end14.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

do.body24.i:                                      ; preds = %cleanup.i.do.body24.i_crit_edge, %if.then16.i, %do.body4.i.do.body24.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call6.i) #9
  br label %cgroup_rstat_updated.exit

cgroup_rstat_updated.exit:                        ; preds = %do.body24.i, %u64_stats_update_end_irqrestore.exit.cgroup_rstat_updated.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  %44 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %47, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cgroup_account_cputime_field(ptr noundef %cgrp, i32 noundef %index, i64 noundef %delta_exec) local_unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !58
  %call = call fastcc ptr @cgroup_base_stat_cputime_account_begin(ptr noundef %cgrp, ptr noundef nonnull %flags)
  %1 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %index, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge10
    i32 2, label %entry.sw.bb1_crit_edge
    i32 4, label %entry.sw.bb1_crit_edge11
    i32 3, label %entry.sw.bb1_crit_edge12
  ]

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge10
  %utime = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %call, i32 0, i32 1, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge11, %entry.sw.bb1_crit_edge12
  %bstat2 = getelementptr inbounds %struct.cgroup_rstat_cpu, ptr %call, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %bstat2.sink9 = phi ptr [ %bstat2, %sw.bb1 ], [ %utime, %sw.bb ]
  %2 = ptrtoint ptr %bstat2.sink9 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bstat2.sink9, align 8
  %add4 = add i64 %3, %delta_exec
  store i64 %add4, ptr %bstat2.sink9, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  tail call fastcc void @cgroup_base_stat_cputime_account_end(ptr noundef %cgrp, ptr noundef %call, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_base_stat_cputime_show(ptr noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #9
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %utime) #9
  %4 = ptrtoint ptr %utime to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %utime, align 8, !annotation !58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stime) #9
  %5 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %stime, align 8, !annotation !58
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 231) #9
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_rstat_lock) #9
  tail call fastcc void @cgroup_rstat_flush_locked(ptr noundef %3, i1 noundef zeroext true) #9
  %bstat = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 27
  %sum_exec_runtime = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 27, i32 0, i32 2
  %8 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sum_exec_runtime, align 8
  %prev_cputime = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 28
  call void @cputime_adjust(ptr noundef %bstat, ptr noundef %prev_cputime, ptr noundef nonnull %utime, ptr noundef nonnull %stime) #9
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @cgroup_rstat_lock) #9
  br label %if.end166

if.else:                                          ; preds = %entry
  %call43.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call43.i, i32 %10)
  %cmp44.i = icmp ult i32 %call43.i, %10
  br i1 %cmp44.i, label %if.else.for.body.i_crit_edge, label %if.else.root_cgroup_cputime.exit_crit_edge

if.else.root_cgroup_cputime.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %root_cgroup_cputime.exit

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %cputime.sroa.0.0 = phi i64 [ %add13.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %cputime.sroa.7.0 = phi i64 [ %add5.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %cputime.sroa.11.0 = phi i64 [ %add20.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %call45.i = phi i32 [ %call.i879, %for.body.i.for.body.i_crit_edge ], [ %call43.i, %if.else.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call45.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, ptrtoint (ptr @kernel_cpustat to i32)
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %kcpustat.sroa.0.0.copyload.i = load i64, ptr %13, align 8
  %kcpustat.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 8
  %15 = ptrtoint ptr %kcpustat.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %kcpustat.sroa.5.0.copyload.i = load i64, ptr %kcpustat.sroa.5.0..sroa_idx.i, align 8
  %kcpustat.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 16
  %16 = ptrtoint ptr %kcpustat.sroa.6.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %kcpustat.sroa.6.0.copyload.i = load i64, ptr %kcpustat.sroa.6.0..sroa_idx.i, align 8
  %kcpustat.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 24
  %17 = ptrtoint ptr %kcpustat.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %kcpustat.sroa.7.0.copyload.i = load i64, ptr %kcpustat.sroa.7.0..sroa_idx.i, align 8
  %kcpustat.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 32
  %18 = ptrtoint ptr %kcpustat.sroa.8.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %kcpustat.sroa.8.0.copyload.i = load i64, ptr %kcpustat.sroa.8.0..sroa_idx.i, align 8
  %kcpustat.sroa.942.0..sroa_idx.i = getelementptr inbounds i8, ptr %13, i32 56
  %19 = ptrtoint ptr %kcpustat.sroa.942.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %kcpustat.sroa.942.0.copyload.i = load i64, ptr %kcpustat.sroa.942.0..sroa_idx.i, align 8
  %add3.i = add i64 %kcpustat.sroa.5.0.copyload.i, %kcpustat.sroa.0.0.copyload.i
  %add5.i = add i64 %add3.i, %cputime.sroa.7.0
  %add9.i = add i64 %kcpustat.sroa.7.0.copyload.i, %kcpustat.sroa.6.0.copyload.i
  %add11.i = add i64 %add9.i, %kcpustat.sroa.8.0.copyload.i
  %add13.i = add i64 %add11.i, %cputime.sroa.0.0
  %add15.i = add i64 %add3.i, %cputime.sroa.11.0
  %add17.i = add i64 %add15.i, %kcpustat.sroa.942.0.copyload.i
  %add20.i = add i64 %add17.i, %add11.i
  %call.i879 = tail call i32 @cpumask_next(i32 noundef %call45.i, ptr noundef nonnull @__cpu_possible_mask) #12
  %cmp.i = icmp ult i32 %call.i879, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.root_cgroup_cputime.exit_crit_edge

for.body.i.root_cgroup_cputime.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %root_cgroup_cputime.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

root_cgroup_cputime.exit:                         ; preds = %for.body.i.root_cgroup_cputime.exit_crit_edge, %if.else.root_cgroup_cputime.exit_crit_edge
  %cputime.sroa.0.1 = phi i64 [ 0, %if.else.root_cgroup_cputime.exit_crit_edge ], [ %add13.i, %for.body.i.root_cgroup_cputime.exit_crit_edge ]
  %cputime.sroa.7.1 = phi i64 [ 0, %if.else.root_cgroup_cputime.exit_crit_edge ], [ %add5.i, %for.body.i.root_cgroup_cputime.exit_crit_edge ]
  %cputime.sroa.11.1 = phi i64 [ 0, %if.else.root_cgroup_cputime.exit_crit_edge ], [ %add20.i, %for.body.i.root_cgroup_cputime.exit_crit_edge ]
  %20 = ptrtoint ptr %utime to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %cputime.sroa.7.1, ptr %utime, align 8
  %21 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %cputime.sroa.0.1, ptr %stime, align 8
  br label %if.end166

if.end166:                                        ; preds = %root_cgroup_cputime.exit, %if.then
  %usage.0 = phi i64 [ %9, %if.then ], [ %cputime.sroa.11.1, %root_cgroup_cputime.exit ]
  %22 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %usage.0, i32 0) #14, !srcloc !67
  %asmresult.i = extractvalue { i64, i32 } %22, 0
  %asmresult4.i = extractvalue { i64, i32 } %22, 1
  %23 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %usage.0, i64 %asmresult.i, i32 %asmresult4.i) #14, !srcloc !68
  %asmresult10.i = extractvalue { i64, i32 } %23, 0
  %24 = ptrtoint ptr %utime to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %utime, align 8
  %26 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %25, i32 0) #14, !srcloc !67
  %asmresult.i880 = extractvalue { i64, i32 } %26, 0
  %asmresult4.i881 = extractvalue { i64, i32 } %26, 1
  %27 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %25, i64 %asmresult.i880, i32 %asmresult4.i881) #14, !srcloc !68
  %asmresult10.i882 = extractvalue { i64, i32 } %27, 0
  %div387877 = lshr i64 %asmresult10.i882, 9
  %28 = ptrtoint ptr %utime to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %div387877, ptr %utime, align 8
  %29 = ptrtoint ptr %stime to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %stime, align 8
  %31 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %30, i32 0) #14, !srcloc !67
  %asmresult.i883 = extractvalue { i64, i32 } %31, 0
  %asmresult4.i884 = extractvalue { i64, i32 } %31, 1
  %32 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %30, i64 %asmresult.i883, i32 %asmresult4.i884) #14, !srcloc !68
  %asmresult10.i885 = extractvalue { i64, i32 } %32, 0
  %div608878 = lshr i64 %asmresult10.i885, 9
  %33 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %div608878, ptr %stime, align 8
  %div170876 = lshr i64 %asmresult10.i, 9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.4, i64 noundef %div170876, i64 noundef %div387877, i64 noundef %div608878) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stime) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %utime) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cputime_adjust(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !17, !19, !20, !22, !23, !25, !27, !28, !29, !31, !32, !34}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/cgroup/rstat.c", i32 197, i32 2}
!2 = !{ptr @cgroup_rstat_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../kernel/cgroup/rstat.c", i32 261, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/cgroup/rstat.c", i32 277, i32 7}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../kernel/cgroup/rstat.c", i32 278, i32 7}
!9 = !{ptr @cgroup_rstat_boot.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../kernel/cgroup/rstat.c", i32 291, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/cgroup/rstat.c", i32 459, i32 18}
!14 = !{ptr @__pcpu_unique_cgroup_rstat_cpu_lock, !15, !"__pcpu_unique_cgroup_rstat_cpu_lock", i1 false, i1 false}
!15 = !{!"../kernel/cgroup/rstat.c", i32 7, i32 8}
!16 = !{ptr @cgroup_rstat_cpu_lock, !15, !"cgroup_rstat_cpu_lock", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/cgroup/rstat.c", i32 6, i32 8}
!19 = !{ptr @cgroup_rstat_lock, !18, !"cgroup_rstat_lock", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../kernel/cgroup/rstat.c", i32 164, i32 4}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../kernel/cgroup/rstat.c", i32 134, i32 4}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 861861, i64 861922}
!48 = !{i64 864593}
!49 = !{i64 864878}
!50 = !{i64 2153504211}
!51 = !{i64 2153504053}
!52 = !{i64 2153504381}
!53 = !{i64 2150222648}
!54 = !{i64 2149295117}
!55 = !{i64 2149295383}
!56 = !{i64 2154084736}
!57 = !{i64 2154084578}
!58 = !{!"auto-init"}
!59 = !{i64 2154090470}
!60 = !{i64 2150114900}
!61 = !{i64 2150119834}
!62 = !{i64 2150141552}
!63 = !{i64 2150146446}
!64 = !{i64 2150222973}
!65 = !{i64 2150223298}
!66 = !{i64 2154091644}
!67 = !{i64 820639, i64 820666, i64 820688, i64 820716}
!68 = !{i64 821047, i64 821074, i64 821107, i64 821128, i64 821155, i64 821181}
