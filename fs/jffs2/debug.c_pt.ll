; ModuleID = '/llk/IR_all_yes/fs/jffs2/debug.c_pt.bc'
source_filename = "../fs/jffs2/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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

@__jffs2_dbg_acct_sanity_check_nolock._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, align 1
@.str = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013jffs2: error: (%d) %s: eeep, space accounting for block at 0x%08x is screwed.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"__jffs2_dbg_acct_sanity_check_nolock\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/jffs2/debug.c\00", [47 x i8] zeroinitializer }, align 32
@__jffs2_dbg_acct_sanity_check_nolock._entry_ptr = internal global ptr @__jffs2_dbg_acct_sanity_check_nolock._entry, section ".printk_index", align 4
@__jffs2_dbg_acct_sanity_check_nolock._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, align 1
@.str.4 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"\013jffs2: error: (%d) %s: free %#08x + dirty %#08x + used %#08x + wasted %#08x + unchecked %#08x != total %#08x.\0A\00", [47 x i8] zeroinitializer }, align 32
@__jffs2_dbg_acct_sanity_check_nolock._entry_ptr.5 = internal global ptr @__jffs2_dbg_acct_sanity_check_nolock._entry.3, section ".printk_index", align 4
@__jffs2_dbg_acct_sanity_check_nolock._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, align 1
@.str.7 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013jffs2: error: (%d) %s: eeep, space accounting superblock info is screwed.\0A\00", [51 x i8] zeroinitializer }, align 32
@__jffs2_dbg_acct_sanity_check_nolock._entry_ptr.8 = internal global ptr @__jffs2_dbg_acct_sanity_check_nolock._entry.6, section ".printk_index", align 4
@__jffs2_dbg_acct_sanity_check_nolock._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, align 1
@.str.10 = internal constant { [141 x i8], [51 x i8] } { [141 x i8] c"\013jffs2: error: (%d) %s: free %#08x + dirty %#08x + used %#08x + erasing %#08x + bad %#08x + wasted %#08x + unchecked %#08x != total %#08x.\0A\00", [51 x i8] zeroinitializer }, align 32
@__jffs2_dbg_acct_sanity_check_nolock._entry_ptr.11 = internal global ptr @__jffs2_dbg_acct_sanity_check_nolock._entry.9, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 34, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 35, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 43, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [20 x i8] c"../fs/jffs2/debug.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 44, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__jffs2_dbg_acct_sanity_check_nolock._entry, ptr @__jffs2_dbg_acct_sanity_check_nolock._entry.3, ptr @__jffs2_dbg_acct_sanity_check_nolock._entry.6, ptr @__jffs2_dbg_acct_sanity_check_nolock._entry.9, ptr @__jffs2_dbg_acct_sanity_check_nolock._entry_ptr, ptr @__jffs2_dbg_acct_sanity_check_nolock._entry_ptr.11, ptr @__jffs2_dbg_acct_sanity_check_nolock._entry_ptr.5, ptr @__jffs2_dbg_acct_sanity_check_nolock._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__jffs2_dbg_acct_sanity_check_nolock(ptr nocapture noundef readonly %c, ptr noundef readonly %jeb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %jeb, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %used_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 4
  %0 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used_size, align 4
  %dirty_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 5
  %2 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_size, align 4
  %add = add i32 %3, %1
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 7
  %4 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %free_size, align 4
  %add1 = add i32 %add, %5
  %wasted_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 6
  %6 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wasted_size, align 4
  %add2 = add i32 %add1, %7
  %unchecked_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 3
  %8 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unchecked_size, align 4
  %add3 = add i32 %add2, %9
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %10 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sector_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %11)
  %cmp.not = icmp eq i32 %add3, %11
  br i1 %cmp.not, label %land.rhs.if.end_crit_edge, label %do.end, !prof !28

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %12 = tail call i32 @llvm.read_register.i32(metadata !18) #4
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid.i, align 8
  %offset = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %17, ptr noundef nonnull @.str.1, i32 noundef %19) #7
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid.i99 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i99 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i99, align 8
  %24 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %free_size, align 4
  %26 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dirty_size, align 4
  %28 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used_size, align 4
  %30 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wasted_size, align 4
  %32 = ptrtoint ptr %unchecked_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %unchecked_size, align 4
  %34 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sector_size, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %23, ptr noundef nonnull @.str.1, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 38, 0\0A.popsection", ""() #4, !srcloc !29
  unreachable

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %used_size25 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  %36 = ptrtoint ptr %used_size25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used_size25, align 4
  %dirty_size26 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %38 = ptrtoint ptr %dirty_size26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dirty_size26, align 4
  %add27 = add i32 %39, %37
  %free_size28 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 13
  %40 = ptrtoint ptr %free_size28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %free_size28, align 4
  %add29 = add i32 %add27, %41
  %erasing_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 14
  %42 = ptrtoint ptr %erasing_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %erasing_size, align 4
  %add30 = add i32 %add29, %43
  %bad_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 15
  %44 = ptrtoint ptr %bad_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bad_size, align 4
  %add31 = add i32 %add30, %45
  %wasted_size32 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %46 = ptrtoint ptr %wasted_size32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wasted_size32, align 4
  %add33 = add i32 %add31, %47
  %unchecked_size34 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 17
  %48 = ptrtoint ptr %unchecked_size34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %unchecked_size34, align 4
  %add35 = add i32 %add33, %49
  %flash_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 9
  %50 = ptrtoint ptr %flash_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flash_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %51)
  %cmp36.not = icmp eq i32 %add35, %51
  br i1 %cmp36.not, label %if.end70, label %do.end45, !prof !28

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %52 = tail call i32 @llvm.read_register.i32(metadata !18) #4
  %and.i100 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i100 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task48, align 8
  %pid.i101 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 68
  %56 = ptrtoint ptr %pid.i101 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid.i101, align 8
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %57, ptr noundef nonnull @.str.1) #7
  %58 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task48, align 8
  %pid.i102 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 68
  %60 = ptrtoint ptr %pid.i102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pid.i102, align 8
  %62 = ptrtoint ptr %free_size28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %free_size28, align 4
  %64 = ptrtoint ptr %dirty_size26 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dirty_size26, align 4
  %66 = ptrtoint ptr %used_size25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %used_size25, align 4
  %68 = ptrtoint ptr %erasing_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %erasing_size, align 4
  %70 = ptrtoint ptr %bad_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bad_size, align 4
  %72 = ptrtoint ptr %wasted_size32 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wasted_size32, align 4
  %74 = ptrtoint ptr %unchecked_size34 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %unchecked_size34, align 4
  %76 = ptrtoint ptr %flash_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flash_size, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %61, ptr noundef nonnull @.str.1, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 47, 0\0A.popsection", ""() #4, !srcloc !30
  unreachable

if.end70:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__jffs2_dbg_acct_sanity_check(ptr noundef %c, ptr noundef %jeb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #4
  tail call void @__jffs2_dbg_acct_sanity_check_nolock(ptr noundef %c, ptr noundef %jeb)
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/debug.c", i32 34, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__jffs2_dbg_acct_sanity_check_nolock._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__jffs2_dbg_acct_sanity_check_nolock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/debug.c", i32 35, i32 3}
!8 = !{ptr @__jffs2_dbg_acct_sanity_check_nolock._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @__jffs2_dbg_acct_sanity_check_nolock._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jffs2/debug.c", i32 43, i32 3}
!12 = !{ptr @__jffs2_dbg_acct_sanity_check_nolock._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @__jffs2_dbg_acct_sanity_check_nolock._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/jffs2/debug.c", i32 44, i32 3}
!16 = !{ptr @__jffs2_dbg_acct_sanity_check_nolock._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @__jffs2_dbg_acct_sanity_check_nolock._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
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
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2154436101, i64 2154436581, i64 2154436138, i64 2154436194, i64 2154436228, i64 2154436252, i64 2154436293, i64 2154436314, i64 2154436342, i64 2154436376}
!30 = !{i64 2154443341, i64 2154443821, i64 2154443378, i64 2154443434, i64 2154443468, i64 2154443492, i64 2154443533, i64 2154443554, i64 2154443582, i64 2154443616}
