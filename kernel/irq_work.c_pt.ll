; ModuleID = '/llk/IR_all_yes/kernel/irq_work.c_pt.bc'
source_filename = "../kernel/irq_work.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+irq_work_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_work_queue\09\09\09\09"
module asm "\09.long\09__crc_irq_work_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_work_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_work_queue\22\09\09\09\09\09"
module asm "__kstrtabns_irq_work_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_work_run\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_work_run\09\09\09\09"
module asm "\09.long\09__crc_irq_work_run\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_work_run:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_work_run\22\09\09\09\09\09"
module asm "__kstrtabns_irq_work_run:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+irq_work_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_work_sync\09\09\09\09"
module asm "\09.long\09__crc_irq_work_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_work_sync\22\09\09\09\09\09"
module asm "__kstrtabns_irq_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.rcuwait = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.35, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.35 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@irq_work_wakeup = weak dso_local local_unnamed_addr global %struct.irq_work { %struct.__call_single_node { %struct.llist_node zeroinitializer, %union.anon { i32 8 } }, ptr @irq_work_wake, %struct.rcuwait zeroinitializer }, section ".data..percpu", align 4
@__kstrtab_irq_work_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_work_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_work_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_work_queue to i32), ptr @__kstrtab_irq_work_queue, ptr @__kstrtabns_irq_work_queue }, section "___ksymtab_gpl+irq_work_queue", align 4
@irq_work_queue_on.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kernel/irq_work.c\00", [46 x i8] zeroinitializer }, align 32
@irq_work_queue_on.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@raised_list = weak dso_local global %struct.llist_head zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@lazy_list = weak dso_local global %struct.llist_head zeroinitializer, section ".data..percpu", align 4
@irq_work_needs_cpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_irq_work_run = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_work_run = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_work_run = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_work_run to i32), ptr @__kstrtab_irq_work_run, ptr @__kstrtabns_irq_work_run }, section "___ksymtab_gpl+irq_work_run", align 4
@irq_work_sync.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@__kstrtab_irq_work_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_work_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_work_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_work_sync to i32), ptr @__kstrtab_irq_work_sync, ptr @__kstrtabns_irq_work_sync }, section "___ksymtab_gpl+irq_work_sync", align 4
@__initcall__kmod_irq_work__217_317_irq_work_init_threadsearly = internal global ptr @irq_work_init_threads, section ".initcallearly.init", align 4
@__pcpu_unique_raised_list = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_lazy_list = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_irq_workd = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@irq_workd = weak dso_local global ptr null, section ".data..percpu", align 4
@__pcpu_unique_irq_work_wakeup = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.7 = private constant [21 x i8] c"../kernel/irq_work.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 134, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 108, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_irq_work__217_317_irq_work_init_threadsearly, ptr @__ksymtab_irq_work_queue, ptr @__ksymtab_irq_work_run, ptr @__ksymtab_irq_work_sync, ptr @.str, ptr @.str.4], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_work_wake(ptr nocapture noundef readnone %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @irq_workd to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %add19.i = add i32 %5, ptrtoint (ptr @lazy_list to i32)
  %9 = inttoptr i32 %add19.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %9, align 4
  %cmp.i.i = icmp eq ptr %11, null
  %tobool.not.i = icmp eq ptr %8, null
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %entry.wake_irq_workd.exit_crit_edge, label %if.then.i

entry.wake_irq_workd.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wake_irq_workd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i = tail call i32 @wake_up_process(ptr noundef nonnull %8) #8
  br label %wake_irq_workd.exit

wake_irq_workd.exit:                              ; preds = %if.then.i, %entry.wake_irq_workd.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_irq_work_raise() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_work_queue(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = getelementptr inbounds %struct.__call_single_node, ptr %work, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %0, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %0, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 35, ptr elementtype(i32) %0) #8, !srcloc !49
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  %and.i = and i32 %asmresult.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !51
  tail call fastcc void @__irq_work_queue_local(ptr noundef %work)
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  %6 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i4 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i4 to ptr
  %preempt_count.i.i5 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i5, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i5, align 4
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret i1 %tobool.not.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__irq_work_queue_local(ptr noundef %work) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = getelementptr inbounds %struct.__call_single_node, ptr %work, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %0, i32 noundef 4) #8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %3 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i33 = and i32 %3, -16384
  %4 = inttoptr i32 %and.i33 to ptr
  %cpu15 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu15, align 4
  %arrayidx16 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx16, align 4
  br i1 %tobool.not, label %if.end18, label %if.end18.thread

if.end18:                                         ; preds = %entry
  %add17 = add i32 %8, ptrtoint (ptr @raised_list to i32)
  %list.0 = inttoptr i32 %add17 to ptr
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %work, ptr noundef %work, ptr noundef %list.0) #8
  br i1 %call.i, label %if.end18.if.then26_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.if.then26_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

if.end18.thread:                                  ; preds = %entry
  %add = add i32 %8, ptrtoint (ptr @lazy_list to i32)
  %list.035 = inttoptr i32 %add to ptr
  %call.i36 = tail call zeroext i1 @llist_add_batch(ptr noundef %work, ptr noundef %work, ptr noundef %list.035) #8
  br i1 %call.i36, label %lor.lhs.false24, label %if.end18.thread.cleanup_crit_edge

if.end18.thread.cleanup_crit_edge:                ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false24:                                  ; preds = %if.end18.thread
  %call25 = tail call zeroext i1 @tick_nohz_tick_stopped() #8
  br i1 %call25, label %lor.lhs.false24.if.then26_crit_edge, label %lor.lhs.false24.cleanup_crit_edge

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false24.if.then26_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false24.if.then26_crit_edge, %if.end18.if.then26_crit_edge
  tail call void @arch_irq_work_raise()
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %lor.lhs.false24.cleanup_crit_edge, %if.end18.thread.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_work_queue_on(ptr noundef %work, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !53

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i127 = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i127
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %land.rhs, label %cpu_online.exit.if.end37_crit_edge

cpu_online.exit.if.end37_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.rhs:                                         ; preds = %cpu_online.exit
  %.b124 = load i1, ptr @irq_work_queue_on.__already_done, align 1
  br i1 %.b124, label %land.rhs.if.end37_crit_edge, label %if.then, !prof !53

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @irq_work_queue_on.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then, %land.rhs.if.end37_crit_edge, %cpu_online.exit.if.end37_crit_edge
  %5 = getelementptr inbounds %struct.__call_single_node, ptr %work, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 35, ptr elementtype(i32) %5) #8, !srcloc !49
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  %and.i = and i32 %asmresult.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end47, label %if.end37.return_crit_edge

if.end37.return_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end47:                                         ; preds = %if.end37
  tail call void @kasan_record_aux_stack(ptr noundef %work) #8
  %7 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %10, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  %11 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i128 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i128 to ptr
  %cpu52 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %cpu)
  %cmp.not = icmp eq i32 %14, %cpu
  br i1 %cmp.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end47
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %16, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %if.then53.if.end101_crit_edge, label %land.rhs63

if.then53.if.end101_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

land.rhs63:                                       ; preds = %if.then53
  %.b122123 = load i1, ptr @irq_work_queue_on.__already_done.1, align 1
  br i1 %.b122123, label %land.rhs63.if.end101_crit_edge, label %if.then74, !prof !53

land.rhs63.if.end101_crit_edge:                   ; preds = %land.rhs63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then74:                                        ; preds = %land.rhs63
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @irq_work_queue_on.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #8
  br label %if.end101

if.end101:                                        ; preds = %if.then74, %land.rhs63.if.end101_crit_edge, %if.then53.if.end101_crit_edge
  tail call void @__smp_call_single_queue(i32 noundef %cpu, ptr noundef %work) #8
  br label %do.body110

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__irq_work_queue_local(ptr noundef %work)
  br label %do.body110

do.body110:                                       ; preds = %if.else, %if.end101
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  %17 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i125 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i125 to ptr
  %preempt_count.i.i126 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i126 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i126, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i126, align 4
  br label %return

return:                                           ; preds = %do.body110, %if.end37.return_crit_edge
  ret i1 %tobool.not.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_record_aux_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__smp_call_single_queue(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_work_needs_cpu() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @raised_list to i32)
  %6 = inttoptr i32 %add to ptr
  %add12 = add i32 %5, ptrtoint (ptr @lazy_list to i32)
  %7 = inttoptr i32 %add12 to ptr
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %6, align 4
  %cmp.i = icmp eq ptr %9, null
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %10 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %7, align 4
  %cmp.i75 = icmp eq ptr %12, null
  br i1 %cmp.i75, label %if.then.cleanup_crit_edge, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.then.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %13, %3
  br i1 %cmp.not.i.i.i.i, label %if.end17.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

if.end17.cpu_online.exit_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %if.end17
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !53

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %if.end17.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %3, 31
  %16 = shl nuw i32 1, %and.i.i.i
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %land.rhs, label %cpu_online.exit.cleanup_crit_edge

cpu_online.exit.cleanup_crit_edge:                ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs:                                         ; preds = %cpu_online.exit
  %.b74 = load i1, ptr @irq_work_needs_cpu.__already_done, align 1
  br i1 %.b74, label %land.rhs.cleanup_crit_edge, label %if.then37, !prof !53

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @irq_work_needs_cpu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %land.rhs.cleanup_crit_edge, %cpu_online.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then.cleanup_crit_edge ], [ true, %cpu_online.exit.cleanup_crit_edge ], [ true, %if.then37 ], [ true, %land.rhs.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_work_single(ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = getelementptr inbounds %struct.__call_single_node, ptr %arg, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %0, i32 noundef 4) #8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and = and i32 %2, -2
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %0, i32 noundef 4) #8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %and, ptr %0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  %and6 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.then, label %do.end19.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %irq_config = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 140
  %8 = ptrtoint ptr %irq_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %irq_config, align 8
  %func.c = getelementptr inbounds %struct.irq_work, ptr %arg, i32 0, i32 1
  %9 = ptrtoint ptr %func.c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func.c, align 4
  tail call void %10(ptr noundef %arg) #8
  %11 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i40 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i40 to ptr
  %task15 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task15, align 8
  %irq_config16 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 140
  %15 = ptrtoint ptr %irq_config16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %irq_config16, align 8
  br label %do.end19

do.end19.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %func.c37 = getelementptr inbounds %struct.irq_work, ptr %arg, i32 0, i32 1
  %16 = ptrtoint ptr %func.c37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %func.c37, align 4
  tail call void %17(ptr noundef %arg) #8
  br label %do.end19

do.end19:                                         ; preds = %do.end19.critedge, %if.then
  %and21 = and i32 %2, -4
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %0, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %0, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.end19
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %and, i32 %and21, ptr elementtype(i32) %0) #8, !srcloc !58
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %19 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.i.not, label %if.then24, label %atomic_cmpxchg.exit.if.end26_crit_edge

atomic_cmpxchg.exit.if.end26_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then24:                                        ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irqwait = getelementptr inbounds %struct.irq_work, ptr %arg, i32 0, i32 2
  %call25 = tail call i32 @rcuwait_wake_up(ptr noundef %irqwait) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %atomic_cmpxchg.exit.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_work_run() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @raised_list to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !60
  %and.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body13.i, label %do.end20.i, !prof !61

do.body13.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

do.end20.i:                                       ; preds = %entry
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %6, align 4
  %cmp.i.i = icmp eq ptr %9, null
  br i1 %cmp.i.i, label %do.end20.i.irq_work_run_list.exit_crit_edge, label %if.end23.i

do.end20.i.irq_work_run_list.exit_crit_edge:      ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_work_run_list.exit

if.end23.i:                                       ; preds = %do.end20.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #8, !srcloc !64
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp26.not38.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp26.not38.i, label %if.end23.i.irq_work_run_list.exit_crit_edge, label %land.rhs28.preheader.i

if.end23.i.irq_work_run_list.exit_crit_edge:      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_work_run_list.exit

land.rhs28.preheader.i:                           ; preds = %if.end23.i
  %11 = inttoptr i32 %asmresult.i.i.i to ptr
  br label %land.rhs28.i

land.rhs28.i:                                     ; preds = %land.rhs28.i.land.rhs28.i_crit_edge, %land.rhs28.preheader.i
  %work.039.i = phi ptr [ %13, %land.rhs28.i.land.rhs28.i_crit_edge ], [ %11, %land.rhs28.preheader.i ]
  %12 = ptrtoint ptr %work.039.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %work.039.i, align 4
  tail call void @irq_work_single(ptr noundef nonnull %work.039.i) #8
  %cmp26.not.i = icmp eq ptr %13, null
  br i1 %cmp26.not.i, label %land.rhs28.i.irq_work_run_list.exit_crit_edge, label %land.rhs28.i.land.rhs28.i_crit_edge

land.rhs28.i.land.rhs28.i_crit_edge:              ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs28.i

land.rhs28.i.irq_work_run_list.exit_crit_edge:    ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_work_run_list.exit

irq_work_run_list.exit:                           ; preds = %land.rhs28.i.irq_work_run_list.exit_crit_edge, %if.end23.i.irq_work_run_list.exit_crit_edge, %do.end20.i.irq_work_run_list.exit_crit_edge
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx10 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10, align 4
  %add11 = add i32 %17, ptrtoint (ptr @lazy_list to i32)
  %18 = inttoptr i32 %add11 to ptr
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !60
  %and.i.i12 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12)
  %tobool.not.i13 = icmp eq i32 %and.i.i12, 0
  br i1 %tobool.not.i13, label %do.body13.i14, label %do.end20.i16, !prof !61

do.body13.i14:                                    ; preds = %irq_work_run_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

do.end20.i16:                                     ; preds = %irq_work_run_list.exit
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %18, align 4
  %cmp.i.i15 = icmp eq ptr %21, null
  br i1 %cmp.i.i15, label %do.end20.i16.irq_work_run_list.exit25_crit_edge, label %if.end23.i20

do.end20.i16.irq_work_run_list.exit25_crit_edge:  ; preds = %do.end20.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_work_run_list.exit25

if.end23.i20:                                     ; preds = %do.end20.i16
  %call.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %18) #8, !srcloc !64
  %asmresult.i.i.i18 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i18)
  %cmp26.not38.i19 = icmp eq i32 %asmresult.i.i.i18, 0
  br i1 %cmp26.not38.i19, label %if.end23.i20.irq_work_run_list.exit25_crit_edge, label %land.rhs28.preheader.i21

if.end23.i20.irq_work_run_list.exit25_crit_edge:  ; preds = %if.end23.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_work_run_list.exit25

land.rhs28.preheader.i21:                         ; preds = %if.end23.i20
  %23 = inttoptr i32 %asmresult.i.i.i18 to ptr
  br label %land.rhs28.i24

land.rhs28.i24:                                   ; preds = %land.rhs28.i24.land.rhs28.i24_crit_edge, %land.rhs28.preheader.i21
  %work.039.i22 = phi ptr [ %25, %land.rhs28.i24.land.rhs28.i24_crit_edge ], [ %23, %land.rhs28.preheader.i21 ]
  %24 = ptrtoint ptr %work.039.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %work.039.i22, align 4
  tail call void @irq_work_single(ptr noundef nonnull %work.039.i22) #8
  %cmp26.not.i23 = icmp eq ptr %25, null
  br i1 %cmp26.not.i23, label %land.rhs28.i24.irq_work_run_list.exit25_crit_edge, label %land.rhs28.i24.land.rhs28.i24_crit_edge

land.rhs28.i24.land.rhs28.i24_crit_edge:          ; preds = %land.rhs28.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs28.i24

land.rhs28.i24.irq_work_run_list.exit25_crit_edge: ; preds = %land.rhs28.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_work_run_list.exit25

irq_work_run_list.exit25:                         ; preds = %land.rhs28.i24.irq_work_run_list.exit25_crit_edge, %if.end23.i20.irq_work_run_list.exit25_crit_edge, %do.end20.i16.irq_work_run_list.exit25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_work_tick() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @raised_list to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 4
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %entry.do.body4_crit_edge, label %land.lhs.true

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %9 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.i.not, label %if.then, label %land.lhs.true.do.body4_crit_edge

land.lhs.true.do.body4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

if.then:                                          ; preds = %land.lhs.true
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !60
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body13.i, label %do.end20.i, !prof !61

do.body13.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

do.end20.i:                                       ; preds = %if.then
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %6, align 4
  %cmp.i.i = icmp eq ptr %12, null
  br i1 %cmp.i.i, label %do.end20.i.do.body4_crit_edge, label %if.end23.i

do.end20.i.do.body4_crit_edge:                    ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

if.end23.i:                                       ; preds = %do.end20.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #8, !srcloc !64
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp26.not38.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp26.not38.i, label %if.end23.i.do.body4_crit_edge, label %land.rhs28.preheader.i

if.end23.i.do.body4_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

land.rhs28.preheader.i:                           ; preds = %if.end23.i
  %14 = inttoptr i32 %asmresult.i.i.i to ptr
  br label %land.rhs28.i

land.rhs28.i:                                     ; preds = %land.rhs28.i.land.rhs28.i_crit_edge, %land.rhs28.preheader.i
  %work.039.i = phi ptr [ %16, %land.rhs28.i.land.rhs28.i_crit_edge ], [ %14, %land.rhs28.preheader.i ]
  %15 = ptrtoint ptr %work.039.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %work.039.i, align 4
  tail call void @irq_work_single(ptr noundef nonnull %work.039.i) #8
  %cmp26.not.i = icmp eq ptr %16, null
  br i1 %cmp26.not.i, label %land.rhs28.i.do.body4_crit_edge, label %land.rhs28.i.land.rhs28.i_crit_edge

land.rhs28.i.land.rhs28.i_crit_edge:              ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs28.i

land.rhs28.i.do.body4_crit_edge:                  ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

do.body4:                                         ; preds = %land.rhs28.i.do.body4_crit_edge, %if.end23.i.do.body4_crit_edge, %do.end20.i.do.body4_crit_edge, %land.lhs.true.do.body4_crit_edge, %entry.do.body4_crit_edge
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %arrayidx13 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx13, align 4
  %add14 = add i32 %20, ptrtoint (ptr @lazy_list to i32)
  %21 = inttoptr i32 %add14 to ptr
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !60
  %and.i.i16 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i16)
  %tobool.not.i17 = icmp eq i32 %and.i.i16, 0
  br i1 %tobool.not.i17, label %do.body13.i18, label %do.end20.i20, !prof !61

do.body13.i18:                                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

do.end20.i20:                                     ; preds = %do.body4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %21, align 4
  %cmp.i.i19 = icmp eq ptr %24, null
  br i1 %cmp.i.i19, label %do.end20.i20.irq_work_run_list.exit29_crit_edge, label %if.end23.i24

do.end20.i20.irq_work_run_list.exit29_crit_edge:  ; preds = %do.end20.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_work_run_list.exit29

if.end23.i24:                                     ; preds = %do.end20.i20
  %call.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %21, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %21, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %21) #8, !srcloc !64
  %asmresult.i.i.i22 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i22)
  %cmp26.not38.i23 = icmp eq i32 %asmresult.i.i.i22, 0
  br i1 %cmp26.not38.i23, label %if.end23.i24.irq_work_run_list.exit29_crit_edge, label %land.rhs28.preheader.i25

if.end23.i24.irq_work_run_list.exit29_crit_edge:  ; preds = %if.end23.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_work_run_list.exit29

land.rhs28.preheader.i25:                         ; preds = %if.end23.i24
  %26 = inttoptr i32 %asmresult.i.i.i22 to ptr
  br label %land.rhs28.i28

land.rhs28.i28:                                   ; preds = %land.rhs28.i28.land.rhs28.i28_crit_edge, %land.rhs28.preheader.i25
  %work.039.i26 = phi ptr [ %28, %land.rhs28.i28.land.rhs28.i28_crit_edge ], [ %26, %land.rhs28.preheader.i25 ]
  %27 = ptrtoint ptr %work.039.i26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %work.039.i26, align 4
  tail call void @irq_work_single(ptr noundef nonnull %work.039.i26) #8
  %cmp26.not.i27 = icmp eq ptr %28, null
  br i1 %cmp26.not.i27, label %land.rhs28.i28.irq_work_run_list.exit29_crit_edge, label %land.rhs28.i28.land.rhs28.i28_crit_edge

land.rhs28.i28.land.rhs28.i28_crit_edge:          ; preds = %land.rhs28.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs28.i28

land.rhs28.i28.irq_work_run_list.exit29_crit_edge: ; preds = %land.rhs28.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_work_run_list.exit29

irq_work_run_list.exit29:                         ; preds = %land.rhs28.i28.irq_work_run_list.exit29_crit_edge, %if.end23.i24.irq_work_run_list.exit29_crit_edge, %do.end20.i20.irq_work_run_list.exit29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irq_work_sync(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end87_crit_edge, label %land.lhs.true

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !66
  %5 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  %14 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i215 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i215 to ptr
  %preempt_count.i.i216 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i216 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i216, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i217 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i217 to ptr
  %preempt_count.i.i218 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i218 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i218, align 4
  %add.i219 = add i32 %21, 1
  store volatile i32 %add.i219, ptr %preempt_count.i.i218, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add45 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  %29 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i220 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i220 to ptr
  %preempt_count.i.i221 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i221 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i221, align 4
  %sub.i222 = add i32 %32, -1
  store volatile i32 %sub.i222, ptr %preempt_count.i.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %land.rhs56, label %land.rhs.if.end87_crit_edge

land.rhs.if.end87_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

land.rhs56:                                       ; preds = %land.rhs
  %.b211 = load i1, ptr @irq_work_sync.__already_done, align 1
  br i1 %.b211, label %land.rhs56.if.end87_crit_edge, label %if.then, !prof !53

land.rhs56.if.end87_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then:                                          ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @irq_work_sync.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #8
  br label %if.end87

if.end87:                                         ; preds = %if.then, %land.rhs56.if.end87_crit_edge, %land.rhs.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %entry.if.end87_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 279) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %33 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.i.not = icmp eq i32 %33, 0
  br i1 %tobool.i.i.not, label %if.then104, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end87
  %34 = getelementptr inbounds %struct.__call_single_node, ptr %work, i32 0, i32 1
  %call.i.i.i225228 = tail call zeroext i1 @__kasan_check_read(ptr noundef %34, i32 noundef 4) #8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i226229 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i226229)
  %tobool.i227.not230 = icmp eq i32 %and.i226229, 0
  br i1 %tobool.i227.not230, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.do.end199_crit_edge

while.cond.preheader.do.end199_crit_edge:         ; preds = %while.cond.preheader
  br label %do.end199

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.then104:                                       ; preds = %if.end87
  %irqwait = getelementptr inbounds %struct.irq_work, ptr %work, i32 0, i32 2
  %37 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !70
  %41 = ptrtoint ptr %irqwait to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %40, ptr %irqwait, align 4
  %42 = getelementptr inbounds %struct.__call_single_node, ptr %work, i32 0, i32 1
  br label %__here

__here:                                           ; preds = %if.end184, %if.then104
  %43 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i223 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i223 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 212
  %47 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 ptrtoint (ptr blockaddress(@irq_work_sync, %__here) to i32), ptr %task_state_change, align 4
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 2, ptr %48, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !71
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %42, i32 noundef 4) #8
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %42, align 4
  %and.i224 = and i32 %51, 2
  %tobool.i.not = icmp eq i32 %and.i224, 0
  br i1 %tobool.i.not, label %for.end, label %if.end184

if.end184:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @schedule() #8
  br label %__here

for.end:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @finish_rcuwait(ptr noundef %irqwait)
  br label %while.end

do.end199:                                        ; preds = %do.end199.do.end199_crit_edge, %while.cond.preheader.do.end199_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !73
  %call.i.i.i225 = tail call zeroext i1 @__kasan_check_read(ptr noundef %34, i32 noundef 4) #8
  %52 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %34, align 4
  %and.i226 = and i32 %53, 2
  %tobool.i227.not = icmp eq i32 %and.i226, 0
  br i1 %tobool.i227.not, label %do.end199.while.end_crit_edge, label %do.end199.do.end199_crit_edge

do.end199.do.end199_crit_edge:                    ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end199

do.end199.while.end_crit_edge:                    ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %do.end199.while.end_crit_edge, %for.end, %while.cond.preheader.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: inlinehint nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_rcuwait(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr null, ptr %w, align 4
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task72 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task72 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task72, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 212
  %5 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 ptrtoint (ptr blockaddress(@finish_rcuwait, %__here) to i32), ptr %task_state_change, align 4
  %6 = load ptr, ptr %task72, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %6, align 128
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @irq_work_init_threads() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_tick_stopped() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !30, !31, !33, !35, !36, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @irq_work_wakeup, !1, !"irq_work_wakeup", i1 false, i1 false}
!1 = !{!"../kernel/irq_work.c", i32 43, i32 8}
!2 = !{ptr @__ksymtab_irq_work_queue, !3, !"__ksymtab_irq_work_queue", i1 false, i1 false}
!3 = !{!"../kernel/irq_work.c", i32 119, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/irq_work.c", i32 134, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../kernel/irq_work.c", i32 145, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../kernel/irq_work.c", i32 186, i32 2}
!11 = !{ptr @__ksymtab_irq_work_run, !12, !"__ksymtab_irq_work_run", i1 false, i1 false}
!12 = !{!"../kernel/irq_work.c", i32 257, i32 1}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../kernel/irq_work.c", i32 278, i32 2}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../kernel/irq_work.c", i32 283, i32 3}
!17 = !{ptr @__ksymtab_irq_work_sync, !18, !"__ksymtab_irq_work_sync", i1 false, i1 false}
!18 = !{!"../kernel/irq_work.c", i32 291, i32 1}
!19 = !{ptr @__initcall__kmod_irq_work__217_317_irq_work_init_threadsearly, !20, !"__initcall__kmod_irq_work__217_317_irq_work_init_threadsearly", i1 false, i1 false}
!20 = !{!"../kernel/irq_work.c", i32 317, i32 1}
!21 = !{ptr @__pcpu_unique_raised_list, !22, !"__pcpu_unique_raised_list", i1 false, i1 false}
!22 = !{!"../kernel/irq_work.c", i32 25, i32 8}
!23 = !{ptr @raised_list, !22, !"raised_list", i1 false, i1 false}
!24 = !{ptr @__pcpu_unique_lazy_list, !25, !"__pcpu_unique_lazy_list", i1 false, i1 false}
!25 = !{!"../kernel/irq_work.c", i32 26, i32 8}
!26 = !{ptr @lazy_list, !25, !"lazy_list", i1 false, i1 false}
!27 = !{ptr @__pcpu_unique_irq_workd, !28, !"__pcpu_unique_irq_workd", i1 false, i1 false}
!28 = !{!"../kernel/irq_work.c", i32 27, i32 8}
!29 = !{ptr @irq_workd, !28, !"irq_workd", i1 false, i1 false}
!30 = !{ptr @__pcpu_unique_irq_work_wakeup, !1, !"__pcpu_unique_irq_work_wakeup", i1 false, i1 false}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/irq_work.c", i32 31, i32 28}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!35 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/rcuwait.h", i32 53, i32 2}
!38 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148431756}
!49 = !{i64 2148341824, i64 2148341856, i64 2148341885, i64 2148341919, i64 2148341950, i64 2148341973}
!50 = !{i64 2148431983}
!51 = !{i64 2153327851}
!52 = !{i64 2153327948}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2153334755}
!55 = !{i64 2153338649}
!56 = !{i64 2153341860}
!57 = !{i64 2148434789}
!58 = !{i64 818479, i64 818503, i64 818524, i64 818541, i64 818558}
!59 = !{i64 2148435015}
!60 = !{i64 729956}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2153345346, i64 2153345828, i64 2153345383, i64 2153345439, i64 2153345473, i64 2153345497, i64 2153345538, i64 2153345559, i64 2153345587, i64 2153345621}
!63 = !{i64 2148744259}
!64 = !{i64 839734, i64 839751, i64 839775, i64 839801, i64 839819}
!65 = !{i64 2148744612}
!66 = !{i64 2153583022}
!67 = !{i64 2153587956}
!68 = !{i64 2153609640}
!69 = !{i64 2153614534}
!70 = !{i64 2151931004}
!71 = !{i64 2153629149}
!72 = !{i64 2153629470}
!73 = !{i64 2153629312}
