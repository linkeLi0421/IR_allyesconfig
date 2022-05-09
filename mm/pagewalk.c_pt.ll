; ModuleID = '/llk/IR_all_yes/mm/pagewalk.c_pt.bc'
source_filename = "../mm/pagewalk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm/pagewalk.c\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/mmap_lock.h\00", [38 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.3 = private constant [17 x i8] c"../mm/pagewalk.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 576, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [29 x i8] c"../include/linux/mmap_lock.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 155, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @walk_page_range(ptr noundef %mm, i32 noundef %start, i32 noundef %end, ptr noundef %ops, ptr noundef %private) local_unnamed_addr #0 align 64 {
entry:
  %walk = alloca %struct.mm_walk, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %walk) #5
  %0 = getelementptr inbounds i8, ptr %walk, i32 20
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %walk, align 4
  %mm2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1
  %3 = ptrtoint ptr %mm2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mm, ptr %mm2, align 4
  %pgd = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 2
  %vma3 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %private4 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %4 = call ptr @memset(ptr %pgd, i32 0, i32 13)
  %5 = ptrtoint ptr %private4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %private, ptr %private4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp.not = icmp uge i32 %start, %end
  %tobool.not = icmp eq ptr %mm, null
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end7.if.end.i_crit_edge, label %land.rhs.i

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end7
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !14

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 155, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %mmap_lock25.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i, i32 noundef 4) #5
  %7 = ptrtoint ptr %mmap_lock25.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %mmap_lock25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 0
  br i1 %cmp.i.not.i, label %if.then36.i, label %mmap_assert_locked.exit, !prof !14

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_mm(ptr noundef nonnull %mm) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

mmap_assert_locked.exit:                          ; preds = %if.end.i
  %9 = ptrtoint ptr %mm2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mm2, align 4
  %call = tail call ptr @find_vma(ptr noundef %10, i32 noundef %start) #5
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %mmap_assert_locked.exit
  %vma.0 = phi ptr [ %call, %mmap_assert_locked.exit ], [ %vma.2, %do.cond.do.body_crit_edge ]
  %start.addr.0 = phi i32 [ %start, %mmap_assert_locked.exit ], [ %next.1, %do.cond.do.body_crit_edge ]
  %tobool10.not = icmp eq ptr %vma.0, null
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %vma3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %vma3, align 4
  br label %lor.lhs.false

if.else:                                          ; preds = %do.body
  %12 = ptrtoint ptr %vma.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vma.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0, i32 %13)
  %cmp13 = icmp ult i32 %start.addr.0, %13
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %vma3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %vma3, align 4
  %15 = ptrtoint ptr %vma.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vma.0, align 4
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 %end)
  br label %lor.lhs.false

if.else18:                                        ; preds = %if.else
  %18 = ptrtoint ptr %vma3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vma.0, ptr %vma3, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 1
  %19 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_end, align 4
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 %end)
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 2
  %22 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vm_next, align 4
  %24 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %walk, align 4
  %test_walk.i = getelementptr inbounds %struct.mm_walk_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %test_walk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %test_walk.i, align 4
  %tobool.not.i75 = icmp eq ptr %27, null
  br i1 %tobool.not.i75, label %if.end.i76, label %if.then.i

if.then.i:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %27(i32 noundef %start.addr.0, i32 noundef %21, ptr noundef nonnull %walk) #5
  br label %walk_page_test.exit

if.end.i76:                                       ; preds = %if.else18
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 8
  %28 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i76.if.end34_crit_edge, label %if.then5.i

if.end.i76.if.end34_crit_edge:                    ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then5.i:                                       ; preds = %if.end.i76
  %pte_hole.i = getelementptr inbounds %struct.mm_walk_ops, ptr %25, i32 0, i32 5
  %30 = ptrtoint ptr %pte_hole.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pte_hole.i, align 4
  %tobool6.not.i = icmp eq ptr %31, null
  br i1 %tobool6.not.i, label %if.then5.i.do.cond_crit_edge, label %if.end10.i

if.then5.i.do.cond_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.end10.i:                                       ; preds = %if.then5.i
  %call9.i = call i32 %31(i32 noundef %start.addr.0, i32 noundef %21, i32 noundef -1, ptr noundef nonnull %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool11.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.do.cond_crit_edge, label %if.end10.i.walk_page_test.exit_crit_edge

if.end10.i.walk_page_test.exit_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_page_test.exit

if.end10.i.do.cond_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

walk_page_test.exit:                              ; preds = %if.end10.i.walk_page_test.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.end10.i.walk_page_test.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp27 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp27, label %walk_page_test.exit.do.cond_crit_edge, label %if.end29

walk_page_test.exit.do.cond_crit_edge:            ; preds = %walk_page_test.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.end29:                                         ; preds = %walk_page_test.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp30 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp30, label %if.end29.cleanup_crit_edge, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end29.if.end34_crit_edge, %if.end.i76.if.end34_crit_edge
  %32 = ptrtoint ptr %vma3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load ptr, ptr %vma3, align 4
  %tobool36.not = icmp eq ptr %.pr, null
  br i1 %tobool36.not, label %if.end34.lor.lhs.false_crit_edge, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end34.lor.lhs.false_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34.lor.lhs.false_crit_edge, %if.then14, %if.then11
  %vma.193 = phi ptr [ %23, %if.end34.lor.lhs.false_crit_edge ], [ null, %if.then11 ], [ %vma.0, %if.then14 ]
  %next.089 = phi i32 [ %21, %if.end34.lor.lhs.false_crit_edge ], [ %end, %if.then11 ], [ %17, %if.then14 ]
  %33 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %walk, align 4
  %pte_hole = getelementptr inbounds %struct.mm_walk_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %pte_hole to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pte_hole, align 4
  %tobool38.not = icmp eq ptr %36, null
  br i1 %tobool38.not, label %lor.lhs.false.do.cond_crit_edge, label %lor.lhs.false.if.end41_crit_edge

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

lor.lhs.false.do.cond_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

if.end41:                                         ; preds = %lor.lhs.false.if.end41_crit_edge, %if.end34.if.end41_crit_edge
  %vma.191 = phi ptr [ %vma.193, %lor.lhs.false.if.end41_crit_edge ], [ %23, %if.end34.if.end41_crit_edge ]
  %next.088 = phi i32 [ %next.089, %lor.lhs.false.if.end41_crit_edge ], [ %21, %if.end34.if.end41_crit_edge ]
  %call40 = call fastcc i32 @__walk_page_range(i32 noundef %start.addr.0, i32 noundef %next.088, ptr noundef nonnull %walk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %if.end41.do.cond_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41.do.cond_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

do.cond:                                          ; preds = %if.end41.do.cond_crit_edge, %lor.lhs.false.do.cond_crit_edge, %walk_page_test.exit.do.cond_crit_edge, %if.end10.i.do.cond_crit_edge, %if.then5.i.do.cond_crit_edge
  %next.1 = phi i32 [ %next.088, %if.end41.do.cond_crit_edge ], [ %21, %walk_page_test.exit.do.cond_crit_edge ], [ %21, %if.then5.i.do.cond_crit_edge ], [ %21, %if.end10.i.do.cond_crit_edge ], [ %next.089, %lor.lhs.false.do.cond_crit_edge ]
  %vma.2 = phi ptr [ %vma.191, %if.end41.do.cond_crit_edge ], [ %23, %walk_page_test.exit.do.cond_crit_edge ], [ %23, %if.then5.i.do.cond_crit_edge ], [ %23, %if.end10.i.do.cond_crit_edge ], [ %vma.193, %lor.lhs.false.do.cond_crit_edge ]
  %cmp45 = icmp ult i32 %next.1, %end
  br i1 %cmp45, label %do.cond.do.body_crit_edge, label %do.cond.cleanup_crit_edge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i, %if.end29.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ], [ %call40, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %walk) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__walk_page_range(i32 noundef %start, i32 noundef %end, ptr noundef %walk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vma1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %0 = ptrtoint ptr %vma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vma1, align 4
  %2 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %walk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %pre_vma = getelementptr inbounds %struct.mm_walk_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %pre_vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pre_vma, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %5(i32 noundef %start, i32 noundef %end, ptr noundef %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then.if.else_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %if.then.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %6 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %walk, align 4
  %pgd2.i = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 2
  %8 = ptrtoint ptr %pgd2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pgd2.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %mm.i = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1
  %10 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm.i, align 4
  %pgd4.i = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %pgd4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pgd4.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.else.if.end.i_crit_edge
  %.sink.i = phi ptr [ %13, %if.else.i ], [ %9, %if.else.if.end.i_crit_edge ]
  %shr.i.i = lshr i32 %start, 21
  %add.ptr.i.i = getelementptr [2 x i32], ptr %.sink.i, i32 %shr.i.i
  %sub6.i = add i32 %end, -1
  %p4d_entry.i = getelementptr inbounds %struct.mm_walk_ops, ptr %7, i32 0, i32 1
  %pud_entry.i = getelementptr inbounds %struct.mm_walk_ops, ptr %7, i32 0, i32 2
  %pmd_entry.i = getelementptr inbounds %struct.mm_walk_ops, ptr %7, i32 0, i32 3
  %pte_entry.i = getelementptr inbounds %struct.mm_walk_ops, ptr %7, i32 0, i32 4
  %no_vma.i.i.i = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 5
  %action.i.i.i = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i
  %pgd.1.i = phi ptr [ %add.ptr.i.i, %if.end.i ], [ %incdec.ptr.i, %do.cond.i.do.body.i_crit_edge ]
  %addr.addr.0.i = phi i32 [ %start, %if.end.i ], [ %and5.end.i, %do.cond.i.do.body.i_crit_edge ]
  %add.i = add i32 %addr.addr.0.i, 2097152
  %and5.i = and i32 %add.i, -2097152
  %sub.i = add i32 %and5.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub6.i)
  %cmp.i = icmp ult i32 %sub.i, %sub6.i
  %and5.end.i = select i1 %cmp.i, i32 %and5.i, i32 %end
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %tobool19.not.i = icmp eq ptr %15, null
  br i1 %tobool19.not.i, label %do.body.i.if.end26.i_crit_edge, label %if.then20.i

do.body.i.if.end26.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then20.i:                                      ; preds = %do.body.i
  %call22.i = tail call i32 %15(ptr noundef %pgd.1.i, i32 noundef %addr.addr.0.i, i32 noundef %and5.end.i, ptr noundef %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then20.i.if.end26.i_crit_edge, label %if.then20.i.walk_pgd_range.exit_crit_edge

if.then20.i.walk_pgd_range.exit_crit_edge:        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_pgd_range.exit

if.then20.i.if.end26.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i.if.end26.i_crit_edge, %do.body.i.if.end26.i_crit_edge
  %16 = ptrtoint ptr %p4d_entry.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p4d_entry.i, align 4
  %tobool27.not.i = icmp eq ptr %17, null
  br i1 %tobool27.not.i, label %lor.lhs.false.i, label %if.end26.i.if.then33.i_crit_edge

if.end26.i.if.then33.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33.i

lor.lhs.false.i:                                  ; preds = %if.end26.i
  %18 = ptrtoint ptr %pud_entry.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pud_entry.i, align 4
  %tobool28.not.i = icmp eq ptr %19, null
  br i1 %tobool28.not.i, label %lor.lhs.false29.i, label %lor.lhs.false.i.if.then33.i_crit_edge

lor.lhs.false.i.if.then33.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33.i

lor.lhs.false29.i:                                ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %pmd_entry.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmd_entry.i, align 4
  %tobool30.not.i = icmp eq ptr %21, null
  br i1 %tobool30.not.i, label %lor.lhs.false31.i, label %lor.lhs.false29.i.if.then33.i_crit_edge

lor.lhs.false29.i.if.then33.i_crit_edge:          ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33.i

lor.lhs.false31.i:                                ; preds = %lor.lhs.false29.i
  %22 = ptrtoint ptr %pte_entry.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pte_entry.i, align 4
  %tobool32.not.i = icmp eq ptr %23, null
  br i1 %tobool32.not.i, label %lor.lhs.false31.i.do.cond.i_crit_edge, label %lor.lhs.false31.i.if.then33.i_crit_edge

lor.lhs.false31.i.if.then33.i_crit_edge:          ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then33.i

lor.lhs.false31.i.do.cond.i_crit_edge:            ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.then33.i:                                      ; preds = %lor.lhs.false31.i.if.then33.i_crit_edge, %lor.lhs.false29.i.if.then33.i_crit_edge, %lor.lhs.false.i.if.then33.i_crit_edge, %if.end26.i.if.then33.i_crit_edge
  %24 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %walk, align 4
  %p4d_entry.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %p4d_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p4d_entry.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %27, null
  br i1 %tobool12.not.i.i, label %if.then33.i.if.end19.i.i_crit_edge, label %if.then13.i.i

if.then33.i.if.end19.i.i_crit_edge:               ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i.i

if.then13.i.i:                                    ; preds = %if.then33.i
  %call15.i.i = tail call i32 %27(ptr noundef %pgd.1.i, i32 noundef %addr.addr.0.i, i32 noundef %and5.end.i, ptr noundef %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.then13.i.i.if.end19.i.i_crit_edge, label %if.then13.i.i.walk_pgd_range.exit_crit_edge

if.then13.i.i.walk_pgd_range.exit_crit_edge:      ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_pgd_range.exit

if.then13.i.i.if.end19.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then13.i.i.if.end19.i.i_crit_edge, %if.then33.i.if.end19.i.i_crit_edge
  %pud_entry.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %pud_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pud_entry.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %29, null
  br i1 %tobool20.not.i.i, label %lor.lhs.false.i.i, label %if.end19.i.i.if.then24.i.i_crit_edge

if.end19.i.i.if.then24.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

lor.lhs.false.i.i:                                ; preds = %if.end19.i.i
  %pmd_entry.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %25, i32 0, i32 3
  %30 = ptrtoint ptr %pmd_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pmd_entry.i.i, align 4
  %tobool21.not.i.i = icmp eq ptr %31, null
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %lor.lhs.false.i.i.if.then24.i.i_crit_edge

lor.lhs.false.i.i.if.then24.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

lor.lhs.false22.i.i:                              ; preds = %lor.lhs.false.i.i
  %pte_entry.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %25, i32 0, i32 4
  %32 = ptrtoint ptr %pte_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pte_entry.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %33, null
  br i1 %tobool23.not.i.i, label %lor.lhs.false22.i.i.do.cond.i_crit_edge, label %lor.lhs.false22.i.i.if.then24.i.i_crit_edge

lor.lhs.false22.i.i.if.then24.i.i_crit_edge:      ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i.i

lor.lhs.false22.i.i.do.cond.i_crit_edge:          ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.then24.i.i:                                    ; preds = %lor.lhs.false22.i.i.if.then24.i.i_crit_edge, %lor.lhs.false.i.i.if.then24.i.i_crit_edge, %if.end19.i.i.if.then24.i.i_crit_edge
  %34 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %walk, align 4
  %pud_entry.i.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %35, i32 0, i32 2
  br label %again.i.i.i

again.i.i.i:                                      ; preds = %if.end22.i.i.i.again.i.i.i_crit_edge, %if.then24.i.i
  %36 = ptrtoint ptr %vma1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vma1, align 4
  %tobool5.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i, label %again.i.i.i.if.end14.i.i.i_crit_edge

again.i.i.i.if.end14.i.i.i_crit_edge:             ; preds = %again.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i.i.i

land.lhs.true.i.i.i:                              ; preds = %again.i.i.i
  %38 = ptrtoint ptr %no_vma.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %no_vma.i.i.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool6.not.i.i.i = icmp eq i8 %39, 0
  br i1 %tobool6.not.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.if.end14.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end14.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  %pte_hole.i.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %35, i32 0, i32 5
  %40 = ptrtoint ptr %pte_hole.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pte_hole.i.i.i, align 4
  %tobool7.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool7.not.i.i.i, label %if.then.i.i.i.do.cond.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.do.cond.i_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %call10.i.i.i = tail call i32 %41(i32 noundef %addr.addr.0.i, i32 noundef %and5.end.i, i32 noundef 0, ptr noundef %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end.i.i.i.do.cond.i_crit_edge, label %if.end.i.i.i.walk_pgd_range.exit_crit_edge

if.end.i.i.i.walk_pgd_range.exit_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_pgd_range.exit

if.end.i.i.i.do.cond.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.end14.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end14.i.i.i_crit_edge, %again.i.i.i.if.end14.i.i.i_crit_edge
  %42 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %action.i.i.i, align 4
  %43 = ptrtoint ptr %pud_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pud_entry.i.i.i, align 4
  %tobool15.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool15.not.i.i.i, label %if.end14.i.i.i.lor.lhs.false36.i.i.i_crit_edge, label %if.end19.i.i.i

if.end14.i.i.i.lor.lhs.false36.i.i.i_crit_edge:   ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false36.i.i.i

if.end19.i.i.i:                                   ; preds = %if.end14.i.i.i
  %call18.i.i.i = tail call i32 %44(ptr noundef %pgd.1.i, i32 noundef %addr.addr.0.i, i32 noundef %and5.end.i, ptr noundef %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %call18.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %if.end22.i.i.i, label %if.end19.i.i.i.walk_pgd_range.exit_crit_edge

if.end19.i.i.i.walk_pgd_range.exit_crit_edge:     ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_pgd_range.exit

if.end22.i.i.i:                                   ; preds = %if.end19.i.i.i
  %45 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i.i.i = load i32, ptr %action.i.i.i, align 4
  %46 = zext i32 %.pr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr.i.i.i, label %if.end22.i.i.i.lor.lhs.false36.i.i.i_crit_edge [
    i32 2, label %if.end22.i.i.i.again.i.i.i_crit_edge
    i32 1, label %if.end22.i.i.i.do.cond.i_crit_edge
  ]

if.end22.i.i.i.do.cond.i_crit_edge:               ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.end22.i.i.i.again.i.i.i_crit_edge:             ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %again.i.i.i

if.end22.i.i.i.lor.lhs.false36.i.i.i_crit_edge:   ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false36.i.i.i

lor.lhs.false36.i.i.i:                            ; preds = %if.end22.i.i.i.lor.lhs.false36.i.i.i_crit_edge, %if.end14.i.i.i.lor.lhs.false36.i.i.i_crit_edge
  %pmd_entry.i.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %35, i32 0, i32 3
  %47 = ptrtoint ptr %pmd_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pmd_entry.i.i.i, align 4
  %tobool37.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool37.not.i.i.i, label %lor.lhs.false38.i.i.i, label %lor.lhs.false36.i.i.i.if.end41.i.i.i_crit_edge

lor.lhs.false36.i.i.i.if.end41.i.i.i_crit_edge:   ; preds = %lor.lhs.false36.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i.i.i

lor.lhs.false38.i.i.i:                            ; preds = %lor.lhs.false36.i.i.i
  %pte_entry.i.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %35, i32 0, i32 4
  %49 = ptrtoint ptr %pte_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pte_entry.i.i.i, align 4
  %tobool39.not.i.i.i = icmp eq ptr %50, null
  br i1 %tobool39.not.i.i.i, label %lor.lhs.false38.i.i.i.do.cond.i_crit_edge, label %lor.lhs.false38.i.i.i.if.end41.i.i.i_crit_edge

lor.lhs.false38.i.i.i.if.end41.i.i.i_crit_edge:   ; preds = %lor.lhs.false38.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i.i.i

lor.lhs.false38.i.i.i.do.cond.i_crit_edge:        ; preds = %lor.lhs.false38.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.end41.i.i.i:                                   ; preds = %lor.lhs.false38.i.i.i.if.end41.i.i.i_crit_edge, %lor.lhs.false36.i.i.i.if.end41.i.i.i_crit_edge
  %51 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %walk, align 4
  %pmd_entry.i.i.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %52, i32 0, i32 3
  br label %again.i.i.i.i

again.i.i.i.i:                                    ; preds = %if.end20.i.i.i.i.again.i.i.i.i_crit_edge, %if.end41.i.i.i
  %53 = ptrtoint ptr %pgd.1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pgd.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i.i.i, label %again.i.i.i.i.if.then.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

again.i.i.i.i.if.then.i.i.i.i_crit_edge:          ; preds = %again.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %again.i.i.i.i
  %55 = ptrtoint ptr %vma1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vma1, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %56, null
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end12.i.thread.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i.i
  %57 = ptrtoint ptr %no_vma.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %no_vma.i.i.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool4.not.i.i.i.i = icmp eq i8 %58, 0
  br i1 %tobool4.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then.i.i.i.i_crit_edge, label %if.end12.i.i.i.i

land.lhs.true.i.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.if.then.i.i.i.i_crit_edge, %again.i.i.i.i.if.then.i.i.i.i_crit_edge
  %pte_hole.i.i.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %52, i32 0, i32 5
  %59 = ptrtoint ptr %pte_hole.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pte_hole.i.i.i.i, align 4
  %tobool5.not.i.i.i.i = icmp eq ptr %60, null
  br i1 %tobool5.not.i.i.i.i, label %if.then.i.i.i.i.do.cond.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.i.do.cond.i_crit_edge:              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  %call8.i.i.i.i = tail call i32 %60(i32 noundef %addr.addr.0.i, i32 noundef %and5.end.i, i32 noundef 0, ptr noundef %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i.i)
  %tobool9.not.i.i.i.i = icmp eq i32 %call8.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i.i, label %if.end.i.i.i.i.do.cond.i_crit_edge, label %if.end.i.i.i.i.walk_pgd_range.exit_crit_edge

if.end.i.i.i.i.walk_pgd_range.exit_crit_edge:     ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_pgd_range.exit

if.end.i.i.i.i.do.cond.i_crit_edge:               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.end12.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %61 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %action.i.i.i, align 4
  %62 = ptrtoint ptr %pmd_entry.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pmd_entry.i.i.i.i, align 4
  %tobool13.not.i.i.i.i = icmp eq ptr %63, null
  br i1 %tobool13.not.i.i.i.i, label %if.end12.i.i.i.i.land.lhs.true26.i.i.i.i_crit_edge, label %if.end12.i.i.i.i.if.end17.i.i.i.i_crit_edge

if.end12.i.i.i.i.if.end17.i.i.i.i_crit_edge:      ; preds = %if.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.i.i.i

if.end12.i.i.i.i.land.lhs.true26.i.i.i.i_crit_edge: ; preds = %if.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26.i.i.i.i

if.end12.i.thread.i.i.i:                          ; preds = %lor.lhs.false.i.i.i.i
  %64 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %action.i.i.i, align 4
  %65 = ptrtoint ptr %pmd_entry.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pmd_entry.i.i.i.i, align 4
  %tobool13.not.i97.i.i.i = icmp eq ptr %66, null
  br i1 %tobool13.not.i97.i.i.i, label %if.end12.i.thread.i.i.i.lor.lhs.false33.i.i.i.i_crit_edge, label %if.end12.i.thread.i.i.i.if.end17.i.i.i.i_crit_edge

if.end12.i.thread.i.i.i.if.end17.i.i.i.i_crit_edge: ; preds = %if.end12.i.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.i.i.i

if.end12.i.thread.i.i.i.lor.lhs.false33.i.i.i.i_crit_edge: ; preds = %if.end12.i.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false33.i.i.i.i

if.end17.i.i.i.i:                                 ; preds = %if.end12.i.thread.i.i.i.if.end17.i.i.i.i_crit_edge, %if.end12.i.i.i.i.if.end17.i.i.i.i_crit_edge
  %67 = phi ptr [ %66, %if.end12.i.thread.i.i.i.if.end17.i.i.i.i_crit_edge ], [ %63, %if.end12.i.i.i.i.if.end17.i.i.i.i_crit_edge ]
  %call16.i.i.i.i = tail call i32 %67(ptr noundef %pgd.1.i, i32 noundef %addr.addr.0.i, i32 noundef %and5.end.i, ptr noundef %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i.i.i)
  %tobool18.not.i.i.i.i = icmp eq i32 %call16.i.i.i.i, 0
  br i1 %tobool18.not.i.i.i.i, label %if.end20.i.i.i.i, label %if.end17.i.i.i.i.walk_pgd_range.exit_crit_edge

if.end17.i.i.i.i.walk_pgd_range.exit_crit_edge:   ; preds = %if.end17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_pgd_range.exit

if.end20.i.i.i.i:                                 ; preds = %if.end17.i.i.i.i
  %68 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr.i.i.i.i = load i32, ptr %action.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq i32 %.pr.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.end20.i.i.i.i.again.i.i.i.i_crit_edge, label %if.end23.i.i.i.i

if.end20.i.i.i.i.again.i.i.i.i_crit_edge:         ; preds = %if.end20.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %again.i.i.i.i

if.end23.i.i.i.i:                                 ; preds = %if.end20.i.i.i.i
  %69 = ptrtoint ptr %vma1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vma1, align 4
  %tobool25.not.i.i.i.i = icmp eq ptr %70, null
  br i1 %tobool25.not.i.i.i.i, label %if.end23.i.i.i.i.land.lhs.true26.i.i.i.i_crit_edge, label %lor.lhs.false30.i.i.i.i

if.end23.i.i.i.i.land.lhs.true26.i.i.i.i_crit_edge: ; preds = %if.end23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true26.i.i.i.i

land.lhs.true26.i.i.i.i:                          ; preds = %if.end23.i.i.i.i.land.lhs.true26.i.i.i.i_crit_edge, %if.end12.i.i.i.i.land.lhs.true26.i.i.i.i_crit_edge
  %71 = phi i32 [ %.pr.i.i.i.i, %if.end23.i.i.i.i.land.lhs.true26.i.i.i.i_crit_edge ], [ 0, %if.end12.i.i.i.i.land.lhs.true26.i.i.i.i_crit_edge ]
  %72 = ptrtoint ptr %pgd.1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pgd.1.i, align 4
  %and.i.i.i.i = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool27.not.i.i.i.i = icmp ne i32 %and.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool29.not.i.i.i.i = icmp eq i32 %73, 0
  %or.cond.i.i.i.i = or i1 %tobool29.not.i.i.i.i, %tobool27.not.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp32.i.i.i.i = icmp eq i32 %71, 1
  %or.cond90.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 true, i1 %cmp32.i.i.i.i
  br i1 %or.cond90.i.i.i.i, label %land.lhs.true26.i.i.i.i.do.cond.i_crit_edge, label %land.lhs.true26.i.i.i.i.lor.lhs.false33.i.i.i.i_crit_edge

land.lhs.true26.i.i.i.i.lor.lhs.false33.i.i.i.i_crit_edge: ; preds = %land.lhs.true26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false33.i.i.i.i

land.lhs.true26.i.i.i.i.do.cond.i_crit_edge:      ; preds = %land.lhs.true26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

lor.lhs.false30.i.i.i.i:                          ; preds = %if.end23.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i.i.i)
  %cmp32.old.i.i.i.i = icmp eq i32 %.pr.i.i.i.i, 1
  br i1 %cmp32.old.i.i.i.i, label %lor.lhs.false30.i.i.i.i.do.cond.i_crit_edge, label %lor.lhs.false30.i.i.i.i.lor.lhs.false33.i.i.i.i_crit_edge

lor.lhs.false30.i.i.i.i.lor.lhs.false33.i.i.i.i_crit_edge: ; preds = %lor.lhs.false30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false33.i.i.i.i

lor.lhs.false30.i.i.i.i.do.cond.i_crit_edge:      ; preds = %lor.lhs.false30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

lor.lhs.false33.i.i.i.i:                          ; preds = %lor.lhs.false30.i.i.i.i.lor.lhs.false33.i.i.i.i_crit_edge, %land.lhs.true26.i.i.i.i.lor.lhs.false33.i.i.i.i_crit_edge, %if.end12.i.thread.i.i.i.lor.lhs.false33.i.i.i.i_crit_edge
  %pte_entry.i.i.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %52, i32 0, i32 4
  %74 = ptrtoint ptr %pte_entry.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pte_entry.i.i.i.i, align 4
  %tobool34.not.i.i.i.i = icmp eq ptr %75, null
  br i1 %tobool34.not.i.i.i.i, label %lor.lhs.false33.i.i.i.i.do.cond.i_crit_edge, label %if.end45.i.i.i.i

lor.lhs.false33.i.i.i.i.do.cond.i_crit_edge:      ; preds = %lor.lhs.false33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.end45.i.i.i.i:                                 ; preds = %lor.lhs.false33.i.i.i.i
  %76 = ptrtoint ptr %no_vma.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %no_vma.i.i.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i.i.i.i.i = icmp eq i8 %77, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %78 = load ptr, ptr @mem_map, align 4
  %79 = ptrtoint ptr %pgd.1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pgd.1.i, align 4
  %shr.i38.i.i.i.i.i = lshr i32 %80, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %81 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i39.i.i.i.i.i = sub i32 %shr.i38.i.i.i.i.i, %81
  br i1 %tobool.not.i.i.i.i.i, label %if.else.i.i.i.i.i, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end45.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr %struct.page, ptr %78, i32 %sub.i39.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %82 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i.i.i.i = or i32 %82, 512
  %83 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i.i.i.i.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i.i = add i32 %86, 1
  store volatile i32 %add.i.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %87 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i1.i.i.i.i.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i1.i.i.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i.i.i.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 213
  %91 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i.i.i.i = add i32 %92, 1
  store i32 %inc.i.i.i.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %call.i.i.i.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %or.i.i.i.i.i.i) #5
  %shr.i.i.i.i.i.i = lshr i32 %addr.addr.0.i, 12
  %and.i.i.i.i.i.i = and i32 %shr.i.i.i.i.i.i, 511
  %add.ptr2.i.i.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i.i.i, i32 %and.i.i.i.i.i.i
  %93 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %walk, align 4
  %pte_entry.i.i.i.i.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %94, i32 0, i32 4
  %sub.i.i.i.i.i.i = add i32 %and5.end.i, -4096
  br label %for.cond.i.i.i.i.i.i

for.cond.i.i.i.i.i.i:                             ; preds = %for.cond.i.i.i.i.i.i.for.cond.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.i
  %addr.addr.0.i.i.i.i.i.i = phi i32 [ %addr.addr.0.i, %if.then.i.i.i.i.i ], [ %add.i.i.i.i.i.i, %for.cond.i.i.i.i.i.i.for.cond.i.i.i.i.i.i_crit_edge ]
  %pte.addr.0.i.i.i.i.i.i = phi ptr [ %add.ptr2.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %incdec.ptr.i.i.i.i.i.i, %for.cond.i.i.i.i.i.i.for.cond.i.i.i.i.i.i_crit_edge ]
  %95 = ptrtoint ptr %pte_entry.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pte_entry.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %addr.addr.0.i.i.i.i.i.i, 4096
  %call.i.i.i.i.i.i = tail call i32 %96(ptr noundef %pte.addr.0.i.i.i.i.i.i, i32 noundef %addr.addr.0.i.i.i.i.i.i, i32 noundef %add.i.i.i.i.i.i, ptr noundef %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.addr.0.i.i.i.i.i.i, i32 %sub.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp ult i32 %addr.addr.0.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = and i1 %cmp.not.i.i.i.i.i.i, %tobool.not.i.i.i.i.i.i
  %incdec.ptr.i.i.i.i.i.i = getelementptr i32, ptr %pte.addr.0.i.i.i.i.i.i, i32 1
  br i1 %or.cond.i.i.i.i.i.i, label %for.cond.i.i.i.i.i.i.for.cond.i.i.i.i.i.i_crit_edge, label %walk_pte_range_inner.exit.i.i.i.i.i

for.cond.i.i.i.i.i.i.for.cond.i.i.i.i.i.i_crit_edge: ; preds = %for.cond.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.i.i.i.i

walk_pte_range_inner.exit.i.i.i.i.i:              ; preds = %for.cond.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr2.i.i.i.i.i) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  %97 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i1.i.i.i.i.i.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i1.i.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task.i.i.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 213
  %101 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i.i.i = add i32 %102, -1
  store i32 %dec.i.i.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  br label %walk_pte_range.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end45.i.i.i.i
  %ptl.i.i.i.i.i.i.i = getelementptr %struct.page, ptr %78, i32 %sub.i39.i.i.i.i.i, i32 1, i32 0, i32 3
  %103 = ptrtoint ptr %ptl.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ptl.i.i.i.i.i.i.i, align 4
  %add.ptr11.i.i.i.i.i = getelementptr %struct.page, ptr %78, i32 %sub.i39.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %105 = load i32, ptr @pgprot_kernel, align 4
  %or.i40.i.i.i.i.i = or i32 %105, 512
  %106 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i.i.i41.i.i.i.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i41.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i42.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i.i.i42.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i.i.i42.i.i.i.i.i, align 4
  %add.i.i.i43.i.i.i.i.i = add i32 %109, 1
  store volatile i32 %add.i.i.i43.i.i.i.i.i, ptr %preempt_count.i.i.i.i42.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %110 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i1.i.i44.i.i.i.i.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i1.i.i44.i.i.i.i.i to ptr
  %task.i.i.i.i45.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %task.i.i.i.i45.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task.i.i.i.i45.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i46.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 213
  %114 = ptrtoint ptr %pagefault_disabled.i.i.i.i46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pagefault_disabled.i.i.i.i46.i.i.i.i.i, align 8
  %inc.i.i.i.i47.i.i.i.i.i = add i32 %115, 1
  store i32 %inc.i.i.i.i47.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i46.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %call.i.i48.i.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr11.i.i.i.i.i, i32 noundef %or.i40.i.i.i.i.i) #5
  %shr.i49.i.i.i.i.i = lshr i32 %addr.addr.0.i, 12
  %and.i50.i.i.i.i.i = and i32 %shr.i49.i.i.i.i.i, 511
  %add.ptr14.i.i.i.i.i = getelementptr i32, ptr %call.i.i48.i.i.i.i.i, i32 %and.i50.i.i.i.i.i
  tail call void @_raw_spin_lock(ptr noundef %104) #5
  %116 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %walk, align 4
  %pte_entry.i51.i.i.i.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %117, i32 0, i32 4
  %sub.i52.i.i.i.i.i = add i32 %and5.end.i, -4096
  br label %for.cond.i61.i.i.i.i.i

for.cond.i61.i.i.i.i.i:                           ; preds = %for.cond.i61.i.i.i.i.i.for.cond.i61.i.i.i.i.i_crit_edge, %if.else.i.i.i.i.i
  %addr.addr.0.i53.i.i.i.i.i = phi i32 [ %addr.addr.0.i, %if.else.i.i.i.i.i ], [ %add.i55.i.i.i.i.i, %for.cond.i61.i.i.i.i.i.for.cond.i61.i.i.i.i.i_crit_edge ]
  %pte.addr.0.i54.i.i.i.i.i = phi ptr [ %add.ptr14.i.i.i.i.i, %if.else.i.i.i.i.i ], [ %incdec.ptr.i60.i.i.i.i.i, %for.cond.i61.i.i.i.i.i.for.cond.i61.i.i.i.i.i_crit_edge ]
  %118 = ptrtoint ptr %pte_entry.i51.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pte_entry.i51.i.i.i.i.i, align 4
  %add.i55.i.i.i.i.i = add i32 %addr.addr.0.i53.i.i.i.i.i, 4096
  %call.i56.i.i.i.i.i = tail call i32 %119(ptr noundef %pte.addr.0.i54.i.i.i.i.i, i32 noundef %addr.addr.0.i53.i.i.i.i.i, i32 noundef %add.i55.i.i.i.i.i, ptr noundef %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i.i.i.i.i)
  %tobool.not.i57.i.i.i.i.i = icmp eq i32 %call.i56.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.addr.0.i53.i.i.i.i.i, i32 %sub.i52.i.i.i.i.i)
  %cmp.not.i58.i.i.i.i.i = icmp ult i32 %addr.addr.0.i53.i.i.i.i.i, %sub.i52.i.i.i.i.i
  %or.cond.i59.i.i.i.i.i = and i1 %cmp.not.i58.i.i.i.i.i, %tobool.not.i57.i.i.i.i.i
  %incdec.ptr.i60.i.i.i.i.i = getelementptr i32, ptr %pte.addr.0.i54.i.i.i.i.i, i32 1
  br i1 %or.cond.i59.i.i.i.i.i, label %for.cond.i61.i.i.i.i.i.for.cond.i61.i.i.i.i.i_crit_edge, label %walk_pte_range_inner.exit62.i.i.i.i.i

for.cond.i61.i.i.i.i.i.for.cond.i61.i.i.i.i.i_crit_edge: ; preds = %for.cond.i61.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i61.i.i.i.i.i

walk_pte_range_inner.exit62.i.i.i.i.i:            ; preds = %for.cond.i61.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %104) #5
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr14.i.i.i.i.i) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  %120 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i1.i63.i.i.i.i.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i1.i63.i.i.i.i.i to ptr
  %task.i.i.i64.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task.i.i.i64.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task.i.i.i64.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i65.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 213
  %124 = ptrtoint ptr %pagefault_disabled.i.i.i65.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pagefault_disabled.i.i.i65.i.i.i.i.i, align 8
  %dec.i.i.i66.i.i.i.i.i = add i32 %125, -1
  store i32 %dec.i.i.i66.i.i.i.i.i, ptr %pagefault_disabled.i.i.i65.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  br label %walk_pte_range.exit.i.i.i.i

walk_pte_range.exit.i.i.i.i:                      ; preds = %walk_pte_range_inner.exit62.i.i.i.i.i, %walk_pte_range_inner.exit.i.i.i.i.i
  %err.0.i.i.i.i.i = phi i32 [ %call.i.i.i.i.i.i, %walk_pte_range_inner.exit.i.i.i.i.i ], [ %call.i56.i.i.i.i.i, %walk_pte_range_inner.exit62.i.i.i.i.i ]
  %126 = tail call i32 @llvm.read_register.i32(metadata !4) #5
  %and.i.i.i.i67.i.i.i.i.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i67.i.i.i.i.i to ptr
  %preempt_count.i.i.i68.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %preempt_count.i.i.i68.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %preempt_count.i.i.i68.i.i.i.i.i, align 4
  %sub.i.i69.i.i.i.i.i = add i32 %129, -1
  store volatile i32 %sub.i.i69.i.i.i.i.i, ptr %preempt_count.i.i.i68.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i.i.i.i)
  %tobool47.not.i.i.i.i = icmp eq i32 %err.0.i.i.i.i.i, 0
  br i1 %tobool47.not.i.i.i.i, label %walk_pte_range.exit.i.i.i.i.do.cond.i_crit_edge, label %walk_pte_range.exit.i.i.i.i.walk_pgd_range.exit_crit_edge

walk_pte_range.exit.i.i.i.i.walk_pgd_range.exit_crit_edge: ; preds = %walk_pte_range.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_pgd_range.exit

walk_pte_range.exit.i.i.i.i.do.cond.i_crit_edge:  ; preds = %walk_pte_range.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

do.cond.i:                                        ; preds = %walk_pte_range.exit.i.i.i.i.do.cond.i_crit_edge, %lor.lhs.false33.i.i.i.i.do.cond.i_crit_edge, %lor.lhs.false30.i.i.i.i.do.cond.i_crit_edge, %land.lhs.true26.i.i.i.i.do.cond.i_crit_edge, %if.end.i.i.i.i.do.cond.i_crit_edge, %if.then.i.i.i.i.do.cond.i_crit_edge, %lor.lhs.false38.i.i.i.do.cond.i_crit_edge, %if.end22.i.i.i.do.cond.i_crit_edge, %if.end.i.i.i.do.cond.i_crit_edge, %if.then.i.i.i.do.cond.i_crit_edge, %lor.lhs.false22.i.i.do.cond.i_crit_edge, %lor.lhs.false31.i.do.cond.i_crit_edge
  %incdec.ptr.i = getelementptr [2 x i32], ptr %pgd.1.i, i32 1
  %cmp39.not.i = icmp eq i32 %and5.end.i, %end
  br i1 %cmp39.not.i, label %do.cond.i.walk_pgd_range.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.cond.i.walk_pgd_range.exit_crit_edge:          ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_pgd_range.exit

walk_pgd_range.exit:                              ; preds = %do.cond.i.walk_pgd_range.exit_crit_edge, %walk_pte_range.exit.i.i.i.i.walk_pgd_range.exit_crit_edge, %if.end17.i.i.i.i.walk_pgd_range.exit_crit_edge, %if.end.i.i.i.i.walk_pgd_range.exit_crit_edge, %if.end19.i.i.i.walk_pgd_range.exit_crit_edge, %if.end.i.i.i.walk_pgd_range.exit_crit_edge, %if.then13.i.i.walk_pgd_range.exit_crit_edge, %if.then20.i.walk_pgd_range.exit_crit_edge
  %err.5.i = phi i32 [ %call16.i.i.i.i, %if.end17.i.i.i.i.walk_pgd_range.exit_crit_edge ], [ %call18.i.i.i, %if.end19.i.i.i.walk_pgd_range.exit_crit_edge ], [ 0, %do.cond.i.walk_pgd_range.exit_crit_edge ], [ %call22.i, %if.then20.i.walk_pgd_range.exit_crit_edge ], [ %err.0.i.i.i.i.i, %walk_pte_range.exit.i.i.i.i.walk_pgd_range.exit_crit_edge ], [ %call8.i.i.i.i, %if.end.i.i.i.i.walk_pgd_range.exit_crit_edge ], [ %call10.i.i.i, %if.end.i.i.i.walk_pgd_range.exit_crit_edge ], [ %call15.i.i, %if.then13.i.i.walk_pgd_range.exit_crit_edge ]
  br i1 %tobool.not, label %walk_pgd_range.exit.cleanup_crit_edge, label %land.lhs.true19

walk_pgd_range.exit.cleanup_crit_edge:            ; preds = %walk_pgd_range.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true19:                                  ; preds = %walk_pgd_range.exit
  %post_vma = getelementptr inbounds %struct.mm_walk_ops, ptr %3, i32 0, i32 9
  %130 = ptrtoint ptr %post_vma to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %post_vma, align 4
  %tobool20.not = icmp eq ptr %131, null
  br i1 %tobool20.not, label %land.lhs.true19.cleanup_crit_edge, label %if.then21

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %131(ptr noundef %walk) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %land.lhs.true19.cleanup_crit_edge, %walk_pgd_range.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %err.5.i, %if.then21 ], [ %err.5.i, %land.lhs.true19.cleanup_crit_edge ], [ %err.5.i, %walk_pgd_range.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @walk_page_range_novma(ptr noundef %mm, i32 noundef %start, i32 noundef %end, ptr noundef %ops, ptr noundef %pgd, ptr noundef %private) local_unnamed_addr #0 align 64 {
entry:
  %walk = alloca %struct.mm_walk, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %walk) #5
  %0 = getelementptr inbounds i8, ptr %walk, i32 20
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %walk, align 4
  %mm2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1
  %3 = ptrtoint ptr %mm2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mm, ptr %mm2, align 4
  %pgd3 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 2
  %4 = ptrtoint ptr %pgd3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pgd, ptr %pgd3, align 4
  %vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %5 = ptrtoint ptr %vma to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vma, align 4
  %action = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 4
  %6 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %action, align 4
  %no_vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 5
  %7 = ptrtoint ptr %no_vma to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %no_vma, align 4
  %private4 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %8 = ptrtoint ptr %private4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %private, ptr %private4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp.not = icmp uge i32 %start, %end
  %tobool.not = icmp eq ptr %mm, null
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !14

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 155, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %mmap_lock25.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i, i32 noundef 4) #5
  %10 = ptrtoint ptr %mmap_lock25.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %mmap_lock25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.i, label %if.then36.i, label %mmap_assert_locked.exit, !prof !14

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_mm(ptr noundef nonnull %mm) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

mmap_assert_locked.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call = call fastcc i32 @__walk_page_range(i32 noundef %start, i32 noundef %end, ptr noundef nonnull %walk)
  br label %cleanup

cleanup:                                          ; preds = %mmap_assert_locked.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %mmap_assert_locked.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %walk) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @walk_page_vma(ptr noundef %vma, ptr noundef %ops, ptr noundef %private) local_unnamed_addr #0 align 64 {
entry:
  %walk = alloca %struct.mm_walk, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %walk) #5
  %0 = getelementptr inbounds i8, ptr %walk, i32 20
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %walk, align 4
  %mm = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %3 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm_mm, align 4
  %5 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mm, align 4
  %pgd = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 2
  %6 = ptrtoint ptr %pgd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pgd, align 4
  %vma2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %7 = ptrtoint ptr %vma2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vma, ptr %vma2, align 4
  %action = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 4
  %8 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %action, align 4
  %no_vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 5
  %9 = ptrtoint ptr %no_vma to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %no_vma, align 4
  %private3 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %10 = ptrtoint ptr %private3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %private, ptr %private3, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !14

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 155, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %mmap_lock25.i = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 15
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_lock25.i, i32 noundef 4) #5
  %12 = ptrtoint ptr %mmap_lock25.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %mmap_lock25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, 0
  br i1 %cmp.i.not.i, label %if.then36.i, label %mmap_assert_locked.exit, !prof !14

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_mm(ptr noundef nonnull %4) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mmap_lock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 156, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

mmap_assert_locked.exit:                          ; preds = %if.end.i
  %14 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %16 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_end, align 4
  %18 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %walk, align 4
  %test_walk.i = getelementptr inbounds %struct.mm_walk_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %test_walk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %test_walk.i, align 4
  %tobool.not.i22 = icmp eq ptr %21, null
  br i1 %tobool.not.i22, label %if.end.i23, label %if.then.i

if.then.i:                                        ; preds = %mmap_assert_locked.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 %21(i32 noundef %15, i32 noundef %17, ptr noundef nonnull %walk) #5
  br label %walk_page_test.exit

if.end.i23:                                       ; preds = %mmap_assert_locked.exit
  %22 = ptrtoint ptr %vma2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vma2, align 4
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i23.if.end10_crit_edge, label %if.then5.i

if.end.i23.if.end10_crit_edge:                    ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then5.i:                                       ; preds = %if.end.i23
  %pte_hole.i = getelementptr inbounds %struct.mm_walk_ops, ptr %19, i32 0, i32 5
  %26 = ptrtoint ptr %pte_hole.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pte_hole.i, align 4
  %tobool6.not.i = icmp eq ptr %27, null
  br i1 %tobool6.not.i, label %if.then5.i.cleanup_crit_edge, label %if.end10.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i:                                       ; preds = %if.then5.i
  %call9.i = call i32 %27(i32 noundef %15, i32 noundef %17, i32 noundef -1, ptr noundef nonnull %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool11.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.cleanup_crit_edge, label %if.end10.i.walk_page_test.exit_crit_edge

if.end10.i.walk_page_test.exit_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_page_test.exit

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

walk_page_test.exit:                              ; preds = %if.end10.i.walk_page_test.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call9.i, %if.end10.i.walk_page_test.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp, label %walk_page_test.exit.cleanup_crit_edge, label %if.end7

walk_page_test.exit.cleanup_crit_edge:            ; preds = %walk_page_test.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %walk_page_test.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp8 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %if.end.i23.if.end10_crit_edge
  %28 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vma, align 4
  %30 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vm_end, align 4
  %call13 = call fastcc i32 @__walk_page_range(i32 noundef %29, i32 noundef %31, ptr noundef nonnull %walk)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %walk_page_test.exit.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %walk_page_test.exit.cleanup_crit_edge ], [ %retval.0.i, %if.end7.cleanup_crit_edge ], [ 0, %if.then5.i.cleanup_crit_edge ], [ 0, %if.end10.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %walk) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @walk_page_mapping(ptr noundef %mapping, i32 noundef %first_index, i32 noundef %nr, ptr noundef %ops, ptr noundef %private) local_unnamed_addr #0 align 64 {
entry:
  %walk = alloca %struct.mm_walk, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %walk) #5
  %0 = getelementptr inbounds i8, ptr %walk, i32 20
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %walk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %walk, align 4
  %mm = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1
  %vma = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %private2 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %3 = call ptr @memset(ptr %mm, i32 0, i32 17)
  %4 = ptrtoint ptr %private2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %private, ptr %private2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 6, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !14

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 576, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %i_mmap = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 5
  %add = add i32 %nr, %first_index
  %sub = add i32 %add, -1
  %call27 = tail call ptr @vma_interval_tree_iter_first(ptr noundef %i_mmap, i32 noundef %first_index, i32 noundef %sub) #5
  %tobool28.not107 = icmp eq ptr %call27, null
  br i1 %tobool28.not107, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %vma3.0108 = phi ptr [ %call65, %for.inc.for.body_crit_edge ], [ %call27, %if.end.for.body_crit_edge ]
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma3.0108, i32 0, i32 13
  %6 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma3.0108, i32 0, i32 1
  %8 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end.i, align 4
  %10 = ptrtoint ptr %vma3.0108 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vma3.0108, align 4
  %sub.i = sub i32 %9, %11
  %shr.i = lshr i32 %sub.i, 12
  %add30 = add i32 %shr.i, %7
  %12 = call i32 @llvm.umin.i32(i32 %add, i32 %add30)
  %13 = call i32 @llvm.usub.sat.i32(i32 %first_index, i32 %7)
  %shl = shl i32 %13, 12
  %add41 = add i32 %shl, %11
  %sub42 = sub i32 %12, %7
  %shl43 = shl i32 %sub42, 12
  %add45 = add i32 %shl43, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add41, i32 %add45)
  %cmp46.not = icmp ult i32 %add41, %add45
  br i1 %cmp46.not, label %if.end48, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end48:                                         ; preds = %for.body
  %14 = ptrtoint ptr %vma to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vma3.0108, ptr %vma, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma3.0108, i32 0, i32 6
  %15 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vm_mm, align 4
  %17 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %mm, align 4
  %18 = ptrtoint ptr %vma3.0108 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vma3.0108, align 4
  %20 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_end.i, align 4
  %22 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %walk, align 4
  %test_walk.i = getelementptr inbounds %struct.mm_walk_ops, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %test_walk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %test_walk.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %call.i98 = call i32 %25(i32 noundef %19, i32 noundef %21, ptr noundef nonnull %walk) #5
  br label %walk_page_test.exit

if.end.i:                                         ; preds = %if.end48
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma3.0108, i32 0, i32 8
  %26 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end58_crit_edge, label %if.then5.i

if.end.i.if.end58_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then5.i:                                       ; preds = %if.end.i
  %pte_hole.i = getelementptr inbounds %struct.mm_walk_ops, ptr %23, i32 0, i32 5
  %28 = ptrtoint ptr %pte_hole.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pte_hole.i, align 4
  %tobool6.not.i = icmp eq ptr %29, null
  br i1 %tobool6.not.i, label %if.then5.i.for.end_crit_edge, label %if.end10.i

if.then5.i.for.end_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end10.i:                                       ; preds = %if.then5.i
  %call9.i = call i32 %29(i32 noundef %19, i32 noundef %21, i32 noundef -1, ptr noundef nonnull %walk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool11.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.for.end_crit_edge, label %if.end10.i.walk_page_test.exit_crit_edge

if.end10.i.walk_page_test.exit_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %walk_page_test.exit

if.end10.i.for.end_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

walk_page_test.exit:                              ; preds = %if.end10.i.walk_page_test.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i98, %if.then.i ], [ %call9.i, %if.end10.i.walk_page_test.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp53 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp53, label %walk_page_test.exit.for.end_crit_edge, label %if.else

walk_page_test.exit.for.end_crit_edge:            ; preds = %walk_page_test.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.else:                                          ; preds = %walk_page_test.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp55 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp55, label %if.else.for.end_crit_edge, label %if.else.if.end58_crit_edge

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end58:                                         ; preds = %if.else.if.end58_crit_edge, %if.end.i.if.end58_crit_edge
  %call59 = call fastcc i32 @__walk_page_range(i32 noundef %add41, i32 noundef %add45, ptr noundef nonnull %walk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end58.for.inc_crit_edge, label %if.end58.for.end_crit_edge

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end58.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call65 = call ptr @vma_interval_tree_iter_next(ptr noundef nonnull %vma3.0108, i32 noundef %first_index, i32 noundef %sub) #5
  %tobool28.not = icmp eq ptr %call65, null
  br i1 %tobool28.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end58.for.end_crit_edge, %if.else.for.end_crit_edge, %walk_page_test.exit.for.end_crit_edge, %if.end10.i.for.end_crit_edge, %if.then5.i.for.end_crit_edge, %if.end.for.end_crit_edge
  %err.2 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 0, %if.end10.i.for.end_crit_edge ], [ 0, %if.then5.i.for.end_crit_edge ], [ 0, %walk_page_test.exit.for.end_crit_edge ], [ %call59, %if.end58.for.end_crit_edge ], [ %retval.0.i, %if.else.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %walk) #5
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/pagewalk.c", i32 576, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/mmap_lock.h", i32 155, i32 2}
!4 = !{!"sp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2151240324, i64 2151240814, i64 2151240361, i64 2151240417, i64 2151240451, i64 2151240475, i64 2151240516, i64 2151240537, i64 2151240565, i64 2151240599}
!16 = !{i8 0, i8 2}
!17 = !{i64 2153653254}
!18 = !{i64 2152746341}
!19 = !{i64 2152746548}
!20 = !{i64 2153656025}
