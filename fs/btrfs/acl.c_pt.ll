; ModuleID = '/llk/IR_all_yes/fs/btrfs/acl.c_pt.bc'
source_filename = "../fs/btrfs/acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.callback_head = type { ptr, ptr }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.65 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.78 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.80 = type { ptr }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 31, i32 10 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [18 x i8] c"../fs/btrfs/acl.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 34, i32 10 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @btrfs_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 32768, label %if.end.sw.epilog_crit_edge
    i32 16384, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str.1, %sw.bb1 ], [ @.str, %if.end.sw.epilog_crit_edge ]
  %call3 = tail call i32 @btrfs_getxattr(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.end8.i.i, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end8.i.i:                                      ; preds = %sw.epilog
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call3, i32 noundef 3520) #9
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end11

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i.i
  %call10 = tail call i32 @btrfs_getxattr(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef nonnull %call9.i.i, i32 noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp sgt i32 %call10, 0
  br i1 %cmp12, label %if.then13, label %if.end11.if.else_crit_edge

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call9.i.i, i32 noundef %call10) #6
  br label %if.end21

if.else:                                          ; preds = %if.end11.if.else_crit_edge, %sw.epilog.if.else_crit_edge
  %value.042 = phi ptr [ %call9.i.i, %if.end11.if.else_crit_edge ], [ null, %sw.epilog.if.else_crit_edge ]
  %size.040 = phi i32 [ %call10, %if.end11.if.else_crit_edge ], [ %call3, %sw.epilog.if.else_crit_edge ]
  %1 = zext i32 %size.040 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %size.040, label %if.else18 [
    i32 -61, label %if.else.if.end21_crit_edge
    i32 0, label %if.else.if.end21_crit_edge43
  ]

if.else.if.end21_crit_edge43:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %2 = inttoptr i32 %size.040 to ptr
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.else.if.end21_crit_edge, %if.else.if.end21_crit_edge43, %if.then13
  %value.041 = phi ptr [ %call9.i.i, %if.then13 ], [ %value.042, %if.else18 ], [ %value.042, %if.else.if.end21_crit_edge ], [ %value.042, %if.else.if.end21_crit_edge43 ]
  %acl.0 = phi ptr [ %call14, %if.then13 ], [ %2, %if.else18 ], [ null, %if.else.if.end21_crit_edge ], [ null, %if.else.if.end21_crit_edge43 ]
  tail call void @kfree(ptr noundef %value.041) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end8.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %acl.0, %if.end21 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_getxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_set_acl(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %acl.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %acl, ptr %acl.addr, align 4
  %1 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %inode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp = icmp ne i32 %type, 32768
  %tobool.not = icmp eq ptr %acl, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = call i32 @posix_acl_update_mode(ptr noundef %mnt_userns, ptr noundef %inode, ptr noundef %inode, ptr noundef nonnull %acl.addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %3 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %acl.addr, align 4
  %call5 = call fastcc i32 @__btrfs_set_acl(ptr noundef null, ptr noundef %inode, ptr noundef %4, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %2, ptr %inode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__btrfs_set_acl(ptr noundef %trans, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %type, label %entry.cleanup24_crit_edge [
    i32 32768, label %entry.sw.epilog_crit_edge
    i32 16384, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

sw.bb1:                                           ; preds = %entry
  %1 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %inode, align 8
  %3 = and i16 %2, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp = icmp eq i16 %3, 16384
  br i1 %cmp, label %sw.bb1.sw.epilog_crit_edge, label %if.then

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %tobool.not = icmp eq ptr %acl, null
  %cond = select i1 %tobool.not, i32 0, i32 -22
  br label %cleanup24

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str, %entry.sw.epilog_crit_edge ], [ @.str.1, %sw.bb1.sw.epilog_crit_edge ]
  %tobool3.not = icmp eq ptr %acl, null
  br i1 %tobool3.not, label %sw.epilog.if.end15_crit_edge, label %if.then4

sw.epilog.if.end15_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then4:                                         ; preds = %sw.epilog
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %4 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %a_count, align 4
  %mul.i = shl i32 %5, 3
  %add.i = or i32 %mul.i, 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !4) #6
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %11, 262144
  %or.i = or i32 %11, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #9
  %12 = tail call i32 @llvm.read_register.i32(metadata !4) #6
  %and.i.i1 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i1 to ptr
  %task.i2 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i2, align 8
  %flags1.i3 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags1.i3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags1.i3, align 4
  %and.i4 = and i32 %17, -262145
  %or.i5 = or i32 %and.i4, %and.i
  store i32 %or.i5, ptr %flags1.i3, align 4
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.then4.out.thread_crit_edge, label %if.end9

if.then4.out.thread_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

if.end9:                                          ; preds = %if.then4
  %call10 = tail call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %acl, ptr noundef nonnull %call9.i, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.out.thread_crit_edge, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end9.out.thread_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

out.thread:                                       ; preds = %if.end9.out.thread_crit_edge, %if.then4.out.thread_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.then4.out.thread_crit_edge ], [ %call10, %if.end9.out.thread_crit_edge ]
  tail call void @kfree(ptr noundef %call9.i) #6
  br label %cleanup24

if.end15:                                         ; preds = %if.end9.if.end15_crit_edge, %sw.epilog.if.end15_crit_edge
  %size.0 = phi i32 [ 0, %sw.epilog.if.end15_crit_edge ], [ %add.i, %if.end9.if.end15_crit_edge ]
  %value.0 = phi ptr [ null, %sw.epilog.if.end15_crit_edge ], [ %call9.i, %if.end9.if.end15_crit_edge ]
  %tobool16.not = icmp eq ptr %trans, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @btrfs_setxattr(ptr noundef nonnull %trans, ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef %value.0, i32 noundef %size.0, i32 noundef 0) #6
  br label %out

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @btrfs_setxattr_trans(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef %value.0, i32 noundef %size.0, i32 noundef 0) #6
  br label %out

out:                                              ; preds = %if.else, %if.then17
  %ret.1 = phi i32 [ %call18, %if.then17 ], [ %call19, %if.else ]
  tail call void @kfree(ptr noundef %value.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool21.not = icmp eq i32 %ret.1, 0
  br i1 %tobool21.not, label %if.then22, label %out.cleanup24_crit_edge

out.cleanup24_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup24

if.then22:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl) #6
  br label %cleanup24

cleanup24:                                        ; preds = %if.then22, %out.cleanup24_crit_edge, %out.thread, %if.then, %entry.cleanup24_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then ], [ -22, %entry.cleanup24_crit_edge ], [ 0, %if.then22 ], [ %ret.1, %out.cleanup24_crit_edge ], [ %ret.0.ph, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_init_acl(ptr noundef %trans, ptr noundef %inode, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #6
  %0 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #6
  %1 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !14
  %tobool.not = icmp eq ptr %dir, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @posix_acl_create(ptr noundef nonnull %dir, ptr noundef %inode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %default_acl, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end7.thread, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = call fastcc i32 @__btrfs_set_acl(ptr noundef %trans, ptr noundef %inode, ptr noundef nonnull %3, i32 noundef 16384)
  %4 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %default_acl, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then5.if.end7_crit_edge, label %land.lhs.true.i

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.then5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !15
  call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #6
  %6 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #6, !srcloc !16
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i, !prof !17

if.end5.i.i.i.i.if.end7_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #6
  br label %if.end7

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !18
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %5, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %if.end7

if.end7:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end7_crit_edge, %if.then5.if.end7_crit_edge
  %7 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acl, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %if.then9

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end7.thread:                                   ; preds = %if.end3
  %9 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acl, align 4
  %tobool8.not42 = icmp eq ptr %10, null
  br i1 %tobool8.not42, label %if.end7.thread.if.then17_crit_edge, label %if.end7.thread.if.end13_crit_edge

if.end7.thread.if.end13_crit_edge:                ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end7.thread.if.then17_crit_edge:               ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool10.not = icmp eq i32 %call6, 0
  br i1 %tobool10.not, label %if.then9.if.end13_crit_edge, label %if.then9.land.lhs.true.i34_crit_edge

if.then9.land.lhs.true.i34_crit_edge:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i34

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %if.then9.if.end13_crit_edge, %if.end7.thread.if.end13_crit_edge
  %11 = phi ptr [ %8, %if.then9.if.end13_crit_edge ], [ %10, %if.end7.thread.if.end13_crit_edge ]
  %call12 = call fastcc i32 @__btrfs_set_acl(ptr noundef %trans, ptr noundef %inode, ptr noundef nonnull %11, i32 noundef 32768)
  %12 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr53 = load ptr, ptr %acl, align 4
  %tobool.not.i30 = icmp eq ptr %.pr53, null
  br i1 %tobool.not.i30, label %if.end13.if.end14_crit_edge, label %if.end13.land.lhs.true.i34_crit_edge

if.end13.land.lhs.true.i34_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i34

if.end13.if.end14_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true.i34:                                ; preds = %if.end13.land.lhs.true.i34_crit_edge, %if.then9.land.lhs.true.i34_crit_edge
  %ret.156 = phi i32 [ %call12, %if.end13.land.lhs.true.i34_crit_edge ], [ %call6, %if.then9.land.lhs.true.i34_crit_edge ]
  %13 = phi ptr [ %.pr53, %if.end13.land.lhs.true.i34_crit_edge ], [ %8, %if.then9.land.lhs.true.i34_crit_edge ]
  %call.i.i.i.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !15
  call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #6
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #6, !srcloc !16
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i32)
  %cmp.i.i.i.i33 = icmp eq i32 %asmresult.i.i.i.i.i.i.i32, 1
  br i1 %cmp.i.i.i.i33, label %do.end.i39, label %if.end5.i.i.i.i36

if.end5.i.i.i.i36:                                ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i32)
  %.not.i.i.i.i35 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i35, label %if.end5.i.i.i.i36.if.end14_crit_edge, label %if.then10.i.i.i.i37, !prof !17

if.end5.i.i.i.i36.if.end14_crit_edge:             ; preds = %if.end5.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10.i.i.i.i37:                              ; preds = %if.end5.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #6
  br label %if.end14

do.end.i39:                                       ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !18
  %a_rcu.i38 = getelementptr inbounds %struct.posix_acl, ptr %13, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i38, ptr noundef nonnull inttoptr (i32 4 to ptr)) #6
  br label %if.end14

if.end14:                                         ; preds = %do.end.i39, %if.then10.i.i.i.i37, %if.end5.i.i.i.i36.if.end14_crit_edge, %if.end13.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %ret.2.ph = phi i32 [ %ret.156, %do.end.i39 ], [ %ret.156, %if.then10.i.i.i.i37 ], [ %ret.156, %if.end5.i.i.i.i36.if.end14_crit_edge ], [ %call12, %if.end13.if.end14_crit_edge ], [ %call6, %if.end7.if.end14_crit_edge ]
  %15 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %default_acl, align 4
  %tobool15.not = icmp eq ptr %.pr, null
  br i1 %tobool15.not, label %land.lhs.true, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end14
  %16 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr49 = load ptr, ptr %acl, align 4
  %tobool16.not = icmp eq ptr %.pr49, null
  br i1 %tobool16.not, label %land.lhs.true.if.then17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %land.lhs.true.if.then17_crit_edge, %if.end7.thread.if.then17_crit_edge
  %ret.24852 = phi i32 [ %ret.2.ph, %land.lhs.true.if.then17_crit_edge ], [ 0, %if.end7.thread.if.then17_crit_edge ]
  %i_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %17 = ptrtoint ptr %i_acl.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %i_acl.i, align 8
  %i_default_acl.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %18 = ptrtoint ptr %i_default_acl.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %i_default_acl.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.lhs.true.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %ret.24852, %if.then17 ], [ %ret.2.ph, %land.lhs.true.cleanup_crit_edge ], [ %ret.2.ph, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_to_xattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_setxattr_trans(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/acl.c", i32 31, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/btrfs/acl.c", i32 34, i32 10}
!4 = !{!"sp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"auto-init"}
!15 = !{i64 2148743251}
!16 = !{i64 2148657691, i64 2148657723, i64 2148657752, i64 2148657786, i64 2148657817, i64 2148657840}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2150364340}
