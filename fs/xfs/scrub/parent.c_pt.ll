; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/parent.c_pt.bc'
source_filename = "../fs/xfs/scrub/parent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_name = type { ptr, i32, i32 }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xchk_parent_ctx = type { %struct.dir_context, ptr, i64, i32, i8 }
%struct.dir_context = type { ptr, i64 }
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

@xfs_name_dotdot = external dso_local global %struct.xfs_name, align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/xfs/scrub/common.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967294]
@___asan_gen_ = private constant [25 x i8] c"../fs/xfs/scrub/parent.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [25 x i8] c"../fs/xfs/scrub/common.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 24, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_parent(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xchk_setup_inode_contents(ptr noundef %sc, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_setup_inode_contents(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_parent(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %dnum = alloca i64, align 8
  %try_again = alloca i8, align 1
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dnum) #6
  %2 = ptrtoint ptr %dnum to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %dnum, align 8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %try_again) #6
  %3 = ptrtoint ptr %try_again to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %try_again, align 1, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %error, align 4
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_vnode.i, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %9)
  %cmp = icmp eq i16 %9, 16384
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 4
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_ino, align 8
  %call4 = tail call zeroext i1 @xfs_verify_dir_ino(ptr noundef %1, i64 noundef %11) #6
  br i1 %call4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef 0) #6
  br label %out

if.end6:                                          ; preds = %if.end
  %ilock_flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 7
  %12 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ilock_flags, align 4
  %and7 = and i32 %13, -21
  store i32 %and7, ptr %ilock_flags, align 4
  %14 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip, align 4
  tail call void @xfs_iunlock(ptr noundef %15, i32 noundef 20) #6
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %16 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp, align 4
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip, align 4
  %call10 = call i32 @xfs_dir_lookup(ptr noundef %17, ptr noundef %19, ptr noundef nonnull @xfs_name_dotdot, ptr noundef nonnull %dnum, ptr noundef null) #6
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call10, ptr %error, align 4
  %call11 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %error) #6
  br i1 %call11, label %if.end13, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end13:                                         ; preds = %if.end6
  %21 = ptrtoint ptr %dnum to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dnum, align 8
  %call14 = call zeroext i1 @xfs_verify_dir_ino(ptr noundef %1, i64 noundef %22) #6
  br i1 %call14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef 0) #6
  br label %out

if.end16:                                         ; preds = %if.end13
  %23 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ip, align 4
  %m_rootip = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %m_rootip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m_rootip, align 16
  %cmp18 = icmp eq ptr %24, %26
  br i1 %cmp18, label %if.then20, label %if.end16.do.body_crit_edge

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  br label %do.body

if.then20:                                        ; preds = %if.end16
  %i_ino22 = getelementptr inbounds %struct.xfs_inode, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %i_ino22 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_ino22, align 8
  %sb_rootino = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %sb_rootino to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %sb_rootino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp23.not = icmp eq i64 %28, %30
  br i1 %cmp23.not, label %lor.lhs.false, label %if.then20.if.then29_crit_edge

if.then20.if.then29_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.then20
  %31 = ptrtoint ptr %dnum to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %32)
  %cmp27.not = icmp eq i64 %28, %32
  br i1 %cmp27.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false.if.then29_crit_edge

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.then20.if.then29_crit_edge
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef 0) #6
  br label %out

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end16.do.body_crit_edge
  %tries.0 = phi i32 [ %inc, %land.rhs.do.body_crit_edge ], [ 0, %if.end16.do.body_crit_edge ]
  %33 = ptrtoint ptr %dnum to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dnum, align 8
  %call32 = call fastcc i32 @xchk_parent_validate(ptr noundef %sc, i64 noundef %34, ptr noundef nonnull %try_again)
  %35 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool.not = icmp eq i32 %call32, 0
  br i1 %tobool.not, label %do.cond, label %do.body.out_crit_edge

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.cond:                                          ; preds = %do.body
  %36 = ptrtoint ptr %try_again to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %try_again, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool35.not = icmp eq i8 %37, 0
  br i1 %tobool35.not, label %do.cond.out_crit_edge, label %land.rhs

do.cond.out_crit_edge:                            ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.rhs:                                         ; preds = %do.cond
  %inc = add nuw nsw i32 %tries.0, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.then43, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then43:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  call void @xchk_set_incomplete(ptr noundef %sc) #6
  br label %out

out:                                              ; preds = %if.then43, %do.cond.out_crit_edge, %do.body.out_crit_edge, %if.then29, %lor.lhs.false.out_crit_edge, %if.then15, %if.end6.out_crit_edge, %if.then5
  %flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 8
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and45 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %out.if.end51_crit_edge, label %land.lhs.true47

out.if.end51_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

land.lhs.true47:                                  ; preds = %out
  %40 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %41)
  %cmp48 = icmp eq i32 %41, -35
  br i1 %cmp48, label %if.then50, label %land.lhs.true47.if.end51_crit_edge

land.lhs.true47.if.end51_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then50:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %error, align 4
  call void @xchk_set_incomplete(ptr noundef %sc) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %land.lhs.true47.if.end51_crit_edge, %out.if.end51_crit_edge
  %43 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %44, %if.end51 ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %try_again) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dnum) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_dir_ino(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_fblock_set_corrupt(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_fblock_process_error(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_parent_validate(ptr noundef %sc, i64 noundef %dnum, ptr nocapture noundef writeonly %try_again) unnamed_addr #3 align 64 {
entry:
  %dnum.addr = alloca i64, align 8
  %dp = alloca ptr, align 4
  %nlink = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dnum.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %dnum, ptr %dnum.addr, align 8
  %1 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp) #6
  %3 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nlink) #6
  %4 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %nlink, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %error, align 4
  %6 = ptrtoint ptr %try_again to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %try_again, align 1
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %7 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sm_flags, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %11 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ip, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %dnum)
  %cmp = icmp eq i64 %14, %dnum
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef 0) #6
  br label %out

if.end3:                                          ; preds = %if.end
  %15 = getelementptr inbounds %struct.xfs_inode, ptr %12, i32 0, i32 27, i32 12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp5 = icmp ne i32 %17, 0
  %cond = zext i1 %cmp5 to i32
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %18 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp, align 4
  %call6 = call i32 @xfs_iget(ptr noundef %2, ptr noundef %19, i64 noundef %dnum, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %dp) #6
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call6, ptr %error, align 4
  %21 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.end11 [
    i32 -22, label %if.end3.if.then9_crit_edge
    i32 -2, label %if.end3.if.then9_crit_edge104
  ]

if.end3.if.then9_crit_edge104:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end3.if.then9_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %if.end3.if.then9_crit_edge, %if.end3.if.then9_crit_edge104
  %22 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -117, ptr %error, align 4
  %call10 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %error) #6
  br label %out

if.end11:                                         ; preds = %if.end3
  %call12 = call zeroext i1 @xchk_fblock_xref_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %error) #6
  br i1 %call12, label %if.end14, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end11
  %23 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dp, align 4
  %25 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ip, align 4
  %cmp16 = icmp eq ptr %24, %26
  br i1 %cmp16, label %if.end14.if.then22_crit_edge, label %lor.lhs.false17

if.end14.if.then22_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false17:                                  ; preds = %if.end14
  %i_vnode.i102 = getelementptr inbounds %struct.xfs_inode, ptr %24, i32 0, i32 27
  %27 = ptrtoint ptr %i_vnode.i102 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %i_vnode.i102, align 8
  %29 = and i16 %28, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %29)
  %cmp20 = icmp eq i16 %29, 16384
  br i1 %cmp20, label %if.end23, label %lor.lhs.false17.if.then22_crit_edge

lor.lhs.false17.if.then22_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false17.if.then22_crit_edge, %if.end14.if.then22_crit_edge
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef 0) #6
  br label %out_rele

if.end23:                                         ; preds = %lor.lhs.false17
  %call24 = call i32 @xfs_ilock_nowait(ptr noundef %24, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end35, label %if.then26

if.then26:                                        ; preds = %if.end23
  %30 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dp, align 4
  %call27 = call fastcc i32 @xchk_parent_count_parent_dentries(ptr noundef %sc, ptr noundef %31, ptr noundef nonnull %nlink)
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call27, ptr %error, align 4
  %call28 = call zeroext i1 @xchk_fblock_xref_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %error) #6
  br i1 %call28, label %if.end30, label %if.then26.out_unlock_crit_edge

if.then26.out_unlock_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end30:                                         ; preds = %if.then26
  %33 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nlink, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %cond)
  %cmp31.not = icmp eq i32 %34, %cond
  br i1 %cmp31.not, label %if.end30.out_unlock_crit_edge, label %if.then33

if.end30.out_unlock_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef 0) #6
  br label %out_unlock

if.end35:                                         ; preds = %if.end23
  %35 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ip, align 4
  %ilock_flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 7
  %37 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ilock_flags, align 4
  call void @xfs_iunlock(ptr noundef %36, i32 noundef %38) #6
  %39 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ilock_flags, align 4
  %40 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dp, align 4
  %call38 = call i32 @xchk_ilock_inverted(ptr noundef %41, i32 noundef 2) #6
  %42 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call38, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.out_rele_crit_edge

if.end35.out_rele_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rele

if.end41:                                         ; preds = %if.end35
  %43 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dp, align 4
  %call42 = call fastcc i32 @xchk_parent_count_parent_dentries(ptr noundef %sc, ptr noundef %44, ptr noundef nonnull %nlink)
  %45 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call42, ptr %error, align 4
  %call43 = call zeroext i1 @xchk_fblock_xref_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %error) #6
  br i1 %call43, label %if.end45, label %if.end41.out_unlock_crit_edge

if.end41.out_unlock_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end45:                                         ; preds = %if.end41
  %46 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dp, align 4
  call void @xfs_iunlock(ptr noundef %47, i32 noundef 2) #6
  %48 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ip, align 4
  %call47 = call i32 @xchk_ilock_inverted(ptr noundef %49, i32 noundef 1) #6
  %50 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call47, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.out_rele_crit_edge

if.end45.out_rele_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rele

if.end50:                                         ; preds = %if.end45
  %51 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %ilock_flags, align 4
  %52 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ip, align 4
  %54 = getelementptr inbounds %struct.xfs_inode, ptr %53, i32 0, i32 27, i32 12
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp54 = icmp ne i32 %56, 0
  %cond56 = zext i1 %cmp54 to i32
  %57 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tp, align 4
  %call59 = call i32 @xfs_dir_lookup(ptr noundef %58, ptr noundef %53, ptr noundef nonnull @xfs_name_dotdot, ptr noundef nonnull %dnum.addr, ptr noundef null) #6
  %59 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call59, ptr %error, align 4
  %call60 = call zeroext i1 @xchk_fblock_process_error(ptr noundef %sc, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %error) #6
  br i1 %call60, label %if.end62, label %if.end50.out_rele_crit_edge

if.end50.out_rele_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rele

if.end62:                                         ; preds = %if.end50
  %60 = ptrtoint ptr %dnum.addr to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %dnum.addr, align 8
  %62 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dp, align 4
  %i_ino63 = getelementptr inbounds %struct.xfs_inode, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %i_ino63 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %i_ino63, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %65)
  %cmp64.not = icmp eq i64 %61, %65
  call void @xfs_irele(ptr noundef %63) #6
  br i1 %cmp64.not, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %try_again to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %try_again, align 1
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %67 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nlink, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %cond56)
  %cmp68.not = icmp eq i32 %68, %cond56
  br i1 %cmp68.not, label %if.end67.if.end71_crit_edge, label %if.then70

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  call void @xchk_fblock_set_corrupt(ptr noundef %sc, i32 noundef 0, i64 noundef 0) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end67.if.end71_crit_edge
  %69 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %error, align 4
  br label %cleanup

out_unlock:                                       ; preds = %if.end41.out_unlock_crit_edge, %if.then33, %if.end30.out_unlock_crit_edge, %if.then26.out_unlock_crit_edge
  %71 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dp, align 4
  call void @xfs_iunlock(ptr noundef %72, i32 noundef 2) #6
  br label %out_rele

out_rele:                                         ; preds = %out_unlock, %if.end50.out_rele_crit_edge, %if.end45.out_rele_crit_edge, %if.end35.out_rele_crit_edge, %if.then22
  %73 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dp, align 4
  call void @xfs_irele(ptr noundef %74) #6
  br label %out

out:                                              ; preds = %out_rele, %if.end11.out_crit_edge, %if.then9, %if.then2, %entry.out_crit_edge
  %75 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end71, %if.then66
  %retval.0 = phi i32 [ %76, %out ], [ 0, %if.then66 ], [ %70, %if.end71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nlink) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_set_incomplete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_fblock_xref_process_error(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_nowait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xchk_parent_count_parent_dentries(ptr noundef %sc, ptr noundef %parent, ptr nocapture noundef writeonly %nlink) unnamed_addr #3 align 64 {
entry:
  %spc = alloca %struct.xchk_parent_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %spc) #6
  %0 = call ptr @memset(ptr %spc, i32 255, i32 40)
  %1 = ptrtoint ptr %spc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xchk_parent_actor, ptr %spc, align 8
  %pos = getelementptr inbounds %struct.dir_context, ptr %spc, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %pos, align 8
  %sc1 = getelementptr inbounds %struct.xchk_parent_ctx, ptr %spc, i32 0, i32 1
  %3 = ptrtoint ptr %sc1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sc, ptr %sc1, align 8
  %ino = getelementptr inbounds %struct.xchk_parent_ctx, ptr %spc, i32 0, i32 2
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_ino, align 8
  %8 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %ino, align 8
  %nlink2 = getelementptr inbounds %struct.xchk_parent_ctx, ptr %spc, i32 0, i32 3
  %9 = ptrtoint ptr %nlink2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nlink2, align 8
  %cancelled = getelementptr inbounds %struct.xchk_parent_ctx, ptr %spc, i32 0, i32 4
  %10 = ptrtoint ptr %cancelled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cancelled, align 4
  %call = tail call i32 @xfs_ilock_data_map_shared(ptr noundef %parent) #6
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %parent, i32 0, i32 8, i32 7
  %11 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xfs_iunlock(ptr noundef %parent, i32 noundef %call) #6
  br label %if.end5

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @xfs_dir3_data_readahead(ptr noundef %parent, i32 noundef 0, i32 noundef 0) #6
  tail call void @xfs_iunlock(ptr noundef %parent, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.end.thread
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %parent, i32 0, i32 18
  %13 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_disk_size, align 8
  %15 = tail call i64 @llvm.smin.i64(i64 %14, i64 32768)
  %16 = trunc i64 %15 to i32
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end15.while.cond_crit_edge, %if.end5
  %oldpos.0 = phi i64 [ 0, %if.end5 ], [ %22, %if.end15.while.cond_crit_edge ]
  %17 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tp, align 4
  %call8 = call i32 @xfs_readdir(ptr noundef %18, ptr noundef %parent, ptr noundef nonnull %spc, i32 noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %while.cond
  %19 = ptrtoint ptr %cancelled to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cancelled, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %21 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pos, align 8
  %cmp18 = icmp eq i64 %oldpos.0, %22
  br i1 %cmp18, label %while.end, label %if.end15.while.cond_crit_edge

if.end15.while.cond_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %nlink2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nlink2, align 8
  %25 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %nlink, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end11.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end.cleanup_crit_edge ], [ 0, %while.end ], [ -11, %if.end11.cleanup_crit_edge ], [ %call8, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %spc) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_ilock_inverted(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xchk_parent_actor(ptr nocapture noundef %dc, ptr nocapture noundef readnone %name, i32 noundef %namelen, i64 noundef %pos, i64 noundef %ino, i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ino1 = getelementptr inbounds %struct.xchk_parent_ctx, ptr %dc, i32 0, i32 2
  %0 = ptrtoint ptr %ino1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ino1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %ino)
  %cmp = icmp eq i64 %1, %ino
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nlink = getelementptr inbounds %struct.xchk_parent_ctx, ptr %dc, i32 0, i32 3
  %2 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlink, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %nlink, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %4 = tail call i32 @llvm.read_register.i32(metadata !2) #6
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and1.i.i.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.if.end3_crit_edge, label %fatal_signal_pending.exit.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

fatal_signal_pending.exit.i:                      ; preds = %if.end
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 116, i32 1
  %12 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %signal.i.i.i, align 4
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %fatal_signal_pending.exit.i.if.end3_crit_edge, label %if.then2

fatal_signal_pending.exit.i.if.end3_crit_edge:    ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %cancelled = getelementptr inbounds %struct.xchk_parent_ctx, ptr %dc, i32 0, i32 4
  %15 = ptrtoint ptr %cancelled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %cancelled, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %fatal_signal_pending.exit.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %error.010 = phi i32 [ -11, %if.then2 ], [ 0, %fatal_signal_pending.exit.i.if.end3_crit_edge ], [ 0, %if.end.if.end3_crit_edge ]
  ret i32 %error.010
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_data_map_shared(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_dir3_data_readahead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_readdir(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

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
!13 = !{i8 0, i8 2}
