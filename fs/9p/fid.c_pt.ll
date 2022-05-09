; ModuleID = '/llk/IR_all_yes/fs/9p/fid.c_pt.bc'
source_filename = "../fs/9p/fid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.76 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.78 = type { %struct.list_head }
%union.anon.79 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.p9_fid = type { ptr, i32, %struct.refcount_struct, i32, %struct.p9_qid, i32, %struct.kuid_t, ptr, %struct.hlist_node, %struct.hlist_node }
%struct.p9_qid = type { i8, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.75 = type { ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.v9fs_session_info = type { i8, i8, i16, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i32 }

@__func__.v9fs_fid_find = private unnamed_addr constant [14 x i8] c"v9fs_fid_find\00", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" dentry: %pd (%p) uid %d any %d\0A\00", [63 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__func__.v9fs_fid_find_inode = private unnamed_addr constant [20 x i8] c"v9fs_fid_find_inode\00", align 1
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" inode: %p\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 6]
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 95, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [15 x i8] c"../fs/9p/fid.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 53, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_fid_add(ptr noundef %dentry, ptr noundef %fid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #6
  %dlist.i = getelementptr inbounds %struct.p9_fid, ptr %fid, i32 0, i32 8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %2 = ptrtoint ptr %dlist.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %1, ptr %dlist.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.__add_fid.exit_crit_edge, label %do.body12.i.i

entry.__add_fid.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__add_fid.exit

do.body12.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %dlist.i, ptr %pprev.i.i, align 4
  br label %__add_fid.exit

__add_fid.exit:                                   ; preds = %do.body12.i.i, %entry.__add_fid.exit_crit_edge
  %4 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %dlist.i, ptr %d_fsdata.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.p9_fid, ptr %fid, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %d_fsdata.i, ptr %pprev34.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @v9fs_open_fid_add(ptr noundef %inode, ptr noundef %fid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #6
  %ilist = getelementptr inbounds %struct.p9_fid, ptr %fid, i32 0, i32 9
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %2 = ptrtoint ptr %ilist to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %1, ptr %ilist, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hlist_add_head.exit_crit_edge, label %do.body12.i

entry.hlist_add_head.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ilist, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %entry.hlist_add_head.exit_crit_edge
  %4 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ilist, ptr %i_private, align 4
  %pprev34.i = getelementptr inbounds %struct.p9_fid, ptr %fid, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %i_private, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_fid_lookup(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 28
  %and = zext i8 %6 to i32
  %7 = add nsw i32 %and, -4
  %8 = lshr exact i32 %7, 2
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.end_crit_edge
    i32 1, label %entry.do.end_crit_edge8
    i32 3, label %entry.do.end_crit_edge9
    i32 6, label %sw.bb2
  ]

entry.do.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

entry.do.end_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge8, %entry.do.end_crit_edge9
  %10 = tail call i32 @llvm.read_register.i32(metadata !8) #6
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 10
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %uid3 = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %do.end
  %uid3.sink = phi ptr [ %uid3, %sw.bb2 ], [ %fsuid, %do.end ]
  %any.0.ph = phi i32 [ 1, %sw.bb2 ], [ 0, %do.end ]
  %16 = ptrtoint ptr %uid3.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %uid.sroa.0.0.copyload6 = load i32, ptr %uid3.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %any.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %any.0.ph, %sw.epilog.sink.split ]
  %uid.sroa.0.0 = phi i32 [ -1, %entry.sw.epilog_crit_edge ], [ %uid.sroa.0.0.copyload6, %sw.epilog.sink.split ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %uid.sroa.0.0, 0
  %call4 = tail call fastcc ptr @v9fs_fid_lookup_with_uid(ptr noundef %dentry, [1 x i32] %.fca.0.insert, i32 noundef %any.0)
  ret ptr %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @v9fs_fid_lookup_with_uid(ptr noundef %dentry, [1 x i32] %uid.coerce, i32 noundef %any) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 28
  %call2 = tail call fastcc ptr @v9fs_fid_find(ptr noundef %dentry, [1 x i32] %uid.coerce, i32 noundef %any)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rename_sem = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 15
  tail call void @down_read(ptr noundef %rename_sem) #6
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %7 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_parent, align 8
  %call4 = tail call fastcc ptr @v9fs_fid_find(ptr noundef %8, [1 x i32] %uid.coerce, i32 noundef %any)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %call7 = tail call ptr @p9_client_walk(ptr noundef nonnull %call4, i16 noundef zeroext 1, ptr noundef %name, i32 noundef 1) #6
  %call8 = tail call i32 @p9_client_clunk(ptr noundef nonnull %call4) #6
  br label %fid_out

if.end9:                                          ; preds = %if.end
  tail call void @up_read(ptr noundef %rename_sem) #6
  %9 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_sb.i, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_root, align 64
  %call12 = tail call fastcc ptr @v9fs_fid_find(ptr noundef %12, [1 x i32] %uid.coerce, i32 noundef %any)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end9.if.end33_crit_edge

if.end9.if.end33_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp = icmp eq i8 %6, 4
  br i1 %cmp, label %if.then14.cleanup_crit_edge, label %if.end18

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 4
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %if.else, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %uname24 = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %uname24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %uname24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end18.if.end25_crit_edge
  %uname.0 = phi ptr [ %18, %if.else ], [ null, %if.end18.if.end25_crit_edge ]
  %clnt = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %clnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clnt, align 4
  %aname = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %aname to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aname, align 4
  %call27 = tail call ptr @p9_client_attach(ptr noundef %20, ptr noundef null, ptr noundef %uname.0, [1 x i32] %uid.coerce, ptr noundef %22) #6
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_sb.i, align 4
  %s_root32 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %s_root32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_root32, align 64
  tail call void @v9fs_fid_add(ptr noundef %26, ptr noundef %call27)
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %if.end9.if.end33_crit_edge
  %fid.0 = phi ptr [ %call12, %if.end9.if.end33_crit_edge ], [ %call27, %if.end30 ]
  %27 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_sb.i, align 4
  %s_root35 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %s_root35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_root35, align 64
  %cmp36 = icmp eq ptr %30, %dentry
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end33
  %count = getelementptr inbounds %struct.p9_fid, ptr %fid.0, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #6
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #6, !srcloc !18
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then38.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !19

if.then38.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then38
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %32 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %.not.i.i.i = icmp sgt i32 %32, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !20

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then38.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then38.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #6
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  tail call void @down_read(ptr noundef %rename_sem) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end39
  %n.0.i = phi i32 [ 0, %if.end39 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %ds.0.i = phi ptr [ %dentry, %if.end39 ], [ %34, %for.cond.i.for.cond.i_crit_edge ]
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %ds.0.i, i32 0, i32 3
  %33 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_parent.i, align 8
  %cmp.not.i = icmp eq ptr %ds.0.i, %34
  %inc.i = add i32 %n.0.i, 1
  br i1 %cmp.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n.0.i, i32 4) #6
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %for.end.i.if.then44_crit_edge, label %if.end7.i.i, !prof !19

for.end.i.if.then44_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.end7.i.i:                                      ; preds = %for.end.i
  %37 = extractvalue { i32, i1 } %35, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.if.then44_crit_edge, label %for.cond2.preheader.i

if.end7.i.i.if.then44_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

for.cond2.preheader.i:                            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.i)
  %cmp34.i.not = icmp eq i32 %n.0.i, 0
  br i1 %cmp34.i.not, label %for.cond2.preheader.i.while.end_crit_edge, label %for.cond2.preheader.i.for.body4.i_crit_edge

for.cond2.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body4.i

for.cond2.preheader.i.while.end_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.cond2.preheader.i.for.body4.i_crit_edge
  %i.06.in.i = phi i32 [ %i.06.i, %for.body4.i.for.body4.i_crit_edge ], [ %n.0.i, %for.cond2.preheader.i.for.body4.i_crit_edge ]
  %ds.15.i = phi ptr [ %42, %for.body4.i.for.body4.i_crit_edge ], [ %dentry, %for.cond2.preheader.i.for.body4.i_crit_edge ]
  %i.06.i = add nsw i32 %i.06.in.i, -1
  %name.i = getelementptr inbounds %struct.dentry, ptr %ds.15.i, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i, i32 %i.06.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %arrayidx.i, align 4
  %d_parent6.i = getelementptr inbounds %struct.dentry, ptr %ds.15.i, i32 0, i32 3
  %41 = ptrtoint ptr %d_parent6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d_parent6.i, align 8
  %cmp3.i = icmp ugt i32 %i.06.in.i, 1
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %build_path_from_dentry.exit

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i

build_path_from_dentry.exit:                      ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.i)
  %cmp42 = icmp slt i32 %n.0.i, 0
  br i1 %cmp42, label %build_path_from_dentry.exit.if.then44_crit_edge, label %while.cond.preheader

build_path_from_dentry.exit.if.then44_crit_edge:  ; preds = %build_path_from_dentry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

while.cond.preheader:                             ; preds = %build_path_from_dentry.exit
  %43 = tail call i32 @llvm.smin.i32(i32 %n.0.i, i32 16)
  %conv51190 = trunc i32 %43 to i16
  %call52191 = tail call ptr @p9_client_walk(ptr noundef %fid.0, i16 noundef zeroext %conv51190, ptr noundef nonnull %call8.i.i, i32 noundef 1) #6
  %cmp.i153192 = icmp ugt ptr %call52191, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153192, label %while.cond.preheader.if.then54_crit_edge, label %while.cond.preheader.while.cond_crit_edge

while.cond.preheader.while.cond_crit_edge:        ; preds = %while.cond.preheader
  br label %while.cond

while.cond.preheader.if.then54_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

if.then44:                                        ; preds = %build_path_from_dentry.exit.if.then44_crit_edge, %if.end7.i.i.if.then44_crit_edge, %for.end.i.if.then44_crit_edge
  %retval.0.i171 = phi i32 [ %n.0.i, %build_path_from_dentry.exit.if.then44_crit_edge ], [ -12, %if.end7.i.i.if.then44_crit_edge ], [ -12, %for.end.i.if.then44_crit_edge ]
  %44 = inttoptr i32 %retval.0.i171 to ptr
  br label %err_out

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader.while.cond_crit_edge
  %call52194 = phi ptr [ %call52, %while.body.while.cond_crit_edge ], [ %call52191, %while.cond.preheader.while.cond_crit_edge ]
  %45 = phi i32 [ %46, %while.body.while.cond_crit_edge ], [ %43, %while.cond.preheader.while.cond_crit_edge ]
  %i.0175193 = phi i32 [ %add, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader.while.cond_crit_edge ]
  %add = add i32 %45, %i.0175193
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.i, i32 %add)
  %cmp47 = icmp sgt i32 %n.0.i, %add
  br i1 %cmp47, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %n.0.i, %add
  %46 = tail call i32 @llvm.smin.i32(i32 %sub, i32 16)
  %conv51 = trunc i32 %46 to i16
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %add
  %call52 = tail call ptr @p9_client_walk(ptr noundef %call52194, i16 noundef zeroext %conv51, ptr noundef %arrayidx, i32 noundef 0) #6
  %cmp.i153 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %while.body.if.then54_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.if.then54_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

if.then54:                                        ; preds = %while.body.if.then54_crit_edge, %while.cond.preheader.if.then54_crit_edge
  %old_fid.0178.lcssa = phi ptr [ null, %while.cond.preheader.if.then54_crit_edge ], [ %call52194, %while.body.if.then54_crit_edge ]
  %call52.lcssa = phi ptr [ %call52191, %while.cond.preheader.if.then54_crit_edge ], [ %call52, %while.body.if.then54_crit_edge ]
  %tobool55.not = icmp eq ptr %old_fid.0178.lcssa, null
  br i1 %tobool55.not, label %if.then54.if.end58_crit_edge, label %if.then56

if.then54.if.end58_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = tail call i32 @p9_client_clunk(ptr noundef nonnull %old_fid.0178.lcssa) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then54.if.end58_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %err_out

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %for.cond2.preheader.i.while.end_crit_edge
  %fid.1.lcssa = phi ptr [ %fid.0, %for.cond2.preheader.i.while.end_crit_edge ], [ %call52194, %while.cond.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %fid_out

fid_out:                                          ; preds = %while.end, %if.then6
  %fid.2 = phi ptr [ %call7, %if.then6 ], [ %fid.1.lcssa, %while.end ]
  %cmp.i154 = icmp ugt ptr %fid.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %fid_out.err_out_crit_edge, label %if.then61

fid_out.err_out_crit_edge:                        ; preds = %fid_out
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.then61:                                        ; preds = %fid_out
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #6
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.not, label %if.then64, label %if.else69

if.then64:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #6
  %call67 = tail call i32 @p9_client_clunk(ptr noundef %fid.2) #6
  br label %err_out

if.else69:                                        ; preds = %if.then61
  %dlist.i = getelementptr inbounds %struct.p9_fid, ptr %fid.2, i32 0, i32 8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %49 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_fsdata.i, align 4
  %51 = ptrtoint ptr %dlist.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %dlist.i, align 4
  %tobool.not.i.i155 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i155, label %if.else69.__add_fid.exit_crit_edge, label %do.body12.i.i

if.else69.__add_fid.exit_crit_edge:               ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #8
  br label %__add_fid.exit

do.body12.i.i:                                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i156 = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %pprev.i.i156 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %dlist.i, ptr %pprev.i.i156, align 4
  br label %__add_fid.exit

__add_fid.exit:                                   ; preds = %do.body12.i.i, %if.else69.__add_fid.exit_crit_edge
  %53 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %dlist.i, ptr %d_fsdata.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.p9_fid, ptr %fid.2, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %d_fsdata.i, ptr %pprev34.i.i, align 4
  %count70 = getelementptr inbounds %struct.p9_fid, ptr %fid.2, i32 0, i32 2
  %call.i.i.i.i.i157 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count70, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %count70, i32 1, i32 3, i32 1) #6
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count70, ptr %count70, i32 1, ptr elementtype(i32) %count70) #6, !srcloc !18
  %asmresult.i.i.i.i.i158 = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i158)
  %tobool1.not.i.i.i159 = icmp eq i32 %asmresult.i.i.i.i.i158, 0
  br i1 %tobool1.not.i.i.i159, label %__add_fid.exit.if.end15.sink.split.i.i.i164_crit_edge, label %if.else.i.i.i162, !prof !19

__add_fid.exit.if.end15.sink.split.i.i.i164_crit_edge: ; preds = %__add_fid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i164

if.else.i.i.i162:                                 ; preds = %__add_fid.exit
  %add.i.i.i160 = add i32 %asmresult.i.i.i.i.i158, 1
  %56 = or i32 %add.i.i.i160, %asmresult.i.i.i.i.i158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %.not.i.i.i161 = icmp sgt i32 %56, -1
  br i1 %.not.i.i.i161, label %if.else.i.i.i162.refcount_inc.exit165_crit_edge, label %if.else.i.i.i162.if.end15.sink.split.i.i.i164_crit_edge, !prof !20

if.else.i.i.i162.if.end15.sink.split.i.i.i164_crit_edge: ; preds = %if.else.i.i.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i164

if.else.i.i.i162.refcount_inc.exit165_crit_edge:  ; preds = %if.else.i.i.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %refcount_inc.exit165

if.end15.sink.split.i.i.i164:                     ; preds = %if.else.i.i.i162.if.end15.sink.split.i.i.i164_crit_edge, %__add_fid.exit.if.end15.sink.split.i.i.i164_crit_edge
  %.sink.i.i.i163 = phi i32 [ 2, %__add_fid.exit.if.end15.sink.split.i.i.i164_crit_edge ], [ 1, %if.else.i.i.i162.if.end15.sink.split.i.i.i164_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count70, i32 noundef %.sink.i.i.i163) #6
  br label %refcount_inc.exit165

refcount_inc.exit165:                             ; preds = %if.end15.sink.split.i.i.i164, %if.else.i.i.i162.refcount_inc.exit165_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #6
  br label %err_out

err_out:                                          ; preds = %refcount_inc.exit165, %if.then64, %fid_out.err_out_crit_edge, %if.end58, %if.then44
  %fid.3 = phi ptr [ %fid.2, %fid_out.err_out_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then64 ], [ %fid.2, %refcount_inc.exit165 ], [ %44, %if.then44 ], [ %call52.lcssa, %if.end58 ]
  tail call void @up_read(ptr noundef %rename_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fid.3, %err_out ], [ %call2, %entry.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then14.cleanup_crit_edge ], [ %fid.0, %if.else.i.i.i.cleanup_crit_edge ], [ %fid.0, %if.end15.sink.split.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @v9fs_writeback_fid(ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @v9fs_fid_lookup_with_uid(ptr noundef %dentry, [1 x i32] zeroinitializer, i32 noundef 0)
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.clone_fid.exit_crit_edge, label %cond.false.i

entry.clone_fid.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clone_fid.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call ptr @p9_client_walk(ptr noundef %call, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #6
  br label %clone_fid.exit

clone_fid.exit:                                   ; preds = %cond.false.i, %entry.clone_fid.exit_crit_edge
  %cond.i = phi ptr [ %call1.i, %cond.false.i ], [ %call, %entry.clone_fid.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %cond.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %clone_fid.exit.error_out_crit_edge, label %if.end

clone_fid.exit.error_out_crit_edge:               ; preds = %clone_fid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_out

if.end:                                           ; preds = %clone_fid.exit
  %call3 = tail call i32 @p9_client_clunk(ptr noundef %call) #6
  %call4 = tail call i32 @p9_client_open(ptr noundef %cond.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end.error_out_crit_edge

if.end.error_out_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_out

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @p9_client_clunk(ptr noundef %cond.i) #6
  %0 = inttoptr i32 %call4 to ptr
  br label %error_out

error_out:                                        ; preds = %if.then5, %if.end.error_out_crit_edge, %clone_fid.exit.error_out_crit_edge
  %fid.0 = phi ptr [ %cond.i, %clone_fid.exit.error_out_crit_edge ], [ %0, %if.then5 ], [ %cond.i, %if.end.error_out_crit_edge ]
  ret ptr %fid.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_clunk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_open(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @v9fs_fid_find(ptr noundef %dentry, [1 x i32] %uid.coerce, i32 noundef %any) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %uid.coerce) #6
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_fid_find, ptr noundef nonnull @.str, ptr noundef %dentry, ptr noundef %dentry, i32 noundef %call, i32 noundef %any) #6
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #6
  %2 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata, align 4
  %tobool3.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -44
  %tobool5.not6266 = icmp eq ptr %add.ptr, null
  %tobool5.not62 = or i1 %tobool3.not, %tobool5.not6266
  br i1 %tobool5.not62, label %if.then.if.end30.sink.split_crit_edge, label %for.body.lr.ph

if.then.if.end30.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.sink.split

for.body.lr.ph:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %any)
  %tobool6.not = icmp eq i32 %any, 0
  %uid.coerce.fca.0.extract.i6.i = extractvalue [1 x i32] %uid.coerce, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fid.063 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr18, %for.inc.for.body_crit_edge ]
  br i1 %tobool6.not, label %lor.lhs.false, label %for.body.if.then11_crit_edge

for.body.if.then11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

lor.lhs.false:                                    ; preds = %for.body
  %uid7 = getelementptr inbounds %struct.p9_fid, ptr %fid.063, i32 0, i32 6
  %4 = ptrtoint ptr %uid7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %uid7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %uid.coerce.fca.0.extract.i6.i)
  %cmp.i = icmp eq i32 %.unpack, %uid.coerce.fca.0.extract.i6.i
  br i1 %cmp.i, label %lor.lhs.false.if.then11_crit_edge, label %for.inc

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %for.body.if.then11_crit_edge
  %fid.063.lcssa = phi ptr [ %fid.063, %lor.lhs.false.if.then11_crit_edge ], [ %add.ptr, %for.body.if.then11_crit_edge ]
  %count = getelementptr inbounds %struct.p9_fid, ptr %fid.063.lcssa, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #6, !srcloc !18
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then11.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !19

if.then11.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then11
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end30.sink.split_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !20

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end30.sink.split_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.sink.split

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then11.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then11.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #6
  br label %if.end30.sink.split

for.inc:                                          ; preds = %lor.lhs.false
  %dlist = getelementptr inbounds %struct.p9_fid, ptr %fid.063, i32 0, i32 8
  %7 = ptrtoint ptr %dlist to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dlist, align 4
  %tobool14.not = icmp eq ptr %8, null
  %add.ptr18 = getelementptr i8, ptr %8, i32 -44
  %tobool5.not68 = icmp eq ptr %add.ptr18, null
  %tobool5.not = or i1 %tobool14.not, %tobool5.not68
  br i1 %tobool5.not, label %for.inc.if.end30.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end30.sink.split_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.sink.split

if.else:                                          ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode, align 8
  %tobool24.not = icmp eq ptr %10, null
  br i1 %tobool24.not, label %if.else.if.end30_crit_edge, label %if.then25

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then25:                                        ; preds = %if.else
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_fid_find_inode, ptr noundef nonnull @.str.1, ptr noundef nonnull %10) #6
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #6
  %i_private.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_private.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  %add.ptr.i = getelementptr i8, ptr %12, i32 -52
  %tobool2.not3235.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not32.i = or i1 %tobool.not.i, %tobool2.not3235.i
  br i1 %tobool2.not32.i, label %if.then25.if.end30.sink.split_crit_edge, label %for.body.lr.ph.i

if.then25.if.end30.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.sink.split

for.body.lr.ph.i:                                 ; preds = %if.then25
  %uid.coerce.fca.0.extract.i6.i.i = extractvalue [1 x i32] %uid.coerce, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fid.033.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr12.i, %for.inc.i.for.body.i_crit_edge ]
  %uid3.i = getelementptr inbounds %struct.p9_fid, ptr %fid.033.i, i32 0, i32 6
  %13 = ptrtoint ptr %uid3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack.i = load i32, ptr %uid3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %uid.coerce.fca.0.extract.i6.i.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %uid.coerce.fca.0.extract.i6.i.i
  br i1 %cmp.i.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %count.i = getelementptr inbounds %struct.p9_fid, ptr %fid.033.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #6, !srcloc !18
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !19

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end30.sink.split_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end30.sink.split_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.sink.split

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #6
  br label %if.end30.sink.split

for.inc.i:                                        ; preds = %for.body.i
  %ilist.i = getelementptr inbounds %struct.p9_fid, ptr %fid.033.i, i32 0, i32 9
  %16 = ptrtoint ptr %ilist.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ilist.i, align 4
  %tobool8.not.i = icmp eq ptr %17, null
  %add.ptr12.i = getelementptr i8, ptr %17, i32 -52
  %tobool2.not37.i = icmp eq ptr %add.ptr12.i, null
  %tobool2.not.i = or i1 %tobool8.not.i, %tobool2.not37.i
  br i1 %tobool2.not.i, label %for.inc.i.if.end30.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end30.sink.split_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %for.inc.i.if.end30.sink.split_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end30.sink.split_crit_edge, %if.then25.if.end30.sink.split_crit_edge, %for.inc.if.end30.sink.split_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end30.sink.split_crit_edge, %if.then.if.end30.sink.split_crit_edge
  %i_lock.i.sink = phi ptr [ %d_lockref, %if.then.if.end30.sink.split_crit_edge ], [ %d_lockref, %if.end15.sink.split.i.i.i ], [ %d_lockref, %if.else.i.i.i.if.end30.sink.split_crit_edge ], [ %i_lock.i, %if.then25.if.end30.sink.split_crit_edge ], [ %i_lock.i, %if.else.i.i.i.i.if.end30.sink.split_crit_edge ], [ %i_lock.i, %if.end15.sink.split.i.i.i.i ], [ %i_lock.i, %for.inc.i.if.end30.sink.split_crit_edge ], [ %d_lockref, %for.inc.if.end30.sink.split_crit_edge ]
  %ret.1.ph = phi ptr [ null, %if.then.if.end30.sink.split_crit_edge ], [ %fid.063.lcssa, %if.end15.sink.split.i.i.i ], [ %fid.063.lcssa, %if.else.i.i.i.if.end30.sink.split_crit_edge ], [ null, %if.then25.if.end30.sink.split_crit_edge ], [ %fid.033.i, %if.else.i.i.i.i.if.end30.sink.split_crit_edge ], [ %fid.033.i, %if.end15.sink.split.i.i.i.i ], [ null, %for.inc.i.if.end30.sink.split_crit_edge ], [ null, %for.inc.if.end30.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i.sink) #6
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else.if.end30_crit_edge
  %ret.1 = phi ptr [ null, %if.else.if.end30_crit_edge ], [ %ret.1.ph, %if.end30.sink.split ]
  ret ptr %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_walk(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_attach(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/9p/fid.c", i32 281, i32 9}
!2 = !{ptr @__func__.v9fs_fid_find, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/9p/fid.c", i32 95, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.v9fs_fid_find_inode, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/9p/fid.c", i32 53, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2148347171, i64 2148347203, i64 2148347232, i64 2148347266, i64 2148347297, i64 2148347320}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}
