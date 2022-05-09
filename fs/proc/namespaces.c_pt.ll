; ModuleID = '/llk/IR_all_yes/fs/proc/namespaces.c_pt.bc'
source_filename = "../fs/proc/namespaces.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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

@proc_ns_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_ns_dir_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_ns_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @proc_ns_dir_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @pid_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ns_entries = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @netns_operations, ptr @utsns_operations, ptr @ipcns_operations, ptr @pidns_operations, ptr @pidns_for_children_operations, ptr @userns_operations, ptr @mntns_operations, ptr @cgroupns_operations], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@netns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@utsns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@ipcns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@pidns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@pidns_for_children_operations = external dso_local constant %struct.proc_ns_operations, align 4
@userns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@mntns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@cgroupns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@proc_ns_link_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @proc_ns_get_link, ptr null, ptr null, ptr @proc_ns_readlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@pid_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [23 x i8] c"proc_ns_dir_operations\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 145, i32 30 }
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"ns_entries\00", align 1
@___asan_gen_.6 = private constant [24 x i8] c"../fs/proc/namespaces.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 15, i32 41 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 3566, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 3571, i32 25 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @proc_ns_dir_operations, ptr @ns_entries, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_ns_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_entries to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_ns_dir_readdir(ptr noundef %file, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup16_crit_edge, label %if.end

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup16

if.end:                                           ; preds = %entry
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i64 %5, label %if.end5 [
    i64 0, label %if.then.i
    i64 1, label %if.end.if.then6.i_crit_edge
  ]

if.end.if.then6.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.then.i:                                        ; preds = %if.end
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %13 to i64
  %call.i.i = tail call i32 %7(ptr noundef %ctx, ptr noundef nonnull @.str, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1, ptr %pos.i, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.end.if.then6.i_crit_edge
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #6
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #6
  %conv.i20.i = zext i32 %24 to i64
  %call1.i.i = tail call i32 %16(ptr noundef %ctx, ptr noundef nonnull @.str.1, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end5.thread, label %if.then6.i.out_crit_edge

if.then6.i.out_crit_edge:                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5.thread:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 2, ptr %pos.i, align 8
  br label %if.end7

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 9, i64 %5)
  %cmp = icmp sgt i64 %5, 9
  %extract.t = trunc i64 %5 to i32
  br i1 %cmp, label %if.end5.out_crit_edge, label %if.end5.if.end7_crit_edge

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end7:                                          ; preds = %if.end5.if.end7_crit_edge, %if.end5.thread
  %.off0 = phi i32 [ 2, %if.end5.thread ], [ %extract.t, %if.end5.if.end7_crit_edge ]
  %idx.ext = add i32 %.off0, -2
  %add.ptr = getelementptr ptr, ptr @ns_entries, i32 %idx.ext
  %cmp9.not37 = icmp ugt ptr %add.ptr, getelementptr inbounds ([8 x ptr], ptr @ns_entries, i32 0, i32 7)
  br i1 %cmp9.not37, label %if.end7.out_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  br label %while.body

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end7.while.body_crit_edge
  %entry2.038 = phi ptr [ %incdec.ptr, %cleanup.while.body_crit_edge ], [ %add.ptr, %if.end7.while.body_crit_edge ]
  %26 = ptrtoint ptr %entry2.038 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entry2.038, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call11 = tail call i32 @strlen(ptr noundef %29) #9
  %call12 = tail call zeroext i1 @proc_fill_cache(ptr noundef %file, ptr noundef %ctx, ptr noundef %29, i32 noundef %call11, ptr noundef nonnull @proc_ns_instantiate, ptr noundef nonnull %call1.i, ptr noundef %27) #6
  br i1 %call12, label %cleanup, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

cleanup:                                          ; preds = %while.body
  %30 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pos.i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, ptr %pos.i, align 8
  %incdec.ptr = getelementptr ptr, ptr %entry2.038, i32 1
  %cmp9.not = icmp ugt ptr %incdec.ptr, getelementptr inbounds ([8 x ptr], ptr @ns_entries, i32 0, i32 7)
  br i1 %cmp9.not, label %cleanup.out_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %while.body.out_crit_edge, %if.end7.out_crit_edge, %if.end5.out_crit_edge, %if.then6.i.out_crit_edge, %if.then.i.out_crit_edge
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #6
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #6, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i31, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup16_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.cleanup16_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup16

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #6
  br label %cleanup16

if.then.i31:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #6
  br label %cleanup16

cleanup16:                                        ; preds = %if.then.i31, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup16_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup16_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_ns_dir_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dir, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #6
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.out_no_task_crit_edge, label %for.cond.preheader

entry.out_no_task_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_no_task

for.cond.preheader:                               ; preds = %entry
  %name9 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @netns_operations to i32))
  %4 = load ptr, ptr @netns_operations, align 4
  %call4 = tail call i32 @strlen(ptr noundef %4) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %3)
  %cmp5.not = icmp eq i32 %call4, %3
  br i1 %cmp5.not, label %if.end7, label %for.cond.preheader.for.body.1_crit_edge

for.cond.preheader.for.body.1_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.1

if.end7:                                          ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name9, align 8
  %bcmp = tail call i32 @bcmp(ptr %6, ptr %4, i32 %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %if.end7.for.end_crit_edge, label %if.end7.for.body.1_crit_edge

if.end7.for.body.1_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.1

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %if.end7.for.body.1_crit_edge, %for.cond.preheader.for.body.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @utsns_operations to i32))
  %7 = load ptr, ptr @utsns_operations, align 4
  %call4.1 = tail call i32 @strlen(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.1, i32 %3)
  %cmp5.not.1 = icmp eq i32 %call4.1, %3
  br i1 %cmp5.not.1, label %if.end7.1, label %for.body.1.for.body.2_crit_edge

for.body.1.for.body.2_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.2

if.end7.1:                                        ; preds = %for.body.1
  %8 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name9, align 8
  %bcmp.1 = tail call i32 @bcmp(ptr %9, ptr %7, i32 %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool12.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool12.not.1, label %if.end7.1.for.end_crit_edge, label %if.end7.1.for.body.2_crit_edge

if.end7.1.for.body.2_crit_edge:                   ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.2

if.end7.1.for.end_crit_edge:                      ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %if.end7.1.for.body.2_crit_edge, %for.body.1.for.body.2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipcns_operations to i32))
  %10 = load ptr, ptr @ipcns_operations, align 4
  %call4.2 = tail call i32 @strlen(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.2, i32 %3)
  %cmp5.not.2 = icmp eq i32 %call4.2, %3
  br i1 %cmp5.not.2, label %if.end7.2, label %for.body.2.for.body.3_crit_edge

for.body.2.for.body.3_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.3

if.end7.2:                                        ; preds = %for.body.2
  %11 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name9, align 8
  %bcmp.2 = tail call i32 @bcmp(ptr %12, ptr %10, i32 %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool12.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool12.not.2, label %if.end7.2.for.end_crit_edge, label %if.end7.2.for.body.3_crit_edge

if.end7.2.for.body.3_crit_edge:                   ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.3

if.end7.2.for.end_crit_edge:                      ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %if.end7.2.for.body.3_crit_edge, %for.body.2.for.body.3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pidns_operations to i32))
  %13 = load ptr, ptr @pidns_operations, align 4
  %call4.3 = tail call i32 @strlen(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.3, i32 %3)
  %cmp5.not.3 = icmp eq i32 %call4.3, %3
  br i1 %cmp5.not.3, label %if.end7.3, label %for.body.3.for.body.4_crit_edge

for.body.3.for.body.4_crit_edge:                  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.4

if.end7.3:                                        ; preds = %for.body.3
  %14 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name9, align 8
  %bcmp.3 = tail call i32 @bcmp(ptr %15, ptr %13, i32 %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %tobool12.not.3 = icmp eq i32 %bcmp.3, 0
  br i1 %tobool12.not.3, label %if.end7.3.for.end_crit_edge, label %if.end7.3.for.body.4_crit_edge

if.end7.3.for.body.4_crit_edge:                   ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.4

if.end7.3.for.end_crit_edge:                      ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.4:                                       ; preds = %if.end7.3.for.body.4_crit_edge, %for.body.3.for.body.4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pidns_for_children_operations to i32))
  %16 = load ptr, ptr @pidns_for_children_operations, align 4
  %call4.4 = tail call i32 @strlen(ptr noundef %16) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.4, i32 %3)
  %cmp5.not.4 = icmp eq i32 %call4.4, %3
  br i1 %cmp5.not.4, label %if.end7.4, label %for.body.4.for.body.5_crit_edge

for.body.4.for.body.5_crit_edge:                  ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.5

if.end7.4:                                        ; preds = %for.body.4
  %17 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name9, align 8
  %bcmp.4 = tail call i32 @bcmp(ptr %18, ptr %16, i32 %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.4)
  %tobool12.not.4 = icmp eq i32 %bcmp.4, 0
  br i1 %tobool12.not.4, label %if.end7.4.for.end_crit_edge, label %if.end7.4.for.body.5_crit_edge

if.end7.4.for.body.5_crit_edge:                   ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.5

if.end7.4.for.end_crit_edge:                      ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.5:                                       ; preds = %if.end7.4.for.body.5_crit_edge, %for.body.4.for.body.5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @userns_operations to i32))
  %19 = load ptr, ptr @userns_operations, align 4
  %call4.5 = tail call i32 @strlen(ptr noundef %19) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.5, i32 %3)
  %cmp5.not.5 = icmp eq i32 %call4.5, %3
  br i1 %cmp5.not.5, label %if.end7.5, label %for.body.5.for.body.6_crit_edge

for.body.5.for.body.6_crit_edge:                  ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.6

if.end7.5:                                        ; preds = %for.body.5
  %20 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name9, align 8
  %bcmp.5 = tail call i32 @bcmp(ptr %21, ptr %19, i32 %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.5)
  %tobool12.not.5 = icmp eq i32 %bcmp.5, 0
  br i1 %tobool12.not.5, label %if.end7.5.for.end_crit_edge, label %if.end7.5.for.body.6_crit_edge

if.end7.5.for.body.6_crit_edge:                   ; preds = %if.end7.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.6

if.end7.5.for.end_crit_edge:                      ; preds = %if.end7.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.6:                                       ; preds = %if.end7.5.for.body.6_crit_edge, %for.body.5.for.body.6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mntns_operations to i32))
  %22 = load ptr, ptr @mntns_operations, align 4
  %call4.6 = tail call i32 @strlen(ptr noundef %22) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.6, i32 %3)
  %cmp5.not.6 = icmp eq i32 %call4.6, %3
  br i1 %cmp5.not.6, label %if.end7.6, label %for.body.6.for.body.7_crit_edge

for.body.6.for.body.7_crit_edge:                  ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.7

if.end7.6:                                        ; preds = %for.body.6
  %23 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name9, align 8
  %bcmp.6 = tail call i32 @bcmp(ptr %24, ptr %22, i32 %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.6)
  %tobool12.not.6 = icmp eq i32 %bcmp.6, 0
  br i1 %tobool12.not.6, label %if.end7.6.for.end_crit_edge, label %if.end7.6.for.body.7_crit_edge

if.end7.6.for.body.7_crit_edge:                   ; preds = %if.end7.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.7

if.end7.6.for.end_crit_edge:                      ; preds = %if.end7.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.7:                                       ; preds = %if.end7.6.for.body.7_crit_edge, %for.body.6.for.body.7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cgroupns_operations to i32))
  %25 = load ptr, ptr @cgroupns_operations, align 4
  %call4.7 = tail call i32 @strlen(ptr noundef %25) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.7, i32 %3)
  %cmp5.not.7 = icmp eq i32 %call4.7, %3
  br i1 %cmp5.not.7, label %if.end7.7, label %for.body.7.for.inc.7_crit_edge

for.body.7.for.inc.7_crit_edge:                   ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.end7.7:                                        ; preds = %for.body.7
  %26 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name9, align 8
  %bcmp.7 = tail call i32 @bcmp(ptr %27, ptr %25, i32 %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.7)
  %tobool12.not.7 = icmp eq i32 %bcmp.7, 0
  br i1 %tobool12.not.7, label %if.end7.7.for.end_crit_edge, label %if.end7.7.for.inc.7_crit_edge

if.end7.7.for.inc.7_crit_edge:                    ; preds = %if.end7.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.end7.7.for.end_crit_edge:                      ; preds = %if.end7.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.7:                                        ; preds = %if.end7.7.for.inc.7_crit_edge, %for.body.7.for.inc.7_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.7, %if.end7.7.for.end_crit_edge, %if.end7.6.for.end_crit_edge, %if.end7.5.for.end_crit_edge, %if.end7.4.for.end_crit_edge, %if.end7.3.for.end_crit_edge, %if.end7.2.for.end_crit_edge, %if.end7.1.for.end_crit_edge, %if.end7.for.end_crit_edge
  %cmp15 = phi i1 [ true, %for.inc.7 ], [ false, %if.end7.7.for.end_crit_edge ], [ false, %if.end7.6.for.end_crit_edge ], [ false, %if.end7.5.for.end_crit_edge ], [ false, %if.end7.4.for.end_crit_edge ], [ false, %if.end7.3.for.end_crit_edge ], [ false, %if.end7.2.for.end_crit_edge ], [ false, %if.end7.1.for.end_crit_edge ], [ false, %if.end7.for.end_crit_edge ]
  %entry1.0.lcssa = phi ptr [ getelementptr inbounds ([8 x ptr], ptr @ns_entries, i32 1, i32 0), %for.inc.7 ], [ getelementptr inbounds ([8 x ptr], ptr @ns_entries, i32 0, i32 7), %if.end7.7.for.end_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @ns_entries, i32 0, i32 6), %if.end7.6.for.end_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @ns_entries, i32 0, i32 5), %if.end7.5.for.end_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @ns_entries, i32 0, i32 4), %if.end7.4.for.end_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @ns_entries, i32 0, i32 3), %if.end7.3.for.end_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @ns_entries, i32 0, i32 2), %if.end7.2.for.end_crit_edge ], [ getelementptr inbounds ([8 x ptr], ptr @ns_entries, i32 0, i32 1), %if.end7.1.for.end_crit_edge ], [ @ns_entries, %if.end7.for.end_crit_edge ]
  br i1 %cmp15, label %for.end.out_crit_edge, label %if.end17

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end17:                                         ; preds = %for.end
  %28 = ptrtoint ptr %entry1.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %entry1.0.lcssa, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %30 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_sb.i, align 4
  %call.i = tail call ptr @proc_pid_make_inode(ptr noundef %31, ptr noundef nonnull %call1.i, i16 noundef zeroext -24065) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end17.out_crit_edge, label %if.end.i

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %32 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @proc_ns_link_inode_operations, ptr %i_op.i, align 8
  %ns_ops3.i = getelementptr i8, ptr %call.i, i32 -8
  %33 = ptrtoint ptr %ns_ops3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %29, ptr %ns_ops3.i, align 8
  tail call void @pid_update_inode(ptr noundef nonnull %call1.i, ptr noundef nonnull %call.i) #6
  tail call void @d_set_d_op(ptr noundef %dentry, ptr noundef nonnull @pid_dentry_operations) #6
  %call4.i = tail call ptr @d_splice_alias(ptr noundef nonnull %call.i, ptr noundef %dentry) #6
  br label %out

out:                                              ; preds = %if.end.i, %if.end17.out_crit_edge, %for.end.out_crit_edge
  %res.0 = phi ptr [ inttoptr (i32 -2 to ptr), %for.end.out_crit_edge ], [ %call4.i, %if.end.i ], [ inttoptr (i32 -2 to ptr), %if.end17.out_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #6
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #6, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_no_task_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.out_no_task_crit_edge:            ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_no_task

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #6
  br label %out_no_task

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #6
  br label %out_no_task

out_no_task:                                      ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_no_task_crit_edge, %entry.out_no_task_crit_edge
  %res.1 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.out_no_task_crit_edge ], [ %res.0, %if.end5.i.i.i.i.out_no_task_crit_edge ], [ %res.0, %if.then10.i.i.i.i ], [ %res.0, %if.then.i ]
  ret ptr %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @proc_fill_cache(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_ns_instantiate(ptr noundef %dentry, ptr noundef %task, ptr noundef %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call = tail call ptr @proc_pid_make_inode(ptr noundef %1, ptr noundef %task, i16 noundef zeroext -24065) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @proc_ns_link_inode_operations, ptr %i_op, align 8
  %ns_ops3 = getelementptr i8, ptr %call, i32 -8
  %3 = ptrtoint ptr %ns_ops3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ptr, ptr %ns_ops3, align 8
  tail call void @pid_update_inode(ptr noundef %task, ptr noundef nonnull %call) #6
  tail call void @d_set_d_op(ptr noundef %dentry, ptr noundef nonnull @pid_dentry_operations) #6
  %call4 = tail call ptr @d_splice_alias(ptr noundef nonnull %call, ptr noundef %dentry) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_pid_make_inode(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pid_update_inode(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_ns_get_link(ptr noundef readnone %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %done) #1 align 64 {
entry:
  %ns_path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_ops1 = getelementptr i8, ptr %inode, i32 -8
  %0 = ptrtoint ptr %ns_ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_ops1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ns_path) #6
  %2 = ptrtoint ptr %ns_path to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ns_path, align 4, !annotation !25
  %3 = getelementptr inbounds %struct.path, ptr %ns_path, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !25
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -40
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #6
  %tobool4.not = icmp eq ptr %call1.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call1.i, i32 noundef 9) #6
  br i1 %call8, label %if.end10, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %if.end7
  %call11 = call i32 @ns_get_path(ptr noundef nonnull %ns_path, ptr noundef nonnull %call1.i, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = call i32 @nd_jump_link(ptr noundef nonnull %ns_path) #6
  br label %out

out:                                              ; preds = %if.end14, %if.end10.out_crit_edge, %if.end7.out_crit_edge
  %error.0 = phi i32 [ %call11, %if.end10.out_crit_edge ], [ %call15, %if.end14 ], [ -13, %if.end7.out_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #6
  %7 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #6, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #6
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !24
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #6
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %8 = inttoptr i32 %error.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %put_task_struct.exit ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -13 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ns_path) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_ns_readlink(ptr nocapture noundef readonly %dentry, ptr noundef %buffer, i32 noundef %buflen) #1 align 64 {
entry:
  %name = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -40
  %ns_ops2 = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %ns_ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_ops2, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %name) #6
  %4 = call ptr @memset(ptr %name, i32 255, i32 50)
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call1.i, i32 noundef 9) #6
  br i1 %call4, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %call6 = call i32 @ns_get_name(ptr noundef nonnull %name, i32 noundef 50, ptr noundef nonnull %call1.i, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp = icmp sgt i32 %call6, -1
  br i1 %cmp, label %if.then7, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 @readlink_copy(ptr noundef %buffer, i32 noundef %buflen, ptr noundef nonnull %name) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %res.0 = phi i32 [ %call9, %if.then7 ], [ %call6, %if.then5.if.end11_crit_edge ], [ -13, %if.end.if.end11_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #6
  %7 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #6, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !24
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ %res.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %res.0, %if.then10.i.i.i.i ], [ %res.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %name) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ns_get_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nd_jump_link(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ns_get_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @readlink_copy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @proc_ns_dir_operations, !1, !"proc_ns_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/proc/namespaces.c", i32 145, i32 30}
!2 = !{ptr @proc_ns_dir_inode_operations, !3, !"proc_ns_dir_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/proc/namespaces.c", i32 179, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!8 = !{ptr @ns_entries, !9, !"ns_entries", i1 false, i1 false}
!9 = !{!"../fs/proc/namespaces.c", i32 15, i32 41}
!10 = !{ptr @proc_ns_link_inode_operations, !11, !"proc_ns_link_inode_operations", i1 false, i1 false}
!11 = !{!"../fs/proc/namespaces.c", i32 92, i32 38}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148753077}
!22 = !{i64 2148667517, i64 2148667549, i64 2148667578, i64 2148667612, i64 2148667643, i64 2148667666}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2150374166}
!25 = !{!"auto-init"}
