; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/sys_oabi-compat.c_pt.bc'
source_filename = "../arch/arm/kernel/sys_oabi-compat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.oldabi_stat64 = type <{ i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i64 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.flock64 = type { i16, i16, i64, i64, i32 }
%struct.oabi_flock64 = type <{ i16, i16, i64, i64, i32 }>
%struct.oabi_epoll_event = type <{ i32, i64 }>
%struct.epoll_event = type { i32, i64 }
%struct.oabi_sembuf = type { i16, i16, i16, i16 }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.sembuf = type { i16, i16, i16 }
%struct.user_msghdr = type { ptr, i32, ptr, i32, ptr, i32, i32 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"arch/arm/kernel/sys_oabi-compat.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 12, i64 13, i64 14, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 4]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 11, i64 16]
@___asan_gen_.8 = private constant [37 x i8] c"../arch/arm/kernel/sys_oabi-compat.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 312, i32 7 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 174, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.4], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_stat64(ptr noundef %filename, ptr noundef %statbuf) local_unnamed_addr #0 align 64 {
entry:
  %stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #5
  %0 = call ptr @memset(ptr %stat, i32 255, i32 144)
  %call.i = call i32 @vfs_fstatat(i32 noundef -100, ptr noundef %filename, ptr noundef nonnull %stat, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = call fastcc i32 @cp_oldabi_stat64(ptr noundef nonnull %stat, ptr noundef %statbuf)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call.i, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #5
  ret i32 %error.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp_oldabi_stat64(ptr nocapture noundef readonly %stat, ptr noundef %statbuf) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.oldabi_stat64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tmp) #5
  %0 = getelementptr inbounds i8, ptr %tmp, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 72)
  %dev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %and1.i.i = and i32 %3, 255
  %4 = lshr i32 %3, 12
  %shl.i.i = and i32 %4, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %3, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %conv.i = zext i32 %or4.i.i to i64
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv.i, ptr %tmp, align 8
  %__pad1 = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 1
  %6 = ptrtoint ptr %__pad1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %__pad1, align 8
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %7 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ino, align 8
  %conv = trunc i64 %8 to i32
  %__st_ino = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 2
  %9 = ptrtoint ptr %__st_ino to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %__st_ino, align 4
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode, align 4
  %conv1 = zext i16 %11 to i32
  %st_mode = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 3
  %12 = ptrtoint ptr %st_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv1, ptr %st_mode, align 8
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %13 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlink, align 8
  %st_nlink = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 4
  %15 = ptrtoint ptr %st_nlink to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %st_nlink, align 4
  %16 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 99
  %20 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 25
  %22 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %24 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack = load i32, ptr %uid, align 8
  %25 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call5 = tail call i32 @from_kuid_munged(ptr noundef %23, [1 x i32] %25) #5
  %st_uid = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 5
  %26 = ptrtoint ptr %st_uid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call5, ptr %st_uid, align 8
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %cred13 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 99
  %29 = ptrtoint ptr %cred13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cred13, align 16
  %user_ns14 = getelementptr inbounds %struct.cred, ptr %30, i32 0, i32 25
  %31 = ptrtoint ptr %user_ns14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns14, align 4
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %33 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack46 = load i32, ptr %gid, align 4
  %34 = insertvalue [1 x i32] undef, i32 %.unpack46, 0
  %call16 = tail call i32 @from_kgid_munged(ptr noundef %32, [1 x i32] %34) #5
  %st_gid = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 6
  %35 = ptrtoint ptr %st_gid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call16, ptr %st_gid, align 4
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %36 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rdev, align 4
  %and1.i.i47 = and i32 %37, 255
  %38 = lshr i32 %37, 12
  %shl.i.i48 = and i32 %38, 1048320
  %or.i.i49 = or i32 %shl.i.i48, %and1.i.i47
  %and2.i.i50 = shl i32 %37, 12
  %shl3.i.i51 = and i32 %and2.i.i50, -1048576
  %or4.i.i52 = or i32 %or.i.i49, %shl3.i.i51
  %conv.i53 = zext i32 %or4.i.i52 to i64
  %st_rdev = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 7
  %39 = ptrtoint ptr %st_rdev to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i53, ptr %st_rdev, align 8
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %size, align 8
  %st_size = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 9
  %42 = ptrtoint ptr %st_size to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %st_size, align 4
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %43 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %blocks, align 8
  %st_blocks = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 11
  %45 = ptrtoint ptr %st_blocks to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %st_blocks, align 8
  %__pad2 = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 8
  %46 = ptrtoint ptr %__pad2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %__pad2, align 8
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %47 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %blksize, align 4
  %st_blksize = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 10
  %49 = ptrtoint ptr %st_blksize to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %st_blksize, align 4
  %atime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  %50 = ptrtoint ptr %atime to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %atime, align 8
  %conv18 = trunc i64 %51 to i32
  %st_atime = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 12
  %52 = ptrtoint ptr %st_atime to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv18, ptr %st_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12, i32 1
  %53 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tv_nsec, align 8
  %st_atime_nsec = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 13
  %55 = ptrtoint ptr %st_atime_nsec to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %st_atime_nsec, align 4
  %mtime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %56 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %mtime, align 8
  %conv21 = trunc i64 %57 to i32
  %st_mtime = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 14
  %58 = ptrtoint ptr %st_mtime to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv21, ptr %st_mtime, align 8
  %tv_nsec23 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13, i32 1
  %59 = ptrtoint ptr %tv_nsec23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tv_nsec23, align 8
  %st_mtime_nsec = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 15
  %61 = ptrtoint ptr %st_mtime_nsec to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %st_mtime_nsec, align 4
  %ctime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %62 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ctime, align 8
  %conv25 = trunc i64 %63 to i32
  %st_ctime = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 16
  %64 = ptrtoint ptr %st_ctime to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv25, ptr %st_ctime, align 8
  %tv_nsec27 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14, i32 1
  %65 = ptrtoint ptr %tv_nsec27 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tv_nsec27, align 8
  %st_ctime_nsec = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 17
  %67 = ptrtoint ptr %st_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %st_ctime_nsec, align 4
  %68 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ino, align 8
  %st_ino = getelementptr inbounds %struct.oldabi_stat64, ptr %tmp, i32 0, i32 18
  %70 = ptrtoint ptr %st_ino to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %st_ino, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %71 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %statbuf, i32 96, i32 -1226833920) #8, !srcloc !23
  %asmresult.i.i = extractvalue { i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp, i32 noundef 96) #5
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %statbuf, ptr noundef nonnull %tmp, i32 noundef 96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %72 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tmp) #5
  ret i32 %72
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_lstat64(ptr noundef %filename, ptr noundef %statbuf) local_unnamed_addr #0 align 64 {
entry:
  %stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #5
  %0 = call ptr @memset(ptr %stat, i32 255, i32 144)
  %call.i = call i32 @vfs_fstatat(i32 noundef -100, ptr noundef %filename, ptr noundef nonnull %stat, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = call fastcc i32 @cp_oldabi_stat64(ptr noundef nonnull %stat, ptr noundef %statbuf)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call.i, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #5
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_fstat64(i32 noundef %fd, ptr noundef %statbuf) local_unnamed_addr #0 align 64 {
entry:
  %stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #5
  %0 = call ptr @memset(ptr %stat, i32 255, i32 144)
  %call = call i32 @vfs_fstat(i32 noundef %fd, ptr noundef nonnull %stat) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = call fastcc i32 @cp_oldabi_stat64(ptr noundef nonnull %stat, ptr noundef %statbuf)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #5
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fstat(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_fstatat64(i32 noundef %dfd, ptr noundef %filename, ptr noundef %statbuf, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #5
  %0 = call ptr @memset(ptr %stat, i32 255, i32 144)
  %call = call i32 @vfs_fstatat(i32 noundef %dfd, ptr noundef %filename, ptr noundef nonnull %stat, i32 noundef %flag) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = call fastcc i32 @cp_oldabi_stat64(ptr noundef nonnull %stat, ptr noundef %statbuf)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_fcntl64(i32 noundef %fd, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %flock = alloca %struct.flock64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %call.i = tail call i32 @__fdget_raw(i32 noundef %fd) #5, !noalias !24
  %and.i.i = and i32 %call.i, -4
  %1 = inttoptr i32 %and.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %flock) #5
  %2 = call ptr @memset(ptr %flock, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 12, label %if.end.sw.bb_crit_edge
    i32 36, label %if.end.sw.bb_crit_edge49
    i32 13, label %if.end.sw.bb15_crit_edge
    i32 14, label %if.end.sw.bb15_crit_edge50
    i32 37, label %if.end.sw.bb15_crit_edge51
    i32 38, label %if.end.sw.bb15_crit_edge52
  ]

if.end.sw.bb15_crit_edge52:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end.sw.bb15_crit_edge51:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end.sw.bb15_crit_edge50:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end.sw.bb_crit_edge49:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge49
  %call = tail call i32 @security_file_fcntl(ptr noundef nonnull %1, i32 noundef %cmd, i32 noundef %arg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end4:                                          ; preds = %sw.bb
  %call5 = call fastcc i32 @get_oabi_flock(ptr noundef nonnull %flock, ptr noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.sw.epilog_crit_edge

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end8:                                          ; preds = %if.end4
  %call10 = call i32 @fcntl_getlk64(ptr noundef nonnull %1, i32 noundef %cmd, ptr noundef nonnull %flock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = call fastcc i32 @put_oabi_flock(ptr noundef nonnull %flock, ptr noundef %0)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end.sw.bb15_crit_edge, %if.end.sw.bb15_crit_edge50, %if.end.sw.bb15_crit_edge51, %if.end.sw.bb15_crit_edge52
  %call17 = tail call i32 @security_file_fcntl(ptr noundef nonnull %1, i32 noundef %cmd, i32 noundef %arg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end20:                                         ; preds = %sw.bb15
  %call21 = call fastcc i32 @get_oabi_flock(ptr noundef nonnull %flock, ptr noundef %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.sw.epilog_crit_edge

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = call i32 @fcntl_setlk64(i32 noundef %fd, ptr noundef nonnull %1, i32 noundef %cmd, ptr noundef nonnull %flock) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 @sys_fcntl64(i32 noundef %fd, i32 noundef %cmd, i32 noundef %arg) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end24, %if.end20.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %if.then12, %if.end8.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call27, %sw.default ], [ %call17, %sw.bb15.sw.epilog_crit_edge ], [ %call21, %if.end20.sw.epilog_crit_edge ], [ %call26, %if.end24 ], [ %call, %sw.bb.sw.epilog_crit_edge ], [ %call5, %if.end4.sw.epilog_crit_edge ], [ %call10, %if.end8.sw.epilog_crit_edge ], [ %call13, %if.then12 ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.epilog.out_crit_edge, label %if.then.i

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void @fput(ptr noundef nonnull %1) #5
  br label %out

out:                                              ; preds = %if.then.i, %sw.epilog.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ -9, %entry.out_crit_edge ], [ %err.0, %sw.epilog.out_crit_edge ], [ %err.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %flock) #5
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_fcntl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_oabi_flock(ptr nocapture noundef writeonly %kernel, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %user = alloca %struct.oabi_flock64, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %user) #5
  %0 = getelementptr inbounds %struct.oabi_flock64, ptr %user, i32 0, i32 1
  %1 = getelementptr inbounds %struct.oabi_flock64, ptr %user, i32 0, i32 2
  %2 = getelementptr inbounds %struct.oabi_flock64, ptr %user, i32 0, i32 3
  %3 = getelementptr inbounds %struct.oabi_flock64, ptr %user, i32 0, i32 4
  %4 = call ptr @memset(ptr %user, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 24, i32 -1226833920) #8, !srcloc !27
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !28

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user, i32 noundef 24) #5
  %6 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !29
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %user, ptr noundef %arg, i32 noundef 24) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !28

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i12 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %entry.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i12
  %add.ptr.i.i = getelementptr i8, ptr %user, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i12)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %user to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %user, align 4
  %12 = ptrtoint ptr %kernel to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %kernel, align 8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %0, align 2
  %l_whence2 = getelementptr inbounds %struct.flock64, ptr %kernel, i32 0, i32 1
  %15 = ptrtoint ptr %l_whence2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %l_whence2, align 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %1, align 4
  %l_start3 = getelementptr inbounds %struct.flock64, ptr %kernel, i32 0, i32 2
  %18 = ptrtoint ptr %l_start3 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %l_start3, align 8
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %2, align 4
  %l_len4 = getelementptr inbounds %struct.flock64, ptr %kernel, i32 0, i32 3
  %21 = ptrtoint ptr %l_len4 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %l_len4, align 8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %l_pid5 = getelementptr inbounds %struct.flock64, ptr %kernel, i32 0, i32 4
  %24 = ptrtoint ptr %l_pid5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %l_pid5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %user) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_getlk64(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @put_oabi_flock(ptr nocapture noundef readonly %kernel, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %user = alloca %struct.oabi_flock64, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %user) #5
  %0 = getelementptr inbounds %struct.oabi_flock64, ptr %user, i32 0, i32 1
  %1 = getelementptr inbounds %struct.oabi_flock64, ptr %user, i32 0, i32 2
  %2 = getelementptr inbounds %struct.oabi_flock64, ptr %user, i32 0, i32 3
  %3 = getelementptr inbounds %struct.oabi_flock64, ptr %user, i32 0, i32 4
  %4 = ptrtoint ptr %kernel to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %kernel, align 8
  %6 = ptrtoint ptr %user to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %user, align 4
  %l_whence = getelementptr inbounds %struct.flock64, ptr %kernel, i32 0, i32 1
  %7 = ptrtoint ptr %l_whence to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %l_whence, align 2
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %0, align 2
  %l_start = getelementptr inbounds %struct.flock64, ptr %kernel, i32 0, i32 2
  %10 = ptrtoint ptr %l_start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %l_start, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %1, align 4
  %l_len = getelementptr inbounds %struct.flock64, ptr %kernel, i32 0, i32 3
  %13 = ptrtoint ptr %l_len to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %l_len, align 8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %2, align 4
  %l_pid = getelementptr inbounds %struct.flock64, ptr %kernel, i32 0, i32 4
  %16 = ptrtoint ptr %l_pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l_pid, align 8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %3, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 24, i32 -1226833920) #8, !srcloc !23
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %user, i32 noundef 24) #5
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %user, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %20 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %user) #5
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcntl_setlk64(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sys_fcntl64(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_epoll_ctl(i32 noundef %epfd, i32 noundef %op, i32 noundef %fd, ptr noundef %event) local_unnamed_addr #0 align 64 {
entry:
  %user = alloca %struct.oabi_epoll_event, align 4
  %kernel = alloca %struct.epoll_event, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %user) #5
  %0 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %user, align 4, !annotation !32
  %1 = getelementptr inbounds %struct.oabi_epoll_event, ptr %user, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kernel) #5
  %3 = ptrtoint ptr %kernel to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %kernel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %op)
  %cmp.i.not = icmp eq i32 %op, 2
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.end59.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %event, i32 12, i32 -1226833920) #8, !srcloc !27
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !28

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user, i32 noundef 12) #5
  %5 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !29
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %user, ptr noundef %event, i32 noundef 12) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !28

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i10 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i10
  %add.ptr.i.i = getelementptr i8, ptr %user, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i10)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %user, align 4
  %11 = ptrtoint ptr %kernel to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %kernel, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %1, align 4
  %data4 = getelementptr inbounds %struct.epoll_event, ptr %kernel, i32 0, i32 1
  %14 = ptrtoint ptr %data4 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %data4, align 8
  %call5 = call i32 @do_epoll_ctl(i32 noundef %epfd, i32 noundef %op, i32 noundef %fd, ptr noundef nonnull %kernel, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %call5, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kernel) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %user) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_epoll_ctl(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @epoll_put_uevent(i32 noundef %revents, i64 noundef %data, ptr noundef %uevent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %abi_syscall.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %abi_syscall.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %abi_syscall.i.i, align 4
  %and.i2.i = and i32 %7, 9437184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.i.i.not = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.i.i.not, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 312) #5
  %8 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !29
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %uevent, i32 %revents, i32 -1226833921) #5, !srcloc !33
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %data6 = getelementptr inbounds %struct.oabi_epoll_event, ptr %uevent, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 313) #5
  %12 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i68 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i68 to ptr
  %cpu_domain.i.i69 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i69) #3, !srcloc !29
  %and.i70 = and i32 %14, -13
  %or.i71 = or i32 %and.i70, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i71) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %data6, i64 %data, i32 -1226833921) #5, !srcloc !34
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  %add.ptr = getelementptr %struct.oabi_epoll_event, ptr %uevent, i32 1
  %spec.select = select i1 %tobool19.not, ptr %add.ptr, ptr null
  br label %return

if.end21:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 319) #5
  %16 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i72 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i72 to ptr
  %cpu_domain.i.i73 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i73) #3, !srcloc !29
  %and.i74 = and i32 %18, -13
  %or.i75 = or i32 %and.i74, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i75) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %uevent, i32 %revents, i32 -1226833921) #5, !srcloc !35
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool38.not = icmp eq i32 %19, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %if.end21.return_crit_edge

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false39:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %data43 = getelementptr inbounds %struct.epoll_event, ptr %uevent, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 320) #5
  %20 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i76 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i76 to ptr
  %cpu_domain.i.i77 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i77) #3, !srcloc !29
  %and.i78 = and i32 %22, -13
  %or.i79 = or i32 %and.i78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i79) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %data43, i64 %data, i32 -1226833921) #5, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool56.not = icmp eq i32 %23, 0
  %add.ptr59 = getelementptr %struct.epoll_event, ptr %uevent, i32 1
  %spec.select67 = select i1 %tobool56.not, ptr %add.ptr59, ptr null
  br label %return

return:                                           ; preds = %lor.lhs.false39, %if.end21.return_crit_edge, %lor.lhs.false, %if.then.return_crit_edge
  %retval.1 = phi ptr [ null, %if.then.return_crit_edge ], [ null, %if.end21.return_crit_edge ], [ %spec.select, %lor.lhs.false ], [ %spec.select67, %lor.lhs.false39 ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_semtimedop(i32 noundef %semid, ptr noundef %tsops, i32 noundef %nsops, ptr noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %osb = alloca %struct.oabi_sembuf, align 8
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipc_ns, align 4
  %arrayidx = getelementptr %struct.ipc_namespace, ptr %7, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %nsops)
  %cmp = icmp ult i32 %9, %nsops
  br i1 %cmp, label %entry.cleanup28_crit_edge, label %if.end

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

if.end:                                           ; preds = %entry
  %10 = add i32 %nsops, -501
  call void @__sanitizer_cov_trace_const_cmp4(i32 -500, i32 %10)
  %11 = icmp ult i32 %10, -500
  br i1 %11, label %if.end.cleanup28_crit_edge, label %kvmalloc_array.exit

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

kvmalloc_array.exit:                              ; preds = %if.end
  %12 = mul nuw nsw i32 %nsops, 6
  %call.i.i56 = tail call noalias ptr @kvmalloc_node(i32 noundef %12, i32 noundef 3264, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i.i56, null
  br i1 %tobool.not, label %kvmalloc_array.exit.cleanup28_crit_edge, label %for.body.lr.ph

kvmalloc_array.exit.cleanup28_crit_edge:          ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup28

for.body.lr.ph:                                   ; preds = %kvmalloc_array.exit
  %13 = getelementptr inbounds %struct.oabi_sembuf, ptr %osb, i32 0, i32 1
  %14 = getelementptr inbounds %struct.oabi_sembuf, ptr %osb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %copy_from_user.exit.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %copy_from_user.exit.for.body_crit_edge ]
  %err.068 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %copy_from_user.exit.for.body_crit_edge ]
  %tsops.addr.065 = phi ptr [ %tsops, %for.body.lr.ph ], [ %incdec.ptr, %copy_from_user.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %osb) #5
  %15 = ptrtoint ptr %osb to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %osb, align 8
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %for.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.then11.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %tsops.addr.065, i32 8, i32 -1226833920) #8, !srcloc !27
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !28

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %osb, i32 noundef 8) #5
  %17 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !29
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %osb, ptr noundef %tsops.addr.065, i32 noundef 8) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !28

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %for.body.if.then11.i.i_crit_edge
  %res.0.i.i63 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %for.body.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i63
  %add.ptr.i.i = getelementptr i8, ptr %osb, i32 %sub.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i63)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ %res.0.i.i63, %if.then11.i.i ]
  %or = or i32 %n.addr.0.i, %err.068
  %21 = ptrtoint ptr %osb to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %osb, align 8
  %arrayidx10 = getelementptr %struct.sembuf, ptr %call.i.i56, i32 %i.069
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx10, align 2
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %13, align 2
  %sem_op13 = getelementptr %struct.sembuf, ptr %call.i.i56, i32 %i.069, i32 1
  %26 = ptrtoint ptr %sem_op13 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %sem_op13, align 2
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %14, align 4
  %sem_flg15 = getelementptr %struct.sembuf, ptr %call.i.i56, i32 %i.069, i32 2
  %29 = ptrtoint ptr %sem_flg15 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %sem_flg15, align 2
  %incdec.ptr = getelementptr %struct.oabi_sembuf, ptr %tsops.addr.065, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %osb) #5
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %nsops
  br i1 %exitcond.not, label %for.end, label %copy_from_user.exit.for.body_crit_edge

copy_from_user.exit.for.body_crit_edge:           ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %phi.cmp = icmp eq i32 %or, 0
  br i1 %phi.cmp, label %if.end18, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %for.end
  %tobool19.not = icmp eq ptr %timeout, null
  br i1 %tobool19.not, label %if.end26, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #5
  %30 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %call21 = call i32 @get_old_timespec32(ptr noundef nonnull %ts, ptr noundef nonnull %timeout) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = call i32 @__do_semtimedop(i32 noundef %semid, ptr noundef nonnull %call.i.i56, i32 noundef %nsops, ptr noundef nonnull %ts, ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then20.cleanup_crit_edge
  %err.1 = phi i32 [ %call25, %if.end24 ], [ %call21, %if.then20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #5
  br label %out

if.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = call i32 @__do_semtimedop(i32 noundef %semid, ptr noundef nonnull %call.i.i56, i32 noundef %nsops, ptr noundef null, ptr noundef %7) #5
  br label %out

out:                                              ; preds = %if.end26, %cleanup, %for.end.out_crit_edge
  %err.2 = phi i32 [ %err.1, %cleanup ], [ %call27, %if.end26 ], [ -14, %for.end.out_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i56) #5
  br label %cleanup28

cleanup28:                                        ; preds = %out, %kvmalloc_array.exit.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.0 = phi i32 [ %err.2, %out ], [ -7, %entry.cleanup28_crit_edge ], [ -22, %if.end.cleanup28_crit_edge ], [ -12, %kvmalloc_array.exit.cleanup28_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__do_semtimedop(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_semop(i32 noundef %semid, ptr noundef %tsops, i32 noundef %nsops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sys_oabi_semtimedop(i32 noundef %semid, ptr noundef %tsops, i32 noundef %nsops, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_ipc(i32 noundef %call, i32 noundef %first, i32 noundef %second, i32 noundef %third, ptr noundef %ptr, i32 noundef %fifth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i32 %call to i16
  %0 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %trunc, label %sw.default [
    i16 1, label %sw.bb
    i16 4, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @sys_oabi_semtimedop(i32 noundef %first, ptr noundef %ptr, i32 noundef %second, ptr noundef null)
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = inttoptr i32 %fifth to ptr
  %call3 = tail call i32 @sys_oabi_semtimedop(i32 noundef %first, ptr noundef %ptr, i32 noundef %second, ptr noundef %1)
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @sys_ipc(i32 noundef %call, i32 noundef %first, i32 noundef %second, i32 noundef %third, ptr noundef %ptr, i32 noundef %fifth) #5
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %call4, %sw.default ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sys_ipc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_bind(i32 noundef %fd, ptr noundef %addr, i32 noundef %addrlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %addrlen)
  %cmp = icmp eq i32 %addrlen, 112
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 431) #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !29
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %addr, i32 -1226833921) #5, !srcloc !37
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp4 = icmp eq i32 %asmresult, 0
  %asmresult2 = extractvalue { i32, i32 } %3, 1
  %conv7 = and i32 %asmresult2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 1
  %or.cond = select i1 %cmp4, i1 %cmp8, i1 false
  %spec.select = select i1 %or.cond, i32 110, i32 112
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %addrlen.addr.0 = phi i32 [ %addrlen, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call10 = tail call i32 @sys_bind(i32 noundef %fd, ptr noundef %addr, i32 noundef %addrlen.addr.0) #5
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sys_bind(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_connect(i32 noundef %fd, ptr noundef %addr, i32 noundef %addrlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %addrlen)
  %cmp = icmp eq i32 %addrlen, 112
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 441) #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !29
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %addr, i32 -1226833921) #5, !srcloc !38
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp4 = icmp eq i32 %asmresult, 0
  %asmresult2 = extractvalue { i32, i32 } %3, 1
  %conv7 = and i32 %asmresult2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 1
  %or.cond = select i1 %cmp4, i1 %cmp8, i1 false
  %spec.select = select i1 %or.cond, i32 110, i32 112
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %addrlen.addr.0 = phi i32 [ %addrlen, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call10 = tail call i32 @sys_connect(i32 noundef %fd, ptr noundef %addr, i32 noundef %addrlen.addr.0) #5
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sys_connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_sendto(i32 noundef %fd, ptr noundef %buff, i32 noundef %len, i32 noundef %flags, ptr noundef %addr, i32 noundef %addrlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %addrlen)
  %cmp = icmp eq i32 %addrlen, 112
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 454) #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !29
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %addr, i32 -1226833921) #5, !srcloc !39
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp4 = icmp eq i32 %asmresult, 0
  %asmresult2 = extractvalue { i32, i32 } %3, 1
  %conv7 = and i32 %asmresult2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 1
  %or.cond = select i1 %cmp4, i1 %cmp8, i1 false
  %spec.select = select i1 %or.cond, i32 110, i32 112
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %addrlen.addr.0 = phi i32 [ %addrlen, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call10 = tail call i32 @sys_sendto(i32 noundef %fd, ptr noundef %buff, i32 noundef %len, i32 noundef %flags, ptr noundef %addr, i32 noundef %addrlen.addr.0) #5
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sys_sendto(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_sendmsg(i32 noundef %fd, ptr noundef %msg, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 466) #5
  %msg_namelen1 = getelementptr inbounds %struct.user_msghdr, ptr %msg, i32 0, i32 1
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !29
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %msg_namelen1, i32 -1226833921) #5, !srcloc !40
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp = icmp eq i32 %asmresult, 0
  %asmresult2 = extractvalue { i32, i32 } %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %asmresult2)
  %cmp5 = icmp eq i32 %asmresult2, 112
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 468) #5
  %4 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i56 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i56 to ptr
  %cpu_domain.i.i57 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i57) #3, !srcloc !29
  %and.i58 = and i32 %6, -13
  %or.i59 = or i32 %and.i58, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i59) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %7 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %msg, i32 -1226833921) #5, !srcloc !41
  %asmresult16 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult16)
  %cmp19 = icmp eq i32 %asmresult16, 0
  br i1 %cmp19, label %land.lhs.true20, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true20:                                  ; preds = %land.lhs.true6
  %asmresult17 = extractvalue { i32, i32 } %7, 1
  %8 = inttoptr i32 %asmresult17 to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 469) #5
  %9 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i60 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i60 to ptr
  %cpu_domain.i.i61 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i61) #3, !srcloc !29
  %and.i62 = and i32 %11, -13
  %or.i63 = or i32 %and.i62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i63) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %8, i32 -1226833921) #5, !srcloc !42
  %asmresult31 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult31)
  %cmp34 = icmp eq i32 %asmresult31, 0
  %asmresult32 = extractvalue { i32, i32 } %12, 1
  %conv37 = and i32 %asmresult32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv37)
  %cmp38 = icmp eq i32 %conv37, 1
  %or.cond55 = select i1 %cmp34, i1 %cmp38, i1 false
  br i1 %or.cond55, label %if.then, label %land.lhs.true20.if.end_crit_edge

land.lhs.true20.if.end_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 481) #5
  %13 = tail call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i64 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i64 to ptr
  %cpu_domain.i.i65 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i65) #3, !srcloc !29
  %and.i66 = and i32 %15, -13
  %or.i67 = or i32 %and.i66, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i67) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %msg_namelen1, i32 110, i32 -1226833921) #5, !srcloc !43
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #5, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true20.if.end_crit_edge, %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call50 = tail call i32 @sys_sendmsg(i32 noundef %fd, ptr noundef %msg, i32 noundef %flags) #5
  ret i32 %call50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sys_sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_oabi_socketcall(i32 noundef %call, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %a = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a) #5
  %0 = getelementptr inbounds [6 x i32], ptr %a, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i32], ptr %a, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i32], ptr %a, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i32], ptr %a, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i32], ptr %a, i32 0, i32 5
  %5 = call ptr @memset(ptr %a, i32 255, i32 24)
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call, label %sw.default [
    i32 2, label %if.end59.i.i
    i32 3, label %if.end59.i.i47
    i32 11, label %if.end59.i.i70
    i32 16, label %if.end59.i.i93
  ]

if.end59.i.i:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %args, i32 12, i32 -1226833920) #8, !srcloc !27
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !28

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %a, i32 noundef 12) #5
  %8 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !29
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %a, ptr noundef %args, i32 noundef 12) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !28

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i146 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i146
  %add.ptr.i.i = getelementptr i8, ptr %a, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i146)
  br label %sw.epilog

if.then:                                          ; preds = %if.end.i.i
  %12 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %a, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %18)
  %cmp.i = icmp eq i32 %18, 112
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.sys_oabi_bind.exit_crit_edge

if.then.sys_oabi_bind.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sys_oabi_bind.exit

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 431) #5
  %19 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i113 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i113 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !29
  %and.i.i = and i32 %21, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %22 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %16, i32 -1226833921) #5, !srcloc !37
  %asmresult.i = extractvalue { i32, i32 } %22, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp4.i = icmp eq i32 %asmresult.i, 0
  %asmresult2.i = extractvalue { i32, i32 } %22, 1
  %conv7.i = and i32 %asmresult2.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv7.i)
  %cmp8.i = icmp eq i32 %conv7.i, 1
  %or.cond.i = select i1 %cmp4.i, i1 %cmp8.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 110, i32 112
  br label %sys_oabi_bind.exit

sys_oabi_bind.exit:                               ; preds = %land.lhs.true.i, %if.then.sys_oabi_bind.exit_crit_edge
  %addrlen.addr.0.i = phi i32 [ %18, %if.then.sys_oabi_bind.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %call10.i = call i32 @sys_bind(i32 noundef %13, ptr noundef %16, i32 noundef %addrlen.addr.0.i) #5
  br label %sw.epilog

if.end59.i.i47:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i48 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i48, label %if.end59.i.i47.if.then11.i.i64_crit_edge, label %land.lhs.true.i.i51

if.end59.i.i47.if.then11.i.i64_crit_edge:         ; preds = %if.end59.i.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i64

land.lhs.true.i.i51:                              ; preds = %if.end59.i.i47
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %args, i32 12, i32 -1226833920) #8, !srcloc !27
  %asmresult.i.i49 = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i49)
  %cmp.i6.i50 = icmp eq i32 %asmresult.i.i49, 0
  br i1 %cmp.i6.i50, label %if.end.i.i61, label %land.lhs.true.i.i51.if.then11.i.i64_crit_edge, !prof !28

land.lhs.true.i.i51.if.then11.i.i64_crit_edge:    ; preds = %land.lhs.true.i.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i64

if.end.i.i61:                                     ; preds = %land.lhs.true.i.i51
  %call.i.i.i52 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %a, i32 noundef 12) #5
  %24 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i.i53 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i53 to ptr
  %cpu_domain.i.i.i.i.i54 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i54) #3, !srcloc !29
  %and.i.i.i.i55 = and i32 %26, -13
  %or.i.i.i.i56 = or i32 %and.i.i.i.i55, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i56) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %call1.i.i.i57 = call i32 @arm_copy_from_user(ptr noundef nonnull %a, ptr noundef %args, i32 noundef 12) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i57)
  %tobool4.not.i.i60 = icmp eq i32 %call1.i.i.i57, 0
  br i1 %tobool4.not.i.i60, label %if.then9, label %if.end.i.i61.if.then11.i.i64_crit_edge, !prof !28

if.end.i.i61.if.then11.i.i64_crit_edge:           ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i64

if.then11.i.i64:                                  ; preds = %if.end.i.i61.if.then11.i.i64_crit_edge, %land.lhs.true.i.i51.if.then11.i.i64_crit_edge, %if.end59.i.i47.if.then11.i.i64_crit_edge
  %res.0.i.i59151 = phi i32 [ %call1.i.i.i57, %if.end.i.i61.if.then11.i.i64_crit_edge ], [ 12, %if.end59.i.i47.if.then11.i.i64_crit_edge ], [ 12, %land.lhs.true.i.i51.if.then11.i.i64_crit_edge ]
  %sub.i.i62 = sub i32 12, %res.0.i.i59151
  %add.ptr.i.i63 = getelementptr i8, ptr %a, i32 %sub.i.i62
  %27 = call ptr @memset(ptr %add.ptr.i.i63, i32 0, i32 %res.0.i.i59151)
  br label %sw.epilog

if.then9:                                         ; preds = %if.end.i.i61
  %28 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %a, align 4
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %0, align 4
  %32 = inttoptr i32 %31 to ptr
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %34)
  %cmp.i114 = icmp eq i32 %34, 112
  br i1 %cmp.i114, label %land.lhs.true.i126, label %if.then9.sys_oabi_connect.exit_crit_edge

if.then9.sys_oabi_connect.exit_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sys_oabi_connect.exit

land.lhs.true.i126:                               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 441) #5
  %35 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i115 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i115 to ptr
  %cpu_domain.i.i.i116 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i116) #3, !srcloc !29
  %and.i.i117 = and i32 %37, -13
  %or.i.i118 = or i32 %and.i.i117, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i118) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %38 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %32, i32 -1226833921) #5, !srcloc !38
  %asmresult.i119 = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i119)
  %cmp4.i120 = icmp eq i32 %asmresult.i119, 0
  %asmresult2.i121 = extractvalue { i32, i32 } %38, 1
  %conv7.i122 = and i32 %asmresult2.i121, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv7.i122)
  %cmp8.i123 = icmp eq i32 %conv7.i122, 1
  %or.cond.i124 = select i1 %cmp4.i120, i1 %cmp8.i123, i1 false
  %spec.select.i125 = select i1 %or.cond.i124, i32 110, i32 112
  br label %sys_oabi_connect.exit

sys_oabi_connect.exit:                            ; preds = %land.lhs.true.i126, %if.then9.sys_oabi_connect.exit_crit_edge
  %addrlen.addr.0.i127 = phi i32 [ %34, %if.then9.sys_oabi_connect.exit_crit_edge ], [ %spec.select.i125, %land.lhs.true.i126 ]
  %call10.i128 = call i32 @sys_connect(i32 noundef %29, ptr noundef %32, i32 noundef %addrlen.addr.0.i127) #5
  br label %sw.epilog

if.end59.i.i70:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i71 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i71, label %if.end59.i.i70.if.then11.i.i87_crit_edge, label %land.lhs.true.i.i74

if.end59.i.i70.if.then11.i.i87_crit_edge:         ; preds = %if.end59.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i87

land.lhs.true.i.i74:                              ; preds = %if.end59.i.i70
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %args, i32 24, i32 -1226833920) #8, !srcloc !27
  %asmresult.i.i72 = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i72)
  %cmp.i6.i73 = icmp eq i32 %asmresult.i.i72, 0
  br i1 %cmp.i6.i73, label %if.end.i.i84, label %land.lhs.true.i.i74.if.then11.i.i87_crit_edge, !prof !28

land.lhs.true.i.i74.if.then11.i.i87_crit_edge:    ; preds = %land.lhs.true.i.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i87

if.end.i.i84:                                     ; preds = %land.lhs.true.i.i74
  %call.i.i.i75 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %a, i32 noundef 24) #5
  %40 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i.i76 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i76 to ptr
  %cpu_domain.i.i.i.i.i77 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i77) #3, !srcloc !29
  %and.i.i.i.i78 = and i32 %42, -13
  %or.i.i.i.i79 = or i32 %and.i.i.i.i78, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i79) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %call1.i.i.i80 = call i32 @arm_copy_from_user(ptr noundef nonnull %a, ptr noundef %args, i32 noundef 24) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i80)
  %tobool4.not.i.i83 = icmp eq i32 %call1.i.i.i80, 0
  br i1 %tobool4.not.i.i83, label %if.then19, label %if.end.i.i84.if.then11.i.i87_crit_edge, !prof !28

if.end.i.i84.if.then11.i.i87_crit_edge:           ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i87

if.then11.i.i87:                                  ; preds = %if.end.i.i84.if.then11.i.i87_crit_edge, %land.lhs.true.i.i74.if.then11.i.i87_crit_edge, %if.end59.i.i70.if.then11.i.i87_crit_edge
  %res.0.i.i82156 = phi i32 [ %call1.i.i.i80, %if.end.i.i84.if.then11.i.i87_crit_edge ], [ 24, %if.end59.i.i70.if.then11.i.i87_crit_edge ], [ 24, %land.lhs.true.i.i74.if.then11.i.i87_crit_edge ]
  %sub.i.i85 = sub i32 24, %res.0.i.i82156
  %add.ptr.i.i86 = getelementptr i8, ptr %a, i32 %sub.i.i85
  %43 = call ptr @memset(ptr %add.ptr.i.i86, i32 0, i32 %res.0.i.i82156)
  br label %sw.epilog

if.then19:                                        ; preds = %if.end.i.i84
  %44 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %a, align 4
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %0, align 4
  %48 = inttoptr i32 %47 to ptr
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %1, align 4
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %3, align 4
  %55 = inttoptr i32 %54 to ptr
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %57)
  %cmp.i129 = icmp eq i32 %57, 112
  br i1 %cmp.i129, label %land.lhs.true.i141, label %if.then19.sys_oabi_sendto.exit_crit_edge

if.then19.sys_oabi_sendto.exit_crit_edge:         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sys_oabi_sendto.exit

land.lhs.true.i141:                               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 454) #5
  %58 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i130 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i130 to ptr
  %cpu_domain.i.i.i131 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 4
  %60 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i131) #3, !srcloc !29
  %and.i.i132 = and i32 %60, -13
  %or.i.i133 = or i32 %and.i.i132, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i133) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %61 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %55, i32 -1226833921) #5, !srcloc !39
  %asmresult.i134 = extractvalue { i32, i32 } %61, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i134)
  %cmp4.i135 = icmp eq i32 %asmresult.i134, 0
  %asmresult2.i136 = extractvalue { i32, i32 } %61, 1
  %conv7.i137 = and i32 %asmresult2.i136, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv7.i137)
  %cmp8.i138 = icmp eq i32 %conv7.i137, 1
  %or.cond.i139 = select i1 %cmp4.i135, i1 %cmp8.i138, i1 false
  %spec.select.i140 = select i1 %or.cond.i139, i32 110, i32 112
  br label %sys_oabi_sendto.exit

sys_oabi_sendto.exit:                             ; preds = %land.lhs.true.i141, %if.then19.sys_oabi_sendto.exit_crit_edge
  %addrlen.addr.0.i142 = phi i32 [ %57, %if.then19.sys_oabi_sendto.exit_crit_edge ], [ %spec.select.i140, %land.lhs.true.i141 ]
  %call10.i143 = call i32 @sys_sendto(i32 noundef %45, ptr noundef %48, i32 noundef %50, i32 noundef %52, ptr noundef %55, i32 noundef %addrlen.addr.0.i142) #5
  br label %sw.epilog

if.end59.i.i93:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i94 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i94, label %if.end59.i.i93.if.then11.i.i110_crit_edge, label %land.lhs.true.i.i97

if.end59.i.i93.if.then11.i.i110_crit_edge:        ; preds = %if.end59.i.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i110

land.lhs.true.i.i97:                              ; preds = %if.end59.i.i93
  %62 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %args, i32 12, i32 -1226833920) #8, !srcloc !27
  %asmresult.i.i95 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i95)
  %cmp.i6.i96 = icmp eq i32 %asmresult.i.i95, 0
  br i1 %cmp.i6.i96, label %if.end.i.i107, label %land.lhs.true.i.i97.if.then11.i.i110_crit_edge, !prof !28

land.lhs.true.i.i97.if.then11.i.i110_crit_edge:   ; preds = %land.lhs.true.i.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i110

if.end.i.i107:                                    ; preds = %land.lhs.true.i.i97
  %call.i.i.i98 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %a, i32 noundef 12) #5
  %63 = call i32 @llvm.read_register.i32(metadata !13) #5
  %and.i.i.i.i.i.i99 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i99 to ptr
  %cpu_domain.i.i.i.i.i100 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i100) #3, !srcloc !29
  %and.i.i.i.i101 = and i32 %65, -13
  %or.i.i.i.i102 = or i32 %and.i.i.i.i101, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i102) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %call1.i.i.i103 = call i32 @arm_copy_from_user(ptr noundef nonnull %a, ptr noundef %args, i32 noundef 12) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i103)
  %tobool4.not.i.i106 = icmp eq i32 %call1.i.i.i103, 0
  br i1 %tobool4.not.i.i106, label %if.then32, label %if.end.i.i107.if.then11.i.i110_crit_edge, !prof !28

if.end.i.i107.if.then11.i.i110_crit_edge:         ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i110

if.then11.i.i110:                                 ; preds = %if.end.i.i107.if.then11.i.i110_crit_edge, %land.lhs.true.i.i97.if.then11.i.i110_crit_edge, %if.end59.i.i93.if.then11.i.i110_crit_edge
  %res.0.i.i105161 = phi i32 [ %call1.i.i.i103, %if.end.i.i107.if.then11.i.i110_crit_edge ], [ 12, %if.end59.i.i93.if.then11.i.i110_crit_edge ], [ 12, %land.lhs.true.i.i97.if.then11.i.i110_crit_edge ]
  %sub.i.i108 = sub i32 12, %res.0.i.i105161
  %add.ptr.i.i109 = getelementptr i8, ptr %a, i32 %sub.i.i108
  %66 = call ptr @memset(ptr %add.ptr.i.i109, i32 0, i32 %res.0.i.i105161)
  br label %sw.epilog

if.then32:                                        ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %a, align 4
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %0, align 4
  %71 = inttoptr i32 %70 to ptr
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %1, align 4
  %call36 = call i32 @sys_oabi_sendmsg(i32 noundef %68, ptr noundef %71, i32 noundef %73)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call i32 @sys_socketcall(i32 noundef %call, ptr noundef %args) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then32, %if.then11.i.i110, %sys_oabi_sendto.exit, %if.then11.i.i87, %sys_oabi_connect.exit, %if.then11.i.i64, %sys_oabi_bind.exit, %if.then11.i.i
  %r.0 = phi i32 [ %call38, %sw.default ], [ %call36, %if.then32 ], [ %call10.i143, %sys_oabi_sendto.exit ], [ %call10.i128, %sys_oabi_connect.exit ], [ %call10.i, %sys_oabi_bind.exit ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i64 ], [ -14, %if.then11.i.i87 ], [ -14, %if.then11.i.i110 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a) #5
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sys_socketcall(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/sys_oabi-compat.c", i32 312, i32 7}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/sys_oabi-compat.c", i32 128, i32 32}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/sys_oabi-compat.c", i32 129, i32 32}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!8 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
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
!23 = !{i64 2152236670, i64 2152236695}
!24 = !{!25}
!25 = distinct !{!25, !26, !"fdget_raw: %agg.result"}
!26 = distinct !{!26, !"fdget_raw"}
!27 = !{i64 2152235989, i64 2152236014}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 4731544}
!30 = !{i64 4731741}
!31 = !{i64 2152216974}
!32 = !{!"auto-init"}
!33 = !{i64 2155023873, i64 2155024153, i64 2155024487, i64 2155024821}
!34 = !{i64 2155034704, i64 2155034984, i64 2155035318, i64 2155035652}
!35 = !{i64 2155041644, i64 2155041924, i64 2155042258, i64 2155042592}
!36 = !{i64 2155052475, i64 2155052755, i64 2155053089, i64 2155053423}
!37 = !{i64 2155059906, i64 2155060186, i64 2155060520, i64 2155060854}
!38 = !{i64 2155072187, i64 2155072467, i64 2155072801, i64 2155073135}
!39 = !{i64 2155084468, i64 2155084748, i64 2155085082, i64 2155085416}
!40 = !{i64 2155099321, i64 2155099601, i64 2155099935, i64 2155100269}
!41 = !{i64 2155111537, i64 2155111817, i64 2155112151, i64 2155112485}
!42 = !{i64 2155121249, i64 2155121529, i64 2155121863, i64 2155122197}
!43 = !{i64 2155133337, i64 2155133617, i64 2155133951, i64 2155134285}
