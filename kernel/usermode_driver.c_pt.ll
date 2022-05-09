; ModuleID = '/llk/IR_all_yes/kernel/usermode_driver.c_pt.bc'
source_filename = "../kernel/usermode_driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+umd_load_blob\22, \22a\22\09"
module asm "\09.weak\09__crc_umd_load_blob\09\09\09\09"
module asm "\09.long\09__crc_umd_load_blob\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_umd_load_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22umd_load_blob\22\09\09\09\09\09"
module asm "__kstrtabns_umd_load_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+umd_unload_blob\22, \22a\22\09"
module asm "\09.weak\09__crc_umd_unload_blob\09\09\09\09"
module asm "\09.long\09__crc_umd_unload_blob\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_umd_unload_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22umd_unload_blob\22\09\09\09\09\09"
module asm "__kstrtabns_umd_unload_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+umd_cleanup_helper\22, \22a\22\09"
module asm "\09.weak\09__crc_umd_cleanup_helper\09\09\09\09"
module asm "\09.long\09__crc_umd_cleanup_helper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_umd_cleanup_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22umd_cleanup_helper\22\09\09\09\09\09"
module asm "__kstrtabns_umd_cleanup_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fork_usermode_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_fork_usermode_driver\09\09\09\09"
module asm "\09.long\09__crc_fork_usermode_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fork_usermode_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22fork_usermode_driver\22\09\09\09\09\09"
module asm "__kstrtabns_fork_usermode_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.umd_info = type { ptr, ptr, ptr, %struct.path, ptr }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@umd_load_blob.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kernel/usermode_driver.c\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_umd_load_blob = external dso_local constant [0 x i8], align 1
@__kstrtabns_umd_load_blob = external dso_local constant [0 x i8], align 1
@__ksymtab_umd_load_blob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @umd_load_blob to i32), ptr @__kstrtab_umd_load_blob, ptr @__kstrtabns_umd_load_blob }, section "___ksymtab_gpl+umd_load_blob", align 4
@umd_unload_blob.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_umd_unload_blob = external dso_local constant [0 x i8], align 1
@__kstrtabns_umd_unload_blob = external dso_local constant [0 x i8], align 1
@__ksymtab_umd_unload_blob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @umd_unload_blob to i32), ptr @__kstrtab_umd_unload_blob, ptr @__kstrtabns_umd_unload_blob }, section "___ksymtab_gpl+umd_unload_blob", align 4
@__kstrtab_umd_cleanup_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_umd_cleanup_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_umd_cleanup_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @umd_cleanup_helper to i32), ptr @__kstrtab_umd_cleanup_helper, ptr @__kstrtabns_umd_cleanup_helper }, section "___ksymtab_gpl+umd_cleanup_helper", align 4
@fork_usermode_driver.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_fork_usermode_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_fork_usermode_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_fork_usermode_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fork_usermode_driver to i32), ptr @__kstrtab_fork_usermode_driver, ptr @__kstrtabns_fork_usermode_driver }, section "___ksymtab_gpl+fork_usermode_driver", align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tmpfs\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 64, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [28 x i8] c"../kernel/usermode_driver.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 20, i32 21 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_fork_usermode_driver, ptr @__ksymtab_umd_cleanup_helper, ptr @__ksymtab_umd_load_blob, ptr @__ksymtab_umd_unload_blob, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @umd_load_blob(ptr nocapture noundef %info, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  %.compoundliteral.i.i = alloca %struct.path, align 4
  %pos.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wd = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 3
  %dentry = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.rhs, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

lor.rhs:                                          ; preds = %entry
  %2 = ptrtoint ptr %wd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wd, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end41, label %lor.rhs.land.rhs_crit_edge

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b59 = load i1, ptr @umd_load_blob.__already_done, align 1
  br i1 %.b59, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !27

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @umd_load_blob.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end41:                                         ; preds = %lor.rhs
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #5
  %6 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %pos.i, align 8
  %call.i = tail call ptr @get_fs_type(ptr noundef nonnull @.str.1) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %blob_to_mnt.exit.thread, label %if.end.i

blob_to_mnt.exit.thread:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #5
  br label %if.then43

if.end.i:                                         ; preds = %if.end41
  %call2.i = tail call ptr @kern_mount(ptr noundef nonnull %call.i) #5
  tail call void @put_filesystem(ptr noundef nonnull %call.i) #5
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.blob_to_mnt.exit_crit_edge, label %if.end5.i

if.end.i.blob_to_mnt.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blob_to_mnt.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral.i.i) #5
  %7 = ptrtoint ptr %.compoundliteral.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2.i, ptr %.compoundliteral.i.i, align 4
  %dentry.i.i = getelementptr inbounds %struct.path, ptr %.compoundliteral.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call2.i, align 4
  %10 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dentry.i.i, align 4
  %call.i.i = call ptr @file_open_root(ptr noundef nonnull %.compoundliteral.i.i, ptr noundef %5, i32 noundef 65, i16 noundef zeroext 448) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral.i.i) #5
  %cmp.i37.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @mntput(ptr noundef %call2.i) #5
  br label %blob_to_mnt.exit

if.end10.i:                                       ; preds = %if.end5.i
  %call11.i = call i32 @kernel_write(ptr noundef %call.i.i, ptr noundef %data, i32 noundef %len, ptr noundef nonnull %pos.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %len)
  %cmp.not.i = icmp eq i32 %call11.i, %len
  br i1 %cmp.not.i, label %if.end18.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11.i)
  %cmp13.i = icmp sgt i32 %call11.i, -1
  %spec.store.select.i = select i1 %cmp13.i, i32 -12, i32 %call11.i
  %call16.i = call i32 @filp_close(ptr noundef %call.i.i, ptr noundef null) #5
  call void @mntput(ptr noundef %call2.i) #5
  %11 = inttoptr i32 %spec.store.select.i to ptr
  br label %blob_to_mnt.exit

if.end18.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @fput(ptr noundef %call.i.i) #5
  call void @flush_delayed_fput() #5
  call void @task_work_run() #5
  br label %blob_to_mnt.exit

blob_to_mnt.exit:                                 ; preds = %if.end18.i, %if.then12.i, %if.then8.i, %if.end.i.blob_to_mnt.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %if.then8.i ], [ %11, %if.then12.i ], [ %call2.i, %if.end18.i ], [ %call2.i, %if.end.i.blob_to_mnt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #5
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %blob_to_mnt.exit.if.then43_crit_edge, label %if.end45

blob_to_mnt.exit.if.then43_crit_edge:             ; preds = %blob_to_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then43:                                        ; preds = %blob_to_mnt.exit.if.then43_crit_edge, %blob_to_mnt.exit.thread
  %retval.0.i63 = phi ptr [ inttoptr (i32 -19 to ptr), %blob_to_mnt.exit.thread ], [ %retval.0.i, %blob_to_mnt.exit.if.then43_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i63 to i32
  br label %cleanup

if.end45:                                         ; preds = %blob_to_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %wd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i, ptr %wd, align 4
  %14 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %retval.0.i, align 4
  %16 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dentry, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then43, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then43 ], [ 0, %if.end45 ], [ -16, %if.then ], [ -16, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @umd_unload_blob(ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wd = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %wd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.rhs_crit_edge, label %lor.lhs.false

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

lor.lhs.false:                                    ; preds = %entry
  %dentry = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.land.rhs_crit_edge, label %lor.rhs

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp.not = icmp eq ptr %5, %3
  br i1 %cmp.not, label %if.end44, label %lor.rhs.land.rhs_crit_edge

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %lor.lhs.false.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b60 = load i1, ptr @umd_unload_blob.__already_done, align 1
  br i1 %.b60, label %land.rhs.return_crit_edge, label %if.then, !prof !27

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @umd_unload_blob.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #5
  br label %return

if.end44:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kern_unmount(ptr noundef nonnull %1) #5
  %6 = ptrtoint ptr %wd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %wd, align 4
  %7 = ptrtoint ptr %dentry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dentry, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -22, %if.then ], [ -22, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @umd_cleanup_helper(ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_to_umh = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %pipe_to_umh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_to_umh, align 4
  tail call void @fput(ptr noundef %1) #5
  %pipe_from_umh = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %pipe_from_umh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_from_umh, align 4
  tail call void @fput(ptr noundef %3) #5
  %tgid = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgid, align 4
  tail call void @put_pid(ptr noundef %5) #5
  %6 = ptrtoint ptr %tgid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tgid, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fork_usermode_driver(ptr noundef %info) #0 align 64 {
entry:
  %argv = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %argv) #5
  %0 = getelementptr inbounds [2 x ptr], ptr %argv, i32 0, i32 1
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %argv, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %0, align 4
  %tgid = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 4
  %5 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tgid, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @fork_usermode_driver.__already_done, align 1
  br i1 %.b52, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !27

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @fork_usermode_driver.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end38:                                         ; preds = %entry
  %call = call ptr @call_usermodehelper_setup(ptr noundef %2, ptr noundef nonnull %argv, ptr noundef null, i32 noundef 3264, ptr noundef nonnull @umd_setup, ptr noundef nonnull @umd_cleanup, ptr noundef %info) #5
  %tobool40.not = icmp eq ptr %call, null
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = call i32 @call_usermodehelper_exec(ptr noundef nonnull %call, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then ], [ %call43, %if.end42 ], [ -12, %if.end38.cleanup_crit_edge ], [ -16, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %argv) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @umd_setup(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %new) #0 align 64 {
entry:
  %from_umh = alloca [2 x ptr], align 4
  %to_umh = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.subprocess_info, ptr %info, i32 0, i32 9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %from_umh) #5
  %2 = ptrtoint ptr %from_umh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %from_umh, align 4, !annotation !28
  %3 = getelementptr inbounds [2 x ptr], ptr %from_umh, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_umh) #5
  %5 = ptrtoint ptr %to_umh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %to_umh, align 4, !annotation !28
  %6 = getelementptr inbounds [2 x ptr], ptr %to_umh, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !28
  %call = call i32 @create_pipe_files(ptr noundef nonnull %to_umh, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %to_umh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %to_umh, align 4
  %call1 = call i32 @replace_fd(i32 noundef 0, ptr noundef %9, i32 noundef 0) #5
  %10 = ptrtoint ptr %to_umh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %to_umh, align 4
  call void @fput(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %6, align 4
  call void @fput(ptr noundef %13) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call i32 @create_pipe_files(ptr noundef nonnull %from_umh, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 4
  call void @fput(ptr noundef %15) #5
  %call11 = call i32 @replace_fd(i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %call14 = call i32 @replace_fd(i32 noundef 1, ptr noundef %17, i32 noundef 0) #5
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  call void @fput(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16 = icmp slt i32 %call14, 0
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 4
  call void @fput(ptr noundef %21) #5
  %call19 = call i32 @replace_fd(i32 noundef 0, ptr noundef null, i32 noundef 0) #5
  %22 = ptrtoint ptr %from_umh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %from_umh, align 4
  call void @fput(ptr noundef %23) #5
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %24 = call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 107
  %28 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fs, align 128
  %wd = getelementptr inbounds %struct.umd_info, ptr %1, i32 0, i32 3
  call void @set_fs_pwd(ptr noundef %29, ptr noundef %wd) #5
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %6, align 4
  %pipe_to_umh = getelementptr inbounds %struct.umd_info, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %pipe_to_umh to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %pipe_to_umh, align 4
  %33 = ptrtoint ptr %from_umh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %from_umh, align 4
  %pipe_from_umh = getelementptr inbounds %struct.umd_info, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %pipe_from_umh to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %pipe_from_umh, align 4
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 111
  %38 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %39, i32 0, i32 22, i32 1
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end21.get_pid.exit_crit_edge, label %if.then.i

if.end21.get_pid.exit_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_pid.exit

if.then.i:                                        ; preds = %if.end21
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %41, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr nonnull %41, i32 1, i32 3, i32 1) #5
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #5, !srcloc !29
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !30

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %43 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !27

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef %.sink.i.i.i.i) #5
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %if.end21.get_pid.exit_crit_edge
  %tgid = getelementptr inbounds %struct.umd_info, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %tgid to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %tgid, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_pid.exit, %if.then17, %if.then9, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call7, %if.then9 ], [ %call14, %if.then17 ], [ 0, %get_pid.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_umh) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %from_umh) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @umd_cleanup(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %retval = getelementptr inbounds %struct.subprocess_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %retval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %retval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.subprocess_info, ptr %info, i32 0, i32 9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %pipe_to_umh.i = getelementptr inbounds %struct.umd_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pipe_to_umh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_to_umh.i, align 4
  tail call void @fput(ptr noundef %5) #5
  %pipe_from_umh.i = getelementptr inbounds %struct.umd_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pipe_from_umh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe_from_umh.i, align 4
  tail call void @fput(ptr noundef %7) #5
  %tgid.i = getelementptr inbounds %struct.umd_info, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tgid.i, align 4
  tail call void @put_pid(ptr noundef %9) #5
  %10 = ptrtoint ptr %tgid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tgid.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_delayed_fput() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_pipe_files(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @replace_fd(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/usermode_driver.c", i32 64, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_umd_load_blob, !4, !"__ksymtab_umd_load_blob", i1 false, i1 false}
!4 = !{!"../kernel/usermode_driver.c", i32 75, i32 1}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/usermode_driver.c", i32 84, i32 6}
!7 = !{ptr @__ksymtab_umd_unload_blob, !8, !"__ksymtab_umd_unload_blob", i1 false, i1 false}
!8 = !{!"../kernel/usermode_driver.c", i32 94, i32 1}
!9 = !{ptr @__ksymtab_umd_cleanup_helper, !10, !"__ksymtab_umd_cleanup_helper", i1 false, i1 false}
!10 = !{!"../kernel/usermode_driver.c", i32 157, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/usermode_driver.c", i32 175, i32 6}
!13 = !{ptr @__ksymtab_fork_usermode_driver, !14, !"__ksymtab_fork_usermode_driver", i1 false, i1 false}
!14 = !{!"../kernel/usermode_driver.c", i32 189, i32 1}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/usermode_driver.c", i32 20, i32 21}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{!"auto-init"}
!29 = !{i64 2148517305, i64 2148517337, i64 2148517366, i64 2148517400, i64 2148517431, i64 2148517454}
!30 = !{!"branch_weights", i32 1, i32 2000}
