; ModuleID = '/llk/IR_all_yes/fs/jffs2/build.c_pt.bc'
source_filename = "../fs/jffs2/build.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.jffs2_full_dirent = type { %union.anon.75, ptr, i32, i32, i32, i8, [0 x i8] }
%union.anon.75 = type { ptr }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/jffs2/build.c\00", [47 x i8] zeroinitializer }, align 32
@jffs2_build_filesystem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013jffs2: error: (%d) %s: child dir \22%s\22 (ino #%u) of dir ino #%u is also hard linked from dir ino #%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"jffs2_build_filesystem\00", [41 x i8] zeroinitializer }, align 32
@jffs2_build_filesystem._entry_ptr = internal global ptr @jffs2_build_filesystem._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 126, i32 4 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [20 x i8] c"../fs/jffs2/build.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 201, i32 6 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @jffs2_build_filesystem._entry, ptr @jffs2_build_filesystem._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_build_filesystem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_mount_fs(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %dead_fds.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flash_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %flash_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash_size, align 4
  %free_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 13
  %2 = ptrtoint ptr %free_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %free_size, align 4
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %3 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sector_size, align 4
  %div = udiv i32 %1, %4
  %nr_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 27
  %5 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %nr_blocks, align 4
  %mul = mul i32 %div, 52
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %mul)
  %cmp.i = icmp ult i32 %mul, 131073
  br i1 %cmp.i, label %if.end8.i.i, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call noalias ptr @vzalloc(i32 noundef %mul) #9
  br label %if.end

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #9
  br label %if.end

if.end:                                           ; preds = %if.end8.i.i, %if.then
  %retval.1.i.i.sink = phi ptr [ %call3, %if.then ], [ %call9.i.i, %if.end8.i.i ]
  %blocks5 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %6 = ptrtoint ptr %blocks5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %retval.1.i.i.sink, ptr %blocks5, align 4
  %blocks6 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 28
  %tobool7.not = icmp eq ptr %retval.1.i.i.sink, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %7 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp138.not = icmp eq i32 %8, 0
  br i1 %cmp138.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0139 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %9 = ptrtoint ptr %blocks6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %blocks6, align 4
  %arrayidx = getelementptr %struct.jffs2_eraseblock, ptr %10, i32 %i.0139
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %prev.i, align 4
  %13 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sector_size, align 4
  %mul13 = mul i32 %14, %i.0139
  %15 = load ptr, ptr %blocks6, align 4
  %offset = getelementptr %struct.jffs2_eraseblock, ptr %15, i32 %i.0139, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul13, ptr %offset, align 4
  %17 = load i32, ptr %sector_size, align 4
  %18 = load ptr, ptr %blocks6, align 4
  %free_size19 = getelementptr %struct.jffs2_eraseblock, ptr %18, i32 %i.0139, i32 7
  %19 = ptrtoint ptr %free_size19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %free_size19, align 4
  %inc = add nuw i32 %i.0139, 1
  %20 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_blocks, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %clean_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31
  %22 = ptrtoint ptr %clean_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %clean_list, ptr %clean_list, align 4
  %prev.i73 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 31, i32 1
  %23 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %clean_list, ptr %prev.i73, align 4
  %very_dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32
  %24 = ptrtoint ptr %very_dirty_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %very_dirty_list, ptr %very_dirty_list, align 4
  %prev.i74 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 32, i32 1
  %25 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %very_dirty_list, ptr %prev.i74, align 4
  %dirty_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33
  %26 = ptrtoint ptr %dirty_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %dirty_list, ptr %dirty_list, align 4
  %prev.i75 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 33, i32 1
  %27 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dirty_list, ptr %prev.i75, align 4
  %erasable_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34
  %28 = ptrtoint ptr %erasable_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %erasable_list, ptr %erasable_list, align 4
  %prev.i76 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 34, i32 1
  %29 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %erasable_list, ptr %prev.i76, align 4
  %erasing_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 36
  %30 = ptrtoint ptr %erasing_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %erasing_list, ptr %erasing_list, align 4
  %prev.i77 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 36, i32 1
  %31 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %erasing_list, ptr %prev.i77, align 4
  %erase_checking_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 37
  %32 = ptrtoint ptr %erase_checking_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %erase_checking_list, ptr %erase_checking_list, align 4
  %prev.i78 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 37, i32 1
  %33 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %erase_checking_list, ptr %prev.i78, align 4
  %erase_pending_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %34 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %erase_pending_list, ptr %erase_pending_list, align 4
  %prev.i79 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38, i32 1
  %35 = ptrtoint ptr %prev.i79 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %erase_pending_list, ptr %prev.i79, align 4
  %erasable_pending_wbuf_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 35
  %36 = ptrtoint ptr %erasable_pending_wbuf_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %erasable_pending_wbuf_list, ptr %erasable_pending_wbuf_list, align 4
  %prev.i80 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 35, i32 1
  %37 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %erasable_pending_wbuf_list, ptr %prev.i80, align 4
  %erase_complete_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 39
  %38 = ptrtoint ptr %erase_complete_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %erase_complete_list, ptr %erase_complete_list, align 4
  %prev.i81 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 39, i32 1
  %39 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %erase_complete_list, ptr %prev.i81, align 4
  %free_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 40
  %40 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i82 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 40, i32 1
  %41 = ptrtoint ptr %prev.i82 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %free_list, ptr %prev.i82, align 4
  %bad_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 41
  %42 = ptrtoint ptr %bad_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %bad_list, ptr %bad_list, align 4
  %prev.i83 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 41, i32 1
  %43 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %bad_list, ptr %prev.i83, align 4
  %bad_used_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 42
  %44 = ptrtoint ptr %bad_used_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %bad_used_list, ptr %bad_used_list, align 4
  %prev.i84 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 42, i32 1
  %45 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bad_used_list, ptr %prev.i84, align 4
  %highest_ino = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 1
  %46 = ptrtoint ptr %highest_ino to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %highest_ino, align 4
  %summary = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 60
  %47 = ptrtoint ptr %summary to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %summary, align 4
  %call20 = tail call i32 @jffs2_sum_init(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.out_free_crit_edge

for.end.out_free_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end23:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dead_fds.i) #6
  %48 = ptrtoint ptr %dead_fds.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %dead_fds.i, align 4
  %flags.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 3
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %50, 2
  store i32 %or.i, ptr %flags.i, align 4
  %call.i = tail call i32 @jffs2_scan_medium(ptr noundef %c) #6
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %52, -3
  store i32 %and.i, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then113.i

if.end.i:                                         ; preds = %if.end23
  %or5.i = or i32 %and.i, 4
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or5.i, ptr %flags.i, align 4
  %inocache_list.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 47
  %inocache_hashsize.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 46
  %54 = ptrtoint ptr %inocache_hashsize.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %inocache_hashsize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp9.i.i = icmp sgt i32 %55, 0
  br i1 %cmp9.i.i, label %for.body.i.preheader.i, label %if.end.i.for.endthread-pre-split.i_crit_edge

if.end.i.for.endthread-pre-split.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.endthread-pre-split.i

for.body.i.preheader.i:                           ; preds = %if.end.i
  %56 = ptrtoint ptr %inocache_list.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %inocache_list.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.0.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr ptr, ptr %57, i32 %i.0.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.body.i.i.for.body.i.outer_crit_edge

for.body.i.i.for.body.i.outer_crit_edge:          ; preds = %for.body.i.i
  br label %for.body.i.outer

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0.i, 1
  %exitcond345.not.i = icmp eq i32 %inc.i.i, %55
  br i1 %exitcond345.not.i, label %for.inc.i.i.for.endthread-pre-split.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.endthread-pre-split.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.endthread-pre-split.i

for.body.i.outer:                                 ; preds = %for.body.i.i.i.for.body.i.outer_crit_edge, %for.body.i.i.for.body.i.outer_crit_edge
  %ic.0332.i.ph = phi ptr [ %59, %for.body.i.i.for.body.i.outer_crit_edge ], [ %83, %for.body.i.i.i.for.body.i.outer_crit_edge ]
  %dir_hardlinks.0331.i.ph = phi i32 [ 0, %for.body.i.i.for.body.i.outer_crit_edge ], [ %dir_hardlinks.4.i, %for.body.i.i.i.for.body.i.outer_crit_edge ]
  %i.2330.i.ph = phi i32 [ %i.0.i, %for.body.i.i.for.body.i.outer_crit_edge ], [ %i.3.i, %for.body.i.i.i.for.body.i.outer_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %ic.0332.i = phi ptr [ %77, %for.inc.i.for.body.i_crit_edge ], [ %ic.0332.i.ph, %for.body.i.outer ]
  %dir_hardlinks.0331.i = phi i32 [ %dir_hardlinks.4.i, %for.inc.i.for.body.i_crit_edge ], [ %dir_hardlinks.0331.i.ph, %for.body.i.outer ]
  %60 = ptrtoint ptr %ic.0332.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ic.0332.i, align 4
  %tobool8.not.i = icmp eq ptr %61, null
  br i1 %tobool8.not.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.for.body.i196.i_crit_edge

for.body.i.for.body.i196.i_crit_edge:             ; preds = %for.body.i
  br label %for.body.i196.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.body.i196.i:                                  ; preds = %cleanup.i.i.for.body.i196.i_crit_edge, %for.body.i.for.body.i196.i_crit_edge
  %dir_hardlinks.1.i = phi i32 [ %dir_hardlinks.2.i, %cleanup.i.i.for.body.i196.i_crit_edge ], [ %dir_hardlinks.0331.i, %for.body.i.for.body.i196.i_crit_edge ]
  %fd.032.i.i = phi ptr [ %fd.0.i.i, %cleanup.i.i.for.body.i196.i_crit_edge ], [ %61, %for.body.i.for.body.i196.i_crit_edge ]
  %ino.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.032.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ino.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool1.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool1.not.i.i, label %for.body.i196.i.cleanup.i.i_crit_edge, label %if.end.i.i85

for.body.i196.i.cleanup.i.i_crit_edge:            ; preds = %for.body.i196.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.end.i.i85:                                     ; preds = %for.body.i196.i
  %call.i.i = tail call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %63) #6
  %tobool3.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end6.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %fd.032.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fd.032.i.i, align 4
  tail call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %65) #6
  %66 = ptrtoint ptr %fd.032.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %fd.032.i.i, align 4
  br label %cleanup.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i85
  %67 = ptrtoint ptr %fd.032.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i.i, ptr %fd.032.i.i, align 4
  %pino_nlink.i.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call.i.i, i32 0, i32 8
  %68 = ptrtoint ptr %pino_nlink.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pino_nlink.i.i, align 4
  %inc.i197.i = add i32 %69, 1
  store i32 %inc.i197.i, ptr %pino_nlink.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.032.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %71)
  %cmp.i198.i = icmp eq i8 %71, 4
  br i1 %cmp.i198.i, label %if.then8.i.i, label %if.end6.i.i.cleanup.i.i_crit_edge

if.end6.i.i.cleanup.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %flags.i.i, align 1
  %74 = or i8 %73, 2
  store i8 %74, ptr %flags.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i197.i)
  %cmp12.i.i = icmp ugt i32 %inc.i197.i, 1
  %spec.select.i = select i1 %cmp12.i.i, i32 1, i32 %dir_hardlinks.1.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then8.i.i, %if.end6.i.i.cleanup.i.i_crit_edge, %if.then4.i.i, %for.body.i196.i.cleanup.i.i_crit_edge
  %dir_hardlinks.2.i = phi i32 [ %dir_hardlinks.1.i, %for.body.i196.i.cleanup.i.i_crit_edge ], [ %dir_hardlinks.1.i, %if.then4.i.i ], [ %dir_hardlinks.1.i, %if.end6.i.i.cleanup.i.i_crit_edge ], [ %spec.select.i, %if.then8.i.i ]
  %next.i.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.032.i.i, i32 0, i32 1
  %75 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %fd.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i199.i = icmp eq ptr %fd.0.i.i, null
  br i1 %tobool.not.i199.i, label %jffs2_build_inode_pass1.exit.i, label %cleanup.i.i.for.body.i196.i_crit_edge

cleanup.i.i.for.body.i196.i_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i196.i

jffs2_build_inode_pass1.exit.i:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 0) #6
  %call.i200.i = tail call i32 @__cond_resched() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %jffs2_build_inode_pass1.exit.i, %for.body.i.for.inc.i_crit_edge
  %dir_hardlinks.4.i = phi i32 [ %dir_hardlinks.0331.i, %for.body.i.for.inc.i_crit_edge ], [ %dir_hardlinks.2.i, %jffs2_build_inode_pass1.exit.i ]
  %next.i201.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0332.i, i32 0, i32 6
  %76 = ptrtoint ptr %next.i201.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %next.i201.i, align 4
  %tobool.not.i202.i = icmp eq ptr %77, null
  br i1 %tobool.not.i202.i, label %if.end.i204.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i204.i:                                    ; preds = %for.inc.i
  %inc.i203.i = add i32 %i.2330.i.ph, 1
  %78 = ptrtoint ptr %inocache_hashsize.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %inocache_hashsize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i203.i, i32 %79)
  %cmp9.i.i.i = icmp slt i32 %inc.i203.i, %79
  br i1 %cmp9.i.i.i, label %for.body.i.i.preheader.i, label %if.end.i204.i.for.end.i_crit_edge

if.end.i204.i.for.end.i_crit_edge:                ; preds = %if.end.i204.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.i.preheader.i:                         ; preds = %if.end.i204.i
  %80 = ptrtoint ptr %inocache_list.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %inocache_list.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.preheader.i
  %i.3.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %inc.i203.i, %for.body.i.i.preheader.i ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %81, i32 %i.3.i
  %82 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i86 = icmp eq ptr %83, null
  br i1 %tobool.not.i.i.i86, label %for.inc.i.i.i, label %for.body.i.i.i.for.body.i.outer_crit_edge

for.body.i.i.i.for.body.i.outer_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.outer

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add i32 %i.3.i, 1
  %exitcond346.not.i = icmp eq i32 %inc.i.i.i, %79
  br i1 %exitcond346.not.i, label %for.inc.i.i.i.for.endthread-pre-split.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.inc.i.i.i.for.endthread-pre-split.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.endthread-pre-split.i

for.endthread-pre-split.i:                        ; preds = %for.inc.i.i.i.for.endthread-pre-split.i_crit_edge, %for.inc.i.i.for.endthread-pre-split.i_crit_edge, %if.end.i.for.endthread-pre-split.i_crit_edge
  %dir_hardlinks.0.lcssa.ph.i = phi i32 [ 0, %if.end.i.for.endthread-pre-split.i_crit_edge ], [ %dir_hardlinks.4.i, %for.inc.i.i.i.for.endthread-pre-split.i_crit_edge ], [ 0, %for.inc.i.i.for.endthread-pre-split.i_crit_edge ]
  %84 = ptrtoint ptr %inocache_hashsize.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr.i = load i32, ptr %inocache_hashsize.i.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.end.i204.i.for.end.i_crit_edge
  %85 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %79, %if.end.i204.i.for.end.i_crit_edge ]
  %dir_hardlinks.0.lcssa.i = phi i32 [ %dir_hardlinks.0.lcssa.ph.i, %for.endthread-pre-split.i ], [ %dir_hardlinks.4.i, %if.end.i204.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp9.i208.i = icmp sgt i32 %85, 0
  br i1 %cmp9.i208.i, label %for.body.i211.preheader.i, label %for.end.i.while.cond.preheader.i_crit_edge

for.end.i.while.cond.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i

for.body.i211.preheader.i:                        ; preds = %for.end.i
  %86 = ptrtoint ptr %inocache_list.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %inocache_list.i.i, align 4
  br label %for.body.i211.i

for.body.i211.i:                                  ; preds = %for.inc.i214.i.for.body.i211.i_crit_edge, %for.body.i211.preheader.i
  %i.5.i = phi i32 [ %inc.i212.i, %for.inc.i214.i.for.body.i211.i_crit_edge ], [ 0, %for.body.i211.preheader.i ]
  %arrayidx.i209.i = getelementptr ptr, ptr %87, i32 %i.5.i
  %88 = ptrtoint ptr %arrayidx.i209.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i209.i, align 4
  %tobool.not.i210.i = icmp eq ptr %89, null
  br i1 %tobool.not.i210.i, label %for.inc.i214.i, label %for.body.i211.i.for.body19.i.outer_crit_edge

for.body.i211.i.for.body19.i.outer_crit_edge:     ; preds = %for.body.i211.i
  br label %for.body19.i.outer

for.inc.i214.i:                                   ; preds = %for.body.i211.i
  %inc.i212.i = add nuw nsw i32 %i.5.i, 1
  %exitcond347.not.i = icmp eq i32 %inc.i212.i, %85
  br i1 %exitcond347.not.i, label %for.inc.i214.i.while.cond.preheader.i_crit_edge, label %for.inc.i214.i.for.body.i211.i_crit_edge

for.inc.i214.i.for.body.i211.i_crit_edge:         ; preds = %for.inc.i214.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i211.i

for.inc.i214.i.while.cond.preheader.i_crit_edge:  ; preds = %for.inc.i214.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc.i.i230.i.while.cond.preheader.i_crit_edge, %if.end.i224.i.while.cond.preheader.i_crit_edge, %for.inc.i214.i.while.cond.preheader.i_crit_edge, %for.end.i.while.cond.preheader.i_crit_edge
  %90 = ptrtoint ptr %dead_fds.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dead_fds.i, align 4
  %tobool29.not336.i = icmp eq ptr %91, null
  br i1 %tobool29.not336.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

for.body19.i.outer:                               ; preds = %for.body.i.i227.i.for.body19.i.outer_crit_edge, %for.body.i211.i.for.body19.i.outer_crit_edge
  %ic.1335.i.ph = phi ptr [ %89, %for.body.i211.i.for.body19.i.outer_crit_edge ], [ %101, %for.body.i.i227.i.for.body19.i.outer_crit_edge ]
  %i.7334.i.ph = phi i32 [ %i.5.i, %for.body.i211.i.for.body19.i.outer_crit_edge ], [ %i.8.i, %for.body.i.i227.i.for.body19.i.outer_crit_edge ]
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.inc25.i.for.body19.i_crit_edge, %for.body19.i.outer
  %ic.1335.i = phi ptr [ %95, %for.inc25.i.for.body19.i_crit_edge ], [ %ic.1335.i.ph, %for.body19.i.outer ]
  %pino_nlink.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.1335.i, i32 0, i32 8
  %92 = ptrtoint ptr %pino_nlink.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pino_nlink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool20.not.i = icmp eq i32 %93, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %for.body19.i.for.inc25.i_crit_edge

for.body19.i.for.inc25.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i

if.end22.i:                                       ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @jffs2_build_remove_unlinked_inode(ptr noundef %c, ptr noundef nonnull %ic.1335.i, ptr noundef nonnull %dead_fds.i) #6
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 0) #6
  %call.i217.i = tail call i32 @__cond_resched() #6
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %if.end22.i, %for.body19.i.for.inc25.i_crit_edge
  %next.i218.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.1335.i, i32 0, i32 6
  %94 = ptrtoint ptr %next.i218.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %next.i218.i, align 4
  %tobool.not.i219.i = icmp eq ptr %95, null
  br i1 %tobool.not.i219.i, label %if.end.i224.i, label %for.inc25.i.for.body19.i_crit_edge

for.inc25.i.for.body19.i_crit_edge:               ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19.i

if.end.i224.i:                                    ; preds = %for.inc25.i
  %inc.i220.i = add i32 %i.7334.i.ph, 1
  %96 = ptrtoint ptr %inocache_hashsize.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %inocache_hashsize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i220.i, i32 %97)
  %cmp9.i.i223.i = icmp slt i32 %inc.i220.i, %97
  br i1 %cmp9.i.i223.i, label %for.body.i.i227.preheader.i, label %if.end.i224.i.while.cond.preheader.i_crit_edge

if.end.i224.i.while.cond.preheader.i_crit_edge:   ; preds = %if.end.i224.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i

for.body.i.i227.preheader.i:                      ; preds = %if.end.i224.i
  %98 = ptrtoint ptr %inocache_list.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %inocache_list.i.i, align 4
  br label %for.body.i.i227.i

for.body.i.i227.i:                                ; preds = %for.inc.i.i230.i.for.body.i.i227.i_crit_edge, %for.body.i.i227.preheader.i
  %i.8.i = phi i32 [ %inc.i.i228.i, %for.inc.i.i230.i.for.body.i.i227.i_crit_edge ], [ %inc.i220.i, %for.body.i.i227.preheader.i ]
  %arrayidx.i.i225.i = getelementptr ptr, ptr %99, i32 %i.8.i
  %100 = ptrtoint ptr %arrayidx.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i225.i, align 4
  %tobool.not.i.i226.i = icmp eq ptr %101, null
  br i1 %tobool.not.i.i226.i, label %for.inc.i.i230.i, label %for.body.i.i227.i.for.body19.i.outer_crit_edge

for.body.i.i227.i.for.body19.i.outer_crit_edge:   ; preds = %for.body.i.i227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19.i.outer

for.inc.i.i230.i:                                 ; preds = %for.body.i.i227.i
  %inc.i.i228.i = add i32 %i.8.i, 1
  %exitcond348.not.i = icmp eq i32 %inc.i.i228.i, %97
  br i1 %exitcond348.not.i, label %for.inc.i.i230.i.while.cond.preheader.i_crit_edge, label %for.inc.i.i230.i.for.body.i.i227.i_crit_edge

for.inc.i.i230.i.for.body.i.i227.i_crit_edge:     ; preds = %for.inc.i.i230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i227.i

for.inc.i.i230.i.while.cond.preheader.i_crit_edge: ; preds = %for.inc.i.i230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i

while.body.i:                                     ; preds = %if.end33.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %102 = phi ptr [ %109, %if.end33.i.while.body.i_crit_edge ], [ %91, %while.cond.preheader.i.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %next.i, align 4
  %105 = ptrtoint ptr %dead_fds.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %dead_fds.i, align 4
  %ino.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %102, i32 0, i32 3
  %106 = ptrtoint ptr %ino.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ino.i, align 4
  %call30.i = tail call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %107) #6
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %while.body.i.if.end33.i_crit_edge, label %if.then32.i

while.body.i.if.end33.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then32.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @jffs2_build_remove_unlinked_inode(ptr noundef %c, ptr noundef nonnull %call30.i, ptr noundef nonnull %dead_fds.i) #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %while.body.i.if.end33.i_crit_edge
  tail call void @jffs2_free_full_dirent(ptr noundef nonnull %102) #6
  %108 = ptrtoint ptr %dead_fds.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dead_fds.i, align 4
  %tobool29.not.i = icmp eq ptr %109, null
  br i1 %tobool29.not.i, label %if.end33.i.while.end.i_crit_edge, label %if.end33.i.while.body.i_crit_edge

if.end33.i.while.body.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end33.i.while.end.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end33.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir_hardlinks.0.lcssa.i)
  %tobool35.not.i = icmp eq i32 %dir_hardlinks.0.lcssa.i, 0
  br i1 %tobool35.not.i, label %while.end.i.if.end50thread-pre-split.i_crit_edge, label %if.then36.i

while.end.i.if.end50thread-pre-split.i_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50thread-pre-split.i

if.then36.i:                                      ; preds = %while.end.i
  %110 = ptrtoint ptr %inocache_hashsize.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %inocache_hashsize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp9.i235.i = icmp sgt i32 %111, 0
  br i1 %cmp9.i235.i, label %for.body.i238.preheader.i, label %if.then36.i.if.end50thread-pre-split.i_crit_edge

if.then36.i.if.end50thread-pre-split.i_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50thread-pre-split.i

for.body.i238.preheader.i:                        ; preds = %if.then36.i
  %112 = ptrtoint ptr %inocache_list.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %inocache_list.i.i, align 4
  br label %for.body.i238.i

for.body.i238.i:                                  ; preds = %for.inc.i241.i.for.body.i238.i_crit_edge, %for.body.i238.preheader.i
  %i.10.i = phi i32 [ %inc.i239.i, %for.inc.i241.i.for.body.i238.i_crit_edge ], [ 0, %for.body.i238.preheader.i ]
  %arrayidx.i236.i = getelementptr ptr, ptr %113, i32 %i.10.i
  %114 = ptrtoint ptr %arrayidx.i236.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i236.i, align 4
  %tobool.not.i237.i = icmp eq ptr %115, null
  br i1 %tobool.not.i237.i, label %for.inc.i241.i, label %for.body.i238.i.for.body40.i.outer_crit_edge

for.body.i238.i.for.body40.i.outer_crit_edge:     ; preds = %for.body.i238.i
  br label %for.body40.i.outer

for.inc.i241.i:                                   ; preds = %for.body.i238.i
  %inc.i239.i = add nuw nsw i32 %i.10.i, 1
  %exitcond349.not.i = icmp eq i32 %inc.i239.i, %111
  br i1 %exitcond349.not.i, label %for.inc.i241.i.if.end50thread-pre-split.i_crit_edge, label %for.inc.i241.i.for.body.i238.i_crit_edge

for.inc.i241.i.for.body.i238.i_crit_edge:         ; preds = %for.inc.i241.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i238.i

for.inc.i241.i.if.end50thread-pre-split.i_crit_edge: ; preds = %for.inc.i241.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50thread-pre-split.i

for.body40.i.outer:                               ; preds = %for.body.i.i253.i.for.body40.i.outer_crit_edge, %for.body.i238.i.for.body40.i.outer_crit_edge
  %ic.2339.i.ph = phi ptr [ %115, %for.body.i238.i.for.body40.i.outer_crit_edge ], [ %127, %for.body.i.i253.i.for.body40.i.outer_crit_edge ]
  %i.12338.i.ph = phi i32 [ %i.10.i, %for.body.i238.i.for.body40.i.outer_crit_edge ], [ %i.13.i, %for.body.i.i253.i.for.body40.i.outer_crit_edge ]
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.inc47.i.for.body40.i_crit_edge, %for.body40.i.outer
  %ic.2339.i = phi ptr [ %121, %for.inc47.i.for.body40.i_crit_edge ], [ %ic.2339.i.ph, %for.body40.i.outer ]
  %flags41.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.2339.i, i32 0, i32 3
  %116 = ptrtoint ptr %flags41.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %flags41.i, align 1
  %118 = and i8 %117, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool43.not.i = icmp eq i8 %118, 0
  br i1 %tobool43.not.i, label %for.body40.i.for.inc47.i_crit_edge, label %if.then44.i

for.body40.i.for.inc47.i_crit_edge:               ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc47.i

if.then44.i:                                      ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #8
  %pino_nlink45.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.2339.i, i32 0, i32 8
  %119 = ptrtoint ptr %pino_nlink45.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %pino_nlink45.i, align 4
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %if.then44.i, %for.body40.i.for.inc47.i_crit_edge
  %next.i244.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.2339.i, i32 0, i32 6
  %120 = ptrtoint ptr %next.i244.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %next.i244.i, align 4
  %tobool.not.i245.i = icmp eq ptr %121, null
  br i1 %tobool.not.i245.i, label %if.end.i250.i, label %for.inc47.i.for.body40.i_crit_edge

for.inc47.i.for.body40.i_crit_edge:               ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body40.i

if.end.i250.i:                                    ; preds = %for.inc47.i
  %inc.i246.i = add i32 %i.12338.i.ph, 1
  %122 = ptrtoint ptr %inocache_hashsize.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %inocache_hashsize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i246.i, i32 %123)
  %cmp9.i.i249.i = icmp slt i32 %inc.i246.i, %123
  br i1 %cmp9.i.i249.i, label %for.body.i.i253.preheader.i, label %if.end.i250.i.if.end50.i_crit_edge

if.end.i250.i.if.end50.i_crit_edge:               ; preds = %if.end.i250.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

for.body.i.i253.preheader.i:                      ; preds = %if.end.i250.i
  %124 = ptrtoint ptr %inocache_list.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %inocache_list.i.i, align 4
  br label %for.body.i.i253.i

for.body.i.i253.i:                                ; preds = %for.inc.i.i256.i.for.body.i.i253.i_crit_edge, %for.body.i.i253.preheader.i
  %i.13.i = phi i32 [ %inc.i.i254.i, %for.inc.i.i256.i.for.body.i.i253.i_crit_edge ], [ %inc.i246.i, %for.body.i.i253.preheader.i ]
  %arrayidx.i.i251.i = getelementptr ptr, ptr %125, i32 %i.13.i
  %126 = ptrtoint ptr %arrayidx.i.i251.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i.i251.i, align 4
  %tobool.not.i.i252.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i252.i, label %for.inc.i.i256.i, label %for.body.i.i253.i.for.body40.i.outer_crit_edge

for.body.i.i253.i.for.body40.i.outer_crit_edge:   ; preds = %for.body.i.i253.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body40.i.outer

for.inc.i.i256.i:                                 ; preds = %for.body.i.i253.i
  %inc.i.i254.i = add i32 %i.13.i, 1
  %exitcond350.not.i = icmp eq i32 %inc.i.i254.i, %123
  br i1 %exitcond350.not.i, label %for.inc.i.i256.i.if.end50thread-pre-split.i_crit_edge, label %for.inc.i.i256.i.for.body.i.i253.i_crit_edge

for.inc.i.i256.i.for.body.i.i253.i_crit_edge:     ; preds = %for.inc.i.i256.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i253.i

for.inc.i.i256.i.if.end50thread-pre-split.i_crit_edge: ; preds = %for.inc.i.i256.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50thread-pre-split.i

if.end50thread-pre-split.i:                       ; preds = %for.inc.i.i256.i.if.end50thread-pre-split.i_crit_edge, %for.inc.i241.i.if.end50thread-pre-split.i_crit_edge, %if.then36.i.if.end50thread-pre-split.i_crit_edge, %while.end.i.if.end50thread-pre-split.i_crit_edge
  %128 = ptrtoint ptr %inocache_hashsize.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr371.i = load i32, ptr %inocache_hashsize.i.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end50thread-pre-split.i, %if.end.i250.i.if.end50.i_crit_edge
  %129 = phi i32 [ %.pr371.i, %if.end50thread-pre-split.i ], [ %123, %if.end.i250.i.if.end50.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp9.i261.i = icmp sgt i32 %129, 0
  br i1 %cmp9.i261.i, label %for.body.i264.preheader.i, label %if.end50.i.jffs2_build_filesystem.exit.thread_crit_edge

if.end50.i.jffs2_build_filesystem.exit.thread_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jffs2_build_filesystem.exit.thread

for.body.i264.preheader.i:                        ; preds = %if.end50.i
  %130 = ptrtoint ptr %inocache_list.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %inocache_list.i.i, align 4
  br label %for.body.i264.i

for.body.i264.i:                                  ; preds = %for.inc.i267.i.for.body.i264.i_crit_edge, %for.body.i264.preheader.i
  %i.15.i = phi i32 [ %inc.i265.i, %for.inc.i267.i.for.body.i264.i_crit_edge ], [ 0, %for.body.i264.preheader.i ]
  %arrayidx.i262.i = getelementptr ptr, ptr %131, i32 %i.15.i
  %132 = ptrtoint ptr %arrayidx.i262.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i262.i, align 4
  %tobool.not.i263.i = icmp eq ptr %133, null
  br i1 %tobool.not.i263.i, label %for.inc.i267.i, label %for.body.i264.i.while.cond56.preheader.i.outer_crit_edge

for.body.i264.i.while.cond56.preheader.i.outer_crit_edge: ; preds = %for.body.i264.i
  br label %while.cond56.preheader.i.outer

for.inc.i267.i:                                   ; preds = %for.body.i264.i
  %inc.i265.i = add nuw nsw i32 %i.15.i, 1
  %exitcond351.not.i = icmp eq i32 %inc.i265.i, %129
  br i1 %exitcond351.not.i, label %for.inc.i267.i.jffs2_build_filesystem.exit.thread_crit_edge, label %for.inc.i267.i.for.body.i264.i_crit_edge

for.inc.i267.i.for.body.i264.i_crit_edge:         ; preds = %for.inc.i267.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i264.i

for.inc.i267.i.jffs2_build_filesystem.exit.thread_crit_edge: ; preds = %for.inc.i267.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jffs2_build_filesystem.exit.thread

while.cond56.preheader.i.outer:                   ; preds = %for.body.i.i280.i.while.cond56.preheader.i.outer_crit_edge, %for.body.i264.i.while.cond56.preheader.i.outer_crit_edge
  %ic.3343.i.ph = phi ptr [ %133, %for.body.i264.i.while.cond56.preheader.i.outer_crit_edge ], [ %174, %for.body.i.i280.i.while.cond56.preheader.i.outer_crit_edge ]
  %i.17342.i.ph = phi i32 [ %i.15.i, %for.body.i264.i.while.cond56.preheader.i.outer_crit_edge ], [ %i.18.i, %for.body.i.i280.i.while.cond56.preheader.i.outer_crit_edge ]
  br label %while.cond56.preheader.i

while.cond56.preheader.i:                         ; preds = %while.end102.i.while.cond56.preheader.i_crit_edge, %while.cond56.preheader.i.outer
  %ic.3343.i = phi ptr [ %168, %while.end102.i.while.cond56.preheader.i_crit_edge ], [ %ic.3343.i.ph, %while.cond56.preheader.i.outer ]
  %134 = ptrtoint ptr %ic.3343.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ic.3343.i, align 4
  %tobool58.not340.i = icmp eq ptr %135, null
  br i1 %tobool58.not340.i, label %while.cond56.preheader.i.while.end102.i_crit_edge, label %while.body59.lr.ph.i

while.cond56.preheader.i.while.end102.i_crit_edge: ; preds = %while.cond56.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end102.i

while.body59.lr.ph.i:                             ; preds = %while.cond56.preheader.i
  %ino95.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.3343.i, i32 0, i32 5
  br label %while.body59.i

while.body59.i:                                   ; preds = %while.cond56.backedge.i.while.body59.i_crit_edge, %while.body59.lr.ph.i
  %136 = phi ptr [ %135, %while.body59.lr.ph.i ], [ %165, %while.cond56.backedge.i.while.body59.i_crit_edge ]
  %next61.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %next61.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %next61.i, align 4
  %139 = ptrtoint ptr %ic.3343.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %ic.3343.i, align 4
  %type.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %136, i32 0, i32 5
  %140 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %141)
  %cmp.i87 = icmp eq i8 %141, 4
  br i1 %cmp.i87, label %if.then65.i, label %while.body59.i.if.end101.i_crit_edge

while.body59.i.if.end101.i_crit_edge:             ; preds = %while.body59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101.i

if.then65.i:                                      ; preds = %while.body59.i
  %142 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %136, align 4
  %tobool66.not.i = icmp eq ptr %143, null
  br i1 %tobool66.not.i, label %if.then65.i.while.cond56.backedge.i_crit_edge, label %do.body.i

if.then65.i.while.cond56.backedge.i_crit_edge:    ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond56.backedge.i

do.body.i:                                        ; preds = %if.then65.i
  %flags69.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %flags69.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %flags69.i, align 1
  %146 = and i8 %145, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool72.not.i = icmp eq i8 %146, 0
  br i1 %tobool72.not.i, label %do.body77.i, label %do.end83.i, !prof !17

do.body77.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/build.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #6, !srcloc !18
  unreachable

do.end83.i:                                       ; preds = %do.body.i
  br i1 %tobool35.not.i, label %do.end83.i.if.end98.i_crit_edge, label %land.lhs.true.i

do.end83.i.if.end98.i_crit_edge:                  ; preds = %do.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98.i

land.lhs.true.i:                                  ; preds = %do.end83.i
  %pino_nlink85.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %143, i32 0, i32 8
  %147 = ptrtoint ptr %pino_nlink85.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pino_nlink85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool86.not.i = icmp eq i32 %148, 0
  br i1 %tobool86.not.i, label %land.lhs.true.i.if.end98.i_crit_edge, label %do.end90.i

land.lhs.true.i.if.end98.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98.i

do.end90.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %149 = tail call i32 @llvm.read_register.i32(metadata !7) #6
  %and.i.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 68
  %153 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %pid.i.i, align 8
  %name.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %136, i32 0, i32 6
  %ino94.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %136, i32 0, i32 3
  %155 = ptrtoint ptr %ino94.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %ino94.i, align 4
  %157 = ptrtoint ptr %ino95.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ino95.i, align 4
  %call97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %154, ptr noundef nonnull @.str.2, ptr noundef %name.i, i32 noundef %156, i32 noundef %158, i32 noundef %148) #10
  br label %if.end98.i

if.end98.i:                                       ; preds = %do.end90.i, %land.lhs.true.i.if.end98.i_crit_edge, %do.end83.i.if.end98.i_crit_edge
  %159 = ptrtoint ptr %ino95.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %ino95.i, align 4
  %161 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %136, align 4
  %pino_nlink100.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %162, i32 0, i32 8
  %163 = ptrtoint ptr %pino_nlink100.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %160, ptr %pino_nlink100.i, align 4
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.end98.i, %while.body59.i.if.end101.i_crit_edge
  tail call void @jffs2_free_full_dirent(ptr noundef nonnull %136) #6
  br label %while.cond56.backedge.i

while.cond56.backedge.i:                          ; preds = %if.end101.i, %if.then65.i.while.cond56.backedge.i_crit_edge
  %164 = ptrtoint ptr %ic.3343.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ic.3343.i, align 4
  %tobool58.not.i = icmp eq ptr %165, null
  br i1 %tobool58.not.i, label %while.cond56.backedge.i.while.end102.i_crit_edge, label %while.cond56.backedge.i.while.body59.i_crit_edge

while.cond56.backedge.i.while.body59.i_crit_edge: ; preds = %while.cond56.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body59.i

while.cond56.backedge.i.while.end102.i_crit_edge: ; preds = %while.cond56.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end102.i

while.end102.i:                                   ; preds = %while.cond56.backedge.i.while.end102.i_crit_edge, %while.cond56.preheader.i.while.end102.i_crit_edge
  %166 = ptrtoint ptr %ic.3343.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %ic.3343.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 212, i32 noundef 0) #6
  %call.i270.i = tail call i32 @__cond_resched() #6
  %next.i271.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.3343.i, i32 0, i32 6
  %167 = ptrtoint ptr %next.i271.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %next.i271.i, align 4
  %tobool.not.i272.i = icmp eq ptr %168, null
  br i1 %tobool.not.i272.i, label %if.end.i277.i, label %while.end102.i.while.cond56.preheader.i_crit_edge

while.end102.i.while.cond56.preheader.i_crit_edge: ; preds = %while.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond56.preheader.i

if.end.i277.i:                                    ; preds = %while.end102.i
  %inc.i273.i = add i32 %i.17342.i.ph, 1
  %169 = ptrtoint ptr %inocache_hashsize.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %inocache_hashsize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i273.i, i32 %170)
  %cmp9.i.i276.i = icmp slt i32 %inc.i273.i, %170
  br i1 %cmp9.i.i276.i, label %for.body.i.i280.preheader.i, label %if.end.i277.i.jffs2_build_filesystem.exit.thread_crit_edge

if.end.i277.i.jffs2_build_filesystem.exit.thread_crit_edge: ; preds = %if.end.i277.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jffs2_build_filesystem.exit.thread

for.body.i.i280.preheader.i:                      ; preds = %if.end.i277.i
  %171 = ptrtoint ptr %inocache_list.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %inocache_list.i.i, align 4
  br label %for.body.i.i280.i

for.body.i.i280.i:                                ; preds = %for.inc.i.i283.i.for.body.i.i280.i_crit_edge, %for.body.i.i280.preheader.i
  %i.18.i = phi i32 [ %inc.i.i281.i, %for.inc.i.i283.i.for.body.i.i280.i_crit_edge ], [ %inc.i273.i, %for.body.i.i280.preheader.i ]
  %arrayidx.i.i278.i = getelementptr ptr, ptr %172, i32 %i.18.i
  %173 = ptrtoint ptr %arrayidx.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.i.i278.i, align 4
  %tobool.not.i.i279.i = icmp eq ptr %174, null
  br i1 %tobool.not.i.i279.i, label %for.inc.i.i283.i, label %for.body.i.i280.i.while.cond56.preheader.i.outer_crit_edge

for.body.i.i280.i.while.cond56.preheader.i.outer_crit_edge: ; preds = %for.body.i.i280.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond56.preheader.i.outer

for.inc.i.i283.i:                                 ; preds = %for.body.i.i280.i
  %inc.i.i281.i = add i32 %i.18.i, 1
  %exitcond352.not.i = icmp eq i32 %inc.i.i281.i, %170
  br i1 %exitcond352.not.i, label %for.inc.i.i283.i.jffs2_build_filesystem.exit.thread_crit_edge, label %for.inc.i.i283.i.for.body.i.i280.i_crit_edge

for.inc.i.i283.i.for.body.i.i280.i_crit_edge:     ; preds = %for.inc.i.i283.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i280.i

for.inc.i.i283.i.jffs2_build_filesystem.exit.thread_crit_edge: ; preds = %for.inc.i.i283.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jffs2_build_filesystem.exit.thread

jffs2_build_filesystem.exit.thread:               ; preds = %for.inc.i.i283.i.jffs2_build_filesystem.exit.thread_crit_edge, %if.end.i277.i.jffs2_build_filesystem.exit.thread_crit_edge, %for.inc.i267.i.jffs2_build_filesystem.exit.thread_crit_edge, %if.end50.i.jffs2_build_filesystem.exit.thread_crit_edge
  tail call void @jffs2_build_xattr_subsystem(ptr noundef %c) #6
  %175 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags.i, align 4
  %and110.i = and i32 %176, -5
  store i32 %and110.i, ptr %flags.i, align 4
  tail call void @jffs2_rotate_lists(ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dead_fds.i) #6
  %resv_blocks_deletion.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 21
  %177 = ptrtoint ptr %resv_blocks_deletion.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 2, ptr %resv_blocks_deletion.i, align 1
  %178 = ptrtoint ptr %flash_size to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %flash_size, align 4
  %div.i89 = udiv i32 %179, 50
  %180 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %nr_blocks, align 4
  %mul.i90 = mul i32 %181, 100
  %182 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %sector_size, align 4
  %sub.i = add nsw i32 %div.i89, -1
  %add.i = add i32 %sub.i, %mul.i90
  %add1.i = add i32 %add.i, %183
  %div4.i = udiv i32 %add1.i, %183
  %184 = trunc i32 %div4.i to i8
  %conv6.i = add i8 %184, 2
  %resv_blocks_write.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 20
  %185 = ptrtoint ptr %resv_blocks_write.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv6.i, ptr %resv_blocks_write.i, align 4
  %add9.i = add i8 %184, 3
  %resv_blocks_gctrigger.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 22
  %186 = ptrtoint ptr %resv_blocks_gctrigger.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %add9.i, ptr %resv_blocks_gctrigger.i, align 2
  %resv_blocks_gcmerge.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 24
  %187 = ptrtoint ptr %resv_blocks_gcmerge.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 3, ptr %resv_blocks_gcmerge.i, align 4
  %resv_blocks_gcbad.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 23
  %188 = ptrtoint ptr %resv_blocks_gcbad.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %resv_blocks_gcbad.i, align 1
  %vdirty_blocks_gctrigger.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 25
  %189 = ptrtoint ptr %vdirty_blocks_gctrigger.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %add9.i, ptr %vdirty_blocks_gctrigger.i, align 1
  %div18.i = udiv i32 %179, 100
  %add19.i = add i32 %183, %div18.i
  %nospc_dirty_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 26
  %190 = ptrtoint ptr %nospc_dirty_size.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %add19.i, ptr %nospc_dirty_size.i, align 4
  br label %cleanup

if.then113.i:                                     ; preds = %if.end23
  %inocache_list.i286.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 47
  %inocache_hashsize.i287.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 46
  %191 = ptrtoint ptr %inocache_hashsize.i287.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %inocache_hashsize.i287.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp9.i288.i = icmp sgt i32 %192, 0
  br i1 %cmp9.i288.i, label %for.body.i291.preheader.i, label %jffs2_build_filesystem.exit.thread94

jffs2_build_filesystem.exit.thread94:             ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @jffs2_clear_xattr_subsystem(ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dead_fds.i) #6
  br label %if.then26

for.body.i291.preheader.i:                        ; preds = %if.then113.i
  %193 = ptrtoint ptr %inocache_list.i286.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %inocache_list.i286.i, align 4
  br label %for.body.i291.i

for.body.i291.i:                                  ; preds = %for.inc.i294.i.for.body.i291.i_crit_edge, %for.body.i291.preheader.i
  %i.20.i = phi i32 [ %inc.i292.i, %for.inc.i294.i.for.body.i291.i_crit_edge ], [ 0, %for.body.i291.preheader.i ]
  %arrayidx.i289.i = getelementptr ptr, ptr %194, i32 %i.20.i
  %195 = ptrtoint ptr %arrayidx.i289.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx.i289.i, align 4
  %tobool.not.i290.i = icmp eq ptr %196, null
  br i1 %tobool.not.i290.i, label %for.inc.i294.i, label %for.body.i291.i.while.cond118.preheader.i.outer_crit_edge

for.body.i291.i.while.cond118.preheader.i.outer_crit_edge: ; preds = %for.body.i291.i
  br label %while.cond118.preheader.i.outer

for.inc.i294.i:                                   ; preds = %for.body.i291.i
  %inc.i292.i = add nuw nsw i32 %i.20.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i292.i, %192
  br i1 %exitcond.not.i, label %for.inc.i294.i.jffs2_build_filesystem.exit_crit_edge, label %for.inc.i294.i.for.body.i291.i_crit_edge

for.inc.i294.i.for.body.i291.i_crit_edge:         ; preds = %for.inc.i294.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i291.i

for.inc.i294.i.jffs2_build_filesystem.exit_crit_edge: ; preds = %for.inc.i294.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jffs2_build_filesystem.exit

while.cond118.preheader.i.outer:                  ; preds = %for.body.i.i306.i.while.cond118.preheader.i.outer_crit_edge, %for.body.i291.i.while.cond118.preheader.i.outer_crit_edge
  %ic.4328.i.ph = phi ptr [ %196, %for.body.i291.i.while.cond118.preheader.i.outer_crit_edge ], [ %212, %for.body.i.i306.i.while.cond118.preheader.i.outer_crit_edge ]
  %i.22327.i.ph = phi i32 [ %i.20.i, %for.body.i291.i.while.cond118.preheader.i.outer_crit_edge ], [ %i.23.i, %for.body.i.i306.i.while.cond118.preheader.i.outer_crit_edge ]
  br label %while.cond118.preheader.i

while.cond118.preheader.i:                        ; preds = %for.inc126.i.while.cond118.preheader.i_crit_edge, %while.cond118.preheader.i.outer
  %ic.4328.i = phi ptr [ %206, %for.inc126.i.while.cond118.preheader.i_crit_edge ], [ %ic.4328.i.ph, %while.cond118.preheader.i.outer ]
  %197 = ptrtoint ptr %ic.4328.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ic.4328.i, align 4
  %tobool120.not325.i = icmp eq ptr %198, null
  br i1 %tobool120.not325.i, label %while.cond118.preheader.i.for.inc126.i_crit_edge, label %while.cond118.preheader.i.while.body121.i_crit_edge

while.cond118.preheader.i.while.body121.i_crit_edge: ; preds = %while.cond118.preheader.i
  br label %while.body121.i

while.cond118.preheader.i.for.inc126.i_crit_edge: ; preds = %while.cond118.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc126.i

while.body121.i:                                  ; preds = %while.body121.i.while.body121.i_crit_edge, %while.cond118.preheader.i.while.body121.i_crit_edge
  %199 = phi ptr [ %204, %while.body121.i.while.body121.i_crit_edge ], [ %198, %while.cond118.preheader.i.while.body121.i_crit_edge ]
  %next123.i = getelementptr inbounds %struct.jffs2_full_dirent, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %next123.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %next123.i, align 4
  %202 = ptrtoint ptr %ic.4328.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %201, ptr %ic.4328.i, align 4
  tail call void @jffs2_free_full_dirent(ptr noundef nonnull %199) #6
  %203 = ptrtoint ptr %ic.4328.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ic.4328.i, align 4
  %tobool120.not.i = icmp eq ptr %204, null
  br i1 %tobool120.not.i, label %while.body121.i.for.inc126.i_crit_edge, label %while.body121.i.while.body121.i_crit_edge

while.body121.i.while.body121.i_crit_edge:        ; preds = %while.body121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body121.i

while.body121.i.for.inc126.i_crit_edge:           ; preds = %while.body121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc126.i

for.inc126.i:                                     ; preds = %while.body121.i.for.inc126.i_crit_edge, %while.cond118.preheader.i.for.inc126.i_crit_edge
  %next.i297.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.4328.i, i32 0, i32 6
  %205 = ptrtoint ptr %next.i297.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %next.i297.i, align 4
  %tobool.not.i298.i = icmp eq ptr %206, null
  br i1 %tobool.not.i298.i, label %if.end.i303.i, label %for.inc126.i.while.cond118.preheader.i_crit_edge

for.inc126.i.while.cond118.preheader.i_crit_edge: ; preds = %for.inc126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond118.preheader.i

if.end.i303.i:                                    ; preds = %for.inc126.i
  %inc.i299.i = add i32 %i.22327.i.ph, 1
  %207 = ptrtoint ptr %inocache_hashsize.i287.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %inocache_hashsize.i287.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i299.i, i32 %208)
  %cmp9.i.i302.i = icmp slt i32 %inc.i299.i, %208
  br i1 %cmp9.i.i302.i, label %for.body.i.i306.preheader.i, label %if.end.i303.i.jffs2_build_filesystem.exit_crit_edge

if.end.i303.i.jffs2_build_filesystem.exit_crit_edge: ; preds = %if.end.i303.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jffs2_build_filesystem.exit

for.body.i.i306.preheader.i:                      ; preds = %if.end.i303.i
  %209 = ptrtoint ptr %inocache_list.i286.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %inocache_list.i286.i, align 4
  br label %for.body.i.i306.i

for.body.i.i306.i:                                ; preds = %for.inc.i.i309.i.for.body.i.i306.i_crit_edge, %for.body.i.i306.preheader.i
  %i.23.i = phi i32 [ %inc.i.i307.i, %for.inc.i.i309.i.for.body.i.i306.i_crit_edge ], [ %inc.i299.i, %for.body.i.i306.preheader.i ]
  %arrayidx.i.i304.i = getelementptr ptr, ptr %210, i32 %i.23.i
  %211 = ptrtoint ptr %arrayidx.i.i304.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx.i.i304.i, align 4
  %tobool.not.i.i305.i = icmp eq ptr %212, null
  br i1 %tobool.not.i.i305.i, label %for.inc.i.i309.i, label %for.body.i.i306.i.while.cond118.preheader.i.outer_crit_edge

for.body.i.i306.i.while.cond118.preheader.i.outer_crit_edge: ; preds = %for.body.i.i306.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond118.preheader.i.outer

for.inc.i.i309.i:                                 ; preds = %for.body.i.i306.i
  %inc.i.i307.i = add i32 %i.23.i, 1
  %exitcond344.not.i = icmp eq i32 %inc.i.i307.i, %208
  br i1 %exitcond344.not.i, label %for.inc.i.i309.i.jffs2_build_filesystem.exit_crit_edge, label %for.inc.i.i309.i.for.body.i.i306.i_crit_edge

for.inc.i.i309.i.for.body.i.i306.i_crit_edge:     ; preds = %for.inc.i.i309.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i306.i

for.inc.i.i309.i.jffs2_build_filesystem.exit_crit_edge: ; preds = %for.inc.i.i309.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jffs2_build_filesystem.exit

jffs2_build_filesystem.exit:                      ; preds = %for.inc.i.i309.i.jffs2_build_filesystem.exit_crit_edge, %if.end.i303.i.jffs2_build_filesystem.exit_crit_edge, %for.inc.i294.i.jffs2_build_filesystem.exit_crit_edge
  tail call void @jffs2_clear_xattr_subsystem(ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dead_fds.i) #6
  br label %if.then26

if.then26:                                        ; preds = %jffs2_build_filesystem.exit, %jffs2_build_filesystem.exit.thread94
  tail call void @jffs2_free_ino_caches(ptr noundef %c) #6
  tail call void @jffs2_free_raw_node_refs(ptr noundef %c) #6
  br label %out_free

out_free:                                         ; preds = %if.then26, %for.end.out_free_crit_edge
  %ret.0 = phi i32 [ %call20, %for.end.out_free_crit_edge ], [ -5, %if.then26 ]
  %213 = ptrtoint ptr %blocks6 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %blocks6, align 4
  tail call void @kvfree(ptr noundef %214) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free, %jffs2_build_filesystem.exit.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ 0, %jffs2_build_filesystem.exit.thread ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_sum_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_ino_caches(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_raw_node_refs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_scan_medium(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jffs2_build_remove_unlinked_inode(ptr noundef %c, ptr noundef %ic, ptr nocapture noundef %dead_fds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nodes = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic, i32 0, i32 1
  %0 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nodes, align 4
  %cmp.not50 = icmp eq ptr %1, %ic
  br i1 %cmp.not50, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %raw.051 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %raw.051 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raw.051, align 4
  tail call void @jffs2_mark_node_obsolete(ptr noundef %c, ptr noundef %raw.051) #6
  %cmp.not = icmp eq ptr %3, %ic
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %4 = ptrtoint ptr %ic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ic, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %while.end.if.end30_crit_edge, label %while.end.while.body6_crit_edge

while.end.while.body6_crit_edge:                  ; preds = %while.end
  br label %while.body6

while.end.if.end30_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

while.body6:                                      ; preds = %cleanup.while.body6_crit_edge, %while.end.while.body6_crit_edge
  %6 = phi ptr [ %.pr, %cleanup.while.body6_crit_edge ], [ %5, %while.end.while.body6_crit_edge ]
  %next8 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %next8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next8, align 4
  %9 = ptrtoint ptr %ic to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ic, align 4
  %ino = getelementptr inbounds %struct.jffs2_full_dirent, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ino, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.then11, label %if.end

if.then11:                                        ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @jffs2_free_full_dirent(ptr noundef nonnull %6) #6
  br label %cleanup

if.end:                                           ; preds = %while.body6
  %call = tail call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %11) #6
  %tobool18.not = icmp eq ptr %call, null
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @jffs2_free_full_dirent(ptr noundef nonnull %6) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pino_nlink, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %pino_nlink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool23.not = icmp eq i32 %dec, 0
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dead_fds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dead_fds, align 4
  %16 = ptrtoint ptr %next8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %next8, align 4
  store ptr %6, ptr %dead_fds, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @jffs2_free_full_dirent(ptr noundef nonnull %6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then24, %if.then19, %if.then11
  %17 = ptrtoint ptr %ic to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %ic, align 4
  %tobool5.not = icmp eq ptr %.pr, null
  br i1 %tobool5.not, label %cleanup.if.end30_crit_edge, label %cleanup.while.body6_crit_edge

cleanup.while.body6_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body6

cleanup.if.end30_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end30:                                         ; preds = %cleanup.if.end30_crit_edge, %while.end.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_get_ino_cache(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dirent(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_build_xattr_subsystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_rotate_lists(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_clear_xattr_subsystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_mark_node_obsolete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6}
!llvm.named.register.sp = !{!7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/build.c", i32 126, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/jffs2/build.c", i32 201, i32 6}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @jffs2_build_filesystem._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @jffs2_build_filesystem._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{!"sp"}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2154064104, i64 2154068646, i64 2154064141, i64 2154064197, i64 2154064231, i64 2154064255, i64 2154064296, i64 2154064317, i64 2154064345, i64 2154064379}
