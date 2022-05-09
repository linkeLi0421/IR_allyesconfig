; ModuleID = '/llk/IR_all_yes/fs/nilfs2/cpfile.c_pt.bc'
source_filename = "../fs/nilfs2/cpfile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nilfs_mdt_info = type { %struct.rw_semaphore, ptr, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.nilfs_checkpoint = type { i32, i32, %struct.nilfs_snapshot_list, i64, i64, i64, i64, i64, %struct.nilfs_inode }
%struct.nilfs_snapshot_list = type { i64, i64 }
%struct.nilfs_inode = type { i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i32, [7 x i64], i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nilfs_cpfile_header = type { i64, i64, %struct.nilfs_snapshot_list }
%struct.nilfs_cpinfo = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.nilfs_cpstat = type { i64, i64, i64 }

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013cannot delete checkpoints: invalid range [%llu, %llu)\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013error %d deleting checkpoint block\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013too large checkpoint size: %zu bytes\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013too small checkpoint size: %zu bytes\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/nilfs2/cpfile.c\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 325, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 379, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 984, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 987, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 44, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [22 x i8] c"../fs/nilfs2/cpfile.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 91, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_cpfile_get_checkpoint(ptr noundef %cpfile, i64 noundef %cno, i32 noundef %create, ptr noundef writeonly %cpp, ptr nocapture noundef writeonly %bhp) local_unnamed_addr #0 align 64 {
entry:
  %header_bh = alloca ptr, align 4
  %cp_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh) #9
  %0 = ptrtoint ptr %header_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp_bh) #9
  %1 = ptrtoint ptr %cp_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %cp_bh, align 4, !annotation !22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cno)
  %cmp = icmp eq i64 %cno, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !23

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %ns_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ns_cno.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %cno)
  %cmp1 = icmp ult i64 %7, %cno
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.rhs, !prof !23

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %cno)
  %cmp3 = icmp ugt i64 %7, %cno
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool = icmp ne i32 %create, 0
  %spec.select = and i1 %tobool, %cmp3
  br i1 %spec.select, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !23

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %i_private.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %8 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_private.i, align 4
  tail call void @down_write(ptr noundef %9) #9
  %call.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.end.out_sem_crit_edge, label %if.end10

if.end.out_sem_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sem

if.end10:                                         ; preds = %if.end
  %10 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %13 to i64
  %add.i.i = add i64 %cno, -1
  %sub.i.i = add i64 %add.i.i, %conv.i.i
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp170.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp170.i.i, label %if.then174.i.i, label %if.else180.i.i, !prof !24

if.then174.i.i:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i = trunc i64 %sub.i.i to i32
  %div178.i.i = udiv i32 %conv175.i.i, %15
  br label %nilfs_cpfile_get_checkpoint_block.exit

if.else180.i.i:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %16 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %sub.i.i) #12, !srcloc !25
  %asmresult1.i.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t293.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_cpfile_get_checkpoint_block.exit

nilfs_cpfile_get_checkpoint_block.exit:           ; preds = %if.else180.i.i, %if.then174.i.i
  %tcno.0.off0.i.i = phi i32 [ %div178.i.i, %if.then174.i.i ], [ %extract.t293.i.i, %if.else180.i.i ]
  %call1.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i, i32 noundef %create, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef nonnull %cp_bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp12 = icmp slt i32 %call1.i, 0
  br i1 %cmp12, label %nilfs_cpfile_get_checkpoint_block.exit.out_header_crit_edge, label %if.end14

nilfs_cpfile_get_checkpoint_block.exit.out_header_crit_edge: ; preds = %nilfs_cpfile_get_checkpoint_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_header

if.end14:                                         ; preds = %nilfs_cpfile_get_checkpoint_block.exit
  %17 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cp_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_page, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 44) #9
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %shr.i.i75 = lshr i32 %22, 30
  %23 = zext i32 %shr.i.i75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i75, label %if.end14.if.then.i_crit_edge [
    i32 2, label %if.end14.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end14.if.else.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end14.if.then.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %24 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i.not.i = icmp eq i32 %24, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end14.if.then.i_crit_edge
  %call5.i = call ptr @page_address(ptr noundef %20) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end14.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef %20) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %25 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cp_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data.i, align 4
  %29 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i77 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %mi_first_entry_offset.i.i77 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mi_first_entry_offset.i.i77, align 4
  %conv.i.i78 = zext i32 %32 to i64
  %sub.i.i80 = add i64 %add.i.i, %conv.i.i78
  %mi_entries_per_block.i.i.i81 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %mi_entries_per_block.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mi_entries_per_block.i.i.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i80)
  %cmp170.i.i175 = icmp ult i64 %sub.i.i80, 4294967296
  br i1 %cmp170.i.i175, label %if.then174.i.i178, label %if.else180.i.i179, !prof !24

if.then174.i.i178:                                ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i177 = trunc i64 %sub.i.i80 to i32
  %rem176.i.i = urem i32 %conv175.i.i177, %34
  br label %nilfs_cpfile_block_get_checkpoint.exit

if.else180.i.i179:                                ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %35 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %34, i64 %sub.i.i80) #12, !srcloc !25
  %asmresult.i268.i.i = extractvalue { i64, i64 } %35, 0
  %shr.i.i.i = lshr i64 %asmresult.i268.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit

nilfs_cpfile_block_get_checkpoint.exit:           ; preds = %if.else180.i.i179, %if.then174.i.i178
  %__rem.0.i.i = phi i32 [ %rem176.i.i, %if.then174.i.i178 ], [ %conv.i.i.i, %if.else180.i.i179 ]
  %36 = ptrtoint ptr %28 to i32
  %and.i = and i32 %36, 4095
  %add.ptr.i = getelementptr i8, ptr %addr.0.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %30, i32 0, i32 2
  %37 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i = mul i32 %38, %__rem.0.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %39 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr2.i, align 8
  %41 = and i32 %40, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool18.not = icmp eq i32 %41, 0
  br i1 %tobool18.not, label %nilfs_cpfile_block_get_checkpoint.exit.if.end35_crit_edge, label %if.then19

nilfs_cpfile_block_get_checkpoint.exit.if.end35_crit_edge: ; preds = %nilfs_cpfile_block_get_checkpoint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then19:                                        ; preds = %nilfs_cpfile_block_get_checkpoint.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool20.not = icmp eq i32 %create, 0
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then19
  %b_page22 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 2
  %42 = ptrtoint ptr %b_page22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_page22, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 55) #9
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %shr.i.i180 = lshr i32 %45, 30
  %46 = zext i32 %shr.i.i180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %shr.i.i180, label %if.then21.kunmap.exit_crit_edge [
    i32 2, label %if.then21.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i182
  ]

if.then21.if.end.i_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then21.kunmap.exit_crit_edge:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i182:                         ; preds = %if.then21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %47 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp2.i.not.i181 = icmp eq i32 %47, 2
  br i1 %cmp2.i.not.i181, label %is_highmem_idx.exit.i182.if.end.i_crit_edge, label %is_highmem_idx.exit.i182.kunmap.exit_crit_edge

is_highmem_idx.exit.i182.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i182
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i182.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i182.if.end.i_crit_edge, %if.then21.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %43) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i182.kunmap.exit_crit_edge, %if.then21.kunmap.exit_crit_edge
  %48 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cp_bh, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %kunmap.exit.out_header_crit_edge, label %if.then.i183

kunmap.exit.out_header_crit_edge:                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_header

if.then.i183:                                     ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %49) #9
  br label %out_header

if.end23:                                         ; preds = %if.then19
  %50 = and i32 %40, -33554433
  %51 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %add.ptr2.i, align 8
  %52 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i186 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %mi_first_entry_offset.i.i186 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mi_first_entry_offset.i.i186, align 4
  %conv.i.i187 = zext i32 %55 to i64
  %sub.i.i189 = add i64 %add.i.i, %conv.i.i187
  %mi_entries_per_block.i.i.i190 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %53, i32 0, i32 4
  %56 = ptrtoint ptr %mi_entries_per_block.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mi_entries_per_block.i.i.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i189)
  %cmp170.i.i299 = icmp ult i64 %sub.i.i189, 4294967296
  br i1 %cmp170.i.i299, label %if.then174.i.i303, label %if.else180.i.i306, !prof !24

if.then174.i.i303:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i301 = trunc i64 %sub.i.i189 to i32
  %div178.i.i302 = udiv i32 %conv175.i.i301, %57
  br label %nilfs_cpfile_is_in_first.exit

if.else180.i.i306:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %58 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %57, i64 %sub.i.i189) #12, !srcloc !25
  %asmresult1.i.i.i304 = extractvalue { i64, i64 } %58, 1
  %extract.t293.i.i305 = trunc i64 %asmresult1.i.i.i304 to i32
  br label %nilfs_cpfile_is_in_first.exit

nilfs_cpfile_is_in_first.exit:                    ; preds = %if.else180.i.i306, %if.then174.i.i303
  %tcno.0.off0.i.i307 = phi i32 [ %div178.i.i302, %if.then174.i.i303 ], [ %extract.t293.i.i305, %if.else180.i.i306 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tcno.0.off0.i.i307)
  %cmp.i.not = icmp eq i32 %tcno.0.off0.i.i307, 0
  br i1 %cmp.i.not, label %nilfs_cpfile_is_in_first.exit.if.end28_crit_edge, label %if.then26

nilfs_cpfile_is_in_first.exit.if.end28_crit_edge: ; preds = %nilfs_cpfile_is_in_first.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %nilfs_cpfile_is_in_first.exit
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cp_bh, align 4
  %b_data.i308 = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %b_data.i308 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data.i308, align 4
  %63 = ptrtoint ptr %62 to i32
  %and.i309 = and i32 %63, 4095
  %add.ptr.i310 = getelementptr i8, ptr %addr.0.i, i32 %and.i309
  %cp_checkpoints_count.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr.i310, i32 0, i32 1
  %64 = ptrtoint ptr %cp_checkpoints_count.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cp_checkpoints_count.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #9
  %add.i = add i32 %66, 1
  %67 = call i32 @llvm.bswap.i32(i32 %add.i) #9
  %68 = ptrtoint ptr %cp_checkpoints_count.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %cp_checkpoints_count.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %nilfs_cpfile_is_in_first.exit.if.end28_crit_edge
  %69 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cp_bh, align 4
  call void @mark_buffer_dirty(ptr noundef %70) #9
  %71 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %header_bh, align 4
  %b_page29 = getelementptr inbounds %struct.buffer_head, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %b_page29 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %b_page29, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %75 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %75, 512
  %76 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %79, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %80 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 213
  %84 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %85, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %74, i32 noundef %or.i) #9
  %86 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %header_bh, align 4
  %b_data.i311 = getelementptr inbounds %struct.buffer_head, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %b_data.i311 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %b_data.i311, align 4
  %90 = ptrtoint ptr %89 to i32
  %and.i312 = and i32 %90, 4095
  %add.ptr.i313 = getelementptr i8, ptr %call.i.i, i32 %and.i312
  %91 = ptrtoint ptr %add.ptr.i313 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %add.ptr.i313, align 8
  %93 = call i64 @llvm.bswap.i64(i64 %92) #9
  %add.i314 = add i64 %93, 1
  %94 = call i64 @llvm.bswap.i64(i64 %add.i314) #9
  %95 = ptrtoint ptr %add.ptr.i313 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %add.ptr.i313, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %96 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 213
  %100 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %101, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %102 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i315 = add i32 %105, -1
  store volatile i32 %sub.i.i315, ptr %preempt_count.i.i.i, align 4
  %106 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %header_bh, align 4
  call void @mark_buffer_dirty(ptr noundef %107) #9
  %i_state.i = getelementptr i8, ptr %cpfile, i32 -588
  %108 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %i_state.i, align 4
  %110 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i316 = icmp eq i32 %110, 0
  br i1 %tobool.not.i316, label %if.then.i317, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then.i317:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then.i317, %if.end28.if.end35_crit_edge, %nilfs_cpfile_block_get_checkpoint.exit.if.end35_crit_edge
  %cmp36.not = icmp eq ptr %cpp, null
  br i1 %cmp36.not, label %if.end35.if.end38_crit_edge, label %if.then37

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %cpp to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr2.i, ptr %cpp, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  %112 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cp_bh, align 4
  %114 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %bhp, align 4
  br label %out_header

out_header:                                       ; preds = %if.end38, %if.then.i183, %kunmap.exit.out_header_crit_edge, %nilfs_cpfile_get_checkpoint_block.exit.out_header_crit_edge
  %ret.0 = phi i32 [ %call1.i, %nilfs_cpfile_get_checkpoint_block.exit.out_header_crit_edge ], [ %call1.i, %if.end38 ], [ -2, %kunmap.exit.out_header_crit_edge ], [ -2, %if.then.i183 ]
  %115 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %header_bh, align 4
  %tobool.not.i319 = icmp eq ptr %116, null
  br i1 %tobool.not.i319, label %out_header.out_sem_crit_edge, label %if.then.i320

out_header.out_sem_crit_edge:                     ; preds = %out_header
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sem

if.then.i320:                                     ; preds = %out_header
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %116) #9
  br label %out_sem

out_sem:                                          ; preds = %if.then.i320, %out_header.out_sem_crit_edge, %if.end.out_sem_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.end.out_sem_crit_edge ], [ %ret.0, %out_header.out_sem_crit_edge ], [ %ret.0, %if.then.i320 ]
  %117 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i_private.i, align 4
  call void @up_write(ptr noundef %118) #9
  br label %cleanup

cleanup:                                          ; preds = %out_sem, %lor.rhs.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_sem ], [ -22, %lor.rhs.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_cpfile_get_checkpoint_block(ptr noundef %cpfile, i64 noundef %cno, i32 noundef %create, ptr noundef %bhp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mi_first_entry_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mi_first_entry_offset.i, align 4
  %conv.i = zext i32 %3 to i64
  %add.i = add i64 %cno, -1
  %sub.i = add i64 %add.i, %conv.i
  %mi_entries_per_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %mi_entries_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mi_entries_per_block.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp170.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp170.i, label %if.then174.i, label %if.else180.i, !prof !24

if.then174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i = trunc i64 %sub.i to i32
  %div178.i = udiv i32 %conv175.i, %5
  br label %nilfs_cpfile_get_blkoff.exit

if.else180.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %sub.i) #12, !srcloc !25
  %asmresult1.i.i = extractvalue { i64, i64 } %6, 1
  %extract.t293.i = trunc i64 %asmresult1.i.i to i32
  br label %nilfs_cpfile_get_blkoff.exit

nilfs_cpfile_get_blkoff.exit:                     ; preds = %if.else180.i, %if.then174.i
  %tcno.0.off0.i = phi i32 [ %div178.i, %if.then174.i ], [ %extract.t293.i, %if.else180.i ]
  %call1 = tail call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i, i32 noundef %create, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef %bhp) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap_atomic(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %5 = tail call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or) #9
  ret ptr %call.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kunmap_atomic(ptr noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kunmap_local_indexed(ptr noundef %addr) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %0 = tail call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i1 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %dec.i.i = add i32 %5, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %6 = tail call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_cpfile_put_checkpoint(ptr nocapture noundef readnone %cpfile, i64 noundef %cno, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 55) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr.i.i = lshr i32 %3, 30
  %4 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.not.i = icmp eq i32 %5, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %1) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %tobool.not.i = icmp eq ptr %bh, null
  br i1 %tobool.not.i, label %kunmap.exit.brelse.exit_crit_edge, label %if.then.i

kunmap.exit.brelse.exit_crit_edge:                ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bh) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %kunmap.exit.brelse.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_cpfile_delete_checkpoints(ptr noundef %cpfile, i64 noundef %start, i64 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %header_bh = alloca ptr, align 4
  %cp_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh) #9
  %0 = ptrtoint ptr %header_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp_bh) #9
  %1 = ptrtoint ptr %cp_bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %cp_bh, align 4, !annotation !22
  %i_private.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %mi_entry_size = getelementptr inbounds %struct.nilfs_mdt_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mi_entry_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mi_entry_size, align 4
  %6 = add i64 %start, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %end)
  %.not = icmp ult i64 %6, %end
  br i1 %.not, label %if.end, label %if.then, !prof !24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %8, ptr noundef nonnull @.str, i64 noundef %start, i64 noundef %end) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_write(ptr noundef %3) #9
  %call.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.end.out_sem_crit_edge, label %for.cond.preheader

if.end.out_sem_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sem

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %start, i64 %end)
  %cmp8694 = icmp ult i64 %start, %end
  br i1 %cmp8694, label %for.body.lr.ph, label %for.cond.preheader.if.end73_crit_edge

for.cond.preheader.if.end73_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %i_state.i = getelementptr i8, ptr %cpfile, i32 -588
  br label %for.body

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %for.body.lr.ph
  %nss.0698 = phi i32 [ 0, %for.body.lr.ph ], [ %nss.3, %for.inc57.for.body_crit_edge ]
  %tnicps.0697 = phi i32 [ 0, %for.body.lr.ph ], [ %tnicps.2, %for.inc57.for.body_crit_edge ]
  %cno.0695 = phi i64 [ %start, %for.body.lr.ph ], [ %add58, %for.inc57.for.body_crit_edge ]
  %9 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_private.i, align 4
  %mi_entries_per_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %mi_entries_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mi_entries_per_block.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %14 to i64
  %add.i.i = add i64 %cno.0695, -1
  %sub.i.i = add i64 %add.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp170.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp170.i.i, label %if.then174.i.i243, label %if.else180.i.i244, !prof !24

if.then174.i.i243:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i = trunc i64 %sub.i.i to i32
  %conv175.i.i.frozen = freeze i32 %conv175.i.i
  %.frozen = freeze i32 %12
  %div178.i.i = udiv i32 %conv175.i.i.frozen, %.frozen
  %15 = mul i32 %div178.i.i, %.frozen
  %rem176.i.i.decomposed = sub i32 %conv175.i.i.frozen, %15
  %sub.i667677 = sub i32 %12, %rem176.i.i.decomposed
  %conv.i668678 = zext i32 %sub.i667677 to i64
  %sub2.i669679 = sub i64 %end, %cno.0695
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i669679, i64 %conv.i668678)
  %cmp.i670680 = icmp ugt i64 %sub2.i669679, %conv.i668678
  %extract.t9.i671681 = trunc i64 %sub2.i669679 to i32
  %cond.off0.i672682 = select i1 %cmp.i670680, i32 %sub.i667677, i32 %extract.t9.i671681
  br label %nilfs_cpfile_get_checkpoint_block.exit

if.else180.i.i244:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %16 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %sub.i.i) #12
  %asmresult.i268.i.i = extractvalue { i64, i64 } %16, 0
  %shr.i.i.i = lshr i64 %asmresult.i268.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %sub.i667 = sub i32 %12, %conv.i.i.i
  %conv.i668 = zext i32 %sub.i667 to i64
  %sub2.i669 = sub i64 %end, %cno.0695
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i669, i64 %conv.i668)
  %cmp.i670 = icmp ugt i64 %sub2.i669, %conv.i668
  %extract.t9.i671 = trunc i64 %sub2.i669 to i32
  %cond.off0.i672 = select i1 %cmp.i670, i32 %sub.i667, i32 %extract.t9.i671
  %asmresult1.i.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t293.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_cpfile_get_checkpoint_block.exit

nilfs_cpfile_get_checkpoint_block.exit:           ; preds = %if.else180.i.i244, %if.then174.i.i243
  %cond.off0.i673 = phi i32 [ %cond.off0.i672682, %if.then174.i.i243 ], [ %cond.off0.i672, %if.else180.i.i244 ]
  %tcno.0.off0.i.i = phi i32 [ %div178.i.i, %if.then174.i.i243 ], [ %extract.t293.i.i, %if.else180.i.i244 ]
  %call1.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i, i32 noundef 0, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef nonnull %cp_bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp11 = icmp slt i32 %call1.i, 0
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %nilfs_cpfile_get_checkpoint_block.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i)
  %cmp13.not = icmp eq i32 %call1.i, -2
  br i1 %cmp13.not, label %if.then12.for.inc57_crit_edge, label %if.then12.for.end59_crit_edge

if.then12.for.end59_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

if.then12.for.inc57_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

if.end16:                                         ; preds = %nilfs_cpfile_get_checkpoint_block.exit
  %17 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cp_bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %21 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %21, 512
  %22 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %26 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 213
  %30 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %20, i32 noundef %or.i) #9
  %32 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cp_bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data.i, align 4
  %36 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i246 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %mi_first_entry_offset.i.i246 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mi_first_entry_offset.i.i246, align 4
  %conv.i.i247 = zext i32 %39 to i64
  %sub.i.i249 = add i64 %add.i.i, %conv.i.i247
  %mi_entries_per_block.i.i.i250 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %mi_entries_per_block.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mi_entries_per_block.i.i.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i249)
  %cmp170.i.i361 = icmp ult i64 %sub.i.i249, 4294967296
  br i1 %cmp170.i.i361, label %if.then174.i.i365, label %if.else180.i.i369, !prof !24

if.then174.i.i365:                                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i363 = trunc i64 %sub.i.i249 to i32
  %rem176.i.i364 = urem i32 %conv175.i.i363, %41
  br label %nilfs_cpfile_block_get_checkpoint.exit

if.else180.i.i369:                                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %42 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %sub.i.i249) #12, !srcloc !25
  %asmresult.i268.i.i366 = extractvalue { i64, i64 } %42, 0
  %shr.i.i.i367 = lshr i64 %asmresult.i268.i.i366, 32
  %conv.i.i.i368 = trunc i64 %shr.i.i.i367 to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit

nilfs_cpfile_block_get_checkpoint.exit:           ; preds = %if.else180.i.i369, %if.then174.i.i365
  %__rem.0.i.i370 = phi i32 [ %rem176.i.i364, %if.then174.i.i365 ], [ %conv.i.i.i368, %if.else180.i.i369 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.off0.i673)
  %cmp20687 = icmp sgt i32 %cond.off0.i673, 0
  br i1 %cmp20687, label %for.body21.preheader, label %nilfs_cpfile_block_get_checkpoint.exit.do.end54_crit_edge

nilfs_cpfile_block_get_checkpoint.exit.do.end54_crit_edge: ; preds = %nilfs_cpfile_block_get_checkpoint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

for.body21.preheader:                             ; preds = %nilfs_cpfile_block_get_checkpoint.exit
  %43 = ptrtoint ptr %35 to i32
  %and.i = and i32 %43, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %37, i32 0, i32 2
  %44 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i = mul i32 %45, %__rem.0.i.i370
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  br label %for.body21

for.body21:                                       ; preds = %for.inc.for.body21_crit_edge, %for.body21.preheader
  %i.0692 = phi i32 [ %inc31, %for.inc.for.body21_crit_edge ], [ 0, %for.body21.preheader ]
  %nss.1691 = phi i32 [ %nss.2, %for.inc.for.body21_crit_edge ], [ %nss.0698, %for.body21.preheader ]
  %nicps.0690 = phi i32 [ %nicps.1, %for.inc.for.body21_crit_edge ], [ 0, %for.body21.preheader ]
  %cp.0688 = phi ptr [ %add.ptr, %for.inc.for.body21_crit_edge ], [ %add.ptr2.i, %for.body21.preheader ]
  %46 = ptrtoint ptr %cp.0688 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cp.0688, align 8
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool23.not = icmp eq i32 %48, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %nss.1691, 1
  br label %for.inc

if.else:                                          ; preds = %for.body21
  %49 = and i32 %47, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool26.not = icmp eq i32 %49, 0
  br i1 %tobool26.not, label %if.then27, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %50 = or i32 %47, 33554432
  %51 = ptrtoint ptr %cp.0688 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %cp.0688, align 8
  %inc28 = add i32 %nicps.0690, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %if.else.for.inc_crit_edge, %if.then24
  %nicps.1 = phi i32 [ %nicps.0690, %if.then24 ], [ %nicps.0690, %if.else.for.inc_crit_edge ], [ %inc28, %if.then27 ]
  %nss.2 = phi i32 [ %inc, %if.then24 ], [ %nss.1691, %if.else.for.inc_crit_edge ], [ %nss.1691, %if.then27 ]
  %inc31 = add nuw nsw i32 %i.0692, 1
  %add.ptr = getelementptr i8, ptr %cp.0688, i32 %5
  %exitcond.not = icmp eq i32 %inc31, %cond.off0.i673
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body21_crit_edge

for.inc.for.body21_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nicps.1)
  %cmp32 = icmp sgt i32 %nicps.1, 0
  br i1 %cmp32, label %if.then33, label %for.end.do.end54_crit_edge

for.end.do.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

if.then33:                                        ; preds = %for.end
  %add = add i32 %nicps.1, %tnicps.0697
  %52 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cp_bh, align 4
  call void @mark_buffer_dirty(ptr noundef %53) #9
  %54 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %i_state.i, align 4
  %56 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then33.nilfs_mdt_mark_dirty.exit_crit_edge

if.then33.nilfs_mdt_mark_dirty.exit_crit_edge:    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_mdt_mark_dirty.exit

if.then.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #9
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i, %if.then33.nilfs_mdt_mark_dirty.exit_crit_edge
  %57 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i373 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %mi_first_entry_offset.i.i373 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mi_first_entry_offset.i.i373, align 4
  %conv.i.i374 = zext i32 %60 to i64
  %sub.i.i376 = add i64 %add.i.i, %conv.i.i374
  %mi_entries_per_block.i.i.i377 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %58, i32 0, i32 4
  %61 = ptrtoint ptr %mi_entries_per_block.i.i.i377 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mi_entries_per_block.i.i.i377, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i376)
  %cmp170.i.i486 = icmp ult i64 %sub.i.i376, 4294967296
  br i1 %cmp170.i.i486, label %if.then174.i.i490, label %if.else180.i.i493, !prof !24

if.then174.i.i490:                                ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i488 = trunc i64 %sub.i.i376 to i32
  %div178.i.i489 = udiv i32 %conv175.i.i488, %62
  br label %nilfs_cpfile_is_in_first.exit

if.else180.i.i493:                                ; preds = %nilfs_mdt_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  %63 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %62, i64 %sub.i.i376) #12, !srcloc !25
  %asmresult1.i.i.i491 = extractvalue { i64, i64 } %63, 1
  %extract.t293.i.i492 = trunc i64 %asmresult1.i.i.i491 to i32
  br label %nilfs_cpfile_is_in_first.exit

nilfs_cpfile_is_in_first.exit:                    ; preds = %if.else180.i.i493, %if.then174.i.i490
  %tcno.0.off0.i.i494 = phi i32 [ %div178.i.i489, %if.then174.i.i490 ], [ %extract.t293.i.i492, %if.else180.i.i493 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tcno.0.off0.i.i494)
  %cmp.i495.not = icmp eq i32 %tcno.0.off0.i.i494, 0
  br i1 %cmp.i495.not, label %nilfs_cpfile_is_in_first.exit.do.end54_crit_edge, label %if.then36

nilfs_cpfile_is_in_first.exit.do.end54_crit_edge: ; preds = %nilfs_cpfile_is_in_first.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

if.then36:                                        ; preds = %nilfs_cpfile_is_in_first.exit
  %64 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cp_bh, align 4
  %b_data.i497 = getelementptr inbounds %struct.buffer_head, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %b_data.i497 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %b_data.i497, align 4
  %68 = ptrtoint ptr %67 to i32
  %and.i498 = and i32 %68, 4095
  %add.ptr.i499 = getelementptr i8, ptr %call.i.i, i32 %and.i498
  %cp_checkpoints_count.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr.i499, i32 0, i32 1
  %69 = ptrtoint ptr %cp_checkpoints_count.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cp_checkpoints_count.i, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %nicps.1)
  %cmp.i500 = icmp ult i32 %71, %nicps.1
  br i1 %cmp.i500, label %do.end.i, label %if.then36.nilfs_cpfile_block_sub_valid_checkpoints.exit_crit_edge, !prof !23

if.then36.nilfs_cpfile_block_sub_valid_checkpoints.exit_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_cpfile_block_sub_valid_checkpoints.exit

do.end.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 91, i32 noundef 9, ptr noundef null) #9
  br label %nilfs_cpfile_block_sub_valid_checkpoints.exit

nilfs_cpfile_block_sub_valid_checkpoints.exit:    ; preds = %do.end.i, %if.then36.nilfs_cpfile_block_sub_valid_checkpoints.exit_crit_edge
  %72 = ptrtoint ptr %cp_checkpoints_count.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cp_checkpoints_count.i, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #9
  %sub.i501 = sub i32 %74, %nicps.1
  %75 = call i32 @llvm.bswap.i32(i32 %sub.i501) #9
  %76 = ptrtoint ptr %cp_checkpoints_count.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %cp_checkpoints_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %nicps.1)
  %cmp38 = icmp eq i32 %74, %nicps.1
  br i1 %cmp38, label %do.end, label %nilfs_cpfile_block_sub_valid_checkpoints.exit.do.end54_crit_edge

nilfs_cpfile_block_sub_valid_checkpoints.exit.do.end54_crit_edge: ; preds = %nilfs_cpfile_block_sub_valid_checkpoints.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

do.end:                                           ; preds = %nilfs_cpfile_block_sub_valid_checkpoints.exit
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %77 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 213
  %81 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %82, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %83 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i502 = add i32 %86, -1
  store volatile i32 %sub.i.i502, ptr %preempt_count.i.i.i, align 4
  %87 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cp_bh, align 4
  %tobool.not.i503 = icmp eq ptr %88, null
  br i1 %tobool.not.i503, label %do.end.brelse.exit_crit_edge, label %if.then.i504

do.end.brelse.exit_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i504:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %88) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i504, %do.end.brelse.exit_crit_edge
  %89 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i506 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %mi_first_entry_offset.i.i506 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mi_first_entry_offset.i.i506, align 4
  %conv.i.i507 = zext i32 %92 to i64
  %sub.i.i509 = add i64 %add.i.i, %conv.i.i507
  %mi_entries_per_block.i.i.i510 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %90, i32 0, i32 4
  %93 = ptrtoint ptr %mi_entries_per_block.i.i.i510 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mi_entries_per_block.i.i.i510, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i509)
  %cmp170.i.i619 = icmp ult i64 %sub.i.i509, 4294967296
  br i1 %cmp170.i.i619, label %if.then174.i.i623, label %if.else180.i.i626, !prof !24

if.then174.i.i623:                                ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i621 = trunc i64 %sub.i.i509 to i32
  %div178.i.i622 = udiv i32 %conv175.i.i621, %94
  br label %nilfs_cpfile_delete_checkpoint_block.exit

if.else180.i.i626:                                ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  %95 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %94, i64 %sub.i.i509) #12, !srcloc !25
  %asmresult1.i.i.i624 = extractvalue { i64, i64 } %95, 1
  %extract.t293.i.i625 = trunc i64 %asmresult1.i.i.i624 to i32
  br label %nilfs_cpfile_delete_checkpoint_block.exit

nilfs_cpfile_delete_checkpoint_block.exit:        ; preds = %if.else180.i.i626, %if.then174.i.i623
  %tcno.0.off0.i.i627 = phi i32 [ %div178.i.i622, %if.then174.i.i623 ], [ %extract.t293.i.i625, %if.else180.i.i626 ]
  %call1.i628 = call i32 @nilfs_mdt_delete_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i627) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i628)
  %cmp44 = icmp eq i32 %call1.i628, 0
  br i1 %cmp44, label %nilfs_cpfile_delete_checkpoint_block.exit.for.inc57_crit_edge, label %if.end46

nilfs_cpfile_delete_checkpoint_block.exit.for.inc57_crit_edge: ; preds = %nilfs_cpfile_delete_checkpoint_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

if.end46:                                         ; preds = %nilfs_cpfile_delete_checkpoint_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb47 = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 8
  %96 = ptrtoint ptr %i_sb47 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i_sb47, align 4
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %97, ptr noundef nonnull @.str.1, i32 noundef %call1.i628) #9
  br label %for.end59

do.end54:                                         ; preds = %nilfs_cpfile_block_sub_valid_checkpoints.exit.do.end54_crit_edge, %nilfs_cpfile_is_in_first.exit.do.end54_crit_edge, %for.end.do.end54_crit_edge, %nilfs_cpfile_block_get_checkpoint.exit.do.end54_crit_edge
  %nss.1.lcssa709 = phi i32 [ %nss.2, %nilfs_cpfile_is_in_first.exit.do.end54_crit_edge ], [ %nss.2, %nilfs_cpfile_block_sub_valid_checkpoints.exit.do.end54_crit_edge ], [ %nss.2, %for.end.do.end54_crit_edge ], [ %nss.0698, %nilfs_cpfile_block_get_checkpoint.exit.do.end54_crit_edge ]
  %tnicps.1 = phi i32 [ %add, %nilfs_cpfile_is_in_first.exit.do.end54_crit_edge ], [ %add, %nilfs_cpfile_block_sub_valid_checkpoints.exit.do.end54_crit_edge ], [ %tnicps.0697, %for.end.do.end54_crit_edge ], [ %tnicps.0697, %nilfs_cpfile_block_get_checkpoint.exit.do.end54_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %98 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i629 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i1.i629 to ptr
  %task.i.i.i630 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task.i.i.i630 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task.i.i.i630, align 8
  %pagefault_disabled.i.i.i631 = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 213
  %102 = ptrtoint ptr %pagefault_disabled.i.i.i631 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pagefault_disabled.i.i.i631, align 8
  %dec.i.i.i632 = add i32 %103, -1
  store i32 %dec.i.i.i632, ptr %pagefault_disabled.i.i.i631, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %104 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i633 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i633 to ptr
  %preempt_count.i.i.i634 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %preempt_count.i.i.i634 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %preempt_count.i.i.i634, align 4
  %sub.i.i635 = add i32 %107, -1
  store volatile i32 %sub.i.i635, ptr %preempt_count.i.i.i634, align 4
  %108 = ptrtoint ptr %cp_bh to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cp_bh, align 4
  %tobool.not.i636 = icmp eq ptr %109, null
  br i1 %tobool.not.i636, label %do.end54.for.inc57_crit_edge, label %if.then.i637

do.end54.for.inc57_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

if.then.i637:                                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %109) #9
  br label %for.inc57

for.inc57:                                        ; preds = %if.then.i637, %do.end54.for.inc57_crit_edge, %nilfs_cpfile_delete_checkpoint_block.exit.for.inc57_crit_edge, %if.then12.for.inc57_crit_edge
  %tnicps.2 = phi i32 [ %add, %nilfs_cpfile_delete_checkpoint_block.exit.for.inc57_crit_edge ], [ %tnicps.0697, %if.then12.for.inc57_crit_edge ], [ %tnicps.1, %do.end54.for.inc57_crit_edge ], [ %tnicps.1, %if.then.i637 ]
  %ret.1 = phi i32 [ 0, %nilfs_cpfile_delete_checkpoint_block.exit.for.inc57_crit_edge ], [ 0, %if.then12.for.inc57_crit_edge ], [ %call1.i, %do.end54.for.inc57_crit_edge ], [ %call1.i, %if.then.i637 ]
  %nss.3 = phi i32 [ %nss.2, %nilfs_cpfile_delete_checkpoint_block.exit.for.inc57_crit_edge ], [ %nss.0698, %if.then12.for.inc57_crit_edge ], [ %nss.1.lcssa709, %do.end54.for.inc57_crit_edge ], [ %nss.1.lcssa709, %if.then.i637 ]
  %conv = sext i32 %cond.off0.i673 to i64
  %add58 = add i64 %cno.0695, %conv
  %cmp8 = icmp ult i64 %add58, %end
  br i1 %cmp8, label %for.inc57.for.body_crit_edge, label %for.inc57.for.end59_crit_edge

for.inc57.for.end59_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end59:                                        ; preds = %for.inc57.for.end59_crit_edge, %if.end46, %if.then12.for.end59_crit_edge
  %tnicps.3 = phi i32 [ %add, %if.end46 ], [ %tnicps.2, %for.inc57.for.end59_crit_edge ], [ %tnicps.0697, %if.then12.for.end59_crit_edge ]
  %ret.2 = phi i32 [ %call1.i628, %if.end46 ], [ %ret.1, %for.inc57.for.end59_crit_edge ], [ %call1.i, %if.then12.for.end59_crit_edge ]
  %nss.4 = phi i32 [ %nss.2, %if.end46 ], [ %nss.3, %for.inc57.for.end59_crit_edge ], [ %nss.0698, %if.then12.for.end59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tnicps.3)
  %cmp60.not = icmp eq i32 %tnicps.3, 0
  br i1 %cmp60.not, label %for.end59.if.end73_crit_edge, label %if.then62

for.end59.if.end73_crit_edge:                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then62:                                        ; preds = %for.end59
  %110 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %header_bh, align 4
  %b_page63 = getelementptr inbounds %struct.buffer_head, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %b_page63 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %b_page63, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %114 = load i32, ptr @pgprot_kernel, align 4
  %or.i639 = or i32 %114, 512
  %115 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i640 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i.i640 to ptr
  %preempt_count.i.i.i.i641 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i.i.i641 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i.i.i641, align 4
  %add.i.i.i642 = add i32 %118, 1
  store volatile i32 %add.i.i.i642, ptr %preempt_count.i.i.i.i641, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %119 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i643 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i1.i.i643 to ptr
  %task.i.i.i.i644 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %task.i.i.i.i644 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task.i.i.i.i644, align 8
  %pagefault_disabled.i.i.i.i645 = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 213
  %123 = ptrtoint ptr %pagefault_disabled.i.i.i.i645 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pagefault_disabled.i.i.i.i645, align 8
  %inc.i.i.i.i646 = add i32 %124, 1
  store i32 %inc.i.i.i.i646, ptr %pagefault_disabled.i.i.i.i645, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i647 = call ptr @__kmap_local_page_prot(ptr noundef %113, i32 noundef %or.i639) #9
  %125 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %header_bh, align 4
  %b_data.i648 = getelementptr inbounds %struct.buffer_head, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %b_data.i648 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %b_data.i648, align 4
  %129 = ptrtoint ptr %128 to i32
  %and.i649 = and i32 %129, 4095
  %add.ptr.i650 = getelementptr i8, ptr %call.i.i647, i32 %and.i649
  %conv66 = zext i32 %tnicps.3 to i64
  %130 = ptrtoint ptr %add.ptr.i650 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %add.ptr.i650, align 8
  %132 = call i64 @llvm.bswap.i64(i64 %131) #9
  %add.i = sub i64 %132, %conv66
  %133 = call i64 @llvm.bswap.i64(i64 %add.i) #9
  %134 = ptrtoint ptr %add.ptr.i650 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %add.ptr.i650, align 8
  call void @mark_buffer_dirty(ptr noundef %126) #9
  %i_state.i651 = getelementptr i8, ptr %cpfile, i32 -588
  %135 = ptrtoint ptr %i_state.i651 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %i_state.i651, align 4
  %137 = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.not.i652 = icmp eq i32 %137, 0
  br i1 %tobool.not.i652, label %if.then.i653, label %if.then62.nilfs_mdt_mark_dirty.exit654_crit_edge

if.then62.nilfs_mdt_mark_dirty.exit654_crit_edge: ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_mdt_mark_dirty.exit654

if.then.i653:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i651) #9
  br label %nilfs_mdt_mark_dirty.exit654

nilfs_mdt_mark_dirty.exit654:                     ; preds = %if.then.i653, %if.then62.nilfs_mdt_mark_dirty.exit654_crit_edge
  call void @kunmap_local_indexed(ptr noundef %call.i.i647) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %138 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i655 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i1.i655 to ptr
  %task.i.i.i656 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task.i.i.i656 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task.i.i.i656, align 8
  %pagefault_disabled.i.i.i657 = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 213
  %142 = ptrtoint ptr %pagefault_disabled.i.i.i657 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pagefault_disabled.i.i.i657, align 8
  %dec.i.i.i658 = add i32 %143, -1
  store i32 %dec.i.i.i658, ptr %pagefault_disabled.i.i.i657, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %144 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i659 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i.i659 to ptr
  %preempt_count.i.i.i660 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %preempt_count.i.i.i660 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %preempt_count.i.i.i660, align 4
  %sub.i.i661 = add i32 %147, -1
  store volatile i32 %sub.i.i661, ptr %preempt_count.i.i.i660, align 4
  br label %if.end73

if.end73:                                         ; preds = %nilfs_mdt_mark_dirty.exit654, %for.end59.if.end73_crit_edge, %for.cond.preheader.if.end73_crit_edge
  %nss.4715 = phi i32 [ %nss.4, %nilfs_mdt_mark_dirty.exit654 ], [ %nss.4, %for.end59.if.end73_crit_edge ], [ 0, %for.cond.preheader.if.end73_crit_edge ]
  %ret.2714 = phi i32 [ %ret.2, %nilfs_mdt_mark_dirty.exit654 ], [ %ret.2, %for.end59.if.end73_crit_edge ], [ %call.i, %for.cond.preheader.if.end73_crit_edge ]
  %148 = ptrtoint ptr %header_bh to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %header_bh, align 4
  %tobool.not.i662 = icmp eq ptr %149, null
  br i1 %tobool.not.i662, label %if.end73.brelse.exit664_crit_edge, label %if.then.i663

if.end73.brelse.exit664_crit_edge:                ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit664

if.then.i663:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %149) #9
  br label %brelse.exit664

brelse.exit664:                                   ; preds = %if.then.i663, %if.end73.brelse.exit664_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nss.4715)
  %cmp74 = icmp sgt i32 %nss.4715, 0
  %spec.select140 = select i1 %cmp74, i32 -16, i32 %ret.2714
  br label %out_sem

out_sem:                                          ; preds = %brelse.exit664, %if.end.out_sem_crit_edge
  %ret.3 = phi i32 [ %call.i, %if.end.out_sem_crit_edge ], [ %spec.select140, %brelse.exit664 ]
  %150 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i_private.i, align 4
  call void @up_write(ptr noundef %151) #9
  br label %cleanup

cleanup:                                          ; preds = %out_sem, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %ret.3, %out_sem ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp_bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_cpfile_get_cpinfo(ptr noundef %cpfile, ptr nocapture noundef %cnop, i32 noundef %mode, ptr nocapture noundef %buf, i32 noundef %cisz, i32 noundef %nci) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %mode, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @nilfs_cpfile_do_get_cpinfo(ptr noundef %cpfile, ptr noundef %cnop, ptr noundef %buf, i32 noundef %cisz, i32 noundef %nci)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #9
  %1 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !22
  %2 = ptrtoint ptr %cnop to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cnop, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i.i, align 4
  tail call void @down_read(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.9)
  switch i64 %3, label %sw.bb1.if.end16.i_crit_edge [
    i64 0, label %if.then.i
    i64 -1, label %sw.bb1.nilfs_cpfile_do_get_ssinfo.exit_crit_edge
  ], !prof !30

sw.bb1.nilfs_cpfile_do_get_ssinfo.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_cpfile_do_get_ssinfo.exit

sw.bb1.if.end16.i_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then.i:                                        ; preds = %sw.bb1
  %call.i.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %bh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge, label %if.end.i

if.then.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_cpfile_do_get_ssinfo.exit

if.end.i:                                         ; preds = %if.then.i
  %6 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bh.i, align 4
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %10, 512
  %11 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %15 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %9, i32 noundef %or.i.i) #9
  %21 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bh.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i = and i32 %25, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i.i
  %ch_snapshot_list.i = getelementptr inbounds %struct.nilfs_cpfile_header, ptr %add.ptr.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %ch_snapshot_list.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ch_snapshot_list.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #9
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %29 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %34, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %35 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %39 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.end.i.brelse.exit.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %40) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.end.i.brelse.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp9.i = icmp eq i64 %27, 0
  br i1 %cmp9.i, label %brelse.exit.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge, label %brelse.exit.i.if.end16.i_crit_edge

brelse.exit.i.if.end16.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

brelse.exit.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_cpfile_do_get_ssinfo.exit

if.end16.i:                                       ; preds = %brelse.exit.i.if.end16.i_crit_edge, %sw.bb1.if.end16.i_crit_edge
  %curr.0.i = phi i64 [ %28, %brelse.exit.i.if.end16.i_crit_edge ], [ %3, %sw.bb1.if.end16.i_crit_edge ]
  %41 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %44 to i64
  %add.i.i = add i64 %curr.0.i, -1
  %sub.i.i = add i64 %add.i.i, %conv.i.i
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %42, i32 0, i32 4
  %45 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp170.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp170.i.i, label %if.then174.i.i.i, label %if.else180.i.i.i, !prof !24

if.then174.i.i.i:                                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i = trunc i64 %sub.i.i to i32
  %div178.i.i = udiv i32 %conv175.i.i, %46
  br label %nilfs_cpfile_get_checkpoint_block.exit.i

if.else180.i.i.i:                                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %46, i64 %sub.i.i) #12
  %asmresult1.i.i.i = extractvalue { i64, i64 } %47, 1
  %extract.t293.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_cpfile_get_checkpoint_block.exit.i

nilfs_cpfile_get_checkpoint_block.exit.i:         ; preds = %if.else180.i.i.i, %if.then174.i.i.i
  %tcno.0.off0.i.i.i = phi i32 [ %div178.i.i, %if.then174.i.i.i ], [ %extract.t293.i.i, %if.else180.i.i.i ]
  %call1.i.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i.i, i32 noundef 0, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef nonnull %bh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp19.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp19.i, label %if.then26.i, label %if.end30.i, !prof !23

if.then26.i:                                      ; preds = %nilfs_cpfile_get_checkpoint_block.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i.i)
  %cmp27.i = icmp eq i32 %call1.i.i, -2
  %spec.store.select.i = select i1 %cmp27.i, i32 0, i32 %call1.i.i
  br label %nilfs_cpfile_do_get_ssinfo.exit

if.end30.i:                                       ; preds = %nilfs_cpfile_get_checkpoint_block.exit.i
  %48 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bh.i, align 4
  %b_page31.i = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %b_page31.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_page31.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %52 = load i32, ptr @pgprot_kernel, align 4
  %or.i152.i = or i32 %52, 512
  %53 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i153.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i153.i to ptr
  %preempt_count.i.i.i.i154.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i154.i, align 4
  %add.i.i.i155.i = add i32 %56, 1
  store volatile i32 %add.i.i.i155.i, ptr %preempt_count.i.i.i.i154.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %57 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i156.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i1.i.i156.i to ptr
  %task.i.i.i.i157.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task.i.i.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task.i.i.i.i157.i, align 8
  %pagefault_disabled.i.i.i.i158.i = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 213
  %61 = ptrtoint ptr %pagefault_disabled.i.i.i.i158.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pagefault_disabled.i.i.i.i158.i, align 8
  %inc.i.i.i.i159.i = add i32 %62, 1
  store i32 %inc.i.i.i.i159.i, ptr %pagefault_disabled.i.i.i.i158.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i160.i = call ptr @__kmap_local_page_prot(ptr noundef %51, i32 noundef %or.i152.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nci)
  %cmp33556.not.i = icmp eq i32 %nci, 0
  br i1 %cmp33556.not.i, label %if.end30.i.do.end107.i_crit_edge, label %if.end30.i.while.body.i_crit_edge

if.end30.i.while.body.i_crit_edge:                ; preds = %if.end30.i
  br label %while.body.i

if.end30.i.do.end107.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107.i

while.body.i:                                     ; preds = %if.end103.i.while.body.i_crit_edge, %if.end30.i.while.body.i_crit_edge
  %n.0561.i = phi i32 [ %inc.i, %if.end103.i.while.body.i_crit_edge ], [ 0, %if.end30.i.while.body.i_crit_edge ]
  %kaddr.0560.i = phi ptr [ %kaddr.1.i, %if.end103.i.while.body.i_crit_edge ], [ %call.i.i160.i, %if.end30.i.while.body.i_crit_edge ]
  %curr_blkoff.0559.i = phi i32 [ %tcno.0.off0.i392.i, %if.end103.i.while.body.i_crit_edge ], [ %tcno.0.off0.i.i.i, %if.end30.i.while.body.i_crit_edge ]
  %curr.1558.i = phi i64 [ %108, %if.end103.i.while.body.i_crit_edge ], [ %curr.0.i, %if.end30.i.while.body.i_crit_edge ]
  %ci.0557.i = phi ptr [ %add.ptr.i, %if.end103.i.while.body.i_crit_edge ], [ %buf, %if.end30.i.while.body.i_crit_edge ]
  %63 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bh.i, align 4
  %b_data.i161.i = getelementptr inbounds %struct.buffer_head, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %b_data.i161.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data.i161.i, align 4
  %67 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i163.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %mi_first_entry_offset.i.i163.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mi_first_entry_offset.i.i163.i, align 4
  %conv.i.i164.i = zext i32 %70 to i64
  %add.i.i165.i = add i64 %curr.1558.i, -1
  %sub.i.i166.i = add i64 %add.i.i165.i, %conv.i.i164.i
  %mi_entries_per_block.i.i.i167.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %68, i32 0, i32 4
  %71 = ptrtoint ptr %mi_entries_per_block.i.i.i167.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mi_entries_per_block.i.i.i167.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i166.i)
  %cmp170.i.i261.i = icmp ult i64 %sub.i.i166.i, 4294967296
  br i1 %cmp170.i.i261.i, label %if.then174.i.i264.i, label %if.else180.i.i265.i, !prof !24

if.then174.i.i264.i:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i263.i = trunc i64 %sub.i.i166.i to i32
  %rem176.i.i.i = urem i32 %conv175.i.i263.i, %72
  br label %nilfs_cpfile_block_get_checkpoint.exit.i

if.else180.i.i265.i:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %72, i64 %sub.i.i166.i) #12, !srcloc !25
  %asmresult.i268.i.i.i = extractvalue { i64, i64 } %73, 0
  %shr.i.i.i.i = lshr i64 %asmresult.i268.i.i.i, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit.i

nilfs_cpfile_block_get_checkpoint.exit.i:         ; preds = %if.else180.i.i265.i, %if.then174.i.i264.i
  %__rem.0.i.i.i = phi i32 [ %rem176.i.i.i, %if.then174.i.i264.i ], [ %conv.i.i.i.i, %if.else180.i.i265.i ]
  %74 = ptrtoint ptr %66 to i32
  %and.i266.i = and i32 %74, 4095
  %add.ptr.i267.i = getelementptr i8, ptr %kaddr.0560.i, i32 %and.i266.i
  %mi_entry_size.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %68, i32 0, i32 2
  %75 = ptrtoint ptr %mi_entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mi_entry_size.i.i, align 4
  %mul.i268.i = mul i32 %76, %__rem.0.i.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i267.i, i32 %mul.i268.i
  %77 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr2.i.i, align 8
  %79 = and i32 %78, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %79)
  %.not.i = icmp eq i32 %79, 16777216
  br i1 %.not.i, label %if.end48.i, label %nilfs_cpfile_block_get_checkpoint.exit.i.do.end107.i_crit_edge, !prof !31

nilfs_cpfile_block_get_checkpoint.exit.i.do.end107.i_crit_edge: ; preds = %nilfs_cpfile_block_get_checkpoint.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107.i

if.end48.i:                                       ; preds = %nilfs_cpfile_block_get_checkpoint.exit.i
  %80 = call i32 @llvm.bswap.i32(i32 %78) #9
  %81 = ptrtoint ptr %ci.0557.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %ci.0557.i, align 8
  %cp_cno.i.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %cp_cno.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %cp_cno.i.i, align 8
  %84 = call i64 @llvm.bswap.i64(i64 %83) #9
  %ci_cno.i.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.0557.i, i32 0, i32 2
  %85 = ptrtoint ptr %ci_cno.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %ci_cno.i.i, align 8
  %cp_create.i.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %cp_create.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %cp_create.i.i, align 8
  %88 = call i64 @llvm.bswap.i64(i64 %87) #9
  %ci_create.i.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.0557.i, i32 0, i32 3
  %89 = ptrtoint ptr %ci_create.i.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %ci_create.i.i, align 8
  %cp_nblk_inc.i.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i.i, i32 0, i32 5
  %90 = ptrtoint ptr %cp_nblk_inc.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %cp_nblk_inc.i.i, align 8
  %92 = call i64 @llvm.bswap.i64(i64 %91) #9
  %ci_nblk_inc.i.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.0557.i, i32 0, i32 4
  %93 = ptrtoint ptr %ci_nblk_inc.i.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %ci_nblk_inc.i.i, align 8
  %cp_inodes_count.i.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i.i, i32 0, i32 6
  %94 = ptrtoint ptr %cp_inodes_count.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %cp_inodes_count.i.i, align 8
  %96 = call i64 @llvm.bswap.i64(i64 %95) #9
  %ci_inodes_count.i.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.0557.i, i32 0, i32 5
  %97 = ptrtoint ptr %ci_inodes_count.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %ci_inodes_count.i.i, align 8
  %cp_blocks_count.i.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i.i, i32 0, i32 7
  %98 = ptrtoint ptr %cp_blocks_count.i.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %cp_blocks_count.i.i, align 8
  %100 = call i64 @llvm.bswap.i64(i64 %99) #9
  %ci_blocks_count.i.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.0557.i, i32 0, i32 6
  %101 = ptrtoint ptr %ci_blocks_count.i.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %ci_blocks_count.i.i, align 8
  %cp_snapshot_list.i.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %cp_snapshot_list.i.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %cp_snapshot_list.i.i, align 8
  %104 = call i64 @llvm.bswap.i64(i64 %103) #9
  %ci_next.i.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.0557.i, i32 0, i32 7
  %105 = ptrtoint ptr %ci_next.i.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %ci_next.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %ci.0557.i, i32 %cisz
  %inc.i = add nuw i32 %n.0561.i, 1
  %106 = ptrtoint ptr %cp_snapshot_list.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %cp_snapshot_list.i.i, align 8
  %108 = call i64 @llvm.bswap.i64(i64 %107) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %107)
  %cmp50.i = icmp eq i64 %107, 0
  br i1 %cmp50.i, label %if.end48.i.do.end107.i_crit_edge, label %if.end52.i

if.end48.i.do.end107.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107.i

if.end52.i:                                       ; preds = %if.end48.i
  %109 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i271.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %mi_first_entry_offset.i271.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mi_first_entry_offset.i271.i, align 4
  %conv.i272.i = zext i32 %112 to i64
  %add.i273.i = add i64 %108, -1
  %sub.i274.i = add i64 %add.i273.i, %conv.i272.i
  %mi_entries_per_block.i.i275.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %110, i32 0, i32 4
  %113 = ptrtoint ptr %mi_entries_per_block.i.i275.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mi_entries_per_block.i.i275.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i274.i)
  %cmp170.i384.i = icmp ult i64 %sub.i274.i, 4294967296
  br i1 %cmp170.i384.i, label %if.then174.i388.i, label %if.else180.i391.i, !prof !24

if.then174.i388.i:                                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i386.i = trunc i64 %sub.i274.i to i32
  %div178.i387.i = udiv i32 %conv175.i386.i, %114
  br label %nilfs_cpfile_get_blkoff.exit393.i

if.else180.i391.i:                                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %115 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %114, i64 %sub.i274.i) #12, !srcloc !25
  %asmresult1.i.i389.i = extractvalue { i64, i64 } %115, 1
  %extract.t293.i390.i = trunc i64 %asmresult1.i.i389.i to i32
  br label %nilfs_cpfile_get_blkoff.exit393.i

nilfs_cpfile_get_blkoff.exit393.i:                ; preds = %if.else180.i391.i, %if.then174.i388.i
  %tcno.0.off0.i392.i = phi i32 [ %div178.i387.i, %if.then174.i388.i ], [ %extract.t293.i390.i, %if.else180.i391.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_blkoff.0559.i, i32 %tcno.0.off0.i392.i)
  %cmp54.not.i = icmp eq i32 %curr_blkoff.0559.i, %tcno.0.off0.i392.i
  br i1 %cmp54.not.i, label %nilfs_cpfile_get_blkoff.exit393.i.if.end103.i_crit_edge, label %do.end59.i

nilfs_cpfile_get_blkoff.exit393.i.if.end103.i_crit_edge: ; preds = %nilfs_cpfile_get_blkoff.exit393.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103.i

do.end59.i:                                       ; preds = %nilfs_cpfile_get_blkoff.exit393.i
  call void @kunmap_local_indexed(ptr noundef %kaddr.0560.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %116 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i394.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i1.i394.i to ptr
  %task.i.i.i395.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task.i.i.i395.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task.i.i.i395.i, align 8
  %pagefault_disabled.i.i.i396.i = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 213
  %120 = ptrtoint ptr %pagefault_disabled.i.i.i396.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pagefault_disabled.i.i.i396.i, align 8
  %dec.i.i.i397.i = add i32 %121, -1
  store i32 %dec.i.i.i397.i, ptr %pagefault_disabled.i.i.i396.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %122 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i398.i = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i398.i to ptr
  %preempt_count.i.i.i399.i = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i399.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i399.i, align 4
  %sub.i.i400.i = add i32 %125, -1
  store volatile i32 %sub.i.i400.i, ptr %preempt_count.i.i.i399.i, align 4
  %126 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bh.i, align 4
  %tobool.not.i401.i = icmp eq ptr %127, null
  br i1 %tobool.not.i401.i, label %do.end59.i.brelse.exit403.i_crit_edge, label %if.then.i402.i

do.end59.i.brelse.exit403.i_crit_edge:            ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit403.i

if.then.i402.i:                                   ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %127) #9
  br label %brelse.exit403.i

brelse.exit403.i:                                 ; preds = %if.then.i402.i, %do.end59.i.brelse.exit403.i_crit_edge
  %128 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i405.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %mi_first_entry_offset.i.i405.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mi_first_entry_offset.i.i405.i, align 4
  %conv.i.i406.i = zext i32 %131 to i64
  %sub.i.i408.i = add i64 %add.i273.i, %conv.i.i406.i
  %mi_entries_per_block.i.i.i409.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %129, i32 0, i32 4
  %132 = ptrtoint ptr %mi_entries_per_block.i.i.i409.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mi_entries_per_block.i.i.i409.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i408.i)
  %cmp170.i.i518.i = icmp ult i64 %sub.i.i408.i, 4294967296
  br i1 %cmp170.i.i518.i, label %if.then174.i.i522.i, label %if.else180.i.i525.i, !prof !24

if.then174.i.i522.i:                              ; preds = %brelse.exit403.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i520.i = trunc i64 %sub.i.i408.i to i32
  %div178.i.i521.i = udiv i32 %conv175.i.i520.i, %133
  br label %nilfs_cpfile_get_checkpoint_block.exit528.i

if.else180.i.i525.i:                              ; preds = %brelse.exit403.i
  call void @__sanitizer_cov_trace_pc() #11
  %134 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %133, i64 %sub.i.i408.i) #12, !srcloc !25
  %asmresult1.i.i.i523.i = extractvalue { i64, i64 } %134, 1
  %extract.t293.i.i524.i = trunc i64 %asmresult1.i.i.i523.i to i32
  br label %nilfs_cpfile_get_checkpoint_block.exit528.i

nilfs_cpfile_get_checkpoint_block.exit528.i:      ; preds = %if.else180.i.i525.i, %if.then174.i.i522.i
  %tcno.0.off0.i.i526.i = phi i32 [ %div178.i.i521.i, %if.then174.i.i522.i ], [ %extract.t293.i.i524.i, %if.else180.i.i525.i ]
  %call1.i527.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i526.i, i32 noundef 0, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef nonnull %bh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i527.i)
  %cmp63.i = icmp slt i32 %call1.i527.i, 0
  br i1 %cmp63.i, label %if.then70.i, label %if.end100.i, !prof !23

if.then70.i:                                      ; preds = %nilfs_cpfile_get_checkpoint_block.exit528.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i527.i)
  %cmp71.i = icmp eq i32 %call1.i527.i, -2
  br i1 %cmp71.i, label %do.end87.i, label %if.then70.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge, !prof !23

if.then70.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge: ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_cpfile_do_get_ssinfo.exit

do.end87.i:                                       ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 536, i32 noundef 9, ptr noundef null) #9
  br label %nilfs_cpfile_do_get_ssinfo.exit

if.end100.i:                                      ; preds = %nilfs_cpfile_get_checkpoint_block.exit528.i
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bh.i, align 4
  %b_page101.i = getelementptr inbounds %struct.buffer_head, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %b_page101.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %b_page101.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %139 = load i32, ptr @pgprot_kernel, align 4
  %or.i529.i = or i32 %139, 512
  %140 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i530.i = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i.i.i.i530.i to ptr
  %preempt_count.i.i.i.i531.i = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %preempt_count.i.i.i.i531.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %preempt_count.i.i.i.i531.i, align 4
  %add.i.i.i532.i = add i32 %143, 1
  store volatile i32 %add.i.i.i532.i, ptr %preempt_count.i.i.i.i531.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %144 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i533.i = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i1.i.i533.i to ptr
  %task.i.i.i.i534.i = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %task.i.i.i.i534.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %task.i.i.i.i534.i, align 8
  %pagefault_disabled.i.i.i.i535.i = getelementptr inbounds %struct.task_struct, ptr %147, i32 0, i32 213
  %148 = ptrtoint ptr %pagefault_disabled.i.i.i.i535.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %pagefault_disabled.i.i.i.i535.i, align 8
  %inc.i.i.i.i536.i = add i32 %149, 1
  store i32 %inc.i.i.i.i536.i, ptr %pagefault_disabled.i.i.i.i535.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i537.i = call ptr @__kmap_local_page_prot(ptr noundef %138, i32 noundef %or.i529.i) #9
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.end100.i, %nilfs_cpfile_get_blkoff.exit393.i.if.end103.i_crit_edge
  %kaddr.1.i = phi ptr [ %call.i.i537.i, %if.end100.i ], [ %kaddr.0560.i, %nilfs_cpfile_get_blkoff.exit393.i.if.end103.i_crit_edge ]
  %exitcond.not.i = icmp eq i32 %inc.i, %nci
  br i1 %exitcond.not.i, label %if.end103.i.do.end107.i_crit_edge, label %if.end103.i.while.body.i_crit_edge

if.end103.i.while.body.i_crit_edge:               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end103.i.do.end107.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107.i

do.end107.i:                                      ; preds = %if.end103.i.do.end107.i_crit_edge, %if.end48.i.do.end107.i_crit_edge, %nilfs_cpfile_block_get_checkpoint.exit.i.do.end107.i_crit_edge, %if.end30.i.do.end107.i_crit_edge
  %kaddr.0.lcssa.i = phi ptr [ %call.i.i160.i, %if.end30.i.do.end107.i_crit_edge ], [ %kaddr.1.i, %if.end103.i.do.end107.i_crit_edge ], [ %kaddr.0560.i, %if.end48.i.do.end107.i_crit_edge ], [ %kaddr.0560.i, %nilfs_cpfile_block_get_checkpoint.exit.i.do.end107.i_crit_edge ]
  %curr.2.i = phi i64 [ %curr.0.i, %if.end30.i.do.end107.i_crit_edge ], [ %108, %if.end103.i.do.end107.i_crit_edge ], [ -1, %if.end48.i.do.end107.i_crit_edge ], [ -1, %nilfs_cpfile_block_get_checkpoint.exit.i.do.end107.i_crit_edge ]
  %n.1.i = phi i32 [ 0, %if.end30.i.do.end107.i_crit_edge ], [ %nci, %if.end103.i.do.end107.i_crit_edge ], [ %inc.i, %if.end48.i.do.end107.i_crit_edge ], [ %n.0561.i, %nilfs_cpfile_block_get_checkpoint.exit.i.do.end107.i_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %kaddr.0.lcssa.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %150 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i538.i = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i1.i538.i to ptr
  %task.i.i.i539.i = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %task.i.i.i539.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %task.i.i.i539.i, align 8
  %pagefault_disabled.i.i.i540.i = getelementptr inbounds %struct.task_struct, ptr %153, i32 0, i32 213
  %154 = ptrtoint ptr %pagefault_disabled.i.i.i540.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %pagefault_disabled.i.i.i540.i, align 8
  %dec.i.i.i541.i = add i32 %155, -1
  store i32 %dec.i.i.i541.i, ptr %pagefault_disabled.i.i.i540.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %156 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i542.i = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i.i.i542.i to ptr
  %preempt_count.i.i.i543.i = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %preempt_count.i.i.i543.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %preempt_count.i.i.i543.i, align 4
  %sub.i.i544.i = add i32 %159, -1
  store volatile i32 %sub.i.i544.i, ptr %preempt_count.i.i.i543.i, align 4
  %160 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %bh.i, align 4
  %tobool.not.i545.i = icmp eq ptr %161, null
  br i1 %tobool.not.i545.i, label %do.end107.i.brelse.exit547.i_crit_edge, label %if.then.i546.i

do.end107.i.brelse.exit547.i_crit_edge:           ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit547.i

if.then.i546.i:                                   ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %161) #9
  br label %brelse.exit547.i

brelse.exit547.i:                                 ; preds = %if.then.i546.i, %do.end107.i.brelse.exit547.i_crit_edge
  %162 = ptrtoint ptr %cnop to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %curr.2.i, ptr %cnop, align 8
  br label %nilfs_cpfile_do_get_ssinfo.exit

nilfs_cpfile_do_get_ssinfo.exit:                  ; preds = %brelse.exit547.i, %do.end87.i, %if.then70.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge, %if.then26.i, %brelse.exit.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge, %if.then.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge, %sw.bb1.nilfs_cpfile_do_get_ssinfo.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.then.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge ], [ %spec.store.select.i, %if.then26.i ], [ %n.1.i, %brelse.exit547.i ], [ 0, %brelse.exit.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge ], [ 0, %sw.bb1.nilfs_cpfile_do_get_ssinfo.exit_crit_edge ], [ -2, %do.end87.i ], [ %call1.i527.i, %if.then70.i.nilfs_cpfile_do_get_ssinfo.exit_crit_edge ]
  %163 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %i_private.i.i, align 4
  call void @up_read(ptr noundef %164) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #9
  br label %return

return:                                           ; preds = %nilfs_cpfile_do_get_ssinfo.exit, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %nilfs_cpfile_do_get_ssinfo.exit ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_cpfile_do_get_cpinfo(ptr noundef %cpfile, ptr nocapture noundef %cnop, ptr nocapture noundef %buf, i32 noundef %cisz, i32 noundef %nci) unnamed_addr #0 align 64 {
entry:
  %blkoff.i = alloca i32, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !22
  %i_private.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %1 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private.i, align 4
  %mi_entry_size = getelementptr inbounds %struct.nilfs_mdt_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %mi_entry_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mi_entry_size, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %ns_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ns_cno.i, align 8
  %11 = ptrtoint ptr %cnop to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cnop, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_read(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nci)
  %cmp3335.not = icmp eq i32 %nci, 0
  br i1 %cmp3335.not, label %if.end.out_crit_edge, label %for.body.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add i64 %10, -1
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %n.0338 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1.lcssa, %brelse.exit.for.body_crit_edge ]
  %ci.0337 = phi ptr [ %buf, %for.body.lr.ph ], [ %ci.1.lcssa, %brelse.exit.for.body_crit_edge ]
  %cno.0336 = phi i64 [ %12, %for.body.lr.ph ], [ %add, %brelse.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blkoff.i) #9
  %13 = ptrtoint ptr %blkoff.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %blkoff.i, align 4, !annotation !22
  call void @__sanitizer_cov_trace_cmp8(i64 %cno.0336, i64 %sub)
  %cmp.i = icmp ugt i64 %cno.0336, %sub
  br i1 %cmp.i, label %if.then6.thread, label %if.end.i, !prof !23

if.then6.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blkoff.i) #9
  br label %for.end29

if.end.i:                                         ; preds = %for.body
  %14 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %17 to i64
  %add.i.i = add nsw i64 %conv.i.i, -1
  %sub.i.i = add i64 %add.i.i, %cno.0336
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp170.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp170.i.i, label %if.then174.i.i, label %if.else180.i.i, !prof !24

if.then174.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i = trunc i64 %sub.i.i to i32
  %div178.i.i = udiv i32 %conv175.i.i, %19
  br label %if.else168.i135.i

if.else180.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %sub.i.i) #12, !srcloc !25
  %asmresult1.i.i.i = extractvalue { i64, i64 } %20, 1
  %extract.t293.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %if.else168.i135.i

if.else168.i135.i:                                ; preds = %if.else180.i.i, %if.then174.i.i
  %tcno.0.off0.i.ph.i = phi i32 [ %extract.t293.i.i, %if.else180.i.i ], [ %div178.i.i, %if.then174.i.i ]
  %sub.i24152.i = add i64 %add.i.i, %sub
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i24152.i)
  %cmp170.i134.i = icmp ult i64 %sub.i24152.i, 4294967296
  br i1 %cmp170.i134.i, label %if.then174.i138.i, label %if.else180.i141.i, !prof !24

if.then174.i138.i:                                ; preds = %if.else168.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i136.i = trunc i64 %sub.i24152.i to i32
  %div178.i137.i = udiv i32 %conv175.i136.i, %19
  br label %nilfs_cpfile_get_blkoff.exit143.i

if.else180.i141.i:                                ; preds = %if.else168.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %sub.i24152.i) #12, !srcloc !25
  %asmresult1.i.i139.i = extractvalue { i64, i64 } %21, 1
  %extract.t293.i140.i = trunc i64 %asmresult1.i.i139.i to i32
  br label %nilfs_cpfile_get_blkoff.exit143.i

nilfs_cpfile_get_blkoff.exit143.i:                ; preds = %if.else180.i141.i, %if.then174.i138.i
  %tcno.0.off0.i142.i = phi i32 [ %div178.i137.i, %if.then174.i138.i ], [ %extract.t293.i140.i, %if.else180.i141.i ]
  %call3.i = call i32 @nilfs_mdt_find_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.ph.i, i32 noundef %tcno.0.off0.i142.i, ptr noundef nonnull %blkoff.i, ptr noundef nonnull %bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %nilfs_cpfile_find_checkpoint_block.exit

if.then5.i:                                       ; preds = %nilfs_cpfile_get_blkoff.exit143.i
  %22 = ptrtoint ptr %blkoff.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blkoff.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %tcno.0.off0.i.ph.i)
  %cmp6.i = icmp eq i32 %23, %tcno.0.off0.i.ph.i
  br i1 %cmp6.i, label %if.then5.i.nilfs_cpfile_find_checkpoint_block.exit.thread_crit_edge, label %cond.false.i

if.then5.i.nilfs_cpfile_find_checkpoint_block.exit.thread_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_cpfile_find_checkpoint_block.exit.thread

cond.false.i:                                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_private.i, align 4
  %mi_entries_per_block.i.i144.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %mi_entries_per_block.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mi_entries_per_block.i.i144.i, align 4
  %conv.i145.i = zext i32 %27 to i64
  %conv1.i.i = zext i32 %23 to i64
  %mul.i146.i = mul nuw i64 %conv.i145.i, %conv1.i.i
  %add.i147.i = add nuw i64 %mul.i146.i, 1
  %mi_first_entry_offset.i148.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %mi_first_entry_offset.i148.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mi_first_entry_offset.i148.i, align 4
  %conv3.i.i = zext i32 %29 to i64
  %sub.i149.i = sub i64 %add.i147.i, %conv3.i.i
  br label %nilfs_cpfile_find_checkpoint_block.exit.thread

nilfs_cpfile_find_checkpoint_block.exit.thread:   ; preds = %cond.false.i, %if.then5.i.nilfs_cpfile_find_checkpoint_block.exit.thread_crit_edge
  %cno.1.ph = phi i64 [ %cno.0336, %if.then5.i.nilfs_cpfile_find_checkpoint_block.exit.thread_crit_edge ], [ %sub.i149.i, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blkoff.i) #9
  br label %if.end11

nilfs_cpfile_find_checkpoint_block.exit:          ; preds = %nilfs_cpfile_get_blkoff.exit143.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blkoff.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp5 = icmp slt i32 %call3.i, 0
  br i1 %cmp5, label %if.then6, label %nilfs_cpfile_find_checkpoint_block.exit.if.end11_crit_edge

nilfs_cpfile_find_checkpoint_block.exit.if.end11_crit_edge: ; preds = %nilfs_cpfile_find_checkpoint_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %nilfs_cpfile_find_checkpoint_block.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call3.i)
  %cmp7 = icmp eq i32 %call3.i, -2
  br i1 %cmp7, label %if.then6.for.end29_crit_edge, label %if.then6.out_crit_edge, !prof !24

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then6.for.end29_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

if.end11:                                         ; preds = %nilfs_cpfile_find_checkpoint_block.exit.if.end11_crit_edge, %nilfs_cpfile_find_checkpoint_block.exit.thread
  %cno.1312 = phi i64 [ %cno.1.ph, %nilfs_cpfile_find_checkpoint_block.exit.thread ], [ %cno.0336, %nilfs_cpfile_find_checkpoint_block.exit.if.end11_crit_edge ]
  %30 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_private.i, align 4
  %mi_entries_per_block.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %mi_entries_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mi_entries_per_block.i.i, align 4
  %mi_first_entry_offset.i.i75 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %mi_first_entry_offset.i.i75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mi_first_entry_offset.i.i75, align 4
  %conv.i.i76 = zext i32 %35 to i64
  %add.i.i77 = add i64 %cno.1312, -1
  %sub.i.i78 = add i64 %add.i.i77, %conv.i.i76
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i78)
  %cmp170.i.i171 = icmp ult i64 %sub.i.i78, 4294967296
  br i1 %cmp170.i.i171, label %if.then174.i.i174, label %if.else180.i.i175, !prof !24

if.then174.i.i174:                                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i173 = trunc i64 %sub.i.i78 to i32
  %rem176.i.i = urem i32 %conv175.i.i173, %33
  br label %nilfs_cpfile_checkpoints_in_block.exit

if.else180.i.i175:                                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %36 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %sub.i.i78) #12, !srcloc !25
  %asmresult.i268.i.i = extractvalue { i64, i64 } %36, 0
  %shr.i.i.i = lshr i64 %asmresult.i268.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_cpfile_checkpoints_in_block.exit

nilfs_cpfile_checkpoints_in_block.exit:           ; preds = %if.else180.i.i175, %if.then174.i.i174
  %__rem.0.i.i = phi i32 [ %rem176.i.i, %if.then174.i.i174 ], [ %conv.i.i.i, %if.else180.i.i175 ]
  %sub.i = sub i32 %33, %__rem.0.i.i
  %conv.i = zext i32 %sub.i to i64
  %sub2.i = sub i64 %10, %cno.1312
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i, i64 %conv.i)
  %cmp.i176 = icmp ugt i64 %sub2.i, %conv.i
  %extract.t9.i = trunc i64 %sub2.i to i32
  %cond.off0.i = select i1 %cmp.i176, i32 %sub.i, i32 %extract.t9.i
  %37 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %41 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %41, 512
  %42 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %46 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 213
  %50 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %40, i32 noundef %or.i) #9
  %52 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data.i, align 4
  %56 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i178 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %mi_first_entry_offset.i.i178 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mi_first_entry_offset.i.i178, align 4
  %conv.i.i179 = zext i32 %59 to i64
  %sub.i.i181 = add i64 %add.i.i77, %conv.i.i179
  %mi_entries_per_block.i.i.i182 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %57, i32 0, i32 4
  %60 = ptrtoint ptr %mi_entries_per_block.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mi_entries_per_block.i.i.i182, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i181)
  %cmp170.i.i293 = icmp ult i64 %sub.i.i181, 4294967296
  br i1 %cmp170.i.i293, label %if.then174.i.i297, label %if.else180.i.i301, !prof !24

if.then174.i.i297:                                ; preds = %nilfs_cpfile_checkpoints_in_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i295 = trunc i64 %sub.i.i181 to i32
  %rem176.i.i296 = urem i32 %conv175.i.i295, %61
  br label %nilfs_cpfile_block_get_checkpoint.exit

if.else180.i.i301:                                ; preds = %nilfs_cpfile_checkpoints_in_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  %62 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %61, i64 %sub.i.i181) #12, !srcloc !25
  %asmresult.i268.i.i298 = extractvalue { i64, i64 } %62, 0
  %shr.i.i.i299 = lshr i64 %asmresult.i268.i.i298, 32
  %conv.i.i.i300 = trunc i64 %shr.i.i.i299 to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit

nilfs_cpfile_block_get_checkpoint.exit:           ; preds = %if.else180.i.i301, %if.then174.i.i297
  %__rem.0.i.i302 = phi i32 [ %rem176.i.i296, %if.then174.i.i297 ], [ %conv.i.i.i300, %if.else180.i.i301 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.off0.i)
  %cmp16326 = icmp sgt i32 %cond.off0.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0338, i32 %nci)
  %cmp17327 = icmp ult i32 %n.0338, %nci
  %or.cond328 = select i1 %cmp16326, i1 %cmp17327, i1 false
  br i1 %or.cond328, label %for.body18.preheader, label %nilfs_cpfile_block_get_checkpoint.exit.do.end_crit_edge

nilfs_cpfile_block_get_checkpoint.exit.do.end_crit_edge: ; preds = %nilfs_cpfile_block_get_checkpoint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body18.preheader:                             ; preds = %nilfs_cpfile_block_get_checkpoint.exit
  %63 = ptrtoint ptr %55 to i32
  %and.i = and i32 %63, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %57, i32 0, i32 2
  %64 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i = mul i32 %65, %__rem.0.i.i302
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.body18.preheader
  %i.0333 = phi i32 [ %inc23, %for.inc.for.body18_crit_edge ], [ 0, %for.body18.preheader ]
  %n.1332 = phi i32 [ %n.2, %for.inc.for.body18_crit_edge ], [ %n.0338, %for.body18.preheader ]
  %ci.1331 = phi ptr [ %ci.2, %for.inc.for.body18_crit_edge ], [ %ci.0337, %for.body18.preheader ]
  %cp.0329 = phi ptr [ %add.ptr24, %for.inc.for.body18_crit_edge ], [ %add.ptr2.i, %for.body18.preheader ]
  %66 = ptrtoint ptr %cp.0329 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cp.0329, align 8
  %68 = and i32 %67, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool20.not = icmp eq i32 %68, 0
  br i1 %tobool20.not, label %if.then21, label %for.body18.for.inc_crit_edge

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then21:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  %69 = call i32 @llvm.bswap.i32(i32 %67) #9
  %70 = ptrtoint ptr %ci.1331 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %ci.1331, align 8
  %cp_cno.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %cp.0329, i32 0, i32 3
  %71 = ptrtoint ptr %cp_cno.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %cp_cno.i, align 8
  %73 = call i64 @llvm.bswap.i64(i64 %72) #9
  %ci_cno.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.1331, i32 0, i32 2
  %74 = ptrtoint ptr %ci_cno.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %ci_cno.i, align 8
  %cp_create.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %cp.0329, i32 0, i32 4
  %75 = ptrtoint ptr %cp_create.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %cp_create.i, align 8
  %77 = call i64 @llvm.bswap.i64(i64 %76) #9
  %ci_create.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.1331, i32 0, i32 3
  %78 = ptrtoint ptr %ci_create.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %ci_create.i, align 8
  %cp_nblk_inc.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %cp.0329, i32 0, i32 5
  %79 = ptrtoint ptr %cp_nblk_inc.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %cp_nblk_inc.i, align 8
  %81 = call i64 @llvm.bswap.i64(i64 %80) #9
  %ci_nblk_inc.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.1331, i32 0, i32 4
  %82 = ptrtoint ptr %ci_nblk_inc.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %ci_nblk_inc.i, align 8
  %cp_inodes_count.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %cp.0329, i32 0, i32 6
  %83 = ptrtoint ptr %cp_inodes_count.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %cp_inodes_count.i, align 8
  %85 = call i64 @llvm.bswap.i64(i64 %84) #9
  %ci_inodes_count.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.1331, i32 0, i32 5
  %86 = ptrtoint ptr %ci_inodes_count.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %ci_inodes_count.i, align 8
  %cp_blocks_count.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %cp.0329, i32 0, i32 7
  %87 = ptrtoint ptr %cp_blocks_count.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %cp_blocks_count.i, align 8
  %89 = call i64 @llvm.bswap.i64(i64 %88) #9
  %ci_blocks_count.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.1331, i32 0, i32 6
  %90 = ptrtoint ptr %ci_blocks_count.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %ci_blocks_count.i, align 8
  %cp_snapshot_list.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %cp.0329, i32 0, i32 2
  %91 = ptrtoint ptr %cp_snapshot_list.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %cp_snapshot_list.i, align 8
  %93 = call i64 @llvm.bswap.i64(i64 %92) #9
  %ci_next.i = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci.1331, i32 0, i32 7
  %94 = ptrtoint ptr %ci_next.i to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %ci_next.i, align 8
  %add.ptr = getelementptr i8, ptr %ci.1331, i32 %cisz
  %inc = add nuw i32 %n.1332, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %for.body18.for.inc_crit_edge
  %ci.2 = phi ptr [ %ci.1331, %for.body18.for.inc_crit_edge ], [ %add.ptr, %if.then21 ]
  %n.2 = phi i32 [ %n.1332, %for.body18.for.inc_crit_edge ], [ %inc, %if.then21 ]
  %inc23 = add nuw nsw i32 %i.0333, 1
  %add.ptr24 = getelementptr i8, ptr %cp.0329, i32 %4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc23, i32 %cond.off0.i)
  %cmp16 = icmp slt i32 %inc23, %cond.off0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %n.2, i32 %nci)
  %cmp17 = icmp ult i32 %n.2, %nci
  %or.cond = select i1 %cmp16, i1 %cmp17, i1 false
  br i1 %or.cond, label %for.inc.for.body18_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %nilfs_cpfile_block_get_checkpoint.exit.do.end_crit_edge
  %ci.1.lcssa = phi ptr [ %ci.0337, %nilfs_cpfile_block_get_checkpoint.exit.do.end_crit_edge ], [ %ci.2, %for.inc.do.end_crit_edge ]
  %n.1.lcssa = phi i32 [ %n.0338, %nilfs_cpfile_block_get_checkpoint.exit.do.end_crit_edge ], [ %n.2, %for.inc.do.end_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %95 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 213
  %99 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %100, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %101 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i303 = add i32 %104, -1
  store volatile i32 %sub.i.i303, ptr %preempt_count.i.i.i, align 4
  %105 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %106, null
  br i1 %tobool.not.i, label %do.end.brelse.exit_crit_edge, label %if.then.i

do.end.brelse.exit_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %106) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %do.end.brelse.exit_crit_edge
  %conv = sext i32 %cond.off0.i to i64
  %add = add i64 %cno.1312, %conv
  %cmp3 = icmp ult i32 %n.1.lcssa, %nci
  br i1 %cmp3, label %brelse.exit.for.body_crit_edge, label %brelse.exit.for.end29_crit_edge

brelse.exit.for.end29_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end29:                                        ; preds = %brelse.exit.for.end29_crit_edge, %if.then6.for.end29_crit_edge, %if.then6.thread
  %ci.0325 = phi ptr [ %ci.0337, %if.then6.thread ], [ %ci.0337, %if.then6.for.end29_crit_edge ], [ %ci.1.lcssa, %brelse.exit.for.end29_crit_edge ]
  %n.0322 = phi i32 [ %n.0338, %if.then6.thread ], [ %n.0338, %if.then6.for.end29_crit_edge ], [ %n.1.lcssa, %brelse.exit.for.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0322)
  %cmp30 = icmp sgt i32 %n.0322, 0
  br i1 %cmp30, label %if.then32, label %for.end29.out_crit_edge

for.end29.out_crit_edge:                          ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then32:                                        ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #11
  %idx.neg = sub i32 0, %cisz
  %add.ptr33 = getelementptr i8, ptr %ci.0325, i32 %idx.neg
  %ci_cno = getelementptr inbounds %struct.nilfs_cpinfo, ptr %add.ptr33, i32 0, i32 2
  %107 = ptrtoint ptr %ci_cno to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %ci_cno, align 8
  %add34 = add i64 %108, 1
  %109 = ptrtoint ptr %cnop to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %add34, ptr %cnop, align 8
  br label %out

out:                                              ; preds = %if.then32, %for.end29.out_crit_edge, %if.then6.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %n.0322, %if.then32 ], [ %n.0322, %for.end29.out_crit_edge ], [ %call3.i, %if.then6.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  %110 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i_private.i, align 4
  call void @up_read(ptr noundef %111) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_cpfile_delete_checkpoint(ptr noundef %cpfile, i64 noundef %cno) local_unnamed_addr #0 align 64 {
entry:
  %ci = alloca %struct.nilfs_cpinfo, align 8
  %tcno = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ci) #9
  %0 = call ptr @memset(ptr %ci, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcno) #9
  %1 = ptrtoint ptr %tcno to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %cno, ptr %tcno, align 8
  %call = call fastcc i32 @nilfs_cpfile_do_get_cpinfo(ptr noundef %cpfile, ptr noundef nonnull %tcno, ptr noundef nonnull %ci, i32 noundef 56, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.else.cleanup_crit_edge, label %lor.lhs.false

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  %ci_cno = getelementptr inbounds %struct.nilfs_cpinfo, ptr %ci, i32 0, i32 2
  %2 = ptrtoint ptr %ci_cno to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ci_cno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %cno)
  %cmp2.not = icmp eq i64 %3, %cno
  br i1 %cmp2.not, label %if.else4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else4:                                         ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end8, label %if.else4.cleanup_crit_edge

if.else4.cleanup_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i64 %cno, 1
  %call9 = tail call i32 @nilfs_cpfile_delete_checkpoints(ptr noundef %cpfile, i64 noundef %cno, i64 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.else4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.else.cleanup_crit_edge ], [ -16, %if.else4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcno) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ci) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_cpfile_is_snapshot(ptr noundef %cpfile, i64 noundef %cno) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cno)
  %cmp = icmp eq i64 %cno, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %ns_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ns_cno.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %cno)
  %cmp1.not = icmp ugt i64 %6, %cno
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i_private.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %7 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_private.i, align 4
  tail call void @down_read(ptr noundef %8) #9
  %9 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %12 to i64
  %add.i.i = add i64 %cno, -1
  %sub.i.i = add i64 %add.i.i, %conv.i.i
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp170.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp170.i.i, label %if.then174.i.i, label %if.else180.i.i, !prof !24

if.then174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i = trunc i64 %sub.i.i to i32
  %div178.i.i = udiv i32 %conv175.i.i, %14
  br label %nilfs_cpfile_get_checkpoint_block.exit

if.else180.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %sub.i.i) #12, !srcloc !25
  %asmresult1.i.i.i = extractvalue { i64, i64 } %15, 1
  %extract.t293.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_cpfile_get_checkpoint_block.exit

nilfs_cpfile_get_checkpoint_block.exit:           ; preds = %if.else180.i.i, %if.then174.i.i
  %tcno.0.off0.i.i = phi i32 [ %div178.i.i, %if.then174.i.i ], [ %extract.t293.i.i, %if.else180.i.i ]
  %call1.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i, i32 noundef 0, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef nonnull %bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp4 = icmp slt i32 %call1.i, 0
  br i1 %cmp4, label %nilfs_cpfile_get_checkpoint_block.exit.out_crit_edge, label %if.end6

nilfs_cpfile_get_checkpoint_block.exit.out_crit_edge: ; preds = %nilfs_cpfile_get_checkpoint_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %nilfs_cpfile_get_checkpoint_block.exit
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %20 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %20, 512
  %21 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %25 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 213
  %29 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %19, i32 noundef %or.i) #9
  %31 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data.i, align 4
  %35 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_private.i, align 4
  %mi_first_entry_offset.i.i32 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %mi_first_entry_offset.i.i32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mi_first_entry_offset.i.i32, align 4
  %conv.i.i33 = zext i32 %38 to i64
  %sub.i.i35 = add i64 %add.i.i, %conv.i.i33
  %mi_entries_per_block.i.i.i36 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %36, i32 0, i32 4
  %39 = ptrtoint ptr %mi_entries_per_block.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mi_entries_per_block.i.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i35)
  %cmp170.i.i130 = icmp ult i64 %sub.i.i35, 4294967296
  br i1 %cmp170.i.i130, label %if.then174.i.i133, label %if.else180.i.i134, !prof !24

if.then174.i.i133:                                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i132 = trunc i64 %sub.i.i35 to i32
  %rem176.i.i = urem i32 %conv175.i.i132, %40
  br label %nilfs_cpfile_block_get_checkpoint.exit

if.else180.i.i134:                                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %41 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %sub.i.i35) #12, !srcloc !25
  %asmresult.i268.i.i = extractvalue { i64, i64 } %41, 0
  %shr.i.i.i = lshr i64 %asmresult.i268.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit

nilfs_cpfile_block_get_checkpoint.exit:           ; preds = %if.else180.i.i134, %if.then174.i.i133
  %__rem.0.i.i = phi i32 [ %rem176.i.i, %if.then174.i.i133 ], [ %conv.i.i.i, %if.else180.i.i134 ]
  %42 = ptrtoint ptr %34 to i32
  %and.i = and i32 %42, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %36, i32 0, i32 2
  %43 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i = mul i32 %44, %__rem.0.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %45 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr2.i, align 8
  %47 = and i32 %46, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not = icmp eq i32 %47, 0
  %48 = lshr i32 %46, 24
  %.lobit.i135 = and i32 %48, 1
  %ret.0 = select i1 %tobool.not, i32 %.lobit.i135, i32 -2
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %49 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 213
  %53 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %54, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %55 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i136 = add i32 %58, -1
  store volatile i32 %sub.i.i136, ptr %preempt_count.i.i.i, align 4
  %59 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %nilfs_cpfile_block_get_checkpoint.exit.out_crit_edge, label %if.then.i

nilfs_cpfile_block_get_checkpoint.exit.out_crit_edge: ; preds = %nilfs_cpfile_block_get_checkpoint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i:                                        ; preds = %nilfs_cpfile_block_get_checkpoint.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %60) #9
  br label %out

out:                                              ; preds = %if.then.i, %nilfs_cpfile_block_get_checkpoint.exit.out_crit_edge, %nilfs_cpfile_get_checkpoint_block.exit.out_crit_edge
  %ret.1 = phi i32 [ %call1.i, %nilfs_cpfile_get_checkpoint_block.exit.out_crit_edge ], [ %ret.0, %nilfs_cpfile_block_get_checkpoint.exit.out_crit_edge ], [ %ret.0, %if.then.i ]
  %61 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_private.i, align 4
  call void @up_read(ptr noundef %62) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_cpfile_change_cpmode(ptr noundef %cpfile, i64 noundef %cno, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %header_bh.i8 = alloca ptr, align 4
  %curr_bh.i = alloca ptr, align 4
  %prev_bh.i9 = alloca ptr, align 4
  %cp_bh.i10 = alloca ptr, align 4
  %header_bh.i = alloca ptr, align 4
  %next_bh.i = alloca ptr, align 4
  %prev_bh.i = alloca ptr, align 4
  %cp_bh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %call = tail call i32 @nilfs_checkpoint_is_mounted(ptr noundef %2, i64 noundef %cno) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh.i) #9
  %3 = ptrtoint ptr %header_bh.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh.i, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_bh.i) #9
  %4 = ptrtoint ptr %next_bh.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %next_bh.i, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_bh.i) #9
  %5 = ptrtoint ptr %prev_bh.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev_bh.i, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp_bh.i) #9
  %6 = ptrtoint ptr %cp_bh.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %cp_bh.i, align 4, !annotation !22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cno)
  %cmp.i = icmp eq i64 %cno, 0
  br i1 %cmp.i, label %if.else.nilfs_cpfile_clear_snapshot.exit_crit_edge, label %if.end.i

if.else.nilfs_cpfile_clear_snapshot.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_cpfile_clear_snapshot.exit

if.end.i:                                         ; preds = %if.else
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %7 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_private.i.i, align 4
  tail call void @down_write(ptr noundef %8) #9
  %9 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %mi_first_entry_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mi_first_entry_offset.i.i.i, align 4
  %conv.i.i.i = zext i32 %12 to i64
  %add.i.i.i = add i64 %cno, -1
  %sub.i.i.i = add i64 %add.i.i.i, %conv.i.i.i
  %mi_entries_per_block.i.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %mi_entries_per_block.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mi_entries_per_block.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i)
  %cmp170.i.i.i = icmp ult i64 %sub.i.i.i, 4294967296
  br i1 %cmp170.i.i.i, label %if.then174.i.i.i, label %if.else180.i.i.i, !prof !24

if.then174.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i.i = trunc i64 %sub.i.i.i to i32
  %div178.i.i.i = udiv i32 %conv175.i.i.i, %14
  br label %nilfs_cpfile_get_checkpoint_block.exit.i

if.else180.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %sub.i.i.i) #12, !srcloc !25
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %15, 1
  %extract.t293.i.i.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %nilfs_cpfile_get_checkpoint_block.exit.i

nilfs_cpfile_get_checkpoint_block.exit.i:         ; preds = %if.else180.i.i.i, %if.then174.i.i.i
  %tcno.0.off0.i.i.i = phi i32 [ %div178.i.i.i, %if.then174.i.i.i ], [ %extract.t293.i.i.i, %if.else180.i.i.i ]
  %call1.i.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i.i, i32 noundef 0, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef nonnull %cp_bh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i, label %nilfs_cpfile_get_checkpoint_block.exit.i.out_sem.i_crit_edge, label %if.end4.i

nilfs_cpfile_get_checkpoint_block.exit.i.out_sem.i_crit_edge: ; preds = %nilfs_cpfile_get_checkpoint_block.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sem.i

if.end4.i:                                        ; preds = %nilfs_cpfile_get_checkpoint_block.exit.i
  %16 = ptrtoint ptr %cp_bh.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cp_bh.i, align 4
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %20 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %20, 512
  %21 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %25 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 213
  %29 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %19, i32 noundef %or.i.i) #9
  %31 = ptrtoint ptr %cp_bh.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cp_bh.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data.i.i, align 4
  %35 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i147.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %mi_first_entry_offset.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mi_first_entry_offset.i.i147.i, align 4
  %conv.i.i148.i = zext i32 %38 to i64
  %sub.i.i150.i = add i64 %add.i.i.i, %conv.i.i148.i
  %mi_entries_per_block.i.i.i151.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %36, i32 0, i32 4
  %39 = ptrtoint ptr %mi_entries_per_block.i.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mi_entries_per_block.i.i.i151.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i150.i)
  %cmp170.i.i245.i = icmp ult i64 %sub.i.i150.i, 4294967296
  br i1 %cmp170.i.i245.i, label %if.then174.i.i248.i, label %if.else180.i.i249.i, !prof !24

if.then174.i.i248.i:                              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i247.i = trunc i64 %sub.i.i150.i to i32
  %rem176.i.i.i = urem i32 %conv175.i.i247.i, %40
  br label %nilfs_cpfile_block_get_checkpoint.exit.i

if.else180.i.i249.i:                              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %sub.i.i150.i) #12, !srcloc !25
  %asmresult.i268.i.i.i = extractvalue { i64, i64 } %41, 0
  %shr.i.i.i.i = lshr i64 %asmresult.i268.i.i.i, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit.i

nilfs_cpfile_block_get_checkpoint.exit.i:         ; preds = %if.else180.i.i249.i, %if.then174.i.i248.i
  %__rem.0.i.i.i = phi i32 [ %rem176.i.i.i, %if.then174.i.i248.i ], [ %conv.i.i.i.i, %if.else180.i.i249.i ]
  %42 = ptrtoint ptr %34 to i32
  %and.i.i = and i32 %42, 4095
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i.i
  %mi_entry_size.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %36, i32 0, i32 2
  %43 = ptrtoint ptr %mi_entry_size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mi_entry_size.i.i, align 4
  %mul.i.i = mul i32 %44, %__rem.0.i.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %45 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr2.i.i, align 8
  %47 = and i32 %46, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.then8.i

if.then8.i:                                       ; preds = %nilfs_cpfile_block_get_checkpoint.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %48 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 213
  %52 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %53, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %54 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i250.i = add i32 %57, -1
  store volatile i32 %sub.i.i250.i, ptr %preempt_count.i.i.i.i, align 4
  br label %out_cp.i

if.end12.i:                                       ; preds = %nilfs_cpfile_block_get_checkpoint.exit.i
  %58 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool14.not.i = icmp eq i32 %58, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end22.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %59 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i252.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i1.i252.i to ptr
  %task.i.i.i253.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i.i.i253.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i.i.i253.i, align 8
  %pagefault_disabled.i.i.i254.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 213
  %63 = ptrtoint ptr %pagefault_disabled.i.i.i254.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pagefault_disabled.i.i.i254.i, align 8
  %dec.i.i.i255.i = add i32 %64, -1
  store i32 %dec.i.i.i255.i, ptr %pagefault_disabled.i.i.i254.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %65 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i256.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i256.i to ptr
  %preempt_count.i.i.i257.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i257.i, align 4
  %sub.i.i258.i = add i32 %68, -1
  store volatile i32 %sub.i.i258.i, ptr %preempt_count.i.i.i257.i, align 4
  br label %out_cp.i

if.end22.i:                                       ; preds = %if.end12.i
  %cp_snapshot_list.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %cp_snapshot_list.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %cp_snapshot_list.i, align 8
  %71 = call i64 @llvm.bswap.i64(i64 %70) #9
  %ssl_prev.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i.i, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %ssl_prev.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ssl_prev.i, align 8
  %74 = call i64 @llvm.bswap.i64(i64 %73) #9
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %75 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i259.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i1.i259.i to ptr
  %task.i.i.i260.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task.i.i.i260.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task.i.i.i260.i, align 8
  %pagefault_disabled.i.i.i261.i = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 213
  %79 = ptrtoint ptr %pagefault_disabled.i.i.i261.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pagefault_disabled.i.i.i261.i, align 8
  %dec.i.i.i262.i = add i32 %80, -1
  store i32 %dec.i.i.i262.i, ptr %pagefault_disabled.i.i.i261.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %81 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i263.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i263.i to ptr
  %preempt_count.i.i.i264.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i264.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i264.i, align 4
  %sub.i.i265.i = add i32 %84, -1
  store volatile i32 %sub.i.i265.i, ptr %preempt_count.i.i.i264.i, align 4
  %call.i.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp30.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp30.i, label %if.end22.i.out_cp.i_crit_edge, label %if.end32.i

if.end22.i.out_cp.i_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_cp.i

if.end32.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %70)
  %cmp33.not.i = icmp eq i64 %70, 0
  br i1 %cmp33.not.i, label %if.else.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.end32.i
  %85 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i267.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %mi_first_entry_offset.i.i267.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mi_first_entry_offset.i.i267.i, align 4
  %conv.i.i268.i = zext i32 %88 to i64
  %add.i.i269.i = add i64 %71, -1
  %sub.i.i270.i = add i64 %add.i.i269.i, %conv.i.i268.i
  %mi_entries_per_block.i.i.i271.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %86, i32 0, i32 4
  %89 = ptrtoint ptr %mi_entries_per_block.i.i.i271.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mi_entries_per_block.i.i.i271.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i270.i)
  %cmp170.i.i380.i = icmp ult i64 %sub.i.i270.i, 4294967296
  br i1 %cmp170.i.i380.i, label %if.then174.i.i384.i, label %if.else180.i.i387.i, !prof !24

if.then174.i.i384.i:                              ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i382.i = trunc i64 %sub.i.i270.i to i32
  %div178.i.i383.i = udiv i32 %conv175.i.i382.i, %90
  br label %nilfs_cpfile_get_checkpoint_block.exit390.i

if.else180.i.i387.i:                              ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %90, i64 %sub.i.i270.i) #12, !srcloc !25
  %asmresult1.i.i.i385.i = extractvalue { i64, i64 } %91, 1
  %extract.t293.i.i386.i = trunc i64 %asmresult1.i.i.i385.i to i32
  br label %nilfs_cpfile_get_checkpoint_block.exit390.i

nilfs_cpfile_get_checkpoint_block.exit390.i:      ; preds = %if.else180.i.i387.i, %if.then174.i.i384.i
  %tcno.0.off0.i.i388.i = phi i32 [ %div178.i.i383.i, %if.then174.i.i384.i ], [ %extract.t293.i.i386.i, %if.else180.i.i387.i ]
  %call1.i389.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i388.i, i32 noundef 0, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef nonnull %next_bh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i389.i)
  %cmp36.i = icmp slt i32 %call1.i389.i, 0
  br i1 %cmp36.i, label %nilfs_cpfile_get_checkpoint_block.exit390.i.out_header.i_crit_edge, label %nilfs_cpfile_get_checkpoint_block.exit390.i.if.end39.i_crit_edge

nilfs_cpfile_get_checkpoint_block.exit390.i.if.end39.i_crit_edge: ; preds = %nilfs_cpfile_get_checkpoint_block.exit390.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

nilfs_cpfile_get_checkpoint_block.exit390.i.out_header.i_crit_edge: ; preds = %nilfs_cpfile_get_checkpoint_block.exit390.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_header.i

if.else.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %header_bh.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %header_bh.i, align 4
  %94 = ptrtoint ptr %next_bh.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %next_bh.i, align 4
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %93, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #9
  %95 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #9, !srcloc !32
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else.i, %nilfs_cpfile_get_checkpoint_block.exit390.i.if.end39.i_crit_edge
  %ret.0.i = phi i32 [ %call1.i389.i, %nilfs_cpfile_get_checkpoint_block.exit390.i.if.end39.i_crit_edge ], [ %call.i.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %73)
  %cmp40.not.i = icmp eq i64 %73, 0
  br i1 %cmp40.not.i, label %if.else46.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end39.i
  %96 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i392.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %mi_first_entry_offset.i.i392.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mi_first_entry_offset.i.i392.i, align 4
  %conv.i.i393.i = zext i32 %99 to i64
  %add.i.i394.i = add i64 %74, -1
  %sub.i.i395.i = add i64 %add.i.i394.i, %conv.i.i393.i
  %mi_entries_per_block.i.i.i396.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %97, i32 0, i32 4
  %100 = ptrtoint ptr %mi_entries_per_block.i.i.i396.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mi_entries_per_block.i.i.i396.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i395.i)
  %cmp170.i.i505.i = icmp ult i64 %sub.i.i395.i, 4294967296
  br i1 %cmp170.i.i505.i, label %if.then174.i.i509.i, label %if.else180.i.i512.i, !prof !24

if.then174.i.i509.i:                              ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i507.i = trunc i64 %sub.i.i395.i to i32
  %div178.i.i508.i = udiv i32 %conv175.i.i507.i, %101
  br label %nilfs_cpfile_get_checkpoint_block.exit515.i

if.else180.i.i512.i:                              ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %101, i64 %sub.i.i395.i) #12, !srcloc !25
  %asmresult1.i.i.i510.i = extractvalue { i64, i64 } %102, 1
  %extract.t293.i.i511.i = trunc i64 %asmresult1.i.i.i510.i to i32
  br label %nilfs_cpfile_get_checkpoint_block.exit515.i

nilfs_cpfile_get_checkpoint_block.exit515.i:      ; preds = %if.else180.i.i512.i, %if.then174.i.i509.i
  %tcno.0.off0.i.i513.i = phi i32 [ %div178.i.i508.i, %if.then174.i.i509.i ], [ %extract.t293.i.i511.i, %if.else180.i.i512.i ]
  %call1.i514.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i513.i, i32 noundef 0, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef nonnull %prev_bh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i514.i)
  %cmp43.i = icmp slt i32 %call1.i514.i, 0
  br i1 %cmp43.i, label %nilfs_cpfile_get_checkpoint_block.exit515.i.out_next.i_crit_edge, label %nilfs_cpfile_get_checkpoint_block.exit515.i.if.end47.i_crit_edge

nilfs_cpfile_get_checkpoint_block.exit515.i.if.end47.i_crit_edge: ; preds = %nilfs_cpfile_get_checkpoint_block.exit515.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

nilfs_cpfile_get_checkpoint_block.exit515.i.out_next.i_crit_edge: ; preds = %nilfs_cpfile_get_checkpoint_block.exit515.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_next.i

if.else46.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %header_bh.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %header_bh.i, align 4
  %105 = ptrtoint ptr %prev_bh.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %prev_bh.i, align 4
  %b_count.i516.i = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 11
  %call.i.i.i517.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i516.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i516.i, i32 1, i32 3, i32 1) #9
  %106 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i516.i, ptr %b_count.i516.i, i32 1, ptr elementtype(i32) %b_count.i516.i) #9, !srcloc !32
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.else46.i, %nilfs_cpfile_get_checkpoint_block.exit515.i.if.end47.i_crit_edge
  %ret.1.i = phi i32 [ %call1.i514.i, %nilfs_cpfile_get_checkpoint_block.exit515.i.if.end47.i_crit_edge ], [ %ret.0.i, %if.else46.i ]
  %107 = ptrtoint ptr %next_bh.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %next_bh.i, align 4
  %b_page48.i = getelementptr inbounds %struct.buffer_head, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %b_page48.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %b_page48.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %111 = load i32, ptr @pgprot_kernel, align 4
  %or.i518.i = or i32 %111, 512
  %112 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i519.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i.i519.i to ptr
  %preempt_count.i.i.i.i520.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i.i.i520.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i.i.i520.i, align 4
  %add.i.i.i521.i = add i32 %115, 1
  store volatile i32 %add.i.i.i521.i, ptr %preempt_count.i.i.i.i520.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %116 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i522.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i1.i.i522.i to ptr
  %task.i.i.i.i523.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task.i.i.i.i523.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task.i.i.i.i523.i, align 8
  %pagefault_disabled.i.i.i.i524.i = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 213
  %120 = ptrtoint ptr %pagefault_disabled.i.i.i.i524.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pagefault_disabled.i.i.i.i524.i, align 8
  %inc.i.i.i.i525.i = add i32 %121, 1
  store i32 %inc.i.i.i.i525.i, ptr %pagefault_disabled.i.i.i.i524.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i526.i = call ptr @__kmap_local_page_prot(ptr noundef %110, i32 noundef %or.i518.i) #9
  %122 = ptrtoint ptr %next_bh.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %next_bh.i, align 4
  %b_data.i6.i.i = getelementptr inbounds %struct.buffer_head, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %b_data.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %b_data.i6.i.i, align 4
  br i1 %cmp33.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end47.i
  %126 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %mi_first_entry_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mi_first_entry_offset.i.i.i.i, align 4
  %conv.i.i.i527.i = zext i32 %129 to i64
  %add.i.i.i528.i = add i64 %71, -1
  %sub.i.i.i.i = add i64 %add.i.i.i528.i, %conv.i.i.i527.i
  %mi_entries_per_block.i.i.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %127, i32 0, i32 4
  %130 = ptrtoint ptr %mi_entries_per_block.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mi_entries_per_block.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i.i)
  %cmp170.i.i.i.i = icmp ult i64 %sub.i.i.i.i, 4294967296
  br i1 %cmp170.i.i.i.i, label %if.then174.i.i.i.i, label %if.else180.i.i.i.i, !prof !24

if.then174.i.i.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i.i.i = trunc i64 %sub.i.i.i.i to i32
  %rem176.i.i.i.i = urem i32 %conv175.i.i.i.i, %131
  br label %nilfs_cpfile_block_get_checkpoint.exit.i.i

if.else180.i.i.i.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %131, i64 %sub.i.i.i.i) #12, !srcloc !25
  %asmresult.i268.i.i.i.i = extractvalue { i64, i64 } %132, 0
  %shr.i.i.i.i.i = lshr i64 %asmresult.i268.i.i.i.i, 32
  %conv.i.i.i.i.i = trunc i64 %shr.i.i.i.i.i to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit.i.i

nilfs_cpfile_block_get_checkpoint.exit.i.i:       ; preds = %if.else180.i.i.i.i, %if.then174.i.i.i.i
  %__rem.0.i.i.i.i = phi i32 [ %rem176.i.i.i.i, %if.then174.i.i.i.i ], [ %conv.i.i.i.i.i, %if.else180.i.i.i.i ]
  %133 = ptrtoint ptr %125 to i32
  %and.i.i.i = and i32 %133, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i526.i, i32 %and.i.i.i
  %mi_entry_size.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %127, i32 0, i32 2
  %134 = ptrtoint ptr %mi_entry_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mi_entry_size.i.i.i, align 4
  %mul.i.i530.i = mul i32 %135, %__rem.0.i.i.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i530.i
  %cp_snapshot_list.i.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i.i.i, i32 0, i32 2
  br label %nilfs_cpfile_block_get_snapshot_list.exit.i

if.else.i.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %125 to i32
  %and.i7.i.i = and i32 %136, 4095
  %add.ptr.i8.i.i = getelementptr i8, ptr %call.i.i526.i, i32 %and.i7.i.i
  %ch_snapshot_list.i.i = getelementptr inbounds %struct.nilfs_cpfile_header, ptr %add.ptr.i8.i.i, i32 0, i32 2
  br label %nilfs_cpfile_block_get_snapshot_list.exit.i

nilfs_cpfile_block_get_snapshot_list.exit.i:      ; preds = %if.else.i.i, %nilfs_cpfile_block_get_checkpoint.exit.i.i
  %list.0.i.i = phi ptr [ %cp_snapshot_list.i.i, %nilfs_cpfile_block_get_checkpoint.exit.i.i ], [ %ch_snapshot_list.i.i, %if.else.i.i ]
  %ssl_prev51.i = getelementptr inbounds %struct.nilfs_snapshot_list, ptr %list.0.i.i, i32 0, i32 1
  %137 = ptrtoint ptr %ssl_prev51.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %73, ptr %ssl_prev51.i, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i526.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %138 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i531.i = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i1.i531.i to ptr
  %task.i.i.i532.i = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task.i.i.i532.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task.i.i.i532.i, align 8
  %pagefault_disabled.i.i.i533.i = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 213
  %142 = ptrtoint ptr %pagefault_disabled.i.i.i533.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pagefault_disabled.i.i.i533.i, align 8
  %dec.i.i.i534.i = add i32 %143, -1
  store i32 %dec.i.i.i534.i, ptr %pagefault_disabled.i.i.i533.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %144 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i535.i = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i.i535.i to ptr
  %preempt_count.i.i.i536.i = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %preempt_count.i.i.i536.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %preempt_count.i.i.i536.i, align 4
  %sub.i.i537.i = add i32 %147, -1
  store volatile i32 %sub.i.i537.i, ptr %preempt_count.i.i.i536.i, align 4
  %148 = ptrtoint ptr %prev_bh.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %prev_bh.i, align 4
  %b_page58.i = getelementptr inbounds %struct.buffer_head, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %b_page58.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %b_page58.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %152 = load i32, ptr @pgprot_kernel, align 4
  %or.i538.i = or i32 %152, 512
  %153 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i539.i = and i32 %153, -16384
  %154 = inttoptr i32 %and.i.i.i.i.i539.i to ptr
  %preempt_count.i.i.i.i540.i = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %preempt_count.i.i.i.i540.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %preempt_count.i.i.i.i540.i, align 4
  %add.i.i.i541.i = add i32 %156, 1
  store volatile i32 %add.i.i.i541.i, ptr %preempt_count.i.i.i.i540.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %157 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i542.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i1.i.i542.i to ptr
  %task.i.i.i.i543.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %task.i.i.i.i543.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %task.i.i.i.i543.i, align 8
  %pagefault_disabled.i.i.i.i544.i = getelementptr inbounds %struct.task_struct, ptr %160, i32 0, i32 213
  %161 = ptrtoint ptr %pagefault_disabled.i.i.i.i544.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pagefault_disabled.i.i.i.i544.i, align 8
  %inc.i.i.i.i545.i = add i32 %162, 1
  store i32 %inc.i.i.i.i545.i, ptr %pagefault_disabled.i.i.i.i544.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i546.i = call ptr @__kmap_local_page_prot(ptr noundef %151, i32 noundef %or.i538.i) #9
  %163 = ptrtoint ptr %prev_bh.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %prev_bh.i, align 4
  %b_data.i6.i548.i = getelementptr inbounds %struct.buffer_head, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %b_data.i6.i548.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %b_data.i6.i548.i, align 4
  br i1 %cmp40.not.i, label %if.else.i686.i, label %if.then.i558.i

if.then.i558.i:                                   ; preds = %nilfs_cpfile_block_get_snapshot_list.exit.i
  %167 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i.i550.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %mi_first_entry_offset.i.i.i550.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mi_first_entry_offset.i.i.i550.i, align 4
  %conv.i.i.i551.i = zext i32 %170 to i64
  %add.i.i.i552.i = add i64 %74, -1
  %sub.i.i.i553.i = add i64 %add.i.i.i552.i, %conv.i.i.i551.i
  %mi_entries_per_block.i.i.i.i554.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %168, i32 0, i32 4
  %171 = ptrtoint ptr %mi_entries_per_block.i.i.i.i554.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mi_entries_per_block.i.i.i.i554.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i553.i)
  %cmp170.i.i.i666.i = icmp ult i64 %sub.i.i.i553.i, 4294967296
  br i1 %cmp170.i.i.i666.i, label %if.then174.i.i.i670.i, label %if.else180.i.i.i674.i, !prof !24

if.then174.i.i.i670.i:                            ; preds = %if.then.i558.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i.i668.i = trunc i64 %sub.i.i.i553.i to i32
  %rem176.i.i.i669.i = urem i32 %conv175.i.i.i668.i, %172
  br label %nilfs_cpfile_block_get_checkpoint.exit.i682.i

if.else180.i.i.i674.i:                            ; preds = %if.then.i558.i
  call void @__sanitizer_cov_trace_pc() #11
  %173 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %172, i64 %sub.i.i.i553.i) #12, !srcloc !25
  %asmresult.i268.i.i.i671.i = extractvalue { i64, i64 } %173, 0
  %shr.i.i.i.i672.i = lshr i64 %asmresult.i268.i.i.i671.i, 32
  %conv.i.i.i.i673.i = trunc i64 %shr.i.i.i.i672.i to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit.i682.i

nilfs_cpfile_block_get_checkpoint.exit.i682.i:    ; preds = %if.else180.i.i.i674.i, %if.then174.i.i.i670.i
  %__rem.0.i.i.i675.i = phi i32 [ %rem176.i.i.i669.i, %if.then174.i.i.i670.i ], [ %conv.i.i.i.i673.i, %if.else180.i.i.i674.i ]
  %174 = ptrtoint ptr %166 to i32
  %and.i.i676.i = and i32 %174, 4095
  %add.ptr.i.i677.i = getelementptr i8, ptr %call.i.i546.i, i32 %and.i.i676.i
  %mi_entry_size.i.i678.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %168, i32 0, i32 2
  %175 = ptrtoint ptr %mi_entry_size.i.i678.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %mi_entry_size.i.i678.i, align 4
  %mul.i.i679.i = mul i32 %176, %__rem.0.i.i.i675.i
  %add.ptr2.i.i680.i = getelementptr i8, ptr %add.ptr.i.i677.i, i32 %mul.i.i679.i
  %cp_snapshot_list.i681.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i.i680.i, i32 0, i32 2
  br label %nilfs_cpfile_block_get_snapshot_list.exit688.i

if.else.i686.i:                                   ; preds = %nilfs_cpfile_block_get_snapshot_list.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %166 to i32
  %and.i7.i683.i = and i32 %177, 4095
  %add.ptr.i8.i684.i = getelementptr i8, ptr %call.i.i546.i, i32 %and.i7.i683.i
  %ch_snapshot_list.i685.i = getelementptr inbounds %struct.nilfs_cpfile_header, ptr %add.ptr.i8.i684.i, i32 0, i32 2
  br label %nilfs_cpfile_block_get_snapshot_list.exit688.i

nilfs_cpfile_block_get_snapshot_list.exit688.i:   ; preds = %if.else.i686.i, %nilfs_cpfile_block_get_checkpoint.exit.i682.i
  %list.0.i687.i = phi ptr [ %cp_snapshot_list.i681.i, %nilfs_cpfile_block_get_checkpoint.exit.i682.i ], [ %ch_snapshot_list.i685.i, %if.else.i686.i ]
  %178 = ptrtoint ptr %list.0.i687.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %70, ptr %list.0.i687.i, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i546.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %179 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i689.i = and i32 %179, -16384
  %180 = inttoptr i32 %and.i.i.i1.i689.i to ptr
  %task.i.i.i690.i = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %task.i.i.i690.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %task.i.i.i690.i, align 8
  %pagefault_disabled.i.i.i691.i = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 213
  %183 = ptrtoint ptr %pagefault_disabled.i.i.i691.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %pagefault_disabled.i.i.i691.i, align 8
  %dec.i.i.i692.i = add i32 %184, -1
  store i32 %dec.i.i.i692.i, ptr %pagefault_disabled.i.i.i691.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %185 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i693.i = and i32 %185, -16384
  %186 = inttoptr i32 %and.i.i.i.i693.i to ptr
  %preempt_count.i.i.i694.i = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %preempt_count.i.i.i694.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %preempt_count.i.i.i694.i, align 4
  %sub.i.i695.i = add i32 %188, -1
  store volatile i32 %sub.i.i695.i, ptr %preempt_count.i.i.i694.i, align 4
  %189 = ptrtoint ptr %cp_bh.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cp_bh.i, align 4
  %b_page68.i = getelementptr inbounds %struct.buffer_head, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %b_page68.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %b_page68.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %193 = load i32, ptr @pgprot_kernel, align 4
  %or.i696.i = or i32 %193, 512
  %194 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i697.i = and i32 %194, -16384
  %195 = inttoptr i32 %and.i.i.i.i.i697.i to ptr
  %preempt_count.i.i.i.i698.i = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %preempt_count.i.i.i.i698.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %preempt_count.i.i.i.i698.i, align 4
  %add.i.i.i699.i = add i32 %197, 1
  store volatile i32 %add.i.i.i699.i, ptr %preempt_count.i.i.i.i698.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %198 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i700.i = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i.i1.i.i700.i to ptr
  %task.i.i.i.i701.i = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %task.i.i.i.i701.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %task.i.i.i.i701.i, align 8
  %pagefault_disabled.i.i.i.i702.i = getelementptr inbounds %struct.task_struct, ptr %201, i32 0, i32 213
  %202 = ptrtoint ptr %pagefault_disabled.i.i.i.i702.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %pagefault_disabled.i.i.i.i702.i, align 8
  %inc.i.i.i.i703.i = add i32 %203, 1
  store i32 %inc.i.i.i.i703.i, ptr %pagefault_disabled.i.i.i.i702.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i704.i = call ptr @__kmap_local_page_prot(ptr noundef %192, i32 noundef %or.i696.i) #9
  %204 = ptrtoint ptr %cp_bh.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cp_bh.i, align 4
  %b_data.i705.i = getelementptr inbounds %struct.buffer_head, ptr %205, i32 0, i32 5
  %206 = ptrtoint ptr %b_data.i705.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %b_data.i705.i, align 4
  %208 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %i_private.i.i, align 4
  %mi_first_entry_offset.i.i707.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %209, i32 0, i32 3
  %210 = ptrtoint ptr %mi_first_entry_offset.i.i707.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %mi_first_entry_offset.i.i707.i, align 4
  %conv.i.i708.i = zext i32 %211 to i64
  %sub.i.i710.i = add i64 %add.i.i.i, %conv.i.i708.i
  %mi_entries_per_block.i.i.i711.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %209, i32 0, i32 4
  %212 = ptrtoint ptr %mi_entries_per_block.i.i.i711.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %mi_entries_per_block.i.i.i711.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i710.i)
  %cmp170.i.i822.i = icmp ult i64 %sub.i.i710.i, 4294967296
  br i1 %cmp170.i.i822.i, label %if.then174.i.i826.i, label %if.else180.i.i830.i, !prof !24

if.then174.i.i826.i:                              ; preds = %nilfs_cpfile_block_get_snapshot_list.exit688.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i824.i = trunc i64 %sub.i.i710.i to i32
  %rem176.i.i825.i = urem i32 %conv175.i.i824.i, %213
  br label %nilfs_cpfile_block_get_checkpoint.exit837.i

if.else180.i.i830.i:                              ; preds = %nilfs_cpfile_block_get_snapshot_list.exit688.i
  call void @__sanitizer_cov_trace_pc() #11
  %214 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %213, i64 %sub.i.i710.i) #12, !srcloc !25
  %asmresult.i268.i.i827.i = extractvalue { i64, i64 } %214, 0
  %shr.i.i.i828.i = lshr i64 %asmresult.i268.i.i827.i, 32
  %conv.i.i.i829.i = trunc i64 %shr.i.i.i828.i to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit837.i

nilfs_cpfile_block_get_checkpoint.exit837.i:      ; preds = %if.else180.i.i830.i, %if.then174.i.i826.i
  %__rem.0.i.i831.i = phi i32 [ %rem176.i.i825.i, %if.then174.i.i826.i ], [ %conv.i.i.i829.i, %if.else180.i.i830.i ]
  %215 = ptrtoint ptr %207 to i32
  %and.i832.i = and i32 %215, 4095
  %add.ptr.i833.i = getelementptr i8, ptr %call.i.i704.i, i32 %and.i832.i
  %mi_entry_size.i834.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %209, i32 0, i32 2
  %216 = ptrtoint ptr %mi_entry_size.i834.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %mi_entry_size.i834.i, align 4
  %mul.i835.i = mul i32 %217, %__rem.0.i.i831.i
  %add.ptr2.i836.i = getelementptr i8, ptr %add.ptr.i833.i, i32 %mul.i835.i
  %cp_snapshot_list71.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i836.i, i32 0, i32 2
  %218 = call ptr @memset(ptr %cp_snapshot_list71.i, i32 0, i32 16)
  %219 = ptrtoint ptr %add.ptr2.i836.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %add.ptr2.i836.i, align 8
  %221 = and i32 %220, -16777217
  store i32 %221, ptr %add.ptr2.i836.i, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i704.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %222 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i838.i = and i32 %222, -16384
  %223 = inttoptr i32 %and.i.i.i1.i838.i to ptr
  %task.i.i.i839.i = getelementptr inbounds %struct.thread_info, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %task.i.i.i839.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %task.i.i.i839.i, align 8
  %pagefault_disabled.i.i.i840.i = getelementptr inbounds %struct.task_struct, ptr %225, i32 0, i32 213
  %226 = ptrtoint ptr %pagefault_disabled.i.i.i840.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pagefault_disabled.i.i.i840.i, align 8
  %dec.i.i.i841.i = add i32 %227, -1
  store i32 %dec.i.i.i841.i, ptr %pagefault_disabled.i.i.i840.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %228 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i842.i = and i32 %228, -16384
  %229 = inttoptr i32 %and.i.i.i.i842.i to ptr
  %preempt_count.i.i.i843.i = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %preempt_count.i.i.i843.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile i32, ptr %preempt_count.i.i.i843.i, align 4
  %sub.i.i844.i = add i32 %231, -1
  store volatile i32 %sub.i.i844.i, ptr %preempt_count.i.i.i843.i, align 4
  %232 = ptrtoint ptr %header_bh.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %header_bh.i, align 4
  %b_page81.i = getelementptr inbounds %struct.buffer_head, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %b_page81.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %b_page81.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %236 = load i32, ptr @pgprot_kernel, align 4
  %or.i845.i = or i32 %236, 512
  %237 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i846.i = and i32 %237, -16384
  %238 = inttoptr i32 %and.i.i.i.i.i846.i to ptr
  %preempt_count.i.i.i.i847.i = getelementptr inbounds %struct.thread_info, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %preempt_count.i.i.i.i847.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %preempt_count.i.i.i.i847.i, align 4
  %add.i.i.i848.i = add i32 %240, 1
  store volatile i32 %add.i.i.i848.i, ptr %preempt_count.i.i.i.i847.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %241 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i849.i = and i32 %241, -16384
  %242 = inttoptr i32 %and.i.i.i1.i.i849.i to ptr
  %task.i.i.i.i850.i = getelementptr inbounds %struct.thread_info, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %task.i.i.i.i850.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %task.i.i.i.i850.i, align 8
  %pagefault_disabled.i.i.i.i851.i = getelementptr inbounds %struct.task_struct, ptr %244, i32 0, i32 213
  %245 = ptrtoint ptr %pagefault_disabled.i.i.i.i851.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %pagefault_disabled.i.i.i.i851.i, align 8
  %inc.i.i.i.i852.i = add i32 %246, 1
  store i32 %inc.i.i.i.i852.i, ptr %pagefault_disabled.i.i.i.i851.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i853.i = call ptr @__kmap_local_page_prot(ptr noundef %235, i32 noundef %or.i845.i) #9
  %247 = ptrtoint ptr %header_bh.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %header_bh.i, align 4
  %b_data.i854.i = getelementptr inbounds %struct.buffer_head, ptr %248, i32 0, i32 5
  %249 = ptrtoint ptr %b_data.i854.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %b_data.i854.i, align 4
  %251 = ptrtoint ptr %250 to i32
  %and.i855.i = and i32 %251, 4095
  %add.ptr.i856.i = getelementptr i8, ptr %call.i.i853.i, i32 %and.i855.i
  %ch_nsnapshots.i = getelementptr inbounds %struct.nilfs_cpfile_header, ptr %add.ptr.i856.i, i32 0, i32 1
  %252 = ptrtoint ptr %ch_nsnapshots.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %ch_nsnapshots.i, align 8
  %254 = call i64 @llvm.bswap.i64(i64 %253) #9
  %add.i.i = add i64 %254, -1
  %255 = call i64 @llvm.bswap.i64(i64 %add.i.i) #9
  %256 = ptrtoint ptr %ch_nsnapshots.i to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %255, ptr %ch_nsnapshots.i, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i853.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %257 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i857.i = and i32 %257, -16384
  %258 = inttoptr i32 %and.i.i.i1.i857.i to ptr
  %task.i.i.i858.i = getelementptr inbounds %struct.thread_info, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %task.i.i.i858.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %task.i.i.i858.i, align 8
  %pagefault_disabled.i.i.i859.i = getelementptr inbounds %struct.task_struct, ptr %260, i32 0, i32 213
  %261 = ptrtoint ptr %pagefault_disabled.i.i.i859.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %pagefault_disabled.i.i.i859.i, align 8
  %dec.i.i.i860.i = add i32 %262, -1
  store i32 %dec.i.i.i860.i, ptr %pagefault_disabled.i.i.i859.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %263 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i861.i = and i32 %263, -16384
  %264 = inttoptr i32 %and.i.i.i.i861.i to ptr
  %preempt_count.i.i.i862.i = getelementptr inbounds %struct.thread_info, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %preempt_count.i.i.i862.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile i32, ptr %preempt_count.i.i.i862.i, align 4
  %sub.i.i863.i = add i32 %266, -1
  store volatile i32 %sub.i.i863.i, ptr %preempt_count.i.i.i862.i, align 4
  %267 = ptrtoint ptr %next_bh.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %next_bh.i, align 4
  call void @mark_buffer_dirty(ptr noundef %268) #9
  %269 = ptrtoint ptr %prev_bh.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %prev_bh.i, align 4
  call void @mark_buffer_dirty(ptr noundef %270) #9
  %271 = ptrtoint ptr %cp_bh.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cp_bh.i, align 4
  call void @mark_buffer_dirty(ptr noundef %272) #9
  %273 = ptrtoint ptr %header_bh.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %header_bh.i, align 4
  call void @mark_buffer_dirty(ptr noundef %274) #9
  %i_state.i.i = getelementptr i8, ptr %cpfile, i32 -588
  %275 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load volatile i32, ptr %i_state.i.i, align 4
  %277 = and i32 %276, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool.not.i.i = icmp eq i32 %277, 0
  br i1 %tobool.not.i.i, label %if.then.i864.i, label %nilfs_cpfile_block_get_checkpoint.exit837.i.nilfs_mdt_mark_dirty.exit.i_crit_edge

nilfs_cpfile_block_get_checkpoint.exit837.i.nilfs_mdt_mark_dirty.exit.i_crit_edge: ; preds = %nilfs_cpfile_block_get_checkpoint.exit837.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_mdt_mark_dirty.exit.i

if.then.i864.i:                                   ; preds = %nilfs_cpfile_block_get_checkpoint.exit837.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i) #9
  br label %nilfs_mdt_mark_dirty.exit.i

nilfs_mdt_mark_dirty.exit.i:                      ; preds = %if.then.i864.i, %nilfs_cpfile_block_get_checkpoint.exit837.i.nilfs_mdt_mark_dirty.exit.i_crit_edge
  %278 = ptrtoint ptr %prev_bh.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %prev_bh.i, align 4
  %tobool.not.i865.i = icmp eq ptr %279, null
  br i1 %tobool.not.i865.i, label %nilfs_mdt_mark_dirty.exit.i.out_next.i_crit_edge, label %if.then.i866.i

nilfs_mdt_mark_dirty.exit.i.out_next.i_crit_edge: ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_next.i

if.then.i866.i:                                   ; preds = %nilfs_mdt_mark_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %279) #9
  br label %out_next.i

out_next.i:                                       ; preds = %if.then.i866.i, %nilfs_mdt_mark_dirty.exit.i.out_next.i_crit_edge, %nilfs_cpfile_get_checkpoint_block.exit515.i.out_next.i_crit_edge
  %ret.2.i = phi i32 [ %call1.i514.i, %nilfs_cpfile_get_checkpoint_block.exit515.i.out_next.i_crit_edge ], [ %ret.1.i, %nilfs_mdt_mark_dirty.exit.i.out_next.i_crit_edge ], [ %ret.1.i, %if.then.i866.i ]
  %280 = ptrtoint ptr %next_bh.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %next_bh.i, align 4
  %tobool.not.i867.i = icmp eq ptr %281, null
  br i1 %tobool.not.i867.i, label %out_next.i.out_header.i_crit_edge, label %if.then.i868.i

out_next.i.out_header.i_crit_edge:                ; preds = %out_next.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_header.i

if.then.i868.i:                                   ; preds = %out_next.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %281) #9
  br label %out_header.i

out_header.i:                                     ; preds = %if.then.i868.i, %out_next.i.out_header.i_crit_edge, %nilfs_cpfile_get_checkpoint_block.exit390.i.out_header.i_crit_edge
  %ret.3.i = phi i32 [ %call1.i389.i, %nilfs_cpfile_get_checkpoint_block.exit390.i.out_header.i_crit_edge ], [ %ret.2.i, %out_next.i.out_header.i_crit_edge ], [ %ret.2.i, %if.then.i868.i ]
  %282 = ptrtoint ptr %header_bh.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %header_bh.i, align 4
  %tobool.not.i870.i = icmp eq ptr %283, null
  br i1 %tobool.not.i870.i, label %out_header.i.out_cp.i_crit_edge, label %if.then.i871.i

out_header.i.out_cp.i_crit_edge:                  ; preds = %out_header.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_cp.i

if.then.i871.i:                                   ; preds = %out_header.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %283) #9
  br label %out_cp.i

out_cp.i:                                         ; preds = %if.then.i871.i, %out_header.i.out_cp.i_crit_edge, %if.end22.i.out_cp.i_crit_edge, %if.then15.i, %if.then8.i
  %ret.4.i = phi i32 [ -2, %if.then8.i ], [ %call.i.i, %if.end22.i.out_cp.i_crit_edge ], [ 0, %if.then15.i ], [ %ret.3.i, %out_header.i.out_cp.i_crit_edge ], [ %ret.3.i, %if.then.i871.i ]
  %284 = ptrtoint ptr %cp_bh.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %cp_bh.i, align 4
  %tobool.not.i873.i = icmp eq ptr %285, null
  br i1 %tobool.not.i873.i, label %out_cp.i.out_sem.i_crit_edge, label %if.then.i874.i

out_cp.i.out_sem.i_crit_edge:                     ; preds = %out_cp.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sem.i

if.then.i874.i:                                   ; preds = %out_cp.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %285) #9
  br label %out_sem.i

out_sem.i:                                        ; preds = %if.then.i874.i, %out_cp.i.out_sem.i_crit_edge, %nilfs_cpfile_get_checkpoint_block.exit.i.out_sem.i_crit_edge
  %ret.5.i = phi i32 [ %call1.i.i, %nilfs_cpfile_get_checkpoint_block.exit.i.out_sem.i_crit_edge ], [ %ret.4.i, %out_cp.i.out_sem.i_crit_edge ], [ %ret.4.i, %if.then.i874.i ]
  %286 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %i_private.i.i, align 4
  call void @up_write(ptr noundef %287) #9
  br label %nilfs_cpfile_clear_snapshot.exit

nilfs_cpfile_clear_snapshot.exit:                 ; preds = %out_sem.i, %if.else.nilfs_cpfile_clear_snapshot.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.5.i, %out_sem.i ], [ -2, %if.else.nilfs_cpfile_clear_snapshot.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp_bh.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_bh.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_bh.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh.i) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header_bh.i8) #9
  %288 = ptrtoint ptr %header_bh.i8 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr inttoptr (i32 -1 to ptr), ptr %header_bh.i8, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_bh.i) #9
  %289 = ptrtoint ptr %curr_bh.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr inttoptr (i32 -1 to ptr), ptr %curr_bh.i, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_bh.i9) #9
  %290 = ptrtoint ptr %prev_bh.i9 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr inttoptr (i32 -1 to ptr), ptr %prev_bh.i9, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp_bh.i10) #9
  %291 = ptrtoint ptr %cp_bh.i10 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr inttoptr (i32 -1 to ptr), ptr %cp_bh.i10, align 4, !annotation !22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cno)
  %cmp.i11 = icmp eq i64 %cno, 0
  br i1 %cmp.i11, label %sw.bb2.nilfs_cpfile_set_snapshot.exit_crit_edge, label %if.end.i21

sw.bb2.nilfs_cpfile_set_snapshot.exit_crit_edge:  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_cpfile_set_snapshot.exit

if.end.i21:                                       ; preds = %sw.bb2
  %i_private.i.i12 = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %292 = ptrtoint ptr %i_private.i.i12 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %i_private.i.i12, align 4
  tail call void @down_write(ptr noundef %293) #9
  %294 = ptrtoint ptr %i_private.i.i12 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %i_private.i.i12, align 4
  %mi_first_entry_offset.i.i.i13 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %295, i32 0, i32 3
  %296 = ptrtoint ptr %mi_first_entry_offset.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %mi_first_entry_offset.i.i.i13, align 4
  %conv.i.i.i14 = zext i32 %297 to i64
  %add.i.i.i15 = add i64 %cno, -1
  %sub.i.i.i16 = add i64 %add.i.i.i15, %conv.i.i.i14
  %mi_entries_per_block.i.i.i.i17 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %295, i32 0, i32 4
  %298 = ptrtoint ptr %mi_entries_per_block.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %mi_entries_per_block.i.i.i.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i.i16)
  %cmp170.i.i.i127 = icmp ult i64 %sub.i.i.i16, 4294967296
  br i1 %cmp170.i.i.i127, label %if.then174.i.i.i131, label %if.else180.i.i.i134, !prof !24

if.then174.i.i.i131:                              ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i.i129 = trunc i64 %sub.i.i.i16 to i32
  %div178.i.i.i130 = udiv i32 %conv175.i.i.i129, %299
  br label %nilfs_cpfile_get_checkpoint_block.exit.i138

if.else180.i.i.i134:                              ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  %300 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %299, i64 %sub.i.i.i16) #12, !srcloc !25
  %asmresult1.i.i.i.i132 = extractvalue { i64, i64 } %300, 1
  %extract.t293.i.i.i133 = trunc i64 %asmresult1.i.i.i.i132 to i32
  br label %nilfs_cpfile_get_checkpoint_block.exit.i138

nilfs_cpfile_get_checkpoint_block.exit.i138:      ; preds = %if.else180.i.i.i134, %if.then174.i.i.i131
  %tcno.0.off0.i.i.i135 = phi i32 [ %div178.i.i.i130, %if.then174.i.i.i131 ], [ %extract.t293.i.i.i133, %if.else180.i.i.i134 ]
  %call1.i.i136 = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i.i135, i32 noundef 0, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef nonnull %cp_bh.i10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i136)
  %cmp2.i137 = icmp slt i32 %call1.i.i136, 0
  br i1 %cmp2.i137, label %nilfs_cpfile_get_checkpoint_block.exit.i138.out_sem.i212_crit_edge, label %if.end4.i150

nilfs_cpfile_get_checkpoint_block.exit.i138.out_sem.i212_crit_edge: ; preds = %nilfs_cpfile_get_checkpoint_block.exit.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sem.i212

if.end4.i150:                                     ; preds = %nilfs_cpfile_get_checkpoint_block.exit.i138
  %301 = ptrtoint ptr %cp_bh.i10 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cp_bh.i10, align 4
  %b_page.i139 = getelementptr inbounds %struct.buffer_head, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %b_page.i139 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %b_page.i139, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %305 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i140 = or i32 %305, 512
  %306 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i.i141 = and i32 %306, -16384
  %307 = inttoptr i32 %and.i.i.i.i.i.i141 to ptr
  %preempt_count.i.i.i.i.i142 = getelementptr inbounds %struct.thread_info, ptr %307, i32 0, i32 1
  %308 = ptrtoint ptr %preempt_count.i.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load volatile i32, ptr %preempt_count.i.i.i.i.i142, align 4
  %add.i.i.i.i143 = add i32 %309, 1
  store volatile i32 %add.i.i.i.i143, ptr %preempt_count.i.i.i.i.i142, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %310 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i.i144 = and i32 %310, -16384
  %311 = inttoptr i32 %and.i.i.i1.i.i.i144 to ptr
  %task.i.i.i.i.i145 = getelementptr inbounds %struct.thread_info, ptr %311, i32 0, i32 2
  %312 = ptrtoint ptr %task.i.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %task.i.i.i.i.i145, align 8
  %pagefault_disabled.i.i.i.i.i146 = getelementptr inbounds %struct.task_struct, ptr %313, i32 0, i32 213
  %314 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %pagefault_disabled.i.i.i.i.i146, align 8
  %inc.i.i.i.i.i147 = add i32 %315, 1
  store i32 %inc.i.i.i.i.i147, ptr %pagefault_disabled.i.i.i.i.i146, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i.i148 = call ptr @__kmap_local_page_prot(ptr noundef %304, i32 noundef %or.i.i140) #9
  %316 = ptrtoint ptr %cp_bh.i10 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %cp_bh.i10, align 4
  %b_data.i.i149 = getelementptr inbounds %struct.buffer_head, ptr %317, i32 0, i32 5
  %318 = ptrtoint ptr %b_data.i.i149 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %b_data.i.i149, align 4
  %320 = ptrtoint ptr %i_private.i.i12 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %i_private.i.i12, align 4
  %mi_first_entry_offset.i.i182.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %321, i32 0, i32 3
  %322 = ptrtoint ptr %mi_first_entry_offset.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %mi_first_entry_offset.i.i182.i, align 4
  %conv.i.i183.i = zext i32 %323 to i64
  %sub.i.i185.i = add i64 %add.i.i.i15, %conv.i.i183.i
  %mi_entries_per_block.i.i.i186.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %321, i32 0, i32 4
  %324 = ptrtoint ptr %mi_entries_per_block.i.i.i186.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %mi_entries_per_block.i.i.i186.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i185.i)
  %cmp170.i.i280.i = icmp ult i64 %sub.i.i185.i, 4294967296
  br i1 %cmp170.i.i280.i, label %if.then174.i.i283.i, label %if.else180.i.i284.i, !prof !24

if.then174.i.i283.i:                              ; preds = %if.end4.i150
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i282.i = trunc i64 %sub.i.i185.i to i32
  %rem176.i.i.i168 = urem i32 %conv175.i.i282.i, %325
  br label %nilfs_cpfile_block_get_checkpoint.exit.i179

if.else180.i.i284.i:                              ; preds = %if.end4.i150
  call void @__sanitizer_cov_trace_pc() #11
  %326 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %325, i64 %sub.i.i185.i) #12, !srcloc !25
  %asmresult.i268.i.i.i169 = extractvalue { i64, i64 } %326, 0
  %shr.i.i.i.i170 = lshr i64 %asmresult.i268.i.i.i169, 32
  %conv.i.i.i.i171 = trunc i64 %shr.i.i.i.i170 to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit.i179

nilfs_cpfile_block_get_checkpoint.exit.i179:      ; preds = %if.else180.i.i284.i, %if.then174.i.i283.i
  %__rem.0.i.i.i172 = phi i32 [ %rem176.i.i.i168, %if.then174.i.i283.i ], [ %conv.i.i.i.i171, %if.else180.i.i284.i ]
  %327 = ptrtoint ptr %319 to i32
  %and.i.i173 = and i32 %327, 4095
  %add.ptr.i.i174 = getelementptr i8, ptr %call.i.i.i148, i32 %and.i.i173
  %mi_entry_size.i.i175 = getelementptr inbounds %struct.nilfs_mdt_info, ptr %321, i32 0, i32 2
  %328 = ptrtoint ptr %mi_entry_size.i.i175 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %mi_entry_size.i.i175, align 4
  %mul.i.i176 = mul i32 %329, %__rem.0.i.i.i172
  %add.ptr2.i.i177 = getelementptr i8, ptr %add.ptr.i.i174, i32 %mul.i.i176
  %330 = ptrtoint ptr %add.ptr2.i.i177 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %add.ptr2.i.i177, align 8
  %332 = and i32 %331, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %tobool.not.i178 = icmp eq i32 %332, 0
  br i1 %tobool.not.i178, label %if.end12.i188, label %if.then8.i186

if.then8.i186:                                    ; preds = %nilfs_cpfile_block_get_checkpoint.exit.i179
  call void @__sanitizer_cov_trace_pc() #11
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i148) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %333 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i180 = and i32 %333, -16384
  %334 = inttoptr i32 %and.i.i.i1.i.i180 to ptr
  %task.i.i.i.i181 = getelementptr inbounds %struct.thread_info, ptr %334, i32 0, i32 2
  %335 = ptrtoint ptr %task.i.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %task.i.i.i.i181, align 8
  %pagefault_disabled.i.i.i.i182 = getelementptr inbounds %struct.task_struct, ptr %336, i32 0, i32 213
  %337 = ptrtoint ptr %pagefault_disabled.i.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %pagefault_disabled.i.i.i.i182, align 8
  %dec.i.i.i.i183 = add i32 %338, -1
  store i32 %dec.i.i.i.i183, ptr %pagefault_disabled.i.i.i.i182, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %339 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i184 = and i32 %339, -16384
  %340 = inttoptr i32 %and.i.i.i.i.i184 to ptr
  %preempt_count.i.i.i.i185 = getelementptr inbounds %struct.thread_info, ptr %340, i32 0, i32 1
  %341 = ptrtoint ptr %preempt_count.i.i.i.i185 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load volatile i32, ptr %preempt_count.i.i.i.i185, align 4
  %sub.i.i285.i = add i32 %342, -1
  store volatile i32 %sub.i.i285.i, ptr %preempt_count.i.i.i.i185, align 4
  br label %out_cp.i211

if.end12.i188:                                    ; preds = %nilfs_cpfile_block_get_checkpoint.exit.i179
  %343 = and i32 %331, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %tobool14.not.i187 = icmp eq i32 %343, 0
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i148) #9
  call void asm sideeffect "", "~{memory}"() #9
  %344 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i294.i = and i32 %344, -16384
  %345 = inttoptr i32 %and.i.i.i1.i294.i to ptr
  %task.i.i.i295.i = getelementptr inbounds %struct.thread_info, ptr %345, i32 0, i32 2
  %346 = ptrtoint ptr %task.i.i.i295.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %task.i.i.i295.i, align 8
  %pagefault_disabled.i.i.i296.i = getelementptr inbounds %struct.task_struct, ptr %347, i32 0, i32 213
  %348 = ptrtoint ptr %pagefault_disabled.i.i.i296.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %pagefault_disabled.i.i.i296.i, align 8
  %dec.i.i.i297.i = add i32 %349, -1
  store i32 %dec.i.i.i297.i, ptr %pagefault_disabled.i.i.i296.i, align 8
  call void asm sideeffect "", "~{memory}"() #9
  %350 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i298.i = and i32 %350, -16384
  %351 = inttoptr i32 %and.i.i.i.i298.i to ptr
  %preempt_count.i.i.i299.i = getelementptr inbounds %struct.thread_info, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %preempt_count.i.i.i299.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load volatile i32, ptr %preempt_count.i.i.i299.i, align 4
  %sub.i.i300.i = add i32 %353, -1
  store volatile i32 %sub.i.i300.i, ptr %preempt_count.i.i.i299.i, align 4
  br i1 %tobool14.not.i187, label %do.end26.i, label %if.end12.i188.out_cp.i211_crit_edge

if.end12.i188.out_cp.i211_crit_edge:              ; preds = %if.end12.i188
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_cp.i211

do.end26.i:                                       ; preds = %if.end12.i188
  %call.i.i189 = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %header_bh.i8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i189)
  %cmp30.i190 = icmp slt i32 %call.i.i189, 0
  br i1 %cmp30.i190, label %do.end26.i.out_cp.i211_crit_edge, label %if.end32.i194

do.end26.i.out_cp.i211_crit_edge:                 ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_cp.i211

if.end32.i194:                                    ; preds = %do.end26.i
  %354 = ptrtoint ptr %header_bh.i8 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %header_bh.i8, align 4
  %b_page33.i = getelementptr inbounds %struct.buffer_head, ptr %355, i32 0, i32 2
  %356 = ptrtoint ptr %b_page33.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %b_page33.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %358 = load i32, ptr @pgprot_kernel, align 4
  %or.i301.i = or i32 %358, 512
  %359 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i302.i = and i32 %359, -16384
  %360 = inttoptr i32 %and.i.i.i.i.i302.i to ptr
  %preempt_count.i.i.i.i303.i = getelementptr inbounds %struct.thread_info, ptr %360, i32 0, i32 1
  %361 = ptrtoint ptr %preempt_count.i.i.i.i303.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load volatile i32, ptr %preempt_count.i.i.i.i303.i, align 4
  %add.i.i.i304.i = add i32 %362, 1
  store volatile i32 %add.i.i.i304.i, ptr %preempt_count.i.i.i.i303.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %363 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i305.i = and i32 %363, -16384
  %364 = inttoptr i32 %and.i.i.i1.i.i305.i to ptr
  %task.i.i.i.i306.i = getelementptr inbounds %struct.thread_info, ptr %364, i32 0, i32 2
  %365 = ptrtoint ptr %task.i.i.i.i306.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %task.i.i.i.i306.i, align 8
  %pagefault_disabled.i.i.i.i307.i = getelementptr inbounds %struct.task_struct, ptr %366, i32 0, i32 213
  %367 = ptrtoint ptr %pagefault_disabled.i.i.i.i307.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %pagefault_disabled.i.i.i.i307.i, align 8
  %inc.i.i.i.i308.i = add i32 %368, 1
  store i32 %inc.i.i.i.i308.i, ptr %pagefault_disabled.i.i.i.i307.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i309.i = call ptr @__kmap_local_page_prot(ptr noundef %357, i32 noundef %or.i301.i) #9
  %369 = ptrtoint ptr %header_bh.i8 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %header_bh.i8, align 4
  %b_data.i310.i = getelementptr inbounds %struct.buffer_head, ptr %370, i32 0, i32 5
  %371 = ptrtoint ptr %b_data.i310.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %b_data.i310.i, align 4
  %373 = ptrtoint ptr %372 to i32
  %and.i311.i = and i32 %373, 4095
  %add.ptr.i312.i = getelementptr i8, ptr %call.i.i309.i, i32 %and.i311.i
  %374 = ptrtoint ptr %curr_bh.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %370, ptr %curr_bh.i, align 4
  %b_count.i.i191 = getelementptr inbounds %struct.buffer_head, ptr %370, i32 0, i32 11
  %call.i.i.i.i192 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i191, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i.i191, i32 1, i32 3, i32 1) #9
  %375 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i191, ptr %b_count.i.i191, i32 1, ptr elementtype(i32) %b_count.i.i191) #9, !srcloc !32
  %ssl_prev.i193 = getelementptr inbounds %struct.nilfs_cpfile_header, ptr %add.ptr.i312.i, i32 0, i32 2, i32 1
  %376 = ptrtoint ptr %ssl_prev.i193 to i32
  call void @__asan_load8_noabort(i32 %376)
  %377 = load i64, ptr %ssl_prev.i193, align 8
  %378 = call i64 @llvm.bswap.i64(i64 %377) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %378, i64 %cno)
  %cmp36755.i = icmp ugt i64 %378, %cno
  br i1 %cmp36755.i, label %if.end32.i194.while.body.i_crit_edge, label %if.end32.i194.do.end58.i_crit_edge

if.end32.i194.do.end58.i_crit_edge:               ; preds = %if.end32.i194
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58.i

if.end32.i194.while.body.i_crit_edge:             ; preds = %if.end32.i194
  br label %while.body.i

while.body.i:                                     ; preds = %nilfs_cpfile_block_get_checkpoint.exit588.i.while.body.i_crit_edge, %if.end32.i194.while.body.i_crit_edge
  %ret.0759.i = phi i32 [ %ret.1.i199, %nilfs_cpfile_block_get_checkpoint.exit588.i.while.body.i_crit_edge ], [ %call.i.i189, %if.end32.i194.while.body.i_crit_edge ]
  %kaddr.0758.i = phi ptr [ %kaddr.1.i, %nilfs_cpfile_block_get_checkpoint.exit588.i.while.body.i_crit_edge ], [ %call.i.i309.i, %if.end32.i194.while.body.i_crit_edge ]
  %curr_blkoff.0757.i = phi i32 [ %tcno.0.off0.i.i, %nilfs_cpfile_block_get_checkpoint.exit588.i.while.body.i_crit_edge ], [ 0, %if.end32.i194.while.body.i_crit_edge ]
  %prev.0756.i = phi i64 [ %436, %nilfs_cpfile_block_get_checkpoint.exit588.i.while.body.i_crit_edge ], [ %378, %if.end32.i194.while.body.i_crit_edge ]
  %379 = ptrtoint ptr %i_private.i.i12 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %i_private.i.i12, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %380, i32 0, i32 3
  %381 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %382 to i64
  %add.i.i195 = add i64 %prev.0756.i, -1
  %sub.i.i = add i64 %add.i.i195, %conv.i.i
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %380, i32 0, i32 4
  %383 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp170.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp170.i.i, label %if.then174.i.i, label %if.else180.i.i, !prof !24

if.then174.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i = trunc i64 %sub.i.i to i32
  %div178.i.i = udiv i32 %conv175.i.i, %384
  br label %nilfs_cpfile_get_blkoff.exit.i

if.else180.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %385 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %384, i64 %sub.i.i) #12, !srcloc !25
  %asmresult1.i.i.i = extractvalue { i64, i64 } %385, 1
  %extract.t293.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %nilfs_cpfile_get_blkoff.exit.i

nilfs_cpfile_get_blkoff.exit.i:                   ; preds = %if.else180.i.i, %if.then174.i.i
  %tcno.0.off0.i.i = phi i32 [ %div178.i.i, %if.then174.i.i ], [ %extract.t293.i.i, %if.else180.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_blkoff.0757.i, i32 %tcno.0.off0.i.i)
  %cmp38.not.i = icmp eq i32 %curr_blkoff.0757.i, %tcno.0.off0.i.i
  br i1 %cmp38.not.i, label %nilfs_cpfile_get_blkoff.exit.i.if.end52.i_crit_edge, label %do.end43.i

nilfs_cpfile_get_blkoff.exit.i.if.end52.i_crit_edge: ; preds = %nilfs_cpfile_get_blkoff.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

do.end43.i:                                       ; preds = %nilfs_cpfile_get_blkoff.exit.i
  call void @kunmap_local_indexed(ptr noundef %kaddr.0758.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %386 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i314.i = and i32 %386, -16384
  %387 = inttoptr i32 %and.i.i.i1.i314.i to ptr
  %task.i.i.i315.i = getelementptr inbounds %struct.thread_info, ptr %387, i32 0, i32 2
  %388 = ptrtoint ptr %task.i.i.i315.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %task.i.i.i315.i, align 8
  %pagefault_disabled.i.i.i316.i = getelementptr inbounds %struct.task_struct, ptr %389, i32 0, i32 213
  %390 = ptrtoint ptr %pagefault_disabled.i.i.i316.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %pagefault_disabled.i.i.i316.i, align 8
  %dec.i.i.i317.i = add i32 %391, -1
  store i32 %dec.i.i.i317.i, ptr %pagefault_disabled.i.i.i316.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %392 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i318.i = and i32 %392, -16384
  %393 = inttoptr i32 %and.i.i.i.i318.i to ptr
  %preempt_count.i.i.i319.i = getelementptr inbounds %struct.thread_info, ptr %393, i32 0, i32 1
  %394 = ptrtoint ptr %preempt_count.i.i.i319.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load volatile i32, ptr %preempt_count.i.i.i319.i, align 4
  %sub.i.i320.i = add i32 %395, -1
  store volatile i32 %sub.i.i320.i, ptr %preempt_count.i.i.i319.i, align 4
  %396 = ptrtoint ptr %curr_bh.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %curr_bh.i, align 4
  %tobool.not.i321.i = icmp eq ptr %397, null
  br i1 %tobool.not.i321.i, label %do.end43.i.brelse.exit.i_crit_edge, label %if.then.i.i198

do.end43.i.brelse.exit.i_crit_edge:               ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i.i198:                                   ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %397) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i198, %do.end43.i.brelse.exit.i_crit_edge
  %398 = ptrtoint ptr %i_private.i.i12 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %i_private.i.i12, align 4
  %mi_first_entry_offset.i.i323.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %399, i32 0, i32 3
  %400 = ptrtoint ptr %mi_first_entry_offset.i.i323.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %mi_first_entry_offset.i.i323.i, align 4
  %conv.i.i324.i = zext i32 %401 to i64
  %sub.i.i326.i = add i64 %add.i.i195, %conv.i.i324.i
  %mi_entries_per_block.i.i.i327.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %399, i32 0, i32 4
  %402 = ptrtoint ptr %mi_entries_per_block.i.i.i327.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %mi_entries_per_block.i.i.i327.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i326.i)
  %cmp170.i.i436.i = icmp ult i64 %sub.i.i326.i, 4294967296
  br i1 %cmp170.i.i436.i, label %if.then174.i.i440.i, label %if.else180.i.i443.i, !prof !24

if.then174.i.i440.i:                              ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i438.i = trunc i64 %sub.i.i326.i to i32
  %div178.i.i439.i = udiv i32 %conv175.i.i438.i, %403
  br label %nilfs_cpfile_get_checkpoint_block.exit446.i

if.else180.i.i443.i:                              ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %404 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %403, i64 %sub.i.i326.i) #12, !srcloc !25
  %asmresult1.i.i.i441.i = extractvalue { i64, i64 } %404, 1
  %extract.t293.i.i442.i = trunc i64 %asmresult1.i.i.i441.i to i32
  br label %nilfs_cpfile_get_checkpoint_block.exit446.i

nilfs_cpfile_get_checkpoint_block.exit446.i:      ; preds = %if.else180.i.i443.i, %if.then174.i.i440.i
  %tcno.0.off0.i.i444.i = phi i32 [ %div178.i.i439.i, %if.then174.i.i440.i ], [ %extract.t293.i.i442.i, %if.else180.i.i443.i ]
  %call1.i445.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef %tcno.0.off0.i.i444.i, i32 noundef 0, ptr noundef nonnull @nilfs_cpfile_block_init, ptr noundef nonnull %curr_bh.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i445.i)
  %cmp47.i = icmp slt i32 %call1.i445.i, 0
  br i1 %cmp47.i, label %nilfs_cpfile_get_checkpoint_block.exit446.i.out_header.i209_crit_edge, label %if.end49.i

nilfs_cpfile_get_checkpoint_block.exit446.i.out_header.i209_crit_edge: ; preds = %nilfs_cpfile_get_checkpoint_block.exit446.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_header.i209

if.end49.i:                                       ; preds = %nilfs_cpfile_get_checkpoint_block.exit446.i
  call void @__sanitizer_cov_trace_pc() #11
  %405 = ptrtoint ptr %curr_bh.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %curr_bh.i, align 4
  %b_page50.i = getelementptr inbounds %struct.buffer_head, ptr %406, i32 0, i32 2
  %407 = ptrtoint ptr %b_page50.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %b_page50.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %409 = load i32, ptr @pgprot_kernel, align 4
  %or.i447.i = or i32 %409, 512
  %410 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i448.i = and i32 %410, -16384
  %411 = inttoptr i32 %and.i.i.i.i.i448.i to ptr
  %preempt_count.i.i.i.i449.i = getelementptr inbounds %struct.thread_info, ptr %411, i32 0, i32 1
  %412 = ptrtoint ptr %preempt_count.i.i.i.i449.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load volatile i32, ptr %preempt_count.i.i.i.i449.i, align 4
  %add.i.i.i450.i = add i32 %413, 1
  store volatile i32 %add.i.i.i450.i, ptr %preempt_count.i.i.i.i449.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %414 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i451.i = and i32 %414, -16384
  %415 = inttoptr i32 %and.i.i.i1.i.i451.i to ptr
  %task.i.i.i.i452.i = getelementptr inbounds %struct.thread_info, ptr %415, i32 0, i32 2
  %416 = ptrtoint ptr %task.i.i.i.i452.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %task.i.i.i.i452.i, align 8
  %pagefault_disabled.i.i.i.i453.i = getelementptr inbounds %struct.task_struct, ptr %417, i32 0, i32 213
  %418 = ptrtoint ptr %pagefault_disabled.i.i.i.i453.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %pagefault_disabled.i.i.i.i453.i, align 8
  %inc.i.i.i.i454.i = add i32 %419, 1
  store i32 %inc.i.i.i.i454.i, ptr %pagefault_disabled.i.i.i.i453.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i455.i = call ptr @__kmap_local_page_prot(ptr noundef %408, i32 noundef %or.i447.i) #9
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end49.i, %nilfs_cpfile_get_blkoff.exit.i.if.end52.i_crit_edge
  %kaddr.1.i = phi ptr [ %call.i.i455.i, %if.end49.i ], [ %kaddr.0758.i, %nilfs_cpfile_get_blkoff.exit.i.if.end52.i_crit_edge ]
  %ret.1.i199 = phi i32 [ %call1.i445.i, %if.end49.i ], [ %ret.0759.i, %nilfs_cpfile_get_blkoff.exit.i.if.end52.i_crit_edge ]
  %420 = ptrtoint ptr %curr_bh.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %curr_bh.i, align 4
  %b_data.i456.i = getelementptr inbounds %struct.buffer_head, ptr %421, i32 0, i32 5
  %422 = ptrtoint ptr %b_data.i456.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %b_data.i456.i, align 4
  %424 = ptrtoint ptr %i_private.i.i12 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %i_private.i.i12, align 4
  %mi_first_entry_offset.i.i458.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %425, i32 0, i32 3
  %426 = ptrtoint ptr %mi_first_entry_offset.i.i458.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %mi_first_entry_offset.i.i458.i, align 4
  %conv.i.i459.i = zext i32 %427 to i64
  %sub.i.i461.i = add i64 %add.i.i195, %conv.i.i459.i
  %mi_entries_per_block.i.i.i462.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %425, i32 0, i32 4
  %428 = ptrtoint ptr %mi_entries_per_block.i.i.i462.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %mi_entries_per_block.i.i.i462.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i461.i)
  %cmp170.i.i573.i = icmp ult i64 %sub.i.i461.i, 4294967296
  br i1 %cmp170.i.i573.i, label %if.then174.i.i577.i, label %if.else180.i.i581.i, !prof !24

if.then174.i.i577.i:                              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i575.i = trunc i64 %sub.i.i461.i to i32
  %rem176.i.i576.i = urem i32 %conv175.i.i575.i, %429
  br label %nilfs_cpfile_block_get_checkpoint.exit588.i

if.else180.i.i581.i:                              ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %430 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %429, i64 %sub.i.i461.i) #12, !srcloc !25
  %asmresult.i268.i.i578.i = extractvalue { i64, i64 } %430, 0
  %shr.i.i.i579.i = lshr i64 %asmresult.i268.i.i578.i, 32
  %conv.i.i.i580.i = trunc i64 %shr.i.i.i579.i to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit588.i

nilfs_cpfile_block_get_checkpoint.exit588.i:      ; preds = %if.else180.i.i581.i, %if.then174.i.i577.i
  %__rem.0.i.i582.i = phi i32 [ %rem176.i.i576.i, %if.then174.i.i577.i ], [ %conv.i.i.i580.i, %if.else180.i.i581.i ]
  %431 = ptrtoint ptr %423 to i32
  %and.i583.i = and i32 %431, 4095
  %add.ptr.i584.i = getelementptr i8, ptr %kaddr.1.i, i32 %and.i583.i
  %mi_entry_size.i585.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %425, i32 0, i32 2
  %432 = ptrtoint ptr %mi_entry_size.i585.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %mi_entry_size.i585.i, align 4
  %mul.i586.i = mul i32 %433, %__rem.0.i.i582.i
  %add.ptr2.i587.i = getelementptr i8, ptr %add.ptr.i584.i, i32 %mul.i586.i
  %ssl_prev54.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i587.i, i32 0, i32 2, i32 1
  %434 = ptrtoint ptr %ssl_prev54.i to i32
  call void @__asan_load8_noabort(i32 %434)
  %435 = load i64, ptr %ssl_prev54.i, align 8
  %436 = call i64 @llvm.bswap.i64(i64 %435) #9
  %cmp36.i200 = icmp ugt i64 %436, %cno
  br i1 %cmp36.i200, label %nilfs_cpfile_block_get_checkpoint.exit588.i.while.body.i_crit_edge, label %nilfs_cpfile_block_get_checkpoint.exit588.i.do.end58.i_crit_edge

nilfs_cpfile_block_get_checkpoint.exit588.i.do.end58.i_crit_edge: ; preds = %nilfs_cpfile_block_get_checkpoint.exit588.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58.i

nilfs_cpfile_block_get_checkpoint.exit588.i.while.body.i_crit_edge: ; preds = %nilfs_cpfile_block_get_checkpoint.exit588.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end58.i:                                       ; preds = %nilfs_cpfile_block_get_checkpoint.exit588.i.do.end58.i_crit_edge, %if.end32.i194.do.end58.i_crit_edge
  %curr.0.lcssa.i = phi i64 [ 0, %if.end32.i194.do.end58.i_crit_edge ], [ %prev.0756.i, %nilfs_cpfile_block_get_checkpoint.exit588.i.do.end58.i_crit_edge ]
  %prev.0.lcssa.i = phi i64 [ %378, %if.end32.i194.do.end58.i_crit_edge ], [ %436, %nilfs_cpfile_block_get_checkpoint.exit588.i.do.end58.i_crit_edge ]
  %kaddr.0.lcssa.i = phi ptr [ %call.i.i309.i, %if.end32.i194.do.end58.i_crit_edge ], [ %kaddr.1.i, %nilfs_cpfile_block_get_checkpoint.exit588.i.do.end58.i_crit_edge ]
  %ret.0.lcssa.i = phi i32 [ %call.i.i189, %if.end32.i194.do.end58.i_crit_edge ], [ %ret.1.i199, %nilfs_cpfile_block_get_checkpoint.exit588.i.do.end58.i_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %kaddr.0.lcssa.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %437 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i589.i = and i32 %437, -16384
  %438 = inttoptr i32 %and.i.i.i1.i589.i to ptr
  %task.i.i.i590.i = getelementptr inbounds %struct.thread_info, ptr %438, i32 0, i32 2
  %439 = ptrtoint ptr %task.i.i.i590.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %task.i.i.i590.i, align 8
  %pagefault_disabled.i.i.i591.i = getelementptr inbounds %struct.task_struct, ptr %440, i32 0, i32 213
  %441 = ptrtoint ptr %pagefault_disabled.i.i.i591.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %pagefault_disabled.i.i.i591.i, align 8
  %dec.i.i.i592.i = add i32 %442, -1
  store i32 %dec.i.i.i592.i, ptr %pagefault_disabled.i.i.i591.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %443 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i593.i = and i32 %443, -16384
  %444 = inttoptr i32 %and.i.i.i.i593.i to ptr
  %preempt_count.i.i.i594.i = getelementptr inbounds %struct.thread_info, ptr %444, i32 0, i32 1
  %445 = ptrtoint ptr %preempt_count.i.i.i594.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load volatile i32, ptr %preempt_count.i.i.i594.i, align 4
  %sub.i.i595.i = add i32 %446, -1
  store volatile i32 %sub.i.i595.i, ptr %preempt_count.i.i.i594.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %prev.0.lcssa.i)
  %cmp61.not.i = icmp eq i64 %prev.0.lcssa.i, 0
  br i1 %cmp61.not.i, label %if.else.i201, label %if.then62.i

if.then62.i:                                      ; preds = %do.end58.i
  %call63.i = call fastcc i32 @nilfs_cpfile_get_checkpoint_block(ptr noundef %cpfile, i64 noundef %prev.0.lcssa.i, i32 noundef 0, ptr noundef nonnull %prev_bh.i9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %cmp64.i = icmp slt i32 %call63.i, 0
  br i1 %cmp64.i, label %if.then62.i.out_curr.i_crit_edge, label %if.then62.i.if.end67.i_crit_edge

if.then62.i.if.end67.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i

if.then62.i.out_curr.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_curr.i

if.else.i201:                                     ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %447 = ptrtoint ptr %header_bh.i8 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %header_bh.i8, align 4
  %449 = ptrtoint ptr %prev_bh.i9 to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %448, ptr %prev_bh.i9, align 4
  %b_count.i596.i = getelementptr inbounds %struct.buffer_head, ptr %448, i32 0, i32 11
  %call.i.i.i597.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i596.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i596.i, i32 1, i32 3, i32 1) #9
  %450 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i596.i, ptr %b_count.i596.i, i32 1, ptr elementtype(i32) %b_count.i596.i) #9, !srcloc !32
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else.i201, %if.then62.i.if.end67.i_crit_edge
  %ret.2.i202 = phi i32 [ %call63.i, %if.then62.i.if.end67.i_crit_edge ], [ %ret.0.lcssa.i, %if.else.i201 ]
  %451 = ptrtoint ptr %curr_bh.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %curr_bh.i, align 4
  %b_page68.i203 = getelementptr inbounds %struct.buffer_head, ptr %452, i32 0, i32 2
  %453 = ptrtoint ptr %b_page68.i203 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %b_page68.i203, align 8
  %call69.i = call fastcc ptr @kmap_atomic(ptr noundef %454) #9
  %455 = ptrtoint ptr %curr_bh.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %curr_bh.i, align 4
  %call70.i = call fastcc ptr @nilfs_cpfile_block_get_snapshot_list(ptr noundef %cpfile, i64 noundef %curr.0.lcssa.i, ptr noundef %456, ptr noundef %call69.i) #9
  %457 = call i64 @llvm.bswap.i64(i64 %cno) #9
  %ssl_prev71.i = getelementptr inbounds %struct.nilfs_snapshot_list, ptr %call70.i, i32 0, i32 1
  %458 = ptrtoint ptr %ssl_prev71.i to i32
  call void @__asan_store8_noabort(i32 %458)
  store i64 %457, ptr %ssl_prev71.i, align 8
  call fastcc void @__kunmap_atomic(ptr noundef %call69.i) #9
  %459 = ptrtoint ptr %cp_bh.i10 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %cp_bh.i10, align 4
  %b_page78.i = getelementptr inbounds %struct.buffer_head, ptr %460, i32 0, i32 2
  %461 = ptrtoint ptr %b_page78.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %b_page78.i, align 8
  %call79.i = call fastcc ptr @kmap_atomic(ptr noundef %462) #9
  %463 = ptrtoint ptr %cp_bh.i10 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cp_bh.i10, align 4
  %b_data.i598.i = getelementptr inbounds %struct.buffer_head, ptr %464, i32 0, i32 5
  %465 = ptrtoint ptr %b_data.i598.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %b_data.i598.i, align 4
  %467 = ptrtoint ptr %i_private.i.i12 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %i_private.i.i12, align 4
  %mi_first_entry_offset.i.i600.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %468, i32 0, i32 3
  %469 = ptrtoint ptr %mi_first_entry_offset.i.i600.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %mi_first_entry_offset.i.i600.i, align 4
  %conv.i.i601.i = zext i32 %470 to i64
  %sub.i.i603.i = add i64 %add.i.i.i15, %conv.i.i601.i
  %mi_entries_per_block.i.i.i604.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %468, i32 0, i32 4
  %471 = ptrtoint ptr %mi_entries_per_block.i.i.i604.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %mi_entries_per_block.i.i.i604.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i603.i)
  %cmp170.i.i715.i = icmp ult i64 %sub.i.i603.i, 4294967296
  br i1 %cmp170.i.i715.i, label %if.then174.i.i719.i, label %if.else180.i.i723.i, !prof !24

if.then174.i.i719.i:                              ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i717.i = trunc i64 %sub.i.i603.i to i32
  %rem176.i.i718.i = urem i32 %conv175.i.i717.i, %472
  br label %nilfs_cpfile_block_get_checkpoint.exit730.i

if.else180.i.i723.i:                              ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  %473 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %472, i64 %sub.i.i603.i) #12, !srcloc !25
  %asmresult.i268.i.i720.i = extractvalue { i64, i64 } %473, 0
  %shr.i.i.i721.i = lshr i64 %asmresult.i268.i.i720.i, 32
  %conv.i.i.i722.i = trunc i64 %shr.i.i.i721.i to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit730.i

nilfs_cpfile_block_get_checkpoint.exit730.i:      ; preds = %if.else180.i.i723.i, %if.then174.i.i719.i
  %__rem.0.i.i724.i = phi i32 [ %rem176.i.i718.i, %if.then174.i.i719.i ], [ %conv.i.i.i722.i, %if.else180.i.i723.i ]
  %474 = ptrtoint ptr %466 to i32
  %and.i725.i = and i32 %474, 4095
  %add.ptr.i726.i = getelementptr i8, ptr %call79.i, i32 %and.i725.i
  %mi_entry_size.i727.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %468, i32 0, i32 2
  %475 = ptrtoint ptr %mi_entry_size.i727.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %mi_entry_size.i727.i, align 4
  %mul.i728.i = mul i32 %476, %__rem.0.i.i724.i
  %add.ptr2.i729.i = getelementptr i8, ptr %add.ptr.i726.i, i32 %mul.i728.i
  %477 = call i64 @llvm.bswap.i64(i64 %curr.0.lcssa.i) #9
  %cp_snapshot_list81.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i729.i, i32 0, i32 2
  %478 = ptrtoint ptr %cp_snapshot_list81.i to i32
  call void @__asan_store8_noabort(i32 %478)
  store i64 %477, ptr %cp_snapshot_list81.i, align 8
  %479 = call i64 @llvm.bswap.i64(i64 %prev.0.lcssa.i) #9
  %ssl_prev83.i = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i729.i, i32 0, i32 2, i32 1
  %480 = ptrtoint ptr %ssl_prev83.i to i32
  call void @__asan_store8_noabort(i32 %480)
  store i64 %479, ptr %ssl_prev83.i, align 8
  %481 = ptrtoint ptr %add.ptr2.i729.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %add.ptr2.i729.i, align 8
  %483 = or i32 %482, 16777216
  store i32 %483, ptr %add.ptr2.i729.i, align 8
  call fastcc void @__kunmap_atomic(ptr noundef %call79.i) #9
  %484 = ptrtoint ptr %prev_bh.i9 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %prev_bh.i9, align 4
  %b_page90.i = getelementptr inbounds %struct.buffer_head, ptr %485, i32 0, i32 2
  %486 = ptrtoint ptr %b_page90.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %b_page90.i, align 8
  %call91.i = call fastcc ptr @kmap_atomic(ptr noundef %487) #9
  %488 = ptrtoint ptr %prev_bh.i9 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %prev_bh.i9, align 4
  %call92.i = call fastcc ptr @nilfs_cpfile_block_get_snapshot_list(ptr noundef %cpfile, i64 noundef %prev.0.lcssa.i, ptr noundef %489, ptr noundef %call91.i) #9
  %490 = ptrtoint ptr %call92.i to i32
  call void @__asan_store8_noabort(i32 %490)
  store i64 %457, ptr %call92.i, align 8
  call fastcc void @__kunmap_atomic(ptr noundef %call91.i) #9
  %491 = ptrtoint ptr %header_bh.i8 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %header_bh.i8, align 4
  %b_page100.i = getelementptr inbounds %struct.buffer_head, ptr %492, i32 0, i32 2
  %493 = ptrtoint ptr %b_page100.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %b_page100.i, align 8
  %call101.i = call fastcc ptr @kmap_atomic(ptr noundef %494) #9
  %495 = ptrtoint ptr %header_bh.i8 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %header_bh.i8, align 4
  %b_data.i731.i = getelementptr inbounds %struct.buffer_head, ptr %496, i32 0, i32 5
  %497 = ptrtoint ptr %b_data.i731.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %b_data.i731.i, align 4
  %499 = ptrtoint ptr %498 to i32
  %and.i732.i = and i32 %499, 4095
  %add.ptr.i733.i = getelementptr i8, ptr %call101.i, i32 %and.i732.i
  %ch_nsnapshots.i204 = getelementptr inbounds %struct.nilfs_cpfile_header, ptr %add.ptr.i733.i, i32 0, i32 1
  %500 = ptrtoint ptr %ch_nsnapshots.i204 to i32
  call void @__asan_load8_noabort(i32 %500)
  %501 = load i64, ptr %ch_nsnapshots.i204, align 8
  %502 = call i64 @llvm.bswap.i64(i64 %501) #9
  %add.i734.i = add i64 %502, 1
  %503 = call i64 @llvm.bswap.i64(i64 %add.i734.i) #9
  %504 = ptrtoint ptr %ch_nsnapshots.i204 to i32
  call void @__asan_store8_noabort(i32 %504)
  store i64 %503, ptr %ch_nsnapshots.i204, align 8
  call fastcc void @__kunmap_atomic(ptr noundef %call101.i) #9
  %505 = ptrtoint ptr %prev_bh.i9 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %prev_bh.i9, align 4
  call void @mark_buffer_dirty(ptr noundef %506) #9
  %507 = ptrtoint ptr %curr_bh.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %curr_bh.i, align 4
  call void @mark_buffer_dirty(ptr noundef %508) #9
  %509 = ptrtoint ptr %cp_bh.i10 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %cp_bh.i10, align 4
  call void @mark_buffer_dirty(ptr noundef %510) #9
  %511 = ptrtoint ptr %header_bh.i8 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %header_bh.i8, align 4
  call void @mark_buffer_dirty(ptr noundef %512) #9
  %i_state.i.i205 = getelementptr i8, ptr %cpfile, i32 -588
  %513 = ptrtoint ptr %i_state.i.i205 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load volatile i32, ptr %i_state.i.i205, align 4
  %515 = and i32 %514, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %515)
  %tobool.not.i735.i = icmp eq i32 %515, 0
  br i1 %tobool.not.i735.i, label %if.then.i736.i, label %nilfs_cpfile_block_get_checkpoint.exit730.i.nilfs_mdt_mark_dirty.exit.i206_crit_edge

nilfs_cpfile_block_get_checkpoint.exit730.i.nilfs_mdt_mark_dirty.exit.i206_crit_edge: ; preds = %nilfs_cpfile_block_get_checkpoint.exit730.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_mdt_mark_dirty.exit.i206

if.then.i736.i:                                   ; preds = %nilfs_cpfile_block_get_checkpoint.exit730.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i205) #9
  br label %nilfs_mdt_mark_dirty.exit.i206

nilfs_mdt_mark_dirty.exit.i206:                   ; preds = %if.then.i736.i, %nilfs_cpfile_block_get_checkpoint.exit730.i.nilfs_mdt_mark_dirty.exit.i206_crit_edge
  %516 = ptrtoint ptr %prev_bh.i9 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %prev_bh.i9, align 4
  %tobool.not.i737.i = icmp eq ptr %517, null
  br i1 %tobool.not.i737.i, label %nilfs_mdt_mark_dirty.exit.i206.out_curr.i_crit_edge, label %if.then.i738.i

nilfs_mdt_mark_dirty.exit.i206.out_curr.i_crit_edge: ; preds = %nilfs_mdt_mark_dirty.exit.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_curr.i

if.then.i738.i:                                   ; preds = %nilfs_mdt_mark_dirty.exit.i206
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %517) #9
  br label %out_curr.i

out_curr.i:                                       ; preds = %if.then.i738.i, %nilfs_mdt_mark_dirty.exit.i206.out_curr.i_crit_edge, %if.then62.i.out_curr.i_crit_edge
  %ret.3.i207 = phi i32 [ %call63.i, %if.then62.i.out_curr.i_crit_edge ], [ %ret.2.i202, %nilfs_mdt_mark_dirty.exit.i206.out_curr.i_crit_edge ], [ %ret.2.i202, %if.then.i738.i ]
  %518 = ptrtoint ptr %curr_bh.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %curr_bh.i, align 4
  %tobool.not.i740.i = icmp eq ptr %519, null
  br i1 %tobool.not.i740.i, label %out_curr.i.out_header.i209_crit_edge, label %if.then.i741.i

out_curr.i.out_header.i209_crit_edge:             ; preds = %out_curr.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_header.i209

if.then.i741.i:                                   ; preds = %out_curr.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %519) #9
  br label %out_header.i209

out_header.i209:                                  ; preds = %if.then.i741.i, %out_curr.i.out_header.i209_crit_edge, %nilfs_cpfile_get_checkpoint_block.exit446.i.out_header.i209_crit_edge
  %ret.4.i208 = phi i32 [ %ret.3.i207, %out_curr.i.out_header.i209_crit_edge ], [ %ret.3.i207, %if.then.i741.i ], [ %call1.i445.i, %nilfs_cpfile_get_checkpoint_block.exit446.i.out_header.i209_crit_edge ]
  %520 = ptrtoint ptr %header_bh.i8 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %header_bh.i8, align 4
  %tobool.not.i743.i = icmp eq ptr %521, null
  br i1 %tobool.not.i743.i, label %out_header.i209.out_cp.i211_crit_edge, label %if.then.i744.i

out_header.i209.out_cp.i211_crit_edge:            ; preds = %out_header.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_cp.i211

if.then.i744.i:                                   ; preds = %out_header.i209
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %521) #9
  br label %out_cp.i211

out_cp.i211:                                      ; preds = %if.then.i744.i, %out_header.i209.out_cp.i211_crit_edge, %do.end26.i.out_cp.i211_crit_edge, %if.end12.i188.out_cp.i211_crit_edge, %if.then8.i186
  %ret.5.i210 = phi i32 [ -2, %if.then8.i186 ], [ %call.i.i189, %do.end26.i.out_cp.i211_crit_edge ], [ %ret.4.i208, %out_header.i209.out_cp.i211_crit_edge ], [ %ret.4.i208, %if.then.i744.i ], [ 0, %if.end12.i188.out_cp.i211_crit_edge ]
  %522 = ptrtoint ptr %cp_bh.i10 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %cp_bh.i10, align 4
  %tobool.not.i746.i = icmp eq ptr %523, null
  br i1 %tobool.not.i746.i, label %out_cp.i211.out_sem.i212_crit_edge, label %if.then.i747.i

out_cp.i211.out_sem.i212_crit_edge:               ; preds = %out_cp.i211
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sem.i212

if.then.i747.i:                                   ; preds = %out_cp.i211
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %523) #9
  br label %out_sem.i212

out_sem.i212:                                     ; preds = %if.then.i747.i, %out_cp.i211.out_sem.i212_crit_edge, %nilfs_cpfile_get_checkpoint_block.exit.i138.out_sem.i212_crit_edge
  %ret.6.i = phi i32 [ %call1.i.i136, %nilfs_cpfile_get_checkpoint_block.exit.i138.out_sem.i212_crit_edge ], [ %ret.5.i210, %out_cp.i211.out_sem.i212_crit_edge ], [ %ret.5.i210, %if.then.i747.i ]
  %524 = ptrtoint ptr %i_private.i.i12 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %i_private.i.i12, align 4
  call void @up_write(ptr noundef %525) #9
  br label %nilfs_cpfile_set_snapshot.exit

nilfs_cpfile_set_snapshot.exit:                   ; preds = %out_sem.i212, %sw.bb2.nilfs_cpfile_set_snapshot.exit_crit_edge
  %retval.0.i213 = phi i32 [ %ret.6.i, %out_sem.i212 ], [ -2, %sw.bb2.nilfs_cpfile_set_snapshot.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp_bh.i10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_bh.i9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_bh.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header_bh.i8) #9
  br label %cleanup

cleanup:                                          ; preds = %nilfs_cpfile_set_snapshot.exit, %nilfs_cpfile_clear_snapshot.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i213, %nilfs_cpfile_set_snapshot.exit ], [ %retval.0.i, %nilfs_cpfile_clear_snapshot.exit ], [ -16, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_checkpoint_is_mounted(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_cpfile_get_stat(ptr noundef %cpfile, ptr nocapture noundef writeonly %cpstat) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !22
  %i_private.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %1 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private.i, align 4
  tail call void @down_read(ptr noundef %2) #9
  %call.i = call i32 @nilfs_mdt_get_block(ptr noundef %cpfile, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull %bh) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_sem_crit_edge, label %if.end

entry.out_sem_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sem

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bh, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %7 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %7, 512
  %8 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %12 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %6, i32 noundef %or.i) #9
  %18 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %and.i = and i32 %22, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %and.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i, align 16
  %ns_cno.i = getelementptr inbounds %struct.the_nilfs, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %ns_cno.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ns_cno.i, align 8
  %29 = ptrtoint ptr %cpstat to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %cpstat, align 8
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.i, align 8
  %32 = call i64 @llvm.bswap.i64(i64 %31)
  %cs_ncps = getelementptr inbounds %struct.nilfs_cpstat, ptr %cpstat, i32 0, i32 1
  %33 = ptrtoint ptr %cs_ncps to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %cs_ncps, align 8
  %ch_nsnapshots = getelementptr inbounds %struct.nilfs_cpfile_header, ptr %add.ptr.i, i32 0, i32 1
  %34 = ptrtoint ptr %ch_nsnapshots to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ch_nsnapshots, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35)
  %cs_nsss = getelementptr inbounds %struct.nilfs_cpstat, ptr %cpstat, i32 0, i32 2
  %37 = ptrtoint ptr %cs_nsss to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %cs_nsss, align 8
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !28
  %38 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i1.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 213
  %42 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %43, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  %44 = call i32 @llvm.read_register.i32(metadata !12) #9
  %and.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %48 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.end.out_sem_crit_edge, label %if.then.i

if.end.out_sem_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_sem

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %49) #9
  br label %out_sem

out_sem:                                          ; preds = %if.then.i, %if.end.out_sem_crit_edge, %entry.out_sem_crit_edge
  %50 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_private.i, align 4
  call void @up_read(ptr noundef %51) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_cpfile_read(ptr noundef %sb, i32 noundef %cpsize, ptr noundef %raw_inode, ptr nocapture noundef writeonly %inodep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpsize)
  %cmp = icmp ult i32 %1, %cpsize
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.2, i32 noundef %cpsize) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %cpsize)
  %cmp1 = icmp ult i32 %cpsize, 192
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.3, i32 noundef %cpsize) #9
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %call = tail call ptr @nilfs_iget_locked(ptr noundef %sb, ptr noundef null, i32 noundef 4) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end8, !prof !23

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.out_crit_edge, label %if.end11

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %if.end8
  %call12 = tail call i32 @nilfs_mdt_init(ptr noundef nonnull %call, i32 noundef 3138, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.failed_crit_edge

if.end11.failed_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end15:                                         ; preds = %if.end11
  tail call void @nilfs_mdt_set_entry_size(ptr noundef nonnull %call, i32 noundef %cpsize, i32 noundef 32) #9
  %call16 = tail call i32 @nilfs_read_inode_common(ptr noundef nonnull %call, ptr noundef %raw_inode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.failed_crit_edge

if.end15.failed_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_new_inode(ptr noundef nonnull %call) #9
  br label %out

out:                                              ; preds = %if.end19, %if.end8.out_crit_edge
  %4 = ptrtoint ptr %inodep to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %inodep, align 4
  br label %cleanup

failed:                                           ; preds = %if.end15.failed_crit_edge, %if.end11.failed_crit_edge
  %err.0 = phi i32 [ %call12, %if.end11.failed_crit_edge ], [ %call16, %if.end15.failed_crit_edge ]
  tail call void @iget_failed(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %failed, %out, %if.end3.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ %err.0, %failed ], [ 0, %out ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_iget_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_mdt_set_entry_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_read_inode_common(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_get_block(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nilfs_cpfile_block_init(ptr nocapture noundef readonly %cpfile, ptr nocapture noundef readonly %bh, ptr nocapture noundef %kaddr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_entry_size = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mi_entry_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mi_entry_size, align 4
  %mi_entries_per_block.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %mi_entries_per_block.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mi_entries_per_block.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp sgt i32 %5, 0
  br i1 %cmp5, label %while.body.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %8 = ptrtoint ptr %7 to i32
  %and = and i32 %8, 4095
  %add.ptr = getelementptr i8, ptr %kaddr, i32 %and
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %n.07 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %cp.06 = phi ptr [ %add.ptr2, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %dec = add nsw i32 %n.07, -1
  %9 = ptrtoint ptr %cp.06 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cp.06, align 8
  %11 = or i32 %10, 33554432
  store i32 %11, ptr %cp.06, align 8
  %add.ptr2 = getelementptr i8, ptr %cp.06, i32 %3
  %cmp = icmp ugt i32 %n.07, 1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_delete_block(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_mdt_find_block(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nilfs_cpfile_block_get_snapshot_list(ptr nocapture noundef readonly %cpfile, i64 noundef %cno, ptr nocapture noundef readonly %bh, ptr noundef readnone %kaddr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cno)
  %cmp.not = icmp eq i64 %cno, 0
  %b_data.i6 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data.i6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data.i6, align 4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %i_private.i.i.i = getelementptr inbounds %struct.inode, ptr %cpfile, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i.i.i, align 4
  %mi_first_entry_offset.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mi_first_entry_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mi_first_entry_offset.i.i, align 4
  %conv.i.i = zext i32 %5 to i64
  %add.i.i = add i64 %cno, -1
  %sub.i.i = add i64 %add.i.i, %conv.i.i
  %mi_entries_per_block.i.i.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %mi_entries_per_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mi_entries_per_block.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i.i)
  %cmp170.i.i = icmp ult i64 %sub.i.i, 4294967296
  br i1 %cmp170.i.i, label %if.then174.i.i, label %if.else180.i.i, !prof !24

if.then174.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv175.i.i = trunc i64 %sub.i.i to i32
  %rem176.i.i = urem i32 %conv175.i.i, %7
  br label %nilfs_cpfile_block_get_checkpoint.exit

if.else180.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %sub.i.i) #12, !srcloc !25
  %asmresult.i268.i.i = extractvalue { i64, i64 } %8, 0
  %shr.i.i.i = lshr i64 %asmresult.i268.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %nilfs_cpfile_block_get_checkpoint.exit

nilfs_cpfile_block_get_checkpoint.exit:           ; preds = %if.else180.i.i, %if.then174.i.i
  %__rem.0.i.i = phi i32 [ %rem176.i.i, %if.then174.i.i ], [ %conv.i.i.i, %if.else180.i.i ]
  %9 = ptrtoint ptr %1 to i32
  %and.i = and i32 %9, 4095
  %add.ptr.i = getelementptr i8, ptr %kaddr, i32 %and.i
  %mi_entry_size.i = getelementptr inbounds %struct.nilfs_mdt_info, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %mi_entry_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mi_entry_size.i, align 4
  %mul.i = mul i32 %11, %__rem.0.i.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %cp_snapshot_list = getelementptr inbounds %struct.nilfs_checkpoint, ptr %add.ptr2.i, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  %and.i7 = and i32 %12, 4095
  %add.ptr.i8 = getelementptr i8, ptr %kaddr, i32 %and.i7
  %ch_snapshot_list = getelementptr inbounds %struct.nilfs_cpfile_header, ptr %add.ptr.i8, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %nilfs_cpfile_block_get_checkpoint.exit
  %list.0 = phi ptr [ %cp_snapshot_list, %nilfs_cpfile_block_get_checkpoint.exit ], [ %ch_snapshot_list, %if.else ]
  ret ptr %list.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/cpfile.c", i32 325, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/cpfile.c", i32 379, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nilfs2/cpfile.c", i32 984, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nilfs2/cpfile.c", i32 987, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nilfs2/cpfile.c", i32 91, i32 2}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148624257, i64 2148624537, i64 2148624871, i64 2148625205}
!26 = !{i64 2153711880}
!27 = !{i64 2152191554}
!28 = !{i64 2152191761}
!29 = !{i64 2153714651}
!30 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!31 = !{!"branch_weights", i32 4000000, i32 4001}
!32 = !{i64 2148233723, i64 2148233749, i64 2148233778, i64 2148233812, i64 2148233843, i64 2148233866}
