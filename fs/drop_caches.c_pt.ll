; ModuleID = '/llk/IR_all_yes/fs/drop_caches.c_pt.bc'
source_filename = "../fs/drop_caches.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vm_event_state = type { [76 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@drop_caches_sysctl_handler.stfu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sysctl_drop_caches = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@drop_caches_sysctl_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s (%d): drop_caches: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drop_caches_sysctl_handler\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/drop_caches.c\00", [47 x i8] zeroinitializer }, align 32
@drop_caches_sysctl_handler._entry_ptr = internal global ptr @drop_caches_sysctl_handler._entry, section ".printk_index", align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.3 = private unnamed_addr constant [5 x i8] c"stfu\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 59, i32 14 }
@___asan_gen_.6 = private unnamed_addr constant [19 x i8] c"sysctl_drop_caches\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 16, i32 5 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [20 x i8] c"../fs/drop_caches.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 70, i32 4 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @drop_caches_sysctl_handler._entry, ptr @drop_caches_sysctl_handler._entry_ptr, ptr @drop_caches_sysctl_handler.stfu, ptr @sysctl_drop_caches, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drop_caches_sysctl_handler.stfu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_drop_caches to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drop_caches_sysctl_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drop_caches_sysctl_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %length, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %length, ptr noundef %ppos) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %entry
  %0 = load i32, ptr @sysctl_drop_caches, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then2.if.end5_crit_edge, label %if.then4

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %if.then2
  tail call void @iterate_supers(ptr noundef nonnull @drop_pagecache_sb, ptr noundef null) #4
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !20
  %2 = tail call i32 @llvm.read_register.i32(metadata !10) #4
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %7, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 43) to i32)
  %8 = inttoptr i32 %add.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %add14.i = add i32 %10, 1
  store i32 %add14.i, ptr %8, align 4
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !21
  %and.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then4.count_vm_event.exit_crit_edge, !prof !22

if.then4.count_vm_event.exit_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %count_vm_event.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %count_vm_event.exit

count_vm_event.exit:                              ; preds = %if.then.i, %if.then4.count_vm_event.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #4, !srcloc !23
  br label %if.end5

if.end5:                                          ; preds = %count_vm_event.exit, %if.then2.if.end5_crit_edge
  %12 = load i32, ptr @sysctl_drop_caches, align 4
  %and6 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void @drop_slab() #4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !20
  %14 = tail call i32 @llvm.read_register.i32(metadata !10) #4
  %and.i.i22 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i22 to ptr
  %cpu.i23 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i23, align 4
  %arrayidx13.i24 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx13.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13.i24, align 4
  %add.i25 = add i32 %19, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 44) to i32)
  %20 = inttoptr i32 %add.i25 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add14.i26 = add i32 %22, 1
  store i32 %add14.i26, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !21
  %and.i.i.i27 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27)
  %tobool.not.i28 = icmp eq i32 %and.i.i.i27, 0
  br i1 %tobool.not.i28, label %if.then.i29, label %if.then8.count_vm_event.exit30_crit_edge, !prof !22

if.then8.count_vm_event.exit30_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %count_vm_event.exit30

if.then.i29:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %count_vm_event.exit30

count_vm_event.exit30:                            ; preds = %if.then.i29, %if.then8.count_vm_event.exit30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #4, !srcloc !23
  br label %if.end9

if.end9:                                          ; preds = %count_vm_event.exit30, %if.end5.if.end9_crit_edge
  %24 = load i32, ptr @drop_caches_sysctl_handler.stfu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool10.not = icmp eq i32 %24, 0
  br i1 %tobool10.not, label %do.end, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call i32 @llvm.read_register.i32(metadata !10) #4
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid.i, align 8
  %31 = load i32, ptr @sysctl_drop_caches, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, i32 noundef %30, i32 noundef %31) #7
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end9.if.end17_crit_edge
  %32 = load i32, ptr @sysctl_drop_caches, align 4
  %and18 = and i32 %32, 4
  %33 = load i32, ptr @drop_caches_sysctl_handler.stfu, align 4
  %or = or i32 %33, %and18
  store i32 %or, ptr @drop_caches_sysctl_handler.stfu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iterate_supers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drop_pagecache_sb(ptr noundef %sb, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_inode_list_lock = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 61
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #4
  %s_inodes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 62
  %0 = ptrtoint ptr %s_inodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn32 = load ptr, ptr %s_inodes, align 4
  %cmp.not34 = icmp eq ptr %.pn32, %s_inodes
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn37 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn32, %entry.for.body_crit_edge ]
  %toput_inode.035 = phi ptr [ %toput_inode.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %inode.038 = getelementptr i8, ptr %.pn37, i32 -344
  %i_lock = getelementptr i8, ptr %.pn37, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #4
  %i_state = getelementptr i8, ptr %.pn37, i32 -144
  %1 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_state, align 8
  %and = and i32 %2, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %i_mapping = getelementptr i8, ptr %.pn37, i32 -312
  %3 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_mapping, align 8
  %xa_head.i.i = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i = icmp eq ptr %6, null
  br i1 %cmp.i.i, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = tail call i32 @llvm.read_register.i32(metadata !10) #4
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 16384
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %for.body.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #4
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  tail call void @__iget(ptr noundef %inode.038) #4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #4
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #4
  %12 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping, align 8
  %call7 = tail call i32 @invalidate_mapping_pages(ptr noundef %13, i32 noundef 0, i32 noundef -1) #4
  tail call void @iput(ptr noundef %toput_inode.035) #4
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 0) #4
  %call.i = tail call i32 @__cond_resched() #4
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %toput_inode.1 = phi ptr [ %toput_inode.035, %if.then ], [ %inode.038, %if.end ]
  %14 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, %s_inodes
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %toput_inode.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %toput_inode.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #4
  tail call void @iput(ptr noundef %toput_inode.0.lcssa) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_slab() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @drop_caches_sysctl_handler.stfu, !1, !"stfu", i1 false, i1 false}
!1 = !{!"../fs/drop_caches.c", i32 59, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/drop_caches.c", i32 70, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @drop_caches_sysctl_handler._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @drop_caches_sysctl_handler._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @sysctl_drop_caches, !9, !"sysctl_drop_caches", i1 false, i1 false}
!9 = !{!"../fs/drop_caches.c", i32 16, i32 5}
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
!20 = !{i64 1108639, i64 1108700}
!21 = !{i64 1111371}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 1111656}
