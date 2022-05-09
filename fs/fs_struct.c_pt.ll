; ModuleID = '/llk/IR_all_yes/fs/fs_struct.c_pt.bc'
source_filename = "../fs/fs_struct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+unshare_fs_struct\22, \22a\22\09"
module asm "\09.weak\09__crc_unshare_fs_struct\09\09\09\09"
module asm "\09.long\09__crc_unshare_fs_struct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unshare_fs_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22unshare_fs_struct\22\09\09\09\09\09"
module asm "__kstrtabns_unshare_fs_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+current_umask\22, \22a\22\09"
module asm "\09.weak\09__crc_current_umask\09\09\09\09"
module asm "\09.long\09__crc_current_umask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_current_umask:\09\09\09\09\09"
module asm "\09.asciz \09\22current_umask\22\09\09\09\09\09"
module asm "__kstrtabns_current_umask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.40, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.40 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.path = type { ptr, ptr }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 128
@fs_cachep = external dso_local local_unnamed_addr global ptr, align 4
@copy_fs_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&fs->lock\00", [22 x i8] zeroinitializer }, align 32
@copy_fs_struct.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_unshare_fs_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_unshare_fs_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_unshare_fs_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unshare_fs_struct to i32), ptr @__kstrtab_unshare_fs_struct, ptr @__kstrtabns_unshare_fs_struct }, section "___ksymtab_gpl+unshare_fs_struct", align 4
@__kstrtab_current_umask = external dso_local constant [0 x i8], align 1
@__kstrtabns_current_umask = external dso_local constant [0 x i8], align 1
@__ksymtab_current_umask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @current_umask to i32), ptr @__kstrtab_current_umask, ptr @__kstrtabns_current_umask }, section "___ksymtab+current_umask", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_fs.lock\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init_fs.seq.seqcount\00", [43 x i8] zeroinitializer }, align 32
@init_fs = dso_local global { %struct.fs_struct, [52 x i8] } { %struct.fs_struct { i32 1, %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.seqcount_spinlock { %struct.seqcount { i32 0, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr getelementptr (i8, ptr @init_fs, i64 4) }, i32 18, i32 0, %struct.path zeroinitializer, %struct.path zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 119, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 120, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 165, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 166, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant [8 x i8] c"init_fs\00", align 1
@___asan_gen_.25 = private constant [18 x i8] c"../fs/fs_struct.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 163, i32 18 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 277, i32 1 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_current_umask, ptr @__ksymtab_unshare_fs_struct, ptr @copy_fs_struct.__key, ptr @.str, ptr @copy_fs_struct.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @init_fs, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_fs_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_fs_struct.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_fs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_fs_root(ptr noundef %fs, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %old_root = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_root) #6
  tail call void @path_get(ptr noundef %path) #6
  %lock = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %seq = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_spinlock_assert.exit_crit_edge, label %land.rhs.i

entry.__seqprop_spinlock_assert.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__seqprop_spinlock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %lock.i = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, !prof !28

land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__seqprop_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 277, i32 noundef 9, ptr noundef null) #6
  br label %__seqprop_spinlock_assert.exit

__seqprop_spinlock_assert.exit:                   ; preds = %do.end.i, %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, %entry.__seqprop_spinlock_assert.exit_crit_edge
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seq, align 4
  %inc.i.i.i = add i32 %4, 1
  store i32 %inc.i.i.i, ptr %seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  %dep_map.i.i = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 2, i32 0, i32 1
  %5 = tail call ptr @llvm.returnaddress(i32 0) #6
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #6
  %root = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 5
  %7 = ptrtoint ptr %root to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %root, align 4
  %9 = ptrtoint ptr %old_root to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %old_root, align 8
  %10 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %path, align 4
  store i64 %11, ptr %root, align 4
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  %12 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq, align 4
  %inc.i.i = add i32 %13, 1
  store i32 %inc.i.i, ptr %seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %14 = trunc i64 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %__seqprop_spinlock_assert.exit.if.end22_crit_edge, label %if.then21

__seqprop_spinlock_assert.exit.if.end22_crit_edge: ; preds = %__seqprop_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %__seqprop_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @path_put(ptr noundef nonnull %old_root) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %__seqprop_spinlock_assert.exit.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_root) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_fs_pwd(ptr noundef %fs, ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %old_pwd = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_pwd) #6
  tail call void @path_get(ptr noundef %path) #6
  %lock = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %seq = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_spinlock_assert.exit_crit_edge, label %land.rhs.i

entry.__seqprop_spinlock_assert.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__seqprop_spinlock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %lock.i = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, !prof !28

land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__seqprop_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 277, i32 noundef 9, ptr noundef null) #6
  br label %__seqprop_spinlock_assert.exit

__seqprop_spinlock_assert.exit:                   ; preds = %do.end.i, %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, %entry.__seqprop_spinlock_assert.exit_crit_edge
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seq, align 4
  %inc.i.i.i = add i32 %4, 1
  store i32 %inc.i.i.i, ptr %seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  %dep_map.i.i = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 2, i32 0, i32 1
  %5 = tail call ptr @llvm.returnaddress(i32 0) #6
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #6
  %pwd = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 6
  %7 = ptrtoint ptr %pwd to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %pwd, align 4
  %9 = ptrtoint ptr %old_pwd to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %old_pwd, align 8
  %10 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %path, align 4
  store i64 %11, ptr %pwd, align 4
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  %12 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq, align 4
  %inc.i.i = add i32 %13, 1
  store i32 %inc.i.i, ptr %seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %14 = trunc i64 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %__seqprop_spinlock_assert.exit.if.end22_crit_edge, label %if.then21

__seqprop_spinlock_assert.exit.if.end22_crit_edge: ; preds = %__seqprop_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %__seqprop_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @path_put(ptr noundef nonnull %old_pwd) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %__seqprop_spinlock_assert.exit.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_pwd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @chroot_fs_refs(ptr noundef %old_root, ptr noundef %new_root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr75 = getelementptr i8, ptr %0, i32 -1136
  %cmp.not76 = icmp eq ptr %add.ptr75, @init_task
  br i1 %cmp.not76, label %for.end.thread, label %do.body2.preheader.lr.ph

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  br label %while.end40

do.body2.preheader.lr.ph:                         ; preds = %entry
  %dentry1.i = getelementptr inbounds %struct.path, ptr %old_root, i32 0, i32 1
  br label %do.body2.preheader

for.cond.loopexit:                                ; preds = %if.end31
  %tasks = getelementptr inbounds %struct.task_struct, ptr %add.ptr78, i32 0, i32 50
  %1 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %tasks, align 16
  %add.ptr = getelementptr i8, ptr %2, i32 -1136
  %cmp.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp.not, label %for.end, label %for.cond.loopexit.do.body2.preheader_crit_edge

for.cond.loopexit.do.body2.preheader_crit_edge:   ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.preheader

do.body2.preheader:                               ; preds = %for.cond.loopexit.do.body2.preheader_crit_edge, %do.body2.preheader.lr.ph
  %add.ptr78 = phi ptr [ %add.ptr75, %do.body2.preheader.lr.ph ], [ %add.ptr, %for.cond.loopexit.do.body2.preheader_crit_edge ]
  %count.077 = phi i32 [ 0, %do.body2.preheader.lr.ph ], [ %count.3, %for.cond.loopexit.do.body2.preheader_crit_edge ]
  br label %do.body2

do.body2:                                         ; preds = %if.end31.do.body2_crit_edge, %do.body2.preheader
  %count.1 = phi i32 [ %count.3, %if.end31.do.body2_crit_edge ], [ %count.077, %do.body2.preheader ]
  %p.0 = phi ptr [ %add.ptr.i, %if.end31.do.body2_crit_edge ], [ %add.ptr78, %do.body2.preheader ]
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %p.0, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #6
  %fs3 = getelementptr inbounds %struct.task_struct, ptr %p.0, i32 0, i32 107
  %3 = ptrtoint ptr %fs3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fs3, align 128
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body2.if.end31_crit_edge, label %if.then

do.body2.if.end31_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then:                                          ; preds = %do.body2
  %lock = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %seq = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.__seqprop_spinlock_assert.exit_crit_edge, label %land.rhs.i

if.then.__seqprop_spinlock_assert.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %__seqprop_spinlock_assert.exit

land.rhs.i:                                       ; preds = %if.then
  %lock.i = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, !prof !28

land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__seqprop_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 277, i32 noundef 9, ptr noundef null) #6
  br label %__seqprop_spinlock_assert.exit

__seqprop_spinlock_assert.exit:                   ; preds = %do.end.i, %land.rhs.i.__seqprop_spinlock_assert.exit_crit_edge, %if.then.__seqprop_spinlock_assert.exit_crit_edge
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq, align 4
  %inc.i.i.i = add i32 %9, 1
  store i32 %inc.i.i.i, ptr %seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  %dep_map.i.i = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 2, i32 0, i32 1
  %10 = tail call ptr @llvm.returnaddress(i32 0) #6
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %11) #6
  %root = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 5
  %dentry.i = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry.i, align 4
  %14 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dentry1.i, align 4
  %cmp.not.i61 = icmp eq ptr %13, %15
  br i1 %cmp.not.i61, label %lor.rhs.i, label %__seqprop_spinlock_assert.exit.replace_path.exit_crit_edge

__seqprop_spinlock_assert.exit.replace_path.exit_crit_edge: ; preds = %__seqprop_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %replace_path.exit

lor.rhs.i:                                        ; preds = %__seqprop_spinlock_assert.exit
  %16 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root, align 4
  %18 = ptrtoint ptr %old_root to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %old_root, align 4
  %cmp3.not.i = icmp eq ptr %17, %19
  br i1 %cmp3.not.i, label %if.end.i, label %lor.rhs.i.replace_path.exit_crit_edge, !prof !28

lor.rhs.i.replace_path.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %replace_path.exit

if.end.i:                                         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %new_root to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %new_root, align 4
  %22 = ptrtoint ptr %root to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %root, align 4
  br label %replace_path.exit

replace_path.exit:                                ; preds = %if.end.i, %lor.rhs.i.replace_path.exit_crit_edge, %__seqprop_spinlock_assert.exit.replace_path.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end.i ], [ 0, %lor.rhs.i.replace_path.exit_crit_edge ], [ 0, %__seqprop_spinlock_assert.exit.replace_path.exit_crit_edge ]
  %pwd = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 6
  %dentry.i62 = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %dentry.i62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dentry.i62, align 4
  %25 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dentry1.i, align 4
  %cmp.not.i64 = icmp eq ptr %24, %26
  br i1 %cmp.not.i64, label %lor.rhs.i66, label %replace_path.exit.replace_path.exit69_crit_edge

replace_path.exit.replace_path.exit69_crit_edge:  ; preds = %replace_path.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %replace_path.exit69

lor.rhs.i66:                                      ; preds = %replace_path.exit
  %27 = ptrtoint ptr %pwd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pwd, align 4
  %29 = ptrtoint ptr %old_root to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %old_root, align 4
  %cmp3.not.i65 = icmp eq ptr %28, %30
  br i1 %cmp3.not.i65, label %if.end.i67, label %lor.rhs.i66.replace_path.exit69_crit_edge, !prof !28

lor.rhs.i66.replace_path.exit69_crit_edge:        ; preds = %lor.rhs.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %replace_path.exit69

if.end.i67:                                       ; preds = %lor.rhs.i66
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %new_root to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %new_root, align 4
  %33 = ptrtoint ptr %pwd to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %pwd, align 4
  br label %replace_path.exit69

replace_path.exit69:                              ; preds = %if.end.i67, %lor.rhs.i66.replace_path.exit69_crit_edge, %replace_path.exit.replace_path.exit69_crit_edge
  %retval.0.i68 = phi i32 [ 1, %if.end.i67 ], [ 0, %lor.rhs.i66.replace_path.exit69_crit_edge ], [ 0, %replace_path.exit.replace_path.exit69_crit_edge ]
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  %34 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %seq, align 4
  %inc.i.i = add i32 %35, 1
  store i32 %inc.i.i, ptr %seq, align 4
  %add16 = add nuw nsw i32 %retval.0.i68, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add16)
  %tobool29.not72 = icmp eq i32 %add16, 0
  br i1 %tobool29.not72, label %replace_path.exit69.while.end_crit_edge, label %while.body

replace_path.exit69.while.end_crit_edge:          ; preds = %replace_path.exit69
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %replace_path.exit69
  tail call void @path_get(ptr noundef %new_root) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add16)
  %tobool29.not = icmp eq i32 %add16, 1
  br i1 %tobool29.not, label %while.body.while.end.loopexit_crit_edge, label %while.body.1

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @path_get(ptr noundef %new_root) #6
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body.1, %while.body.while.end.loopexit_crit_edge
  %36 = add i32 %add16, %count.1
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %replace_path.exit69.while.end_crit_edge
  %count.2.lcssa = phi i32 [ %count.1, %replace_path.exit69.while.end_crit_edge ], [ %36, %while.end.loopexit ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %if.end31

if.end31:                                         ; preds = %while.end, %do.body2.if.end31_crit_edge
  %count.3 = phi i32 [ %count.2.lcssa, %while.end ], [ %count.1, %do.body2.if.end31_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #6
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %p.0, i32 0, i32 80
  %37 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %thread_group.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 -1396
  %cmp34.not = icmp eq ptr %add.ptr.i, %add.ptr78
  br i1 %cmp34.not, label %for.cond.loopexit, label %if.end31.do.body2_crit_edge

if.end31.do.body2_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

for.end:                                          ; preds = %for.cond.loopexit
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.3)
  %tobool38.not80 = icmp eq i32 %count.3, 0
  br i1 %tobool38.not80, label %for.end.while.end40_crit_edge, label %for.end.while.body39_crit_edge

for.end.while.body39_crit_edge:                   ; preds = %for.end
  br label %while.body39

for.end.while.end40_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end40

while.body39:                                     ; preds = %while.body39.while.body39_crit_edge, %for.end.while.body39_crit_edge
  %count.481 = phi i32 [ %dec37, %while.body39.while.body39_crit_edge ], [ %count.3, %for.end.while.body39_crit_edge ]
  %dec37 = add i32 %count.481, -1
  tail call void @path_put(ptr noundef %old_root) #6
  %tobool38.not = icmp eq i32 %dec37, 0
  br i1 %tobool38.not, label %while.body39.while.end40_crit_edge, label %while.body39.while.body39_crit_edge

while.body39.while.body39_crit_edge:              ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body39

while.body39.while.end40_crit_edge:               ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end40

while.end40:                                      ; preds = %while.body39.while.end40_crit_edge, %for.end.while.end40_crit_edge, %for.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_fs_struct(ptr noundef %fs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 5
  tail call void @path_put(ptr noundef %root) #6
  %pwd = getelementptr inbounds %struct.fs_struct, ptr %fs, i32 0, i32 6
  tail call void @path_put(ptr noundef %pwd) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_cachep to i32))
  %0 = load ptr, ptr @fs_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %fs) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_fs(ptr noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs1 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 107
  %0 = ptrtoint ptr %fs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs1, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #6
  %lock = getelementptr inbounds %struct.fs_struct, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %2 = ptrtoint ptr %fs1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fs1, align 128
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #6
  br i1 %tobool3.not, label %if.then6, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %root.i = getelementptr inbounds %struct.fs_struct, ptr %1, i32 0, i32 5
  tail call void @path_put(ptr noundef %root.i) #6
  %pwd.i = getelementptr inbounds %struct.fs_struct, ptr %1, i32 0, i32 6
  tail call void @path_put(ptr noundef %pwd.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_cachep to i32))
  %5 = load ptr, ptr @fs_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef nonnull %1) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @copy_fs_struct(ptr noundef %old) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_cachep to i32))
  %0 = load ptr, ptr @fs_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %call, align 8
  %in_exec = getelementptr inbounds %struct.fs_struct, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %in_exec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %in_exec, align 8
  %lock = getelementptr inbounds %struct.fs_struct, ptr %call, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @copy_fs_struct.__key, i16 noundef signext 3) #6
  %seq = getelementptr inbounds %struct.fs_struct, ptr %call, i32 0, i32 2
  %dep_map.i = getelementptr inbounds %struct.fs_struct, ptr %call, i32 0, i32 2, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @copy_fs_struct.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %seq, align 8
  %lock7 = getelementptr inbounds %struct.fs_struct, ptr %call, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %lock7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lock, ptr %lock7, align 8
  %umask = getelementptr inbounds %struct.fs_struct, ptr %old, i32 0, i32 3
  %5 = ptrtoint ptr %umask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %umask, align 4
  %umask10 = getelementptr inbounds %struct.fs_struct, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %umask10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %umask10, align 4
  %lock11 = getelementptr inbounds %struct.fs_struct, ptr %old, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock11) #6
  %root = getelementptr inbounds %struct.fs_struct, ptr %call, i32 0, i32 5
  %root12 = getelementptr inbounds %struct.fs_struct, ptr %old, i32 0, i32 5
  %8 = ptrtoint ptr %root12 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %root12, align 4
  %10 = ptrtoint ptr %root to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %root, align 4
  tail call void @path_get(ptr noundef %root) #6
  %pwd = getelementptr inbounds %struct.fs_struct, ptr %call, i32 0, i32 6
  %pwd14 = getelementptr inbounds %struct.fs_struct, ptr %old, i32 0, i32 6
  %11 = ptrtoint ptr %pwd14 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %pwd14, align 4
  %13 = ptrtoint ptr %pwd to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %pwd, align 4
  tail call void @path_get(ptr noundef %pwd) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock11) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unshare_fs_struct() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !18) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %fs1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 107
  %4 = ptrtoint ptr %fs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs1, align 128
  %call2 = tail call ptr @copy_fs_struct(ptr noundef %5)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #6
  %lock = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %fs8 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 107
  %12 = ptrtoint ptr %fs8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2, ptr %fs8, align 128
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %alloc_lock.i22 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i22) #6
  br i1 %tobool5.not, label %if.then13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %root.i = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 5
  tail call void @path_put(ptr noundef %root.i) #6
  %pwd.i = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 6
  tail call void @path_put(ptr noundef %pwd.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_cachep to i32))
  %15 = load ptr, ptr @fs_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @current_umask() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !18) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 107
  %4 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs, align 128
  %umask = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %umask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %umask, align 4
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @copy_fs_struct.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/fs_struct.c", i32 119, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @copy_fs_struct.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/fs_struct.c", i32 120, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_unshare_fs_struct, !7, !"__ksymtab_unshare_fs_struct", i1 false, i1 false}
!7 = !{!"../fs/fs_struct.c", i32 154, i32 1}
!8 = !{ptr @__ksymtab_current_umask, !9, !"__ksymtab_current_umask", i1 false, i1 false}
!9 = !{!"../fs/fs_struct.c", i32 160, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/fs_struct.c", i32 165, i32 11}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/fs_struct.c", i32 166, i32 10}
!14 = !{ptr @init_fs, !15, !"init_fs", i1 false, i1 false}
!15 = !{!"../fs/fs_struct.c", i32 163, i32 18}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/seqlock.h", i32 277, i32 1}
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
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2150243739}
!30 = !{i64 2150244064}
