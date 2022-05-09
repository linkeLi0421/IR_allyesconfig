; ModuleID = '/llk/IR_all_yes/fs/fs_pin.c_pt.bc'
source_filename = "../fs/fs_pin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fs_pin = type { %struct.wait_queue_head, i32, %struct.hlist_node, %struct.hlist_node, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.38, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.6 }
%struct.llist_node = type { ptr }
%union.anon.6 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.38 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.65, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.66, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.hlist_node }

@pin_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pin_lock\00", [23 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [9 x i8] c"pin_lock\00", align 1
@___asan_gen_.9 = private constant [15 x i8] c"../fs/fs_pin.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 8, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 723, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 695, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @pin_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pin_remove(ptr noundef %pin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @pin_lock) #5
  %m_list = getelementptr inbounds %struct.fs_pin, ptr %pin, i32 0, i32 3
  %pprev.i.i = getelementptr inbounds %struct.fs_pin, ptr %pin, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init.exit_crit_edge, label %if.then.i

entry.hlist_del_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %m_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_list, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i3.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %m_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %m_list, align 4
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %entry.hlist_del_init.exit_crit_edge
  %s_list = getelementptr inbounds %struct.fs_pin, ptr %pin, i32 0, i32 2
  %pprev.i.i9 = getelementptr inbounds %struct.fs_pin, ptr %pin, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %pprev.i.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i.i9, align 4
  %tobool.not.i.not.i10 = icmp eq ptr %9, null
  br i1 %tobool.not.i.not.i10, label %hlist_del_init.exit.hlist_del_init.exit16_crit_edge, label %if.then.i12

hlist_del_init.exit.hlist_del_init.exit16_crit_edge: ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del_init.exit16

if.then.i12:                                      ; preds = %hlist_del_init.exit
  %10 = ptrtoint ptr %s_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_list, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %9, align 4
  %tobool.not.i3.i11 = icmp eq ptr %11, null
  br i1 %tobool.not.i3.i11, label %if.then.i12.__hlist_del.exit.i15_crit_edge, label %do.body13.i.i14

if.then.i12.__hlist_del.exit.i15_crit_edge:       ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i15

do.body13.i.i14:                                  ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i13 = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %pprev14.i.i13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %pprev14.i.i13, align 4
  br label %__hlist_del.exit.i15

__hlist_del.exit.i15:                             ; preds = %do.body13.i.i14, %if.then.i12.__hlist_del.exit.i15_crit_edge
  %14 = ptrtoint ptr %s_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %s_list, align 4
  %15 = ptrtoint ptr %pprev.i.i9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pprev.i.i9, align 4
  br label %hlist_del_init.exit16

hlist_del_init.exit16:                            ; preds = %__hlist_del.exit.i15, %hlist_del_init.exit.hlist_del_init.exit16_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pin_lock) #5
  tail call void @_raw_spin_lock_irq(ptr noundef %pin) #5
  %done = getelementptr inbounds %struct.fs_pin, ptr %pin, i32 0, i32 1
  %16 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %done, align 4
  tail call void @__wake_up_locked(ptr noundef %pin, i32 noundef 3, i32 noundef 1) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %pin) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pin_insert(ptr noundef %pin, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @pin_lock) #5
  %s_list = getelementptr inbounds %struct.fs_pin, ptr %pin, i32 0, i32 2
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_sb, align 4
  %s_pins = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %s_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_pins, align 4
  %4 = ptrtoint ptr %s_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %s_list, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.hlist_add_head.exit_crit_edge, label %do.body12.i

entry.hlist_add_head.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %s_list, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %entry.hlist_add_head.exit_crit_edge
  %6 = ptrtoint ptr %s_pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %s_list, ptr %s_pins, align 4
  %pprev34.i = getelementptr inbounds %struct.fs_pin, ptr %pin, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %s_pins, ptr %pprev34.i, align 4
  %m_list = getelementptr inbounds %struct.fs_pin, ptr %pin, i32 0, i32 3
  %mnt_pins = getelementptr i8, ptr %m, i32 144
  %8 = ptrtoint ptr %mnt_pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mnt_pins, align 4
  %10 = ptrtoint ptr %m_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %m_list, align 4
  %tobool.not.i3 = icmp eq ptr %9, null
  br i1 %tobool.not.i3, label %hlist_add_head.exit.hlist_add_head.exit7_crit_edge, label %do.body12.i5

hlist_add_head.exit.hlist_add_head.exit7_crit_edge: ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_add_head.exit7

do.body12.i5:                                     ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pprev.i4 = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %m_list, ptr %pprev.i4, align 4
  br label %hlist_add_head.exit7

hlist_add_head.exit7:                             ; preds = %do.body12.i5, %hlist_add_head.exit.hlist_add_head.exit7_crit_edge
  %12 = ptrtoint ptr %mnt_pins to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %m_list, ptr %mnt_pins, align 4
  %pprev34.i6 = getelementptr inbounds %struct.fs_pin, ptr %pin, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %pprev34.i6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mnt_pins, ptr %pprev34.i6, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pin_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pin_kill(ptr noundef %p) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #5
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %call.i126 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i126, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i129

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i129:                               ; preds = %if.then
  %call1.i127 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i127)
  %tobool.not.i128 = icmp eq i32 %call1.i127, 0
  br i1 %tobool.not.i128, label %land.lhs.true.i129.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i131

land.lhs.true.i129.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i131:                              ; preds = %land.lhs.true.i129
  %.b4.i130 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i130, label %land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge, label %if.then.i132

land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i132:                                     ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.3) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i132, %land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i129.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !23
  %1 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i133 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i133 to ptr
  %preempt_count.i.i.i.i134 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i134, align 4
  %sub.i.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i134, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %8 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %7, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @autoremove_wake_function, ptr %6, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %0, ptr %0, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %0, ptr %5, align 4
  %16 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wait, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull %p) #5
  %done = getelementptr inbounds %struct.fs_pin, ptr %p, i32 0, i32 1
  %17 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not = icmp eq i32 %18, 0
  br i1 %tobool3.not, label %if.then7, label %if.end11, !prof !24

if.then7:                                         ; preds = %do.body
  %19 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %done, align 4
  call void @_raw_spin_unlock_irq(ptr noundef nonnull %p) #5
  %call.i135 = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i135, label %if.then7.rcu_read_unlock.exit145_crit_edge, label %land.lhs.true.i138

if.then7.rcu_read_unlock.exit145_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit145

land.lhs.true.i138:                               ; preds = %if.then7
  %call1.i136 = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i136)
  %tobool.not.i137 = icmp eq i32 %call1.i136, 0
  br i1 %tobool.not.i137, label %land.lhs.true.i138.rcu_read_unlock.exit145_crit_edge, label %land.lhs.true2.i140

land.lhs.true.i138.rcu_read_unlock.exit145_crit_edge: ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit145

land.lhs.true2.i140:                              ; preds = %land.lhs.true.i138
  %.b4.i139 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i139, label %land.lhs.true2.i140.rcu_read_unlock.exit145_crit_edge, label %if.then.i141

land.lhs.true2.i140.rcu_read_unlock.exit145_crit_edge: ; preds = %land.lhs.true2.i140
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit145

if.then.i141:                                     ; preds = %land.lhs.true2.i140
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.3) #5
  br label %rcu_read_unlock.exit145

rcu_read_unlock.exit145:                          ; preds = %if.then.i141, %land.lhs.true2.i140.rcu_read_unlock.exit145_crit_edge, %land.lhs.true.i138.rcu_read_unlock.exit145_crit_edge, %if.then7.rcu_read_unlock.exit145_crit_edge
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !23
  %20 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i142 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i142 to ptr
  %preempt_count.i.i.i.i143 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i143, align 4
  %sub.i.i.i144 = add i32 %23, -1
  store volatile i32 %sub.i.i.i144, ptr %preempt_count.i.i.i.i143, align 4
  call void @rcu_read_unlock_strict() #5
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  %kill = getelementptr inbounds %struct.fs_pin, ptr %p, i32 0, i32 4
  %24 = ptrtoint ptr %kill to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %kill, align 4
  call void %25(ptr noundef nonnull %p) #5
  br label %cleanup

if.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irq(ptr noundef nonnull %p) #5
  call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call fastcc void @__add_wait_queue(ptr noundef nonnull %p, ptr noundef nonnull %wait)
  br label %__here

__here:                                           ; preds = %if.end102.__here_crit_edge, %if.end16
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 212
  %28 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 ptrtoint (ptr blockaddress(@pin_kill, %__here) to i32), ptr %task_state_change, align 4
  %29 = load ptr, ptr %task, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 2, ptr %29, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !25
  call void @_raw_spin_unlock_irq(ptr noundef nonnull %p) #5
  call fastcc void @rcu_read_unlock()
  call void @schedule() #5
  %31 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !26
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %__here.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

__here.rcu_read_lock.exit_crit_edge:              ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %__here
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.4) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %__here.rcu_read_lock.exit_crit_edge
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %0, align 4
  %cmp.i.not = icmp eq ptr %36, %0
  br i1 %cmp.i.not, label %rcu_read_lock.exit.while.end_crit_edge, label %if.end102, !prof !24

rcu_read_lock.exit.while.end_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end102:                                        ; preds = %rcu_read_lock.exit
  call void @_raw_spin_lock_irq(ptr noundef nonnull %p) #5
  %37 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %done, align 4
  %cmp106 = icmp sgt i32 %38, 0
  br i1 %cmp106, label %if.then107, label %if.end102.__here_crit_edge

if.end102.__here_crit_edge:                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

if.then107:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irq(ptr noundef nonnull %p) #5
  br label %while.end

while.end:                                        ; preds = %if.then107, %rcu_read_lock.exit.while.end_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then13, %rcu_read_unlock.exit145, %rcu_read_unlock.exit
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !23
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__add_wait_queue(ptr noundef %wq_head, ptr noundef %wq_entry) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %head1 = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %head.0 = phi ptr [ %head1, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %head.0, align 4
  %cmp.not = icmp eq ptr %.pn, %head1
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %wq.0 = getelementptr i8, ptr %.pn, i32 -12
  %1 = ptrtoint ptr %wq.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wq.0, align 4
  %and = and i32 %2, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %for.body.for.end_crit_edge ], [ %head1, %for.cond.for.end_crit_edge ]
  %entry11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry11, ptr noundef %head.0, ptr noundef %.pn.lcssa) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry11, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %.pn.lcssa, ptr %entry11, align 4
  %prev3.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head.0, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %head.0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry11, ptr %head.0, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mnt_pin_kill(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_pins = getelementptr inbounds %struct.mount, ptr %m, i32 0, i32 25
  br label %while.body

while.body:                                       ; preds = %cleanup, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !26
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %while.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

while.body.rcu_read_lock.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %while.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.4) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %while.body.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %mnt_pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mnt_pins, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %cleanup

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i3, label %if.then.while.end_crit_edge, label %land.lhs.true.i6

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.lhs.true.i6:                                 ; preds = %if.then
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.while.end_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.while.end_crit_edge:             ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.while.end_crit_edge, label %if.then.i9

land.lhs.true2.i8.while.end_crit_edge:            ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.3) #5
  br label %while.end

cleanup:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %5, i32 -64
  tail call void @pin_kill(ptr noundef %add.ptr)
  br label %while.body

while.end:                                        ; preds = %if.then.i9, %land.lhs.true2.i8.while.end_crit_edge, %land.lhs.true.i6.while.end_crit_edge, %if.then.while.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !23
  %6 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i10 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @group_pin_kill(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %cleanup, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !26
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %while.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

while.body.rcu_read_lock.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %while.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.4) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %while.body.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %p, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %cleanup

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i3, label %if.then.while.end_crit_edge, label %land.lhs.true.i6

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.lhs.true.i6:                                 ; preds = %if.then
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.while.end_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.while.end_crit_edge:             ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.while.end_crit_edge, label %if.then.i9

land.lhs.true2.i8.while.end_crit_edge:            ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.3) #5
  br label %while.end

cleanup:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %5, i32 -56
  tail call void @pin_kill(ptr noundef %add.ptr)
  br label %while.body

while.end:                                        ; preds = %if.then.i9, %land.lhs.true2.i8.while.end_crit_edge, %land.lhs.true.i6.while.end_crit_edge, %if.then.while.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !23
  %6 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i10 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/fs_pin.c", i32 54, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/fs_pin.c", i32 8, i32 8}
!5 = !{ptr @pin_lock, !4, !"pin_lock", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2149464908}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2153004589}
!26 = !{i64 2149464642}
