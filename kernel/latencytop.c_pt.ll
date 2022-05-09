; ModuleID = '/llk/IR_all_yes/kernel/latencytop.c_pt.bc'
source_filename = "../kernel/latencytop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@latency_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@latencytop_enabled = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_latencytop__225_283_init_lstats_procfs6 = internal global ptr @init_lstats_procfs, section ".initcall6.init", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"latency_lock\00", [19 x i8] zeroinitializer }, align 32
@latency_record = internal global { [128 x %struct.latency_record], [1920 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"latency_stats\00", [18 x i8] zeroinitializer }, align 32
@lstats_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @lstats_open, ptr @seq_read, ptr null, ptr @lstats_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Latency Top version : v0.1\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%i %lu %lu\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %ps\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"latency_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"latencytop_enabled\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 64, i32 5 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 59, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"latency_record\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 62, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 268, i32 14 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"lstats_proc_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 258, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 221, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 228, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 236, i32 19 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [23 x i8] c"../kernel/latencytop.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 238, i32 16 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__initcall__kmod_latencytop__225_283_init_lstats_procfs6, ptr @latency_lock, ptr @latencytop_enabled, ptr @.str, ptr @latency_record, ptr @.str.1, ptr @lstats_proc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latency_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latencytop_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latency_record to i32), i32 7680, i32 9600, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lstats_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_tsk_latency_tracing(ptr nocapture noundef writeonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @latency_lock) #5
  %latency_record_count = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 187
  %0 = call ptr @memset(ptr %latency_record_count, i32 0, i32 1924)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @latency_lock, i32 noundef %call) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__account_scheduler_latency(ptr noundef %tsk, i32 noundef %usecs, i32 noundef %inter) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  %lat = alloca %struct.latency_record, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %lat) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inter)
  %tobool.not = icmp ne i32 %inter, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %usecs)
  %cmp = icmp sgt i32 %usecs, 5000
  %or.cond = and i1 %cmp, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %usecs)
  %cmp1 = icmp slt i32 %usecs, 1
  %or.cond91 = or i1 %cmp1, %or.cond
  br i1 %or.cond91, label %entry.cleanup62_crit_edge, label %if.end3

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

if.end3:                                          ; preds = %entry
  %0 = call ptr @memset(ptr %lat, i32 0, i32 48)
  %count = getelementptr inbounds %struct.latency_record, ptr %lat, i32 0, i32 1
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 4
  %time = getelementptr inbounds %struct.latency_record, ptr %lat, i32 0, i32 2
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %usecs, ptr %time, align 4
  %max = getelementptr inbounds %struct.latency_record, ptr %lat, i32 0, i32 3
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %usecs, ptr %max, align 4
  %call = call i32 @stack_trace_save_tsk(ptr noundef %tsk, ptr noundef nonnull %lat, i32 noundef 12, i32 noundef 0) #5
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @latency_lock) #5
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 53
  %4 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end3.account_global_scheduler_latency.exit_crit_edge, label %if.end3.for.body.i_crit_edge

if.end3.for.body.i_crit_edge:                     ; preds = %if.end3
  br label %for.body.i

if.end3.account_global_scheduler_latency.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %account_global_scheduler_latency.exit

for.body.i:                                       ; preds = %for.inc41.i.for.body.i_crit_edge, %if.end3.for.body.i_crit_edge
  %i.082.i = phi i32 [ %inc42.i, %for.inc41.i.for.body.i_crit_edge ], [ 0, %if.end3.for.body.i_crit_edge ]
  %firstnonnull.081.i = phi i32 [ %firstnonnull.2.i, %for.inc41.i.for.body.i_crit_edge ], [ 129, %if.end3.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [128 x %struct.latency_record], ptr @latency_record, i32 0, i32 %i.082.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %for.body.i.for.body10.i_crit_edge

for.body.i.for.body10.i_crit_edge:                ; preds = %for.body.i
  br label %for.body10.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = call i32 @llvm.smin.i32(i32 %firstnonnull.081.i, i32 %i.082.i) #5
  br label %for.inc41.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.body.i.for.body10.i_crit_edge
  %same.080.i = phi i32 [ %same.1.i, %for.body10.i.for.body10.i_crit_edge ], [ 1, %for.body.i.for.body10.i_crit_edge ]
  %q.079.i = phi i32 [ %inc.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %for.body.i.for.body10.i_crit_edge ]
  %arrayidx12.i = getelementptr [12 x i32], ptr %lat, i32 0, i32 %q.079.i
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx15.i = getelementptr [12 x i32], ptr %arrayidx.i, i32 0, i32 %q.079.i
  %11 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp16.not.i = icmp eq i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not.i = icmp ne i32 %10, 0
  %same.1.i = select i1 %cmp16.not.i, i32 %same.080.i, i32 0
  %switch.i = and i1 %tobool19.not.i, %cmp16.not.i
  %inc.i = add nuw nsw i32 %q.079.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %q.079.i)
  %cmp9.i = icmp ult i32 %q.079.i, 11
  %or.cond.i = select i1 %switch.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %for.body10.i.for.body10.i_crit_edge, label %for.end.i

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.i

for.end.i:                                        ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %same.1.i)
  %tobool22.not.i = icmp eq i32 %same.1.i, 0
  br i1 %tobool22.not.i, label %for.end.i.for.inc41.i_crit_edge, label %if.then23.i

for.end.i.for.inc41.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc41.i

if.then23.i:                                      ; preds = %for.end.i
  %count.i = getelementptr [128 x %struct.latency_record], ptr @latency_record, i32 0, i32 %i.082.i, i32 1
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 4
  %inc25.i = add i32 %14, 1
  store i32 %inc25.i, ptr %count.i, align 4
  %15 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %time, align 4
  %time27.i = getelementptr [128 x %struct.latency_record], ptr @latency_record, i32 0, i32 %i.082.i, i32 2
  %17 = ptrtoint ptr %time27.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %time27.i, align 4
  %add.i = add i32 %18, %16
  store i32 %add.i, ptr %time27.i, align 4
  %max.i = getelementptr [128 x %struct.latency_record], ptr @latency_record, i32 0, i32 %i.082.i, i32 3
  %19 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %20)
  %cmp30.i = icmp ugt i32 %16, %20
  br i1 %cmp30.i, label %if.then31.i, label %if.then23.i.account_global_scheduler_latency.exit_crit_edge

if.then23.i.account_global_scheduler_latency.exit_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %account_global_scheduler_latency.exit

if.then31.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %max.i, align 4
  br label %account_global_scheduler_latency.exit

for.inc41.i:                                      ; preds = %for.end.i.for.inc41.i_crit_edge, %if.then3.i
  %firstnonnull.2.i = phi i32 [ %8, %if.then3.i ], [ %firstnonnull.081.i, %for.end.i.for.inc41.i_crit_edge ]
  %inc42.i = add nuw nsw i32 %i.082.i, 1
  %exitcond.not.i = icmp eq i32 %inc42.i, 128
  br i1 %exitcond.not.i, label %for.end43.i, label %for.inc41.i.for.body.i_crit_edge

for.inc41.i.for.body.i_crit_edge:                 ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end43.i:                                      ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %firstnonnull.2.i)
  %cmp44.i = icmp sgt i32 %firstnonnull.2.i, 126
  br i1 %cmp44.i, label %for.end43.i.account_global_scheduler_latency.exit_crit_edge, label %if.end46.i

for.end43.i.account_global_scheduler_latency.exit_crit_edge: ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %account_global_scheduler_latency.exit

if.end46.i:                                       ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx47.i = getelementptr [128 x %struct.latency_record], ptr @latency_record, i32 0, i32 %firstnonnull.2.i
  %22 = call ptr @memcpy(ptr %arrayidx47.i, ptr %lat, i32 60)
  br label %account_global_scheduler_latency.exit

account_global_scheduler_latency.exit:            ; preds = %if.end46.i, %for.end43.i.account_global_scheduler_latency.exit_crit_edge, %if.then31.i, %if.then23.i.account_global_scheduler_latency.exit_crit_edge, %if.end3.account_global_scheduler_latency.exit_crit_edge
  %latency_record_count = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 187
  %23 = ptrtoint ptr %latency_record_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %latency_record_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6100 = icmp sgt i32 %24, 0
  br i1 %cmp6100, label %account_global_scheduler_latency.exit.for.body_crit_edge, label %account_global_scheduler_latency.exit.if.end49_crit_edge

account_global_scheduler_latency.exit.if.end49_crit_edge: ; preds = %account_global_scheduler_latency.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

account_global_scheduler_latency.exit.for.body_crit_edge: ; preds = %account_global_scheduler_latency.exit
  br label %for.body

for.body:                                         ; preds = %for.inc42.for.body_crit_edge, %account_global_scheduler_latency.exit.for.body_crit_edge
  %i.0101 = phi i32 [ %inc43, %for.inc42.for.body_crit_edge ], [ 0, %account_global_scheduler_latency.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.task_struct, ptr %tsk, i32 0, i32 188, i32 %i.0101
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body
  %same.099 = phi i32 [ 1, %for.body ], [ %same.1, %for.body11.for.body11_crit_edge ]
  %q.098 = phi i32 [ 0, %for.body ], [ %inc, %for.body11.for.body11_crit_edge ]
  %arrayidx13 = getelementptr [12 x i32], ptr %lat, i32 0, i32 %q.098
  %25 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 %q.098
  %27 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp16.not = icmp eq i32 %28, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool20.not = icmp ne i32 %26, 0
  %same.1 = select i1 %cmp16.not, i32 %same.099, i32 0
  %switch = and i1 %tobool20.not, %cmp16.not
  %inc = add nuw nsw i32 %q.098, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %q.098)
  %cmp9 = icmp ult i32 %q.098, 11
  %or.cond103 = select i1 %switch, i1 %cmp9, i1 false
  br i1 %or.cond103, label %for.body11.for.body11_crit_edge, label %for.end

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.end:                                          ; preds = %for.body11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %same.1)
  %tobool23.not = icmp eq i32 %same.1, 0
  br i1 %tobool23.not, label %for.inc42, label %if.then24

if.then24:                                        ; preds = %for.end
  %count25 = getelementptr %struct.task_struct, ptr %tsk, i32 0, i32 188, i32 %i.0101, i32 1
  %29 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count25, align 4
  %inc26 = add i32 %30, 1
  store i32 %inc26, ptr %count25, align 4
  %31 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %time, align 4
  %time28 = getelementptr %struct.task_struct, ptr %tsk, i32 0, i32 188, i32 %i.0101, i32 2
  %33 = ptrtoint ptr %time28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %time28, align 4
  %add = add i32 %34, %32
  store i32 %add, ptr %time28, align 4
  %max30 = getelementptr %struct.task_struct, ptr %tsk, i32 0, i32 188, i32 %i.0101, i32 3
  %35 = ptrtoint ptr %max30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %36)
  %cmp31 = icmp ugt i32 %32, %36
  br i1 %cmp31, label %if.then33, label %if.then24.do.body54_crit_edge

if.then24.do.body54_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body54

if.then33:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %max30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %32, ptr %max30, align 4
  br label %do.body54

for.inc42:                                        ; preds = %for.end
  %inc43 = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc43, %24
  br i1 %exitcond.not, label %for.end44, label %for.inc42.for.body_crit_edge

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end44:                                        ; preds = %for.inc42
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %24)
  %cmp46 = icmp sgt i32 %24, 31
  br i1 %cmp46, label %for.end44.do.body54_crit_edge, label %for.end44.if.end49_crit_edge

for.end44.if.end49_crit_edge:                     ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.end44.do.body54_crit_edge:                    ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body54

if.end49:                                         ; preds = %for.end44.if.end49_crit_edge, %account_global_scheduler_latency.exit.if.end49_crit_edge
  %inc51 = add nsw i32 %24, 1
  %38 = ptrtoint ptr %latency_record_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc51, ptr %latency_record_count, align 16
  %arrayidx53 = getelementptr %struct.task_struct, ptr %tsk, i32 0, i32 188, i32 %24
  %39 = call ptr @memcpy(ptr %arrayidx53, ptr %lat, i32 60)
  br label %do.body54

do.body54:                                        ; preds = %if.end49, %for.end44.do.body54_crit_edge, %if.then33, %if.then24.do.body54_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @latency_lock, i32 noundef %call5) #5
  br label %cleanup62

cleanup62:                                        ; preds = %do.body54, %entry.cleanup62_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %lat) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save_tsk(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysctl_latencytop(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #5
  %0 = load i32, ptr @latencytop_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @force_schedstat_enabled() #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_schedstat_enabled() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_lstats_procfs() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef null, ptr noundef nonnull @lstats_proc_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lstats_open(ptr nocapture noundef readnone %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @lstats_show, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lstats_write(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef returned %count, ptr nocapture noundef readnone %offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @latency_lock) #5
  %0 = call ptr @memset(ptr @latency_record, i32 0, i32 7680)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @latency_lock, i32 noundef %call.i) #5
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lstats_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #5
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %inc11, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x %struct.latency_record], ptr @latency_record, i32 0, i32 %i.029
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.if.end9_crit_edge, label %if.then

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %for.body
  %count = getelementptr [128 x %struct.latency_record], ptr @latency_record, i32 0, i32 %i.029, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %time = getelementptr [128 x %struct.latency_record], ptr @latency_record, i32 0, i32 %i.029, i32 2
  %4 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %time, align 4
  %max = getelementptr [128 x %struct.latency_record], ptr @latency_record, i32 0, i32 %i.029, i32 3
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %5, i32 noundef %7) #5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.then.for.end_crit_edge, label %for.inc

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %if.then
  %10 = inttoptr i32 %9 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %10) #5
  %arrayidx6.1 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not.1 = icmp eq i32 %12, 0
  br i1 %tobool7.not.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %13 = inttoptr i32 %12 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #5
  %arrayidx6.2 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not.2 = icmp eq i32 %15, 0
  br i1 %tobool7.not.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %16 = inttoptr i32 %15 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #5
  %arrayidx6.3 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.3 = icmp eq i32 %18, 0
  br i1 %tobool7.not.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %19 = inttoptr i32 %18 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #5
  %arrayidx6.4 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not.4 = icmp eq i32 %21, 0
  br i1 %tobool7.not.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %22 = inttoptr i32 %21 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %22) #5
  %arrayidx6.5 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx6.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool7.not.5 = icmp eq i32 %24, 0
  br i1 %tobool7.not.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %25 = inttoptr i32 %24 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %25) #5
  %arrayidx6.6 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx6.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not.6 = icmp eq i32 %27, 0
  br i1 %tobool7.not.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %28 = inttoptr i32 %27 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %28) #5
  %arrayidx6.7 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 7
  %29 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx6.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not.7 = icmp eq i32 %30, 0
  br i1 %tobool7.not.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %31 = inttoptr i32 %30 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %31) #5
  %arrayidx6.8 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx6.8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx6.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool7.not.8 = icmp eq i32 %33, 0
  br i1 %tobool7.not.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %34 = inttoptr i32 %33 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %34) #5
  %arrayidx6.9 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 9
  %35 = ptrtoint ptr %arrayidx6.9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx6.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not.9 = icmp eq i32 %36, 0
  br i1 %tobool7.not.9, label %for.inc.8.for.end_crit_edge, label %for.inc.9

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %37 = inttoptr i32 %36 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %37) #5
  %arrayidx6.10 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 10
  %38 = ptrtoint ptr %arrayidx6.10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx6.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool7.not.10 = icmp eq i32 %39, 0
  br i1 %tobool7.not.10, label %for.inc.9.for.end_crit_edge, label %for.inc.10

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %40 = inttoptr i32 %39 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %40) #5
  %arrayidx6.11 = getelementptr [12 x i32], ptr %arrayidx, i32 0, i32 11
  %41 = ptrtoint ptr %arrayidx6.11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx6.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool7.not.11 = icmp eq i32 %42, 0
  br i1 %tobool7.not.11, label %for.inc.10.for.end_crit_edge, label %for.inc.11

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  %43 = inttoptr i32 %42 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull %43) #5
  br label %for.end

for.end:                                          ; preds = %for.inc.11, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #5
  br label %if.end9

if.end9:                                          ; preds = %for.end, %for.body.if.end9_crit_edge
  %inc11 = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc11, 128
  br i1 %exitcond.not, label %for.end12, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_latencytop__225_283_init_lstats_procfs6, !1, !"__initcall__kmod_latencytop__225_283_init_lstats_procfs6", i1 false, i1 false}
!1 = !{!"../kernel/latencytop.c", i32 283, i32 1}
!2 = !{ptr @latencytop_enabled, !3, !"latencytop_enabled", i1 false, i1 false}
!3 = !{!"../kernel/latencytop.c", i32 64, i32 5}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/latencytop.c", i32 59, i32 8}
!6 = !{ptr @latency_lock, !5, !"latency_lock", i1 false, i1 false}
!7 = !{ptr @latency_record, !8, !"latency_record", i1 false, i1 false}
!8 = !{!"../kernel/latencytop.c", i32 62, i32 30}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../kernel/latencytop.c", i32 268, i32 14}
!11 = !{ptr @lstats_proc_ops, !12, !"lstats_proc_ops", i1 false, i1 false}
!12 = !{!"../kernel/latencytop.c", i32 258, i32 30}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/latencytop.c", i32 221, i32 14}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/latencytop.c", i32 228, i32 18}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/latencytop.c", i32 236, i32 19}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/latencytop.c", i32 238, i32 16}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
