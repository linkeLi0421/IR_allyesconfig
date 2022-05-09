; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/rtbitmap.c_pt.bc'
source_filename = "../fs/xfs/scrub/rtbitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_rtalloc_rec = type { i64, i64 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [27 x i8] c"../fs/xfs/scrub/rtbitmap.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 24, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_rt(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xchk_setup_fs(ptr noundef %sc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ilock_flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100663300, ptr %ilock_flags, align 4
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_rbmip, align 8
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ip, align 4
  tail call void @xfs_ilock(ptr noundef %4, i32 noundef 100663300) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_rtbitmap(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #5
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_rbmip, align 8
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_disk_size, align 8
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_rbmblocks, align 4
  %conv = zext i32 %7 to i64
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %9 to i64
  %shl = shl i64 %conv, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %shl)
  %cmp.not = icmp eq i64 %5, %shl
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_ino, align 8
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %11) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @xchk_metadata_inode_forks(ptr noundef %sc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %12 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sm_flags, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %call11 = tail call fastcc i32 @xchk_rtbitmap_check_extents(ptr noundef %sc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false13:                                  ; preds = %if.end10
  %16 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sm, align 4
  %sm_flags15 = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sm_flags15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sm_flags15, align 4
  %and16 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %20 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tp, align 4
  %call20 = tail call i32 @xfs_rtalloc_query_all(ptr noundef %21, ptr noundef nonnull @xchk_rtbitmap_rec, ptr noundef %sc) #5
  %22 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call20, ptr %error, align 4
  %call21 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %error) #5
  %23 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %lor.lhs.false13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %24, %if.end19 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false13.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ino_set_corrupt(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_metadata_inode_forks(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_rtbitmap_check_extents(ptr noundef %sc) unnamed_addr #3 align 64 {
entry:
  %map = alloca %struct.xfs_bmbt_irec, align 8
  %nmap = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #5
  %2 = call ptr @memset(ptr %map, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nmap) #5
  %3 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nmap, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %error, align 4
  %sb_rbmblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_rbmblocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp33.not = icmp eq i32 %6, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 9
  %br_startblock.i.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 1
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 3
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %map, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %off.034 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %if.end16.for.body_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0) #5
  %call.i.i = call i32 @__cond_resched() #5
  %7 = call i32 @llvm.read_register.i32(metadata !2) #5
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.lor.lhs.false_crit_edge, label %fatal_signal_pending.exit.i

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

fatal_signal_pending.exit.i:                      ; preds = %for.body
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 116, i32 1
  %15 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %signal.i.i.i, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.lor.lhs.false_crit_edge, label %if.then.i

fatal_signal_pending.exit.i.lor.lhs.false_crit_edge: ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.then.i:                                        ; preds = %fatal_signal_pending.exit.i
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.for.end_crit_edge

if.then.i.for.end_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -11, ptr %error, align 4
  br label %for.end

lor.lhs.false:                                    ; preds = %fatal_signal_pending.exit.i.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %21 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sm_flags, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %nmap to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %nmap, align 4
  %26 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_rbmip, align 8
  %28 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sb_rbmblocks, align 4
  %conv6 = zext i32 %29 to i64
  %sub = sub i64 %conv6, %off.034
  %call7 = call i32 @xfs_bmapi_read(ptr noundef %27, i64 noundef %off.034, i64 noundef %sub, ptr noundef nonnull %map, ptr noundef nonnull %nmap, i32 noundef 0) #5
  %30 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call7, ptr %error, align 4
  %call8 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef %off.034, ptr noundef nonnull %error) #5
  br i1 %call8, label %if.end10, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end10:                                         ; preds = %if.end
  %31 = ptrtoint ptr %nmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp11.not = icmp eq i32 %32, 1
  br i1 %cmp11.not, label %lor.lhs.false13, label %if.end10.if.then15_crit_edge

if.end10.if.then15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

lor.lhs.false13:                                  ; preds = %if.end10
  %33 = ptrtoint ptr %br_startblock.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %br_startblock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %34)
  %switch.i.i = icmp ult i64 %34, -2
  %and.i.i.i = and i64 %34, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i.i)
  %cmp.i.i.i = icmp ne i64 %and.i.i.i, 4503599627239424
  %35 = and i1 %switch.i.i, %cmp.i.i.i
  br i1 %35, label %xfs_bmap_is_written_extent.exit, label %lor.lhs.false13.if.then15_crit_edge

lor.lhs.false13.if.then15_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

xfs_bmap_is_written_extent.exit:                  ; preds = %lor.lhs.false13
  %36 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %br_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i28.not = icmp eq i32 %37, 1
  br i1 %cmp.i28.not, label %xfs_bmap_is_written_extent.exit.if.then15_crit_edge, label %if.end16

xfs_bmap_is_written_extent.exit.if.then15_crit_edge: ; preds = %xfs_bmap_is_written_extent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

if.then15:                                        ; preds = %xfs_bmap_is_written_extent.exit.if.then15_crit_edge, %lor.lhs.false13.if.then15_crit_edge, %if.end10.if.then15_crit_edge
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef %off.034) #5
  br label %for.end

if.end16:                                         ; preds = %xfs_bmap_is_written_extent.exit
  %38 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %br_blockcount, align 8
  %add = add i64 %39, %off.034
  %40 = ptrtoint ptr %sb_rbmblocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sb_rbmblocks, align 4
  %conv = zext i32 %41 to i64
  %cmp = icmp ult i64 %add, %conv
  br i1 %cmp, label %if.end16.for.body_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %if.then15, %if.end.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.then3.i, %if.then.i.for.end_crit_edge, %entry.for.end_crit_edge
  %42 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nmap) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #5
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtalloc_query_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_rtbitmap_rec(ptr nocapture noundef readonly %tp, ptr nocapture noundef readonly %rec, ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rec, align 8
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %2 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_mountp, align 4
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_rextsize, align 16
  %conv = zext i32 %5 to i64
  %mul = mul i64 %1, %conv
  %ar_extcount = getelementptr inbounds %struct.xfs_rtalloc_rec, ptr %rec, i32 0, i32 1
  %6 = ptrtoint ptr %ar_extcount to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ar_extcount, align 8
  %mul5 = mul i64 %7, %conv
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %call = tail call zeroext i1 @xfs_verify_rtext(ptr noundef %9, i64 noundef %mul, i64 noundef %mul5) #5
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_fblock_set_corrupt(ptr noundef %priv, i32 noundef 0, i64 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_fblock_process_error(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_rtsummary(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %m_rsumip = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_rsumip, align 4
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip, align 4
  %ilock_flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 7
  %6 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ilock_flags, align 4
  store ptr %3, ptr %ip, align 4
  store i32 117440516, ptr %ilock_flags, align 4
  tail call void @xfs_ilock(ptr noundef %3, i32 noundef 117440516) #5
  %call = tail call i32 @xchk_metadata_inode_forks(ptr noundef %sc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %8 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sm_flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xchk_set_incomplete(ptr noundef %sc) #5
  br label %out

out:                                              ; preds = %if.end, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %12 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ip, align 4
  %14 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ilock_flags, align 4
  tail call void @xfs_iunlock(ptr noundef %13, i32 noundef %15) #5
  %16 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %ilock_flags, align 4
  %17 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %ip, align 4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_set_incomplete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xchk_xref_is_used_rt_space(ptr noundef %sc, i64 noundef %fsbno, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %is_free = alloca i8, align 1
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_free) #5
  %0 = ptrtoint ptr %is_free to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %is_free, align 1, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #5
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %1 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sm, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sm_flags.i, align 4
  %and.i = and i32 %4, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add i64 %fsbno, -1
  %sub = add i64 %add, %conv
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 4
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_rextsize, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %fsbno)
  %cmp171 = icmp ult i64 %fsbno, 4294967296
  br i1 %cmp171, label %if.then175, label %if.else181, !prof !13

if.then175:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv176 = trunc i64 %fsbno to i32
  %div179 = udiv i32 %conv176, %8
  %conv180 = zext i32 %div179 to i64
  br label %if.else389

if.else181:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %fsbno) #8, !srcloc !14
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  br label %if.else389

if.else389:                                       ; preds = %if.else181, %if.then175
  %startext.0 = phi i64 [ %conv180, %if.then175 ], [ %asmresult1.i, %if.else181 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp391 = icmp ult i64 %sub, 4294967296
  br i1 %cmp391, label %if.then399, label %if.else405, !prof !13

if.then399:                                       ; preds = %if.else389
  call void @__sanitizer_cov_trace_pc() #7
  %conv400 = trunc i64 %sub to i32
  %div403 = udiv i32 %conv400, %8
  %conv404 = zext i32 %div403 to i64
  br label %if.end409

if.else405:                                       ; preds = %if.else389
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %sub) #8, !srcloc !14
  %asmresult1.i629 = extractvalue { i64, i64 } %10, 1
  br label %if.end409

if.end409:                                        ; preds = %if.else405, %if.then399
  %endext.0 = phi i64 [ %conv404, %if.then399 ], [ %asmresult1.i629, %if.else405 ]
  %sub411 = sub i64 %endext.0, %startext.0
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 9
  %11 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_rbmip, align 8
  tail call void @xfs_ilock(ptr noundef %12, i32 noundef 100663304) #5
  %13 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc, align 4
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %15 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp, align 4
  %17 = trunc i64 %sub411 to i32
  %conv415 = add i32 %17, 1
  %call416 = call i32 @xfs_rtalloc_extent_is_free(ptr noundef %14, ptr noundef %16, i64 noundef %startext.0, i32 noundef %conv415, ptr noundef nonnull %is_free) #5
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call416, ptr %error, align 4
  %call417 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef null) #5
  br i1 %call417, label %if.end419, label %if.end409.out_unlock_crit_edge

if.end409.out_unlock_crit_edge:                   ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end419:                                        ; preds = %if.end409
  %19 = ptrtoint ptr %is_free to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_free, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool420.not = icmp eq i8 %20, 0
  br i1 %tobool420.not, label %if.end419.out_unlock_crit_edge, label %if.then421

if.end419.out_unlock_crit_edge:                   ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then421:                                       ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sc, align 4
  %m_rbmip423 = getelementptr inbounds %struct.xfs_mount, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %m_rbmip423 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_rbmip423, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_ino, align 8
  call void @xchk_ino_xref_set_corrupt(ptr noundef %sc, i64 noundef %26) #5
  br label %out_unlock

out_unlock:                                       ; preds = %if.then421, %if.end419.out_unlock_crit_edge, %if.end409.out_unlock_crit_edge
  %27 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sc, align 4
  %m_rbmip426 = getelementptr inbounds %struct.xfs_mount, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %m_rbmip426 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m_rbmip426, align 8
  call void @xfs_iunlock(ptr noundef %30, i32 noundef 100663304) #5
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_free) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtalloc_extent_is_free(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_should_check_xref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ino_xref_set_corrupt(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_fblock_set_corrupt(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_rtext(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0}
!llvm.named.register.sp = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/scrub/common.h", i32 24, i32 2}
!2 = !{!"sp"}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148469632, i64 2148469912, i64 2148470246, i64 2148470580}
!15 = !{i8 0, i8 2}
