; ModuleID = '/llk/IR_all_yes/security/apparmor/path.c_pt.bc'
source_filename = "../security/apparmor/path.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.128, %struct.list_head, %struct.list_head, %union.anon.129 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.126 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.128 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.129 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.42 }
%struct.llist_node = type { ptr }
%union.anon.42 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed name lookup - deleted entry\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed name lookup - disconnected path\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed name lookup - name too long\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed name lookup\00", [45 x i8] zeroinitializer }, align 32
@aa_g_path_max = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/sys/\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/proc\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967260, i64 4294967283, i64 4294967294]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 205, i32 12 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 207, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 209, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 211, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 106, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [28 x i8] c"../security/apparmor/path.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 110, i32 39 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_path_name(ptr noundef %path, i32 noundef %flags, ptr noundef %buffer, ptr nocapture noundef writeonly %name, ptr noundef writeonly %info, ptr noundef readonly %disconnected) local_unnamed_addr #0 align 64 {
entry:
  %root.i = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond.neg.i = sext i1 %not.tobool.not.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_path_max to i32))
  %0 = load i32, ptr @aa_g_path_max, align 4
  %sub.i = add i32 %0, %cond.neg.i
  %1 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %path, align 4
  %mnt_flags.i = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %mnt_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mnt_flags.i, align 4
  %and1.i = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end13.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %dentry.i = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry.i, align 4
  %call.i = tail call ptr @dentry_path(ptr noundef %6, ptr noundef %buffer, i32 noundef %sub.i) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call.i to i32
  br label %d_namespace_path.exit

if.end.i:                                         ; preds = %if.then.i
  %8 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_sb.i, align 4
  %s_magic.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40864, i32 %13)
  %cmp.i = icmp eq i32 %13, 40864
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call7.i = tail call i32 @strncmp(ptr noundef %call.i, ptr noundef nonnull dereferenceable(6) @.str.4, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buffer to i32
  %sub.ptr.sub.i = sub i32 -5, %sub.ptr.rhs.cast.i
  %sub.i.i = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i132.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i132.i, label %if.then9.i.d_namespace_path.exit_crit_edge, label %if.end.i.i

if.then9.i.d_namespace_path.exit_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %d_namespace_path.exit

if.end.i.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 -5
  %14 = call ptr @memcpy(ptr %add.ptr.i.i, ptr @.str.5, i32 5)
  br label %out.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %and.i.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.else.i.if.else.i.i_crit_edge

if.else.i.if.else.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i
  %and1.i.i = and i32 %flags, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and1.i.i)
  %cmp.i133.i = icmp eq i32 %and1.i.i, 24
  br i1 %cmp.i133.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.if.then.i.i_crit_edge

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %15 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %path, align 4
  %call.i.i = tail call zeroext i1 @our_mnt(ptr noundef %16) #5
  br i1 %call.i.i, label %land.lhs.true2.i.i.if.else.i.i_crit_edge, label %land.lhs.true2.i.i.if.then.i.i_crit_edge

land.lhs.true2.i.i.if.then.i.i_crit_edge:         ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

land.lhs.true2.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i_crit_edge
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %18)
  %cmp3.i.i = icmp eq i8 %18, 47
  %spec.select.idx = zext i1 %cmp3.i.i to i32
  %spec.select = getelementptr i8, ptr %call.i, i32 %spec.select.idx
  br label %d_namespace_path.exit

if.else.i.i:                                      ; preds = %land.lhs.true2.i.i.if.else.i.i_crit_edge, %if.else.i.if.else.i.i_crit_edge
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %20)
  %cmp7.not.i.i = icmp eq i8 %20, 47
  br i1 %cmp7.not.i.i, label %if.else.i.i.land.lhs.true13.i.i_crit_edge, label %if.then9.i.i

if.else.i.i.land.lhs.true13.i.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true13.i.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %buffer to i32
  %21 = xor i32 %sub.ptr.rhs.cast.i.i, -1
  %sub.i.i.i = add i32 %sub.ptr.lhs.cast.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then9.i.i.d_namespace_path.exit_crit_edge, label %if.end.i.i.i

if.then9.i.i.d_namespace_path.exit_crit_edge:     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %d_namespace_path.exit

if.end.i.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i, i32 -1
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 47, ptr %add.ptr.i.i.i, align 1
  br label %land.lhs.true13.i.i

land.lhs.true13.i.i:                              ; preds = %if.end.i.i.i, %if.else.i.i.land.lhs.true13.i.i_crit_edge
  %str.0 = phi ptr [ %call.i, %if.else.i.i.land.lhs.true13.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.end.i.i.i ]
  %tobool14.not.i.i = icmp eq ptr %disconnected, null
  br i1 %tobool14.not.i.i, label %land.lhs.true13.i.i.out.i_crit_edge, label %if.then15.i.i

land.lhs.true13.i.i.out.i_crit_edge:              ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.then15.i.i:                                    ; preds = %land.lhs.true13.i.i
  %sub.ptr.lhs.cast16.i.i = ptrtoint ptr %str.0 to i32
  %sub.ptr.rhs.cast17.i.i = ptrtoint ptr %buffer to i32
  %call19.i.i = tail call i32 @strlen(ptr noundef nonnull %disconnected) #8
  %23 = add i32 %call19.i.i, %sub.ptr.rhs.cast17.i.i
  %sub.i35.i.i = sub i32 %sub.ptr.lhs.cast16.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i35.i.i)
  %cmp.i36.i.i = icmp slt i32 %sub.i35.i.i, 0
  br i1 %cmp.i36.i.i, label %if.then15.i.i.d_namespace_path.exit_crit_edge, label %if.end.i38.i.i

if.then15.i.i.d_namespace_path.exit_crit_edge:    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %d_namespace_path.exit

if.end.i38.i.i:                                   ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %idx.neg.i.i.i = sub i32 0, %call19.i.i
  %add.ptr.i37.i.i = getelementptr i8, ptr %str.0, i32 %idx.neg.i.i.i
  %24 = call ptr @memcpy(ptr %add.ptr.i37.i.i, ptr %disconnected, i32 %call19.i.i)
  br label %out.i

if.end13.i:                                       ; preds = %entry
  %and14.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else19.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %root.i) #5
  %25 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i135.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i135.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i, align 8
  %fs.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 107
  %29 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fs.i, align 128
  %lock.i.i = getelementptr inbounds %struct.fs_struct, ptr %30, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #5
  %root1.i.i = getelementptr inbounds %struct.fs_struct, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %root1.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %root1.i.i, align 4
  %33 = ptrtoint ptr %root.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %root.i, align 8
  call void @path_get(ptr noundef nonnull %root.i) #5
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #5
  %call18.i = call ptr @__d_path(ptr noundef %path, ptr noundef nonnull %root.i, ptr noundef %buffer, i32 noundef %sub.i) #5
  call void @path_put(ptr noundef nonnull %root.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %root.i) #5
  br label %if.end25.i

if.else19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %call20.i = tail call ptr @d_absolute_path(ptr noundef %path, ptr noundef %buffer, i32 noundef %sub.i) #5
  %34 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %path, align 4
  %call22.i = tail call zeroext i1 @our_mnt(ptr noundef %35) #5
  %spec.select.i = zext i1 %call22.i to i32
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else19.i, %if.then16.i
  %res.0.i = phi ptr [ %call18.i, %if.then16.i ], [ %call20.i, %if.else19.i ]
  %connected.0.i = phi i32 [ 1, %if.then16.i ], [ %spec.select.i, %if.else19.i ]
  %tobool26.not.i = icmp eq ptr %res.0.i, null
  %cmp.i136.i = icmp ugt ptr %res.0.i, inttoptr (i32 -4096 to ptr)
  %or.cond180.i = or i1 %tobool26.not.i, %cmp.i136.i
  br i1 %or.cond180.i, label %if.then28.i, label %if.else39.i

if.then28.i:                                      ; preds = %if.end25.i
  %cmp30.i = icmp eq ptr %res.0.i, inttoptr (i32 -36 to ptr)
  br i1 %cmp30.i, label %if.then28.i.d_namespace_path.exit_crit_edge, label %if.end32.i

if.then28.i.d_namespace_path.exit_crit_edge:      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %d_namespace_path.exit

if.end32.i:                                       ; preds = %if.then28.i
  %dentry33.i = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %36 = ptrtoint ptr %dentry33.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dentry33.i, align 4
  %call34.i = call ptr @dentry_path_raw(ptr noundef %37, ptr noundef %buffer, i32 noundef %sub.i) #5
  %cmp.i137.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137.i, label %if.then36.i, label %if.end32.i.if.then46.i_crit_edge

if.end32.i.if.then46.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then46.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %call34.i to i32
  br label %out.i

if.else39.i:                                      ; preds = %if.end25.i
  %39 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %path, align 4
  %call41.i = call zeroext i1 @our_mnt(ptr noundef %40) #5
  %call41.i.not = xor i1 %call41.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %connected.0.i)
  %tobool45.not.i = icmp eq i32 %connected.0.i, 0
  %or.cond34 = select i1 %call41.i.not, i1 true, i1 %tobool45.not.i
  br i1 %or.cond34, label %if.else39.i.if.then46.i_crit_edge, label %if.else39.i.if.end48.i_crit_edge

if.else39.i.if.end48.i_crit_edge:                 ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.else39.i.if.then46.i_crit_edge:                ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then46.i

if.then46.i:                                      ; preds = %if.else39.i.if.then46.i_crit_edge, %if.end32.i.if.then46.i_crit_edge
  %str.1 = phi ptr [ %res.0.i, %if.else39.i.if.then46.i_crit_edge ], [ %call34.i, %if.end32.i.if.then46.i_crit_edge ]
  %and.i138.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138.i)
  %tobool.not.i139.i = icmp eq i32 %and.i138.i, 0
  br i1 %tobool.not.i139.i, label %land.lhs.true.i142.i, label %if.then46.i.if.else.i150.i_crit_edge

if.then46.i.if.else.i150.i_crit_edge:             ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i150.i

land.lhs.true.i142.i:                             ; preds = %if.then46.i
  %and1.i140.i = and i32 %flags, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and1.i140.i)
  %cmp.i141.i = icmp eq i32 %and1.i140.i, 24
  br i1 %cmp.i141.i, label %land.lhs.true2.i144.i, label %land.lhs.true.i142.i.if.then.i146.i_crit_edge

land.lhs.true.i142.i.if.then.i146.i_crit_edge:    ; preds = %land.lhs.true.i142.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i146.i

land.lhs.true2.i144.i:                            ; preds = %land.lhs.true.i142.i
  %41 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %path, align 4
  %call.i143.i = call zeroext i1 @our_mnt(ptr noundef %42) #5
  br i1 %call.i143.i, label %land.lhs.true2.i144.i.if.else.i150.i_crit_edge, label %land.lhs.true2.i144.i.if.then.i146.i_crit_edge

land.lhs.true2.i144.i.if.then.i146.i_crit_edge:   ; preds = %land.lhs.true2.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i146.i

land.lhs.true2.i144.i.if.else.i150.i_crit_edge:   ; preds = %land.lhs.true2.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i150.i

if.then.i146.i:                                   ; preds = %land.lhs.true2.i144.i.if.then.i146.i_crit_edge, %land.lhs.true.i142.i.if.then.i146.i_crit_edge
  %43 = ptrtoint ptr %str.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %str.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %44)
  %cmp3.i145.i = icmp eq i8 %44, 47
  %spec.select35.idx = zext i1 %cmp3.i145.i to i32
  %spec.select35 = getelementptr i8, ptr %str.1, i32 %spec.select35.idx
  br label %if.end48.i

if.else.i150.i:                                   ; preds = %land.lhs.true2.i144.i.if.else.i150.i_crit_edge, %if.then46.i.if.else.i150.i_crit_edge
  %45 = ptrtoint ptr %str.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %str.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %46)
  %cmp7.not.i149.i = icmp eq i8 %46, 47
  br i1 %cmp7.not.i149.i, label %if.else.i150.i.land.lhs.true13.i159.i_crit_edge, label %if.then9.i155.i

if.else.i150.i.land.lhs.true13.i159.i_crit_edge:  ; preds = %if.else.i150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true13.i159.i

if.then9.i155.i:                                  ; preds = %if.else.i150.i
  %sub.ptr.lhs.cast.i151.i = ptrtoint ptr %str.1 to i32
  %sub.ptr.rhs.cast.i152.i = ptrtoint ptr %buffer to i32
  %47 = xor i32 %sub.ptr.rhs.cast.i152.i, -1
  %sub.i.i153.i = add i32 %sub.ptr.lhs.cast.i151.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i153.i)
  %cmp.i.i154.i = icmp slt i32 %sub.i.i153.i, 0
  br i1 %cmp.i.i154.i, label %if.then9.i155.i.if.end48.i_crit_edge, label %if.end.i.i157.i

if.then9.i155.i.if.end48.i_crit_edge:             ; preds = %if.then9.i155.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.end.i.i157.i:                                  ; preds = %if.then9.i155.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i156.i = getelementptr i8, ptr %str.1, i32 -1
  %48 = ptrtoint ptr %add.ptr.i.i156.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 47, ptr %add.ptr.i.i156.i, align 1
  br label %land.lhs.true13.i159.i

land.lhs.true13.i159.i:                           ; preds = %if.end.i.i157.i, %if.else.i150.i.land.lhs.true13.i159.i_crit_edge
  %str.2 = phi ptr [ %str.1, %if.else.i150.i.land.lhs.true13.i159.i_crit_edge ], [ %add.ptr.i.i156.i, %if.end.i.i157.i ]
  %tobool14.not.i158.i = icmp eq ptr %disconnected, null
  br i1 %tobool14.not.i158.i, label %land.lhs.true13.i159.i.if.end48.i_crit_edge, label %if.then15.i165.i

land.lhs.true13.i159.i.if.end48.i_crit_edge:      ; preds = %land.lhs.true13.i159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.then15.i165.i:                                 ; preds = %land.lhs.true13.i159.i
  %sub.ptr.lhs.cast16.i160.i = ptrtoint ptr %str.2 to i32
  %sub.ptr.rhs.cast17.i161.i = ptrtoint ptr %buffer to i32
  %call19.i162.i = call i32 @strlen(ptr noundef nonnull %disconnected) #8
  %49 = add i32 %call19.i162.i, %sub.ptr.rhs.cast17.i161.i
  %sub.i35.i163.i = sub i32 %sub.ptr.lhs.cast16.i160.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i35.i163.i)
  %cmp.i36.i164.i = icmp slt i32 %sub.i35.i163.i, 0
  br i1 %cmp.i36.i164.i, label %if.then15.i165.i.if.end48.i_crit_edge, label %if.end.i38.i168.i

if.then15.i165.i.if.end48.i_crit_edge:            ; preds = %if.then15.i165.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.end.i38.i168.i:                                ; preds = %if.then15.i165.i
  call void @__sanitizer_cov_trace_pc() #7
  %idx.neg.i.i166.i = sub i32 0, %call19.i162.i
  %add.ptr.i37.i167.i = getelementptr i8, ptr %str.2, i32 %idx.neg.i.i166.i
  %50 = call ptr @memcpy(ptr %add.ptr.i37.i167.i, ptr %disconnected, i32 %call19.i162.i)
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end.i38.i168.i, %if.then15.i165.i.if.end48.i_crit_edge, %land.lhs.true13.i159.i.if.end48.i_crit_edge, %if.then9.i155.i.if.end48.i_crit_edge, %if.then.i146.i, %if.else39.i.if.end48.i_crit_edge
  %str.3 = phi ptr [ %str.2, %land.lhs.true13.i159.i.if.end48.i_crit_edge ], [ %str.2, %if.then15.i165.i.if.end48.i_crit_edge ], [ %add.ptr.i37.i167.i, %if.end.i38.i168.i ], [ %str.1, %if.then9.i155.i.if.end48.i_crit_edge ], [ %res.0.i, %if.else39.i.if.end48.i_crit_edge ], [ %spec.select35, %if.then.i146.i ]
  %error.0.i = phi i32 [ 0, %land.lhs.true13.i159.i.if.end48.i_crit_edge ], [ -36, %if.then15.i165.i.if.end48.i_crit_edge ], [ 0, %if.end.i38.i168.i ], [ -36, %if.then9.i155.i.if.end48.i_crit_edge ], [ 0, %if.else39.i.if.end48.i_crit_edge ], [ -13, %if.then.i146.i ]
  %dentry49.i = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %51 = ptrtoint ptr %dentry49.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dentry49.i, align 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.not.i.i, label %d_unlinked.exit.i, label %if.end48.i.out.i_crit_edge

if.end48.i.out.i_crit_edge:                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

d_unlinked.exit.i:                                ; preds = %if.end48.i
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 3
  %55 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %d_parent.i.i, align 8
  %cmp.i171.not.i = icmp eq ptr %56, %52
  br i1 %cmp.i171.not.i, label %d_unlinked.exit.i.out.i_crit_edge, label %land.lhs.true52.i

d_unlinked.exit.i.out.i_crit_edge:                ; preds = %d_unlinked.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

land.lhs.true52.i:                                ; preds = %d_unlinked.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %52, align 8
  %and.i.i.i.i.i = and i32 %58, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %and.i.i.i.i.i, 0
  %and56.i = and i32 %flags, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  %or.cond.i = and i1 %tobool57.not.i, %cmp.i.i.i.i
  %spec.select131.i = select i1 %or.cond.i, i32 -2, i32 %error.0.i
  br label %out.i

out.i:                                            ; preds = %land.lhs.true52.i, %d_unlinked.exit.i.out.i_crit_edge, %if.end48.i.out.i_crit_edge, %if.then36.i, %if.end.i38.i.i, %land.lhs.true13.i.i.out.i_crit_edge, %if.end.i.i
  %str.4 = phi ptr [ %buffer, %if.then36.i ], [ %str.3, %d_unlinked.exit.i.out.i_crit_edge ], [ %str.3, %land.lhs.true52.i ], [ %str.3, %if.end48.i.out.i_crit_edge ], [ %add.ptr.i.i, %if.end.i.i ], [ %str.0, %land.lhs.true13.i.i.out.i_crit_edge ], [ %add.ptr.i37.i.i, %if.end.i38.i.i ]
  %error.1.i = phi i32 [ %38, %if.then36.i ], [ %error.0.i, %d_unlinked.exit.i.out.i_crit_edge ], [ %spec.select131.i, %land.lhs.true52.i ], [ %error.0.i, %if.end48.i.out.i_crit_edge ], [ 0, %if.end.i.i ], [ 0, %land.lhs.true13.i.i.out.i_crit_edge ], [ 0, %if.end.i38.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1.i)
  %tobool60.not.i = icmp ne i32 %error.1.i, 0
  %brmerge.i = or i1 %tobool.not.i, %tobool60.not.i
  br i1 %brmerge.i, label %out.i.d_namespace_path.exit_crit_edge, label %land.lhs.true63.i

out.i.d_namespace_path.exit_crit_edge:            ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %d_namespace_path.exit

land.lhs.true63.i:                                ; preds = %out.i
  %arrayidx.i = getelementptr i8, ptr %str.4, i32 1
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp64.not.i = icmp eq i8 %60, 0
  br i1 %cmp64.not.i, label %lor.lhs.false66.i, label %land.lhs.true63.i.if.then71.i_crit_edge

land.lhs.true63.i.if.then71.i_crit_edge:          ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then71.i

lor.lhs.false66.i:                                ; preds = %land.lhs.true63.i
  %61 = ptrtoint ptr %str.4 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %str.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %62)
  %cmp69.not.i = icmp eq i8 %62, 47
  br i1 %cmp69.not.i, label %lor.lhs.false66.i.if.end11_crit_edge, label %lor.lhs.false66.i.if.then71.i_crit_edge

lor.lhs.false66.i.if.then71.i_crit_edge:          ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then71.i

lor.lhs.false66.i.if.end11_crit_edge:             ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then71.i:                                      ; preds = %lor.lhs.false66.i.if.then71.i_crit_edge, %land.lhs.true63.i.if.then71.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aa_g_path_max to i32))
  %63 = load i32, ptr @aa_g_path_max, align 4
  %sub72.i = add i32 %63, -2
  %arrayidx73.i = getelementptr i8, ptr %buffer, i32 %sub72.i
  %64 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 12032, ptr %arrayidx73.i, align 1
  br label %if.end11

d_namespace_path.exit:                            ; preds = %out.i.d_namespace_path.exit_crit_edge, %if.then28.i.d_namespace_path.exit_crit_edge, %if.then15.i.i.d_namespace_path.exit_crit_edge, %if.then9.i.i.d_namespace_path.exit_crit_edge, %if.then.i.i, %if.then9.i.d_namespace_path.exit_crit_edge, %if.then4.i
  %str.5 = phi ptr [ %str.4, %out.i.d_namespace_path.exit_crit_edge ], [ %buffer, %if.then4.i ], [ %call.i, %if.then9.i.d_namespace_path.exit_crit_edge ], [ %str.0, %if.then15.i.i.d_namespace_path.exit_crit_edge ], [ %call.i, %if.then9.i.i.d_namespace_path.exit_crit_edge ], [ %buffer, %if.then28.i.d_namespace_path.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %retval.0.i = phi i32 [ %error.1.i, %out.i.d_namespace_path.exit_crit_edge ], [ %7, %if.then4.i ], [ -36, %if.then9.i.d_namespace_path.exit_crit_edge ], [ -36, %if.then15.i.i.d_namespace_path.exit_crit_edge ], [ -36, %if.then9.i.i.d_namespace_path.exit_crit_edge ], [ -36, %if.then28.i.d_namespace_path.exit_crit_edge ], [ -13, %if.then.i.i ]
  %tobool.not = icmp eq ptr %info, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool1.not = icmp eq i32 %retval.0.i, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %d_namespace_path.exit.if.end11_crit_edge, label %if.then

d_namespace_path.exit.if.end11_crit_edge:         ; preds = %d_namespace_path.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %d_namespace_path.exit
  %65 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %if.else8 [
    i32 -2, label %if.then2
    i32 -13, label %if.then4
    i32 -36, label %if.then7
  ]

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str, ptr %info, align 4
  br label %if.end11

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.1, ptr %info, align 4
  br label %if.end11

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.2, ptr %info, align 4
  br label %if.end11

if.else8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.3, ptr %info, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then7, %if.then4, %if.then2, %d_namespace_path.exit.if.end11_crit_edge, %if.then71.i, %lor.lhs.false66.i.if.end11_crit_edge
  %retval.0.i33 = phi i32 [ -2, %if.then2 ], [ -36, %if.then7 ], [ %retval.0.i, %if.else8 ], [ -13, %if.then4 ], [ %retval.0.i, %d_namespace_path.exit.if.end11_crit_edge ], [ 0, %if.then71.i ], [ 0, %lor.lhs.false66.i.if.end11_crit_edge ]
  %str.532 = phi ptr [ %str.5, %if.then2 ], [ %str.5, %if.then7 ], [ %str.5, %if.else8 ], [ %str.5, %if.then4 ], [ %str.5, %d_namespace_path.exit.if.end11_crit_edge ], [ %str.4, %if.then71.i ], [ %str.4, %lor.lhs.false66.i.if.end11_crit_edge ]
  %70 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %str.532, ptr %name, align 4
  ret i32 %retval.0.i33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__d_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_absolute_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @our_mnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_path_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/path.c", i32 205, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/apparmor/path.c", i32 207, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/apparmor/path.c", i32 209, i32 12}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/apparmor/path.c", i32 211, i32 12}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/apparmor/path.c", i32 106, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/apparmor/path.c", i32 110, i32 39}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/apparmor/path.c", i32 172, i32 35}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
