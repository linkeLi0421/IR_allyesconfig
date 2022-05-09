; ModuleID = '/llk/IR_all_yes/fs/ubifs/ioctl.c_pt.bc'
source_filename = "../fs/ubifs/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@ubifs_fileattr_get.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubifs_fileattr_get\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ubifs/ioctl.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UBIFS DBG gen (pid %d): get flags: %#x, i_flags %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@ubifs_fileattr_set.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ubifs_fileattr_set\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UBIFS DBG gen (pid %d): set flags: %#x, i_flags %#x\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1074554389, i64 2148296211, i64 2148558363, i64 3221841430, i64 3225445912, i64 3225445913, i64 3226494487, i64 3229640218]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 141, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [20 x i8] c"../fs/ubifs/ioctl.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 167, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ubifs_set_inode_flags(ptr nocapture noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 12
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, -16462
  %and2 = lshr i32 %1, 1
  %4 = and i32 %and2, 1
  %5 = or i32 %4, %and
  %6 = and i32 %and2, 4
  %7 = or i32 %6, %5
  store i32 %7, ptr %i_flags, align 4
  %and10 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %entry.if.end15_crit_edge, label %if.then12

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags, align 4
  %or14 = or i32 %9, 8
  store i32 %or14, ptr %i_flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %entry.if.end15_crit_edge
  %and16 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags, align 4
  %or20 = or i32 %11, 64
  store i32 %or20, ptr %i_flags, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %and22 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags, align 4
  %or26 = or i32 %13, 16384
  store i32 %or26, ptr %i_flags, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %flags2 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 8
  %and.i = shl i32 %3, 2
  %4 = and i32 %and.i, 60
  %and16.i = shl i32 %3, 12
  %5 = and i32 %and16.i, 65536
  %6 = or i32 %4, %5
  %and21.i = shl i32 %3, 5
  %7 = and i32 %and21.i, 2048
  %8 = or i32 %6, %7
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %10, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242880, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 5242880
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_fileattr_get.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_fileattr_get, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !20

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call i32 @llvm.read_register.i32(metadata !10) #5
  %and.i15 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i15 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_fileattr_get.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.3, i32 noundef %16, i32 noundef %8, i32 noundef %18) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  tail call void @fileattr_fill_flags(ptr noundef %fa, i32 noundef %8) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_fileattr_set(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %fa) local_unnamed_addr #2 align 64 {
entry:
  %req.i = alloca %struct.ubifs_budget_req, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fa, align 4
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %5, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242880, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 5242880
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %fsx_valid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %6 = ptrtoint ptr %fsx_valid.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %fsx_valid.i, align 4
  %7 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %bf.cast.not.i = icmp eq i8 %7, 0
  br i1 %bf.cast.not.i, label %if.end.fileattr_has_fsx.exit_crit_edge, label %land.rhs.i

if.end.fileattr_has_fsx.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fileattr_has_fsx.exit

land.rhs.i:                                       ; preds = %if.end
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %8 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsx_xflags.i, align 4
  %and.i = and i32 %9, -33529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %fsx_extsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %10 = ptrtoint ptr %fsx_extsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fsx_extsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %fsx_projid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %12 = ptrtoint ptr %fsx_projid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fsx_projid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.not.i = icmp eq i32 %13, 0
  br i1 %cmp2.not.i, label %lor.rhs.i, label %lor.lhs.false1.i.cleanup_crit_edge

lor.lhs.false1.i.cleanup_crit_edge:               ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs.i:                                        ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #7
  %fsx_cowextsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %14 = ptrtoint ptr %fsx_cowextsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsx_cowextsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3.i = icmp eq i32 %15, 0
  br label %fileattr_has_fsx.exit

fileattr_has_fsx.exit:                            ; preds = %lor.rhs.i, %if.end.fileattr_has_fsx.exit_crit_edge
  %16 = phi i1 [ true, %if.end.fileattr_has_fsx.exit_crit_edge ], [ %cmp3.i, %lor.rhs.i ]
  %and = and i32 %3, -67645
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %16, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.end7, label %fileattr_has_fsx.exit.cleanup_crit_edge

fileattr_has_fsx.exit.cleanup_crit_edge:          ; preds = %fileattr_has_fsx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %fileattr_has_fsx.exit
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 8
  %19 = and i16 %18, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %19)
  %cmp = icmp eq i16 %19, 16384
  %spec.select.v = select i1 %cmp, i32 65596, i32 60
  %spec.select = and i32 %spec.select.v, %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_fileattr_set.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_fileattr_set, %if.then18)) #5
          to label %do.end [label %if.then18], !srcloc !20

if.then18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call i32 @llvm.read_register.i32(metadata !10) #5
  %and.i31 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i31 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_fileattr_set.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.5, i32 noundef %25, i32 noundef %spec.select, i32 noundef %27) #5
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.end7
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #5
  %32 = getelementptr inbounds i8, ptr %req.i, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %32, align 4
  %34 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %req.i, align 4
  %data_len.i = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i, align 4
  %37 = trunc i32 %36 to i16
  %bf.shl.i = shl i16 %37, 1
  %bf.set27.i = or i16 %bf.shl.i, 1
  store i16 %bf.set27.i, ptr %32, align 4
  %idx_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i, i32 0, i32 2
  %38 = ptrtoint ptr %idx_growth.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %idx_growth.i, align 4
  %data_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i, i32 0, i32 3
  %39 = ptrtoint ptr %data_growth.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %data_growth.i, align 4
  %dd_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i, i32 0, i32 4
  %40 = ptrtoint ptr %dd_growth.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %dd_growth.i, align 4
  %call28.i = call i32 @ubifs_budget_space(ptr noundef %31, ptr noundef nonnull %req.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool.not.i32 = icmp eq i32 %call28.i, 0
  br i1 %tobool.not.i32, label %if.end.i, label %do.end.setflags.exit_crit_edge

do.end.setflags.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %setflags.exit

if.end.i:                                         ; preds = %do.end
  %ui_mutex.i = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex.i, i32 noundef 0) #5
  %flags30.i = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags30.i, align 8
  %and.i33 = and i32 %42, -32
  %and.i.i34 = lshr exact i32 %spec.select, 2
  %43 = and i32 %and.i.i34, 15
  %and16.i.i = lshr i32 %spec.select, 12
  %44 = or i32 %43, %and16.i.i
  %or.i = or i32 %44, %and.i33
  store i32 %or.i, ptr %flags30.i, align 8
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_flags.i.i, align 4
  %and.i66.i = and i32 %46, -16462
  %and2.i.i = lshr i32 %or.i, 1
  %47 = and i32 %and2.i.i, 1
  %48 = and i32 %and2.i.i, 4
  %49 = lshr exact i32 %spec.select, 1
  %50 = and i32 %49, 8
  %51 = or i32 %and.i66.i, %50
  %52 = or i32 %51, %47
  %53 = or i32 %52, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %spec.select)
  %tobool17.not.i.i = icmp ult i32 %spec.select, 4096
  %or20.i.i = or i32 %53, 64
  %spec.select42 = select i1 %tobool17.not.i.i, i32 %53, i32 %or20.i.i
  %54 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select42, ptr %i_flags.i.i, align 4
  %and22.i.i = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end.i.ubifs_set_inode_flags.exit.i_crit_edge, label %if.then24.i.i

if.end.i.ubifs_set_inode_flags.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ubifs_set_inode_flags.exit.i

if.then24.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_flags.i.i, align 4
  %or26.i.i = or i32 %56, 16384
  store i32 %or26.i.i, ptr %i_flags.i.i, align 4
  br label %ubifs_set_inode_flags.exit.i

ubifs_set_inode_flags.exit.i:                     ; preds = %if.then24.i.i, %if.end.i.ubifs_set_inode_flags.exit.i_crit_edge
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %1) #5
  %57 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #5
  %dirty.i = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %58 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load33.i = load i8, ptr %dirty.i, align 4
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 1) #5
  call void @mutex_unlock(ptr noundef %ui_mutex.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load33.i)
  %tobool35.not.i = icmp sgt i8 %bf.load33.i, -1
  br i1 %tobool35.not.i, label %ubifs_set_inode_flags.exit.i.if.end37.i_crit_edge, label %if.then36.i

ubifs_set_inode_flags.exit.i.if.end37.i_crit_edge: ; preds = %ubifs_set_inode_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

if.then36.i:                                      ; preds = %ubifs_set_inode_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ubifs_release_budget(ptr noundef %31, ptr noundef nonnull %req.i) #5
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %ubifs_set_inode_flags.exit.i.if.end37.i_crit_edge
  %59 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_flags.i, align 4
  %and39.i = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %lor.lhs.false.i35, label %if.end37.i.if.then43.i_crit_edge

if.end37.i.if.then43.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43.i

lor.lhs.false.i35:                                ; preds = %if.end37.i
  %63 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_flags.i.i, align 4
  %and41.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %lor.lhs.false.i35.setflags.exit_crit_edge, label %lor.lhs.false.i35.if.then43.i_crit_edge

lor.lhs.false.i35.if.then43.i_crit_edge:          ; preds = %lor.lhs.false.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43.i

lor.lhs.false.i35.setflags.exit_crit_edge:        ; preds = %lor.lhs.false.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %setflags.exit

if.then43.i:                                      ; preds = %lor.lhs.false.i35.if.then43.i_crit_edge, %if.end37.i.if.then43.i_crit_edge
  %call44.i = call i32 @write_inode_now(ptr noundef %1, i32 noundef 1) #5
  br label %setflags.exit

setflags.exit:                                    ; preds = %if.then43.i, %lor.lhs.false.i35.setflags.exit_crit_edge, %do.end.setflags.exit_crit_edge
  %retval.0.i36 = phi i32 [ %call28.i, %do.end.setflags.exit_crit_edge ], [ %call44.i, %if.then43.i ], [ 0, %lor.lhs.false.i35.setflags.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #5
  br label %cleanup

cleanup:                                          ; preds = %setflags.exit, %fileattr_has_fsx.exit.cleanup_crit_edge, %lor.lhs.false1.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i36, %setflags.exit ], [ -25, %entry.cleanup_crit_edge ], [ -95, %fileattr_has_fsx.exit.cleanup_crit_edge ], [ -95, %lor.lhs.false1.i.cleanup_crit_edge ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -95, %land.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup17_crit_edge [
    i32 -2146671085, label %sw.bb
    i32 1074554389, label %sw.bb3
    i32 -1073125866, label %sw.bb5
    i32 -1068472809, label %sw.bb7
    i32 -1069521384, label %sw.bb9
    i32 -1069521383, label %sw.bb11
    i32 -1065327078, label %sw.bb13
    i32 -2146408933, label %sw.bb15
  ]

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

sw.bb:                                            ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  %call1 = tail call i32 @ubifs_enable_encryption(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup17_crit_edge

sw.bb.cleanup17_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %7 = inttoptr i32 %arg to ptr
  %call2 = tail call i32 @fscrypt_ioctl_set_policy(ptr noundef %file, ptr noundef %7) #5
  br label %cleanup17

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = inttoptr i32 %arg to ptr
  %call4 = tail call i32 @fscrypt_ioctl_get_policy(ptr noundef %file, ptr noundef %8) #5
  br label %cleanup17

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = inttoptr i32 %arg to ptr
  %call6 = tail call i32 @fscrypt_ioctl_get_policy_ex(ptr noundef %file, ptr noundef %9) #5
  br label %cleanup17

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = inttoptr i32 %arg to ptr
  %call8 = tail call i32 @fscrypt_ioctl_add_key(ptr noundef %file, ptr noundef %10) #5
  br label %cleanup17

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = inttoptr i32 %arg to ptr
  %call10 = tail call i32 @fscrypt_ioctl_remove_key(ptr noundef %file, ptr noundef %11) #5
  br label %cleanup17

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = inttoptr i32 %arg to ptr
  %call12 = tail call i32 @fscrypt_ioctl_remove_key_all_users(ptr noundef %file, ptr noundef %12) #5
  br label %cleanup17

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = inttoptr i32 %arg to ptr
  %call14 = tail call i32 @fscrypt_ioctl_get_key_status(ptr noundef %file, ptr noundef %13) #5
  br label %cleanup17

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = inttoptr i32 %arg to ptr
  %call16 = tail call i32 @fscrypt_ioctl_get_nonce(ptr noundef %file, ptr noundef %14) #5
  br label %cleanup17

cleanup17:                                        ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %if.end, %sw.bb.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.1 = phi i32 [ %call16, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %if.end ], [ %call1, %sw.bb.cleanup17_crit_edge ], [ -25, %entry.cleanup17_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_enable_encryption(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_set_policy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_get_policy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_get_policy_ex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_add_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_remove_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_remove_key_all_users(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_get_key_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_ioctl_get_nonce(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_budget_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_budget(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/ioctl.c", i32 141, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ubifs_fileattr_get.__UNIQUE_ID_ddebug276, !1, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/ioctl.c", i32 167, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ubifs_fileattr_set.__UNIQUE_ID_ddebug277, !7, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
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
!20 = !{i64 2148936261, i64 2148936266, i64 2148936279, i64 2148936323, i64 2148936357, i64 2148936378}
