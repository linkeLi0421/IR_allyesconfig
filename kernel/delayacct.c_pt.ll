; ModuleID = '/llk/IR_all_yes/kernel/delayacct.c_pt.bc'
source_filename = "../kernel/delayacct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.36, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
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
%union.anon.36 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_delay_info = type { %struct.raw_spinlock, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.taskstats = type { i16, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8], i8, [3 x i8], [4 x i8], i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@delayacct_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__setup_str_delayacct_setup_enable = internal constant [10 x i8] c"delayacct\00", section ".init.rodata", align 1
@__setup_delayacct_setup_enable = internal global %struct.obs_kernel_param { ptr @__setup_str_delayacct_setup_enable, ptr @delayacct_setup_enable, i32 0 }, section ".init.setup", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"task_delay_info\00", [16 x i8] zeroinitializer }, align 32
@delayacct_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@init_task = external dso_local local_unnamed_addr global %struct.task_struct, align 128
@delayacct_on = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__delayacct_tsk_init.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tsk->delays->lock\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"delayacct_key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 17, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 41, i32 20 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"delayacct_cache\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 19, i32 20 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [22 x i8] c"../kernel/delayacct.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 72, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__setup_delayacct_setup_enable, ptr @delayacct_key, ptr @.str, ptr @delayacct_cache, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayacct_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayacct_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @delayacct_setup_enable(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @delayacct_on, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @delayacct_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 8, i32 noundef 67371008, ptr noundef null) #5
  store ptr %call, ptr @delayacct_cache, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 181) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 181), align 8
  %0 = load i32, ptr @delayacct_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %if.then.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3520) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 181) to i32))
  store ptr %call.i.i.i, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 181), align 8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.delayacct_tsk_init.exit_crit_edge, label %do.body.i.i

if.then.i.delayacct_tsk_init.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %delayacct_tsk_init.exit

do.body.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @__delayacct_tsk_init.__key, i16 noundef signext 2) #5
  br label %delayacct_tsk_init.exit

delayacct_tsk_init.exit:                          ; preds = %do.body.i.i, %if.then.i.delayacct_tsk_init.exit_crit_edge
  %.pr = load i32, ptr @delayacct_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %delayacct_tsk_init.exit.if.else.i_crit_edge, label %if.then.i1

delayacct_tsk_init.exit.if.else.i_crit_edge:      ; preds = %delayacct_tsk_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i1:                                       ; preds = %delayacct_tsk_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @static_key_enable(ptr noundef nonnull @delayacct_key) #5
  store i32 1, ptr @delayacct_on, align 4
  br label %set_delayacct.exit

if.else.i:                                        ; preds = %delayacct_tsk_init.exit.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  store i32 0, ptr @delayacct_on, align 4
  tail call void @static_key_disable(ptr noundef nonnull @delayacct_key) #5
  br label %set_delayacct.exit

set_delayacct.exit:                               ; preds = %if.else.i, %if.then.i1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysctl_delayacct(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #1 align 64 {
entry:
  %state = alloca i32, align 4
  %t = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #5
  %0 = load i32, ptr @delayacct_on, align 4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %t) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = call ptr @memcpy(ptr %t, ptr %table, i32 36)
  %data = getelementptr inbounds %struct.ctl_table, ptr %t, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %state, ptr %data, align 4
  %call1 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %t, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %brmerge = or i1 %tobool.not, %cmp
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  call void @static_key_enable(ptr noundef nonnull @delayacct_key) #5
  store i32 1, ptr @delayacct_on, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  store i32 0, ptr @delayacct_on, align 4
  call void @static_key_disable(ptr noundef nonnull @delayacct_key) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %if.then.i ], [ %call1, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_tsk_init(ptr nocapture noundef writeonly %tsk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @delayacct_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #5
  %delays = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 181
  %1 = ptrtoint ptr %delays to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %delays, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @__delayacct_tsk_init.__key, i16 noundef signext 2) #5
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_blkio_start() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @sched_clock() #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %delays = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 181
  %4 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delays, align 8
  %blkio_start = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %blkio_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %blkio_start, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_blkio_end(ptr nocapture noundef readonly %p) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %delays = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 181
  %0 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %delays, align 8
  %blkio_start = getelementptr inbounds %struct.task_delay_info, ptr %1, i32 0, i32 1
  %call.i.i = tail call i64 @sched_clock() #5
  %2 = ptrtoint ptr %blkio_start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %blkio_start, align 8
  %sub.i = sub i64 %call.i.i, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.delayacct_end.exit_crit_edge

entry.delayacct_end.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %delayacct_end.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %blkio_count = getelementptr inbounds %struct.task_delay_info, ptr %1, i32 0, i32 5
  %blkio_delay = getelementptr inbounds %struct.task_delay_info, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #5
  %4 = ptrtoint ptr %blkio_delay to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %blkio_delay, align 8
  %add.i = add i64 %5, %sub.i
  store i64 %add.i, ptr %blkio_delay, align 8
  %6 = ptrtoint ptr %blkio_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blkio_count, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %blkio_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #5
  br label %delayacct_end.exit

delayacct_end.exit:                               ; preds = %do.body.i, %entry.delayacct_end.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @delayacct_add_tsk(ptr nocapture noundef %d, ptr nocapture noundef readonly %tsk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %utime1.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 86
  %0 = ptrtoint ptr %utime1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %utime1.i, align 8
  %stime2.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 87
  %2 = ptrtoint ptr %stime2.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %stime2.i, align 32
  %cpu_run_real_total = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 10
  %4 = ptrtoint ptr %cpu_run_real_total to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cpu_run_real_total, align 8
  %add = add i64 %3, %1
  %add1 = add i64 %add, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add1, i64 %5)
  %cmp = icmp slt i64 %add1, %5
  %spec.select = select i1 %cmp, i64 0, i64 %add1
  %6 = ptrtoint ptr %cpu_run_real_total to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %spec.select, ptr %cpu_run_real_total, align 8
  %7 = ptrtoint ptr %utime1.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %utime1.i, align 8
  %9 = ptrtoint ptr %stime2.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %stime2.i, align 32
  %cpu_scaled_run_real_total = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 41
  %11 = ptrtoint ptr %cpu_scaled_run_real_total to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cpu_scaled_run_real_total, align 8
  %add4 = add i64 %10, %8
  %add5 = add i64 %add4, %12
  call void @__sanitizer_cov_trace_cmp8(i64 %add5, i64 %12)
  %cmp7 = icmp slt i64 %add5, %12
  %cond11 = select i1 %cmp7, i64 0, i64 %add5
  %13 = ptrtoint ptr %cpu_scaled_run_real_total to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %cond11, ptr %cpu_scaled_run_real_total, align 8
  %sched_info = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 49
  %14 = ptrtoint ptr %sched_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sched_info, align 16
  %run_delay = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 49, i32 1
  %16 = ptrtoint ptr %run_delay to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %run_delay, align 8
  %sum_exec_runtime = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 18, i32 5
  %18 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sum_exec_runtime, align 8
  %conv = zext i32 %15 to i64
  %cpu_count = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 4
  %20 = ptrtoint ptr %cpu_count to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cpu_count, align 8
  %add14 = add i64 %21, %conv
  store i64 %add14, ptr %cpu_count, align 8
  %cpu_delay_total = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 5
  %22 = ptrtoint ptr %cpu_delay_total to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cpu_delay_total, align 8
  %add15 = add i64 %23, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %add15, i64 %23)
  %cmp17 = icmp slt i64 %add15, %23
  %cond22 = select i1 %cmp17, i64 0, i64 %add15
  %24 = ptrtoint ptr %cpu_delay_total to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %cond22, ptr %cpu_delay_total, align 8
  %cpu_run_virtual_total = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 11
  %25 = ptrtoint ptr %cpu_run_virtual_total to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %cpu_run_virtual_total, align 8
  %add24 = add i64 %26, %19
  call void @__sanitizer_cov_trace_cmp8(i64 %add24, i64 %26)
  %cmp26 = icmp slt i64 %add24, %26
  %cond31 = select i1 %cmp26, i64 0, i64 %add24
  %27 = ptrtoint ptr %cpu_run_virtual_total to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %cond31, ptr %cpu_run_virtual_total, align 8
  %delays = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 181
  %28 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %delays, align 8
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %29) #5
  %blkio_delay_total = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 7
  %30 = ptrtoint ptr %blkio_delay_total to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %blkio_delay_total, align 8
  %32 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %delays, align 8
  %blkio_delay = getelementptr inbounds %struct.task_delay_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %blkio_delay to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %blkio_delay, align 8
  %add39 = add i64 %35, %31
  call void @__sanitizer_cov_trace_cmp8(i64 %add39, i64 %31)
  %cmp41 = icmp ult i64 %add39, %31
  %spec.select194 = select i1 %cmp41, i64 0, i64 %add39
  %36 = ptrtoint ptr %blkio_delay_total to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %spec.select194, ptr %blkio_delay_total, align 8
  %swapin_delay_total = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 9
  %37 = ptrtoint ptr %swapin_delay_total to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %swapin_delay_total, align 8
  %39 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %delays, align 8
  %swapin_delay = getelementptr inbounds %struct.task_delay_info, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %swapin_delay to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %swapin_delay, align 8
  %add49 = add i64 %42, %38
  call void @__sanitizer_cov_trace_cmp8(i64 %add49, i64 %38)
  %cmp51 = icmp ult i64 %add49, %38
  %cond56 = select i1 %cmp51, i64 0, i64 %add49
  %43 = ptrtoint ptr %swapin_delay_total to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %cond56, ptr %swapin_delay_total, align 8
  %freepages_delay_total = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 43
  %44 = ptrtoint ptr %freepages_delay_total to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %freepages_delay_total, align 8
  %46 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %delays, align 8
  %freepages_delay = getelementptr inbounds %struct.task_delay_info, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %freepages_delay to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %freepages_delay, align 8
  %add59 = add i64 %49, %45
  call void @__sanitizer_cov_trace_cmp8(i64 %add59, i64 %45)
  %cmp61 = icmp ult i64 %add59, %45
  %cond66 = select i1 %cmp61, i64 0, i64 %add59
  %50 = ptrtoint ptr %freepages_delay_total to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %cond66, ptr %freepages_delay_total, align 8
  %thrashing_delay_total = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 45
  %51 = ptrtoint ptr %thrashing_delay_total to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %thrashing_delay_total, align 8
  %53 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %delays, align 8
  %thrashing_delay = getelementptr inbounds %struct.task_delay_info, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %thrashing_delay to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %thrashing_delay, align 8
  %add69 = add i64 %56, %52
  call void @__sanitizer_cov_trace_cmp8(i64 %add69, i64 %52)
  %cmp71 = icmp ult i64 %add69, %52
  %cond76 = select i1 %cmp71, i64 0, i64 %add69
  %57 = ptrtoint ptr %thrashing_delay_total to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %cond76, ptr %thrashing_delay_total, align 8
  %compact_delay_total = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 48
  %58 = ptrtoint ptr %compact_delay_total to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %compact_delay_total, align 8
  %60 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %delays, align 8
  %compact_delay = getelementptr inbounds %struct.task_delay_info, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %compact_delay to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %compact_delay, align 8
  %add79 = add i64 %63, %59
  call void @__sanitizer_cov_trace_cmp8(i64 %add79, i64 %59)
  %cmp81 = icmp ult i64 %add79, %59
  %cond86 = select i1 %cmp81, i64 0, i64 %add79
  %64 = ptrtoint ptr %compact_delay_total to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %cond86, ptr %compact_delay_total, align 8
  %65 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %delays, align 8
  %blkio_count = getelementptr inbounds %struct.task_delay_info, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %blkio_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %blkio_count, align 8
  %conv89 = zext i32 %68 to i64
  %blkio_count90 = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 6
  %69 = ptrtoint ptr %blkio_count90 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %blkio_count90, align 8
  %add91 = add i64 %70, %conv89
  store i64 %add91, ptr %blkio_count90, align 8
  %71 = load ptr, ptr %delays, align 8
  %swapin_count = getelementptr inbounds %struct.task_delay_info, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %swapin_count to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %swapin_count, align 4
  %conv93 = zext i32 %73 to i64
  %swapin_count94 = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 8
  %74 = ptrtoint ptr %swapin_count94 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %swapin_count94, align 8
  %add95 = add i64 %75, %conv93
  store i64 %add95, ptr %swapin_count94, align 8
  %76 = load ptr, ptr %delays, align 8
  %freepages_count = getelementptr inbounds %struct.task_delay_info, ptr %76, i32 0, i32 13
  %77 = ptrtoint ptr %freepages_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %freepages_count, align 8
  %conv97 = zext i32 %78 to i64
  %freepages_count98 = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 42
  %79 = ptrtoint ptr %freepages_count98 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %freepages_count98, align 8
  %add99 = add i64 %80, %conv97
  store i64 %add99, ptr %freepages_count98, align 8
  %81 = load ptr, ptr %delays, align 8
  %thrashing_count = getelementptr inbounds %struct.task_delay_info, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %thrashing_count to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %thrashing_count, align 4
  %conv101 = zext i32 %83 to i64
  %thrashing_count102 = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 44
  %84 = ptrtoint ptr %thrashing_count102 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %thrashing_count102, align 8
  %add103 = add i64 %85, %conv101
  store i64 %add103, ptr %thrashing_count102, align 8
  %86 = load ptr, ptr %delays, align 8
  %compact_count = getelementptr inbounds %struct.task_delay_info, ptr %86, i32 0, i32 15
  %87 = ptrtoint ptr %compact_count to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %compact_count, align 8
  %conv105 = zext i32 %88 to i64
  %compact_count106 = getelementptr inbounds %struct.taskstats, ptr %d, i32 0, i32 47
  %89 = ptrtoint ptr %compact_count106 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %compact_count106, align 8
  %add107 = add i64 %90, %conv105
  store i64 %add107, ptr %compact_count106, align 8
  %91 = load ptr, ptr %delays, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %91, i32 noundef %call37) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @__delayacct_blkio_ticks(ptr nocapture noundef readonly %tsk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %delays = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 181
  %0 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %delays, align 8
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #5
  %2 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %delays, align 8
  %blkio_delay = getelementptr inbounds %struct.task_delay_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %blkio_delay to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %blkio_delay, align 8
  %call2 = tail call i64 @nsec_to_clock_t(i64 noundef %5) #5
  %6 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %delays, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call) #5
  ret i64 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_freepages_start() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @sched_clock() #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %delays = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 181
  %4 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delays, align 8
  %freepages_start = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %freepages_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %freepages_start, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_freepages_end() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %delays = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 181
  %4 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delays, align 8
  %freepages_start = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 7
  %call.i.i = tail call i64 @sched_clock() #5
  %6 = ptrtoint ptr %freepages_start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %freepages_start, align 8
  %sub.i = sub i64 %call.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.delayacct_end.exit_crit_edge

entry.delayacct_end.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %delayacct_end.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %freepages_count = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 13
  %freepages_delay = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %8 = ptrtoint ptr %freepages_delay to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %freepages_delay, align 8
  %add.i = add i64 %9, %sub.i
  store i64 %add.i, ptr %freepages_delay, align 8
  %10 = ptrtoint ptr %freepages_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %freepages_count, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %freepages_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call2.i) #5
  br label %delayacct_end.exit

delayacct_end.exit:                               ; preds = %do.body.i, %entry.delayacct_end.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_thrashing_start() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @sched_clock() #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %delays = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 181
  %4 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delays, align 8
  %thrashing_start = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %thrashing_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %thrashing_start, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_thrashing_end() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %delays = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 181
  %4 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delays, align 8
  %thrashing_start = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 9
  %call.i.i = tail call i64 @sched_clock() #5
  %6 = ptrtoint ptr %thrashing_start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %thrashing_start, align 8
  %sub.i = sub i64 %call.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.delayacct_end.exit_crit_edge

entry.delayacct_end.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %delayacct_end.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %thrashing_count = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 14
  %thrashing_delay = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %8 = ptrtoint ptr %thrashing_delay to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %thrashing_delay, align 8
  %add.i = add i64 %9, %sub.i
  store i64 %add.i, ptr %thrashing_delay, align 8
  %10 = ptrtoint ptr %thrashing_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %thrashing_count, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %thrashing_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call2.i) #5
  br label %delayacct_end.exit

delayacct_end.exit:                               ; preds = %do.body.i, %entry.delayacct_end.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_swapin_start() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @sched_clock() #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %delays = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 181
  %4 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delays, align 8
  %swapin_start = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %swapin_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %swapin_start, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_swapin_end() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %delays = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 181
  %4 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delays, align 8
  %swapin_start = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 3
  %call.i.i = tail call i64 @sched_clock() #5
  %6 = ptrtoint ptr %swapin_start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %swapin_start, align 8
  %sub.i = sub i64 %call.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.delayacct_end.exit_crit_edge

entry.delayacct_end.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %delayacct_end.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %swapin_count = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 6
  %swapin_delay = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %8 = ptrtoint ptr %swapin_delay to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %swapin_delay, align 8
  %add.i = add i64 %9, %sub.i
  store i64 %add.i, ptr %swapin_delay, align 8
  %10 = ptrtoint ptr %swapin_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %swapin_count, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %swapin_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call2.i) #5
  br label %delayacct_end.exit

delayacct_end.exit:                               ; preds = %do.body.i, %entry.delayacct_end.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_compact_start() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @sched_clock() #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %delays = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 181
  %4 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delays, align 8
  %compact_start = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %compact_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %compact_start, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delayacct_compact_end() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %delays = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 181
  %4 = ptrtoint ptr %delays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delays, align 8
  %compact_start = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 11
  %call.i.i = tail call i64 @sched_clock() #5
  %6 = ptrtoint ptr %compact_start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %compact_start, align 8
  %sub.i = sub i64 %call.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.delayacct_end.exit_crit_edge

entry.delayacct_end.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %delayacct_end.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %compact_count = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 15
  %compact_delay = getelementptr inbounds %struct.task_delay_info, ptr %5, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %8 = ptrtoint ptr %compact_delay to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %compact_delay, align 8
  %add.i = add i64 %9, %sub.i
  store i64 %add.i, ptr %compact_delay, align 8
  %10 = ptrtoint ptr %compact_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %compact_count, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %compact_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call2.i) #5
  br label %delayacct_end.exit

delayacct_end.exit:                               ; preds = %do.body.i, %entry.delayacct_end.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @delayacct_key, !1, !"delayacct_key", i1 false, i1 false}
!1 = !{!"../kernel/delayacct.c", i32 17, i32 1}
!2 = !{ptr @__setup_delayacct_setup_enable, !3, !"__setup_delayacct_setup_enable", i1 false, i1 false}
!3 = !{!"../kernel/delayacct.c", i32 37, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/delayacct.c", i32 41, i32 20}
!6 = !{ptr @__delayacct_tsk_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../kernel/delayacct.c", i32 72, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @delayacct_on, !10, !"delayacct_on", i1 false, i1 false}
!10 = !{!"../kernel/delayacct.c", i32 18, i32 5}
!11 = !{ptr @delayacct_cache, !12, !"delayacct_cache", i1 false, i1 false}
!12 = !{!"../kernel/delayacct.c", i32 19, i32 20}
!13 = !{ptr @__setup_str_delayacct_setup_enable, !3, !"__setup_str_delayacct_setup_enable", i1 false, i1 false}
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
