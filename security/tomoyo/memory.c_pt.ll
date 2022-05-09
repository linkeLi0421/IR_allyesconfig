; ModuleID = '/llk/IR_all_yes/security/tomoyo/memory.c_pt.bc'
source_filename = "../security/tomoyo/memory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tomoyo_policy_namespace = type { [256 x ptr], [3 x %struct.list_head], [11 x %struct.list_head], [256 x %struct.list_head], %struct.list_head, i32, ptr }
%struct.tomoyo_domain_info = type { %struct.list_head, %struct.list_head, ptr, ptr, [8 x i32], i8, i8, [2 x i8], %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.121, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.restart_block = type { i32, ptr, %union.anon.111 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.121 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tomoyo_group = type { %struct.tomoyo_shared_acl_head, ptr, %struct.list_head }
%struct.tomoyo_shared_acl_head = type { %struct.list_head, %struct.atomic_t }
%struct.tomoyo_acl_param = type { ptr, ptr, ptr, i8 }
%struct.tomoyo_name = type { %struct.tomoyo_shared_acl_head, %struct.tomoyo_path_info }
%struct.tomoyo_path_info = type { ptr, i32, i16, i8, i8 }

@tomoyo_warn_oom.tomoyo_last_pid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tomoyo_warn_oom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014ERROR: Out of memory at %s.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tomoyo_warn_oom\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/tomoyo/memory.c\00", [39 x i8] zeroinitializer }, align 32
@tomoyo_warn_oom._entry_ptr = internal global ptr @tomoyo_warn_oom._entry, section ".printk_index", align 4
@tomoyo_policy_loaded = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MAC Initialization failed.\0A\00", [36 x i8] zeroinitializer }, align 32
@tomoyo_memory_used = dso_local global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@tomoyo_memory_quota = dso_local global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@__func__.tomoyo_memory_ok = private unnamed_addr constant [17 x i8] c"tomoyo_memory_ok\00", align 1
@tomoyo_policy_lock = external dso_local global %struct.mutex, align 4
@tomoyo_name_list = dso_local global { [256 x %struct.list_head], [512 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"<kernel>\00", [23 x i8] zeroinitializer }, align 32
@tomoyo_kernel_namespace = dso_local global { %struct.tomoyo_policy_namespace, [800 x i8] } zeroinitializer, align 32
@tomoyo_kernel_domain = external dso_local global %struct.tomoyo_domain_info, align 4
@tomoyo_domain_list = external dso_local global %struct.list_head, align 4
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"tomoyo_last_pid\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 20, i32 15 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 24, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 28, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"tomoyo_memory_used\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 32, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"tomoyo_memory_quota\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 34, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"tomoyo_name_list\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 143, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 201, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"tomoyo_kernel_namespace\00", align 1
@___asan_gen_.36 = private constant [28 x i8] c"../security/tomoyo/memory.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 190, i32 32 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @tomoyo_warn_oom._entry, ptr @tomoyo_warn_oom._entry_ptr, ptr @tomoyo_warn_oom.tomoyo_last_pid, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tomoyo_memory_used, ptr @tomoyo_memory_quota, ptr @tomoyo_name_list, ptr @.str.4, ptr @tomoyo_kernel_namespace], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_warn_oom.tomoyo_last_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_warn_oom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_memory_used to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_memory_quota to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_name_list to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_kernel_namespace to i32), i32 3200, i32 4000, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_warn_oom(ptr noundef %function) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid1, align 8
  %6 = load i32, ptr @tomoyo_warn_oom.tomoyo_last_pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %5)
  %cmp.not = icmp eq i32 %6, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %function) #15
  store i32 %5, ptr @tomoyo_warn_oom.tomoyo_last_pid, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_policy_loaded to i32))
  %7 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #16
  unreachable

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_memory_ok(ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @ksize(ptr noundef nonnull %ptr) #12
  %0 = load i32, ptr @tomoyo_memory_used, align 4
  %add = add i32 %0, %call
  %1 = load i32, ptr @tomoyo_memory_quota, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp.not = icmp ugt i32 %add, %1
  %or.cond = select i1 %tobool1.not, i1 %cmp.not, i1 false
  %spec.store.select = select i1 %or.cond, i32 %0, i32 %add
  store i32 %spec.store.select, ptr @tomoyo_memory_used, align 4
  br i1 %or.cond, label %if.then.if.end3_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !22) #12
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %pid1.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid1.i, align 8
  %8 = load i32, ptr @tomoyo_warn_oom.tomoyo_last_pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp.not.i = icmp eq i32 %8, %7
  br i1 %cmp.not.i, label %if.end3.if.end.i_crit_edge, label %do.end.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tomoyo_memory_ok) #15
  store i32 %7, ptr @tomoyo_warn_oom.tomoyo_last_pid, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end3.if.end.i_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_policy_loaded to i32))
  %9 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #16
  unreachable

return:                                           ; preds = %if.end.i.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i1 [ true, %if.then.return_crit_edge ], [ false, %if.end.i.return_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_commit_ok(ptr nocapture noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 11584) #17
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @ksize(ptr noundef nonnull %call9.i.i) #12
  %0 = load i32, ptr @tomoyo_memory_used, align 4
  %add.i = add i32 %0, %call.i
  %1 = load i32, ptr @tomoyo_memory_quota, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %1)
  %cmp.not.i = icmp ugt i32 %add.i, %1
  %or.cond.i = select i1 %tobool1.not.i, i1 %cmp.not.i, i1 false
  %spec.store.select.i = select i1 %or.cond.i, i32 %0, i32 %add.i
  store i32 %spec.store.select.i, ptr @tomoyo_memory_used, align 4
  br i1 %or.cond.i, label %if.then.i.if.end3.i_crit_edge, label %if.then

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %retval.1.i.i13 = phi ptr [ %call9.i.i, %if.then.i.if.end3.i_crit_edge ], [ null, %entry.if.end3.i_crit_edge ]
  %2 = tail call i32 @llvm.read_register.i32(metadata !22) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %pid1.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid1.i.i, align 8
  %8 = load i32, ptr @tomoyo_warn_oom.tomoyo_last_pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp.not.i.i = icmp eq i32 %8, %7
  br i1 %cmp.not.i.i, label %if.end3.i.if.end.i.i8_crit_edge, label %do.end.i.i

if.end3.i.if.end.i.i8_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i8

do.end.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tomoyo_memory_ok) #15
  store i32 %7, ptr @tomoyo_warn_oom.tomoyo_last_pid, align 4
  br label %if.end.i.i8

if.end.i.i8:                                      ; preds = %do.end.i.i, %if.end3.i.if.end.i.i8_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_policy_loaded to i32))
  %9 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i, label %if.end

if.then3.i.i:                                     ; preds = %if.end.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #16
  unreachable

if.then:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = call ptr @memmove(ptr %call9.i.i, ptr %data, i32 %size)
  %11 = call ptr @memset(ptr %data, i32 0, i32 %size)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %retval.1.i.i13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call9.i.i, %if.then ], [ null, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_get_group(ptr noundef %param, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca %struct.tomoyo_group, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %e) #12
  %0 = call ptr @memset(ptr %e, i32 0, i32 24)
  %call = tail call ptr @tomoyo_read_token(ptr noundef %param) #12
  %call1 = tail call zeroext i1 @tomoyo_correct_word(ptr noundef %call) #12
  br i1 %call1, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %idx to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %idx)
  %cmp = icmp ugt i8 %idx, 2
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call ptr @tomoyo_get_name(ptr noundef %call)
  %group_name4 = getelementptr inbounds %struct.tomoyo_group, ptr %e, i32 0, i32 1
  %1 = ptrtoint ptr %group_name4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %group_name4, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.if.then.i_crit_edge

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end11:                                         ; preds = %if.end7
  %ns = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 2
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 4
  %arrayidx = getelementptr %struct.tomoyo_policy_namespace, ptr %3, i32 0, i32 1, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %group.082 = load ptr, ptr %arrayidx, align 4
  %cmp13.not83 = icmp eq ptr %group.082, %arrayidx
  br i1 %cmp13.not83, label %if.end11.if.then35_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.if.then35_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %group.084 = phi ptr [ %group.0, %for.inc.for.body_crit_edge ], [ %group.082, %if.end11.for.body_crit_edge ]
  %group_name16 = getelementptr inbounds %struct.tomoyo_group, ptr %group.084, i32 0, i32 1
  %5 = ptrtoint ptr %group_name16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %group_name16, align 4
  %cmp17.not = icmp eq ptr %call3, %6
  br i1 %cmp17.not, label %lor.lhs.false19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false19:                                  ; preds = %for.body
  %users = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %group.084, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #12
  %7 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp22 = icmp eq i32 %8, -1
  br i1 %cmp22, label %lor.lhs.false19.for.inc_crit_edge, label %for.end

lor.lhs.false19.for.inc_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %group.084 to i32
  call void @__asan_load4_noabort(i32 %9)
  %group.0 = load ptr, ptr %group.084, align 4
  %cmp13.not = icmp eq ptr %group.0, %arrayidx
  br i1 %cmp13.not, label %for.inc.if.then35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.then35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

for.end:                                          ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !33
  br label %out

if.then35:                                        ; preds = %for.inc.if.then35_crit_edge, %if.end11.if.then35_crit_edge
  %call37 = call ptr @tomoyo_commit_ok(ptr noundef nonnull %e, i32 noundef 24)
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then35.out_crit_edge, label %if.then39

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %member_list = getelementptr inbounds %struct.tomoyo_group, ptr %call37, i32 0, i32 2
  %11 = ptrtoint ptr %member_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %member_list, ptr %member_list, align 4
  %prev.i = getelementptr inbounds %struct.tomoyo_group, ptr %call37, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %member_list, ptr %prev.i, align 4
  %users41 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %call37, i32 0, i32 1
  %call.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users41, i32 noundef 4) #12
  %13 = ptrtoint ptr %users41 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %users41, align 4
  tail call fastcc void @list_add_tail_rcu(ptr noundef nonnull %call37, ptr noundef %arrayidx)
  br label %out

out:                                              ; preds = %if.then39, %if.then35.out_crit_edge, %for.end
  %found.2.off0 = phi i1 [ true, %for.end ], [ true, %if.then39 ], [ false, %if.then35.out_crit_edge ]
  %group.2 = phi ptr [ %group.084, %for.end ], [ %call37, %if.then39 ], [ %arrayidx, %if.then35.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #12
  %14 = ptrtoint ptr %group_name4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %group_name4, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %out.tomoyo_put_name.exit_crit_edge, label %out.if.then.i_crit_edge

out.if.then.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

out.tomoyo_put_name.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %tomoyo_put_name.exit

if.then.i:                                        ; preds = %out.if.then.i_crit_edge, %if.end7.if.then.i_crit_edge
  %group.378 = phi ptr [ %group.2, %out.if.then.i_crit_edge ], [ null, %if.end7.if.then.i_crit_edge ]
  %found.3.off076 = phi i1 [ %found.2.off0, %out.if.then.i_crit_edge ], [ false, %if.end7.if.then.i_crit_edge ]
  %15 = phi ptr [ %.pr, %out.if.then.i_crit_edge ], [ %call3, %if.end7.if.then.i_crit_edge ]
  %users.i = getelementptr i8, ptr %15, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #12, !srcloc !34
  br label %tomoyo_put_name.exit

tomoyo_put_name.exit:                             ; preds = %if.then.i, %out.tomoyo_put_name.exit_crit_edge
  %group.379 = phi ptr [ %group.2, %out.tomoyo_put_name.exit_crit_edge ], [ %group.378, %if.then.i ]
  %found.3.off077 = phi i1 [ %found.2.off0, %out.tomoyo_put_name.exit_crit_edge ], [ %found.3.off076, %if.then.i ]
  %spec.select = select i1 %found.3.off077, ptr %group.379, ptr null
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_put_name.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %tomoyo_put_name.exit ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %e) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_read_token(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_correct_word(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_get_name(ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %name) #18
  %add = add i32 %call, 1
  %call1 = tail call i32 @full_name_hash(ptr noundef null, ptr noundef nonnull %name, i32 noundef %call) #19
  %mul.i.i = mul i32 %call1, 1640531527
  %shr.i = lshr i32 %mul.i.i, 24
  %arrayidx = getelementptr [256 x %struct.list_head], ptr @tomoyo_name_list, i32 0, i32 %shr.i
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %ptr.087 = load ptr, ptr %arrayidx, align 4
  %cmp.not88 = icmp eq ptr %ptr.087, %arrayidx
  br i1 %cmp.not88, label %for.cond.preheader.if.end8.i.i_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8.i.i_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ptr.089 = phi ptr [ %ptr.0, %for.inc.for.body_crit_edge ], [ %ptr.087, %for.cond.preheader.for.body_crit_edge ]
  %hash9 = getelementptr inbounds %struct.tomoyo_name, ptr %ptr.089, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %hash9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hash9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %2)
  %cmp10.not = icmp eq i32 %call1, %2
  br i1 %cmp10.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %entry8 = getelementptr inbounds %struct.tomoyo_name, ptr %ptr.089, i32 0, i32 1
  %3 = ptrtoint ptr %entry8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry8, align 4
  %call13 = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %users = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %ptr.089, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #12
  %5 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp18 = icmp eq i32 %6, -1
  br i1 %cmp18, label %lor.lhs.false15.for.inc_crit_edge, label %if.end20

lor.lhs.false15.for.inc_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end20:                                         ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !33
  br label %out

for.inc:                                          ; preds = %lor.lhs.false15.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %ptr.089 to i32
  call void @__asan_load4_noabort(i32 %8)
  %ptr.0 = load ptr, ptr %ptr.089, align 4
  %cmp.not = icmp eq ptr %ptr.0, %arrayidx
  br i1 %cmp.not, label %for.inc.if.end8.i.i_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end8.i.i_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.inc.if.end8.i.i_crit_edge, %for.cond.preheader.if.end8.i.i_crit_edge
  %add29 = add i32 %call, 25
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add29, i32 noundef 11584) #17
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.if.end3.i_crit_edge, label %if.then.i

if.end8.i.i.if.end3.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end8.i.i
  %call.i = tail call i32 @ksize(ptr noundef nonnull %call9.i.i) #12
  %9 = load i32, ptr @tomoyo_memory_used, align 4
  %add.i = add i32 %9, %call.i
  %10 = load i32, ptr @tomoyo_memory_quota, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %10)
  %cmp.not.i = icmp ugt i32 %add.i, %10
  %or.cond.i = select i1 %tobool1.not.i, i1 %cmp.not.i, i1 false
  %spec.store.select.i = select i1 %or.cond.i, i32 %9, i32 %add.i
  store i32 %spec.store.select.i, ptr @tomoyo_memory_used, align 4
  br i1 %or.cond.i, label %if.then.i.if.end3.i_crit_edge, label %if.then32

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end8.i.i.if.end3.i_crit_edge
  %retval.1.i.i82 = phi ptr [ %call9.i.i, %if.then.i.if.end3.i_crit_edge ], [ null, %if.end8.i.i.if.end3.i_crit_edge ]
  %11 = tail call i32 @llvm.read_register.i32(metadata !22) #12
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i, align 8
  %pid1.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid1.i.i, align 8
  %17 = load i32, ptr @tomoyo_warn_oom.tomoyo_last_pid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %16)
  %cmp.not.i.i = icmp eq i32 %17, %16
  br i1 %cmp.not.i.i, label %if.end3.i.if.end.i.i75_crit_edge, label %do.end.i.i

if.end3.i.if.end.i.i75_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i75

do.end.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tomoyo_memory_ok) #15
  store i32 %16, ptr @tomoyo_warn_oom.tomoyo_last_pid, align 4
  br label %if.end.i.i75

if.end.i.i75:                                     ; preds = %do.end.i.i, %if.end3.i.if.end.i.i75_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_policy_loaded to i32))
  %18 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i, label %if.else

if.then3.i.i:                                     ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #16
  unreachable

if.then32:                                        ; preds = %if.then.i
  %add.ptr33 = getelementptr i8, ptr %call9.i.i, i32 24
  %entry34 = getelementptr inbounds %struct.tomoyo_name, ptr %call9.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr33, ptr %entry34, align 4
  %20 = call ptr @memmove(ptr %add.ptr33, ptr %name, i32 %add)
  %users39 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %call9.i.i, i32 0, i32 1
  %call.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users39, i32 noundef 4) #12
  %21 = ptrtoint ptr %users39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %users39, align 8
  tail call void @tomoyo_fill_path_info(ptr noundef %entry34) #12
  %prev.i = getelementptr [256 x %struct.list_head], ptr @tomoyo_name_list, i32 0, i32 %shr.i, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i76 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %23, ptr noundef %arrayidx) #12
  br i1 %call.i.i76, label %if.end.i.i77, label %if.then32.out_crit_edge

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i.i77:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %25 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call9.i.i, ptr %23, align 4
  br label %out

if.else:                                          ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %retval.1.i.i82) #12
  br label %out

out:                                              ; preds = %if.else, %if.end.i.i77, %if.then32.out_crit_edge, %if.end20
  %ptr.1 = phi ptr [ %ptr.089, %if.end20 ], [ null, %if.else ], [ %call9.i.i, %if.then32.out_crit_edge ], [ %call9.i.i, %if.end.i.i77 ]
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #12
  %tobool44.not = icmp eq ptr %ptr.1, null
  %entry45 = getelementptr inbounds %struct.tomoyo_name, ptr %ptr.1, i32 0, i32 1
  %spec.select = select i1 %tobool44.not, ptr null, ptr %entry45
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %out ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #12
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !35
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %1, align 4
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_fill_path_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_mm_init() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.list_head], ptr @tomoyo_name_list, i32 0, i32 %idx.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr [256 x %struct.list_head], ptr @tomoyo_name_list, i32 0, i32 %idx.03, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %idx.03, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  store ptr @.str.4, ptr getelementptr inbounds (%struct.tomoyo_policy_namespace, ptr @tomoyo_kernel_namespace, i32 0, i32 6), align 4
  tail call void @tomoyo_init_policy_namespace(ptr noundef nonnull @tomoyo_kernel_namespace) #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 3) to i32))
  store ptr @tomoyo_kernel_namespace, ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 1) to i32))
  store volatile ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 1), ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 1, i32 1) to i32))
  store ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 1), ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 1, i32 1), align 4
  %call = tail call ptr @tomoyo_get_name(ptr noundef nonnull @.str.4)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 2) to i32))
  store ptr %call, ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @tomoyo_domain_list, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tomoyo_domain_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull @tomoyo_kernel_domain, ptr noundef %2, ptr noundef nonnull @tomoyo_domain_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail_rcu.exit_crit_edge

for.end.list_add_tail_rcu.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tomoyo_kernel_domain to i32))
  store ptr @tomoyo_domain_list, ptr @tomoyo_kernel_domain, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 0, i32 1) to i32))
  store ptr %2, ptr getelementptr inbounds (%struct.tomoyo_domain_info, ptr @tomoyo_kernel_domain, i32 0, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !35
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr @tomoyo_kernel_domain, ptr %2, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @tomoyo_domain_list, i32 0, i32 1) to i32))
  store ptr @tomoyo_kernel_domain, ptr getelementptr inbounds (%struct.list_head, ptr @tomoyo_domain_list, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %for.end.list_add_tail_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_init_policy_namespace(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @tomoyo_warn_oom.tomoyo_last_pid, !1, !"tomoyo_last_pid", i1 false, i1 false}
!1 = !{!"../security/tomoyo/memory.c", i32 20, i32 15}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/tomoyo/memory.c", i32 24, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tomoyo_warn_oom._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @tomoyo_warn_oom._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/tomoyo/memory.c", i32 28, i32 9}
!10 = !{ptr @__func__.tomoyo_memory_ok, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/tomoyo/memory.c", i32 59, i32 18}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/tomoyo/memory.c", i32 201, i32 33}
!14 = !{ptr @tomoyo_memory_used, !15, !"tomoyo_memory_used", i1 false, i1 false}
!15 = !{!"../security/tomoyo/memory.c", i32 32, i32 14}
!16 = !{ptr @tomoyo_memory_quota, !17, !"tomoyo_memory_quota", i1 false, i1 false}
!17 = !{!"../security/tomoyo/memory.c", i32 34, i32 14}
!18 = !{ptr @tomoyo_name_list, !19, !"tomoyo_name_list", i1 false, i1 false}
!19 = !{!"../security/tomoyo/memory.c", i32 143, i32 18}
!20 = !{ptr @tomoyo_kernel_namespace, !21, !"tomoyo_kernel_namespace", i1 false, i1 false}
!21 = !{!"../security/tomoyo/memory.c", i32 190, i32 32}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i8 0, i8 2}
!33 = !{i64 2148588107, i64 2148588133, i64 2148588162, i64 2148588196, i64 2148588227, i64 2148588250}
!34 = !{i64 2148590572, i64 2148590598, i64 2148590627, i64 2148590661, i64 2148590692, i64 2148590715}
!35 = !{i64 2151427490}
