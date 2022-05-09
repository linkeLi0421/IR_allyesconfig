; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/doorbell.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/doorbell.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5_ib_ucontext = type { %struct.ib_ucontext, %struct.list_head, %struct.mutex, %struct.mlx5_bfreg_info, i8, i32, i64, i16, %struct.atomic_t }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_bfreg_info = type { ptr, i32, ptr, %struct.mutex, i32, i8, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_ib_user_db_page = type { %struct.list_head, ptr, i32, i32, ptr }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mlx5_db = type { ptr, %union.anon.188, i32, i32 }
%union.anon.188 = type { ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_db_map_user(ptr noundef %context, i32 noundef %virt, ptr nocapture noundef writeonly %db) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %db_page_mutex = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %context, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %db_page_mutex, i32 noundef 0) #5
  %db_page_list = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %db_page_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %page.062 = load ptr, ptr %db_page_list, align 4
  %cmp.not63 = icmp eq ptr %page.062, %db_page_list
  br i1 %cmp.not63, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm, align 8
  %and = and i32 %virt, -4096
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %page.064 = phi ptr [ %page.062, %for.body.lr.ph ], [ %page.0, %for.inc.for.body_crit_edge ]
  %mm2 = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %page.064, i32 0, i32 4
  %7 = ptrtoint ptr %mm2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mm2, align 4
  %cmp3 = icmp eq ptr %6, %8
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %user_virt = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %page.064, i32 0, i32 2
  %9 = ptrtoint ptr %user_virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %user_virt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and)
  %cmp4 = icmp eq i32 %10, %and
  br i1 %cmp4, label %land.lhs.true.found_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.found_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %found

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %page.064 to i32
  call void @__asan_load4_noabort(i32 %11)
  %page.0 = load ptr, ptr %page.064, align 4
  %cmp.not = icmp eq ptr %page.0, %db_page_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %for.end.out_crit_edge, label %if.end12

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end12:                                         ; preds = %for.end
  %and13 = and i32 %virt, -4096
  %user_virt14 = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %user_virt14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and13, ptr %user_virt14, align 4
  %refcnt = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %call7.i, i32 0, i32 3
  %14 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %refcnt, align 8
  %15 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %context, align 8
  %call16 = tail call ptr @ib_umem_get(ptr noundef %16, i32 noundef %and13, i32 noundef 4096, i32 noundef 0) #5
  %umem = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call16, ptr %umem, align 8
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call16 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %out

if.end22:                                         ; preds = %if.end12
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i60 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i60 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task24, align 8
  %mm25 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 53
  %23 = ptrtoint ptr %mm25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mm25, align 8
  %mm_count.i = getelementptr inbounds %struct.anon.10, ptr %24, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #5
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #5, !srcloc !10
  %26 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task24, align 8
  %mm28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 53
  %28 = ptrtoint ptr %mm28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mm28, align 8
  %mm29 = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %call7.i, i32 0, i32 4
  %30 = ptrtoint ptr %mm29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %mm29, align 4
  %31 = ptrtoint ptr %db_page_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %db_page_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %db_page_list, ptr noundef %32) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.found_crit_edge

if.end22.found_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %found

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %34 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %db_page_list, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %db_page_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i, ptr %db_page_list, align 4
  br label %found

found:                                            ; preds = %if.end.i.i, %if.end22.found_crit_edge, %land.lhs.true.found_crit_edge
  %page.1 = phi ptr [ %call7.i, %if.end22.found_crit_edge ], [ %call7.i, %if.end.i.i ], [ %page.064, %land.lhs.true.found_crit_edge ]
  %umem32 = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %page.1, i32 0, i32 1
  %37 = ptrtoint ptr %umem32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %umem32, align 4
  %sgt_append = getelementptr inbounds %struct.ib_umem, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %sgt_append to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sgt_append, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_address, align 4
  %and33 = and i32 %virt, 4095
  %add = add i32 %42, %and33
  %dma = getelementptr inbounds %struct.mlx5_db, ptr %db, i32 0, i32 2
  %43 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add, ptr %dma, align 4
  %u = getelementptr inbounds %struct.mlx5_db, ptr %db, i32 0, i32 1
  %44 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %page.1, ptr %u, align 4
  %refcnt34 = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %page.1, i32 0, i32 3
  %45 = ptrtoint ptr %refcnt34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %refcnt34, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %refcnt34, align 4
  br label %out

out:                                              ; preds = %found, %if.then19, %for.end.out_crit_edge
  %err.0 = phi i32 [ 0, %found ], [ %18, %if.then19 ], [ -12, %for.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %db_page_mutex) #5
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_db_unmap_user(ptr noundef %context, ptr nocapture noundef readonly %db) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %db_page_mutex = getelementptr inbounds %struct.mlx5_ib_ucontext, ptr %context, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %db_page_mutex, i32 noundef 0) #5
  %u = getelementptr inbounds %struct.mlx5_db, ptr %db, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %refcnt = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %u, align 4
  %mm = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm, align 4
  %mm_count.i = getelementptr inbounds %struct.anon.10, ptr %17, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !11
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #5
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #5, !srcloc !12
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %list_del.exit.mmdrop.exit_crit_edge, !prof !14

list_del.exit.mmdrop.exit_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmdrop.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mmdrop(ptr noundef %17) #5
  br label %mmdrop.exit

mmdrop.exit:                                      ; preds = %if.then.i, %list_del.exit.mmdrop.exit_crit_edge
  %19 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %u, align 4
  %umem = getelementptr inbounds %struct.mlx5_ib_user_db_page, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %umem, align 4
  tail call void @ib_umem_release(ptr noundef %22) #5
  %23 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %u, align 4
  tail call void @kfree(ptr noundef %24) #5
  br label %if.end

if.end:                                           ; preds = %mmdrop.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %db_page_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{i64 2148481604, i64 2148481630, i64 2148481659, i64 2148481693, i64 2148481724, i64 2148481747}
!11 = !{i64 2148570080}
!12 = !{i64 2148484789, i64 2148484821, i64 2148484850, i64 2148484884, i64 2148484915, i64 2148484938}
!13 = !{i64 2148570309}
!14 = !{!"branch_weights", i32 1, i32 2000}
