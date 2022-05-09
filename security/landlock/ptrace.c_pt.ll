; ModuleID = '/llk/IR_all_yes/security/landlock/ptrace.c_pt.bc'
source_filename = "../security/landlock/ptrace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.security_list_options = type { ptr }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.8 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.8 = type { %struct.callback_head }
%struct.landlock_ruleset = type { %struct.rb_root, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { %struct.mutex, %struct.refcount_struct, i32, i32, [0 x i16] }

@landlock_hooks = internal global { [2 x %struct.security_hook_list], [56 x i8] } { [2 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 16), %union.security_list_options { ptr @hook_ptrace_access_check }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 20), %union.security_list_options { ptr @hook_ptrace_traceme }, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"landlock\00", [23 x i8] zeroinitializer }, align 32
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@landlock_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@landlock_get_task_domain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/landlock/cred.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"landlock_hooks\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 111, i32 34 }
@___asan_gen_.10 = private constant [30 x i8] c"../security/landlock/ptrace.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 119, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 695, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"../security/landlock/cred.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 40, i32 23 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 723, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @landlock_hooks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @landlock_hooks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @landlock_add_ptrace_hooks() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @security_add_hooks(ptr noundef nonnull @landlock_hooks, i32 noundef 2, ptr noundef nonnull @.str) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hook_ptrace_access_check(ptr noundef %child, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call fastcc i32 @task_ptrace(ptr noundef %3, ptr noundef %child)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hook_ptrace_traceme(ptr noundef %parent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call fastcc i32 @task_ptrace(ptr noundef %parent, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @task_ptrace(ptr noundef %parent, ptr noundef %child) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task1.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1.i, align 8
  %cmp.i = icmp eq ptr %3, %parent
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %parent, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  br label %landlocked.exit

if.end.i:                                         ; preds = %entry
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #5
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %real_cred.i.i = getelementptr inbounds %struct.task_struct, ptr %parent, i32 0, i32 98
  %13 = ptrtoint ptr %real_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %real_cred.i.i, align 4
  %call.i10.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i11.i, label %land.lhs.true.i12.i, label %rcu_read_lock.exit.i.landlock_get_task_domain.exit.i_crit_edge

rcu_read_lock.exit.i.landlock_get_task_domain.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %landlock_get_task_domain.exit.i

land.lhs.true.i12.i:                              ; preds = %rcu_read_lock.exit.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i12.i.landlock_get_task_domain.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i12.i.landlock_get_task_domain.exit.i_crit_edge: ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %landlock_get_task_domain.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i12.i
  %.b10.i.i = load i1, ptr @landlock_get_task_domain.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true4.i.i.landlock_get_task_domain.exit.i_crit_edge, label %if.then.i13.i

land.lhs.true4.i.i.landlock_get_task_domain.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %landlock_get_task_domain.exit.i

if.then.i13.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @landlock_get_task_domain.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 40, ptr noundef nonnull @.str.4) #5
  br label %landlock_get_task_domain.exit.i

landlock_get_task_domain.exit.i:                  ; preds = %if.then.i13.i, %land.lhs.true4.i.i.landlock_get_task_domain.exit.i_crit_edge, %land.lhs.true.i12.i.landlock_get_task_domain.exit.i_crit_edge, %rcu_read_lock.exit.i.landlock_get_task_domain.exit.i_crit_edge
  %security.i.i14.i = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %security.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %security.i.i14.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %17 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i15.i = getelementptr i8, ptr %16, i32 %17
  %18 = ptrtoint ptr %add.ptr.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i15.i, align 4
  %call.i16.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i16.i, label %landlock_get_task_domain.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i19.i

landlock_get_task_domain.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %landlock_get_task_domain.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit.i

land.lhs.true.i19.i:                              ; preds = %landlock_get_task_domain.exit.i
  %call1.i17.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i19.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i21.i

land.lhs.true.i19.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i21.i:                             ; preds = %land.lhs.true.i19.i
  %.b4.i20.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i, label %land.lhs.true2.i21.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i22.i

land.lhs.true2.i21.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit.i

if.then.i22.i:                                    ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.5) #5
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i22.i, %land.lhs.true2.i21.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i19.i.rcu_read_unlock.exit.i_crit_edge, %landlock_get_task_domain.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %20 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i.i.i.i23.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i23.i to ptr
  %preempt_count.i.i.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i24.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i24.i, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %landlocked.exit

landlocked.exit:                                  ; preds = %rcu_read_unlock.exit.i, %if.then.i
  %retval.0.in.i = phi ptr [ %10, %if.then.i ], [ %19, %rcu_read_unlock.exit.i ]
  %retval.0.i.not = icmp eq ptr %retval.0.in.i, null
  br i1 %retval.0.i.not, label %landlocked.exit.return_crit_edge, label %if.end

landlocked.exit.return_crit_edge:                 ; preds = %landlocked.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %landlocked.exit
  %24 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i5 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i5, align 4
  %add.i.i.i.i6 = add i32 %27, 1
  store volatile i32 %add.i.i.i.i6, ptr %preempt_count.i.i.i.i.i5, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i.i7 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i.i7, label %if.end.rcu_read_lock.exit.i15_crit_edge, label %land.lhs.true.i.i10

if.end.rcu_read_lock.exit.i15_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i15

land.lhs.true.i.i10:                              ; preds = %if.end
  %call1.i.i8 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i8)
  %tobool.not.i.i9 = icmp eq i32 %call1.i.i8, 0
  br i1 %tobool.not.i.i9, label %land.lhs.true.i.i10.rcu_read_lock.exit.i15_crit_edge, label %land.lhs.true2.i.i12

land.lhs.true.i.i10.rcu_read_lock.exit.i15_crit_edge: ; preds = %land.lhs.true.i.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i15

land.lhs.true2.i.i12:                             ; preds = %land.lhs.true.i.i10
  %.b4.i.i11 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i11, label %land.lhs.true2.i.i12.rcu_read_lock.exit.i15_crit_edge, label %if.then.i.i13

land.lhs.true2.i.i12.rcu_read_lock.exit.i15_crit_edge: ; preds = %land.lhs.true2.i.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i15

if.then.i.i13:                                    ; preds = %land.lhs.true2.i.i12
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #5
  br label %rcu_read_lock.exit.i15

rcu_read_lock.exit.i15:                           ; preds = %if.then.i.i13, %land.lhs.true2.i.i12.rcu_read_lock.exit.i15_crit_edge, %land.lhs.true.i.i10.rcu_read_lock.exit.i15_crit_edge, %if.end.rcu_read_lock.exit.i15_crit_edge
  %real_cred.i.i14 = getelementptr inbounds %struct.task_struct, ptr %parent, i32 0, i32 98
  %28 = ptrtoint ptr %real_cred.i.i14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %real_cred.i.i14, align 4
  %call.i3.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i, label %rcu_read_lock.exit.i15.landlock_get_task_domain.exit.i22_crit_edge

rcu_read_lock.exit.i15.landlock_get_task_domain.exit.i22_crit_edge: ; preds = %rcu_read_lock.exit.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %landlock_get_task_domain.exit.i22

land.lhs.true.i5.i:                               ; preds = %rcu_read_lock.exit.i15
  %call2.i.i16 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i16)
  %tobool3.not.i.i17 = icmp eq i32 %call2.i.i16, 0
  br i1 %tobool3.not.i.i17, label %land.lhs.true.i5.i.landlock_get_task_domain.exit.i22_crit_edge, label %land.lhs.true4.i.i19

land.lhs.true.i5.i.landlock_get_task_domain.exit.i22_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %landlock_get_task_domain.exit.i22

land.lhs.true4.i.i19:                             ; preds = %land.lhs.true.i5.i
  %.b10.i.i18 = load i1, ptr @landlock_get_task_domain.__warned, align 1
  br i1 %.b10.i.i18, label %land.lhs.true4.i.i19.landlock_get_task_domain.exit.i22_crit_edge, label %if.then.i6.i

land.lhs.true4.i.i19.landlock_get_task_domain.exit.i22_crit_edge: ; preds = %land.lhs.true4.i.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %landlock_get_task_domain.exit.i22

if.then.i6.i:                                     ; preds = %land.lhs.true4.i.i19
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @landlock_get_task_domain.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 40, ptr noundef nonnull @.str.4) #5
  br label %landlock_get_task_domain.exit.i22

landlock_get_task_domain.exit.i22:                ; preds = %if.then.i6.i, %land.lhs.true4.i.i19.landlock_get_task_domain.exit.i22_crit_edge, %land.lhs.true.i5.i.landlock_get_task_domain.exit.i22_crit_edge, %rcu_read_lock.exit.i15.landlock_get_task_domain.exit.i22_crit_edge
  %security.i.i.i20 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 23
  %30 = ptrtoint ptr %security.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %security.i.i.i20, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %32 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i.i21 = getelementptr i8, ptr %31, i32 %32
  %33 = ptrtoint ptr %add.ptr.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i.i21, align 4
  %real_cred.i7.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 98
  %35 = ptrtoint ptr %real_cred.i7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %real_cred.i7.i, align 4
  %call.i8.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool.not.i9.i, label %land.lhs.true.i12.i23, label %landlock_get_task_domain.exit.i22.landlock_get_task_domain.exit18.i_crit_edge

landlock_get_task_domain.exit.i22.landlock_get_task_domain.exit18.i_crit_edge: ; preds = %landlock_get_task_domain.exit.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %landlock_get_task_domain.exit18.i

land.lhs.true.i12.i23:                            ; preds = %landlock_get_task_domain.exit.i22
  %call2.i10.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i10.i)
  %tobool3.not.i11.i = icmp eq i32 %call2.i10.i, 0
  br i1 %tobool3.not.i11.i, label %land.lhs.true.i12.i23.landlock_get_task_domain.exit18.i_crit_edge, label %land.lhs.true4.i14.i

land.lhs.true.i12.i23.landlock_get_task_domain.exit18.i_crit_edge: ; preds = %land.lhs.true.i12.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %landlock_get_task_domain.exit18.i

land.lhs.true4.i14.i:                             ; preds = %land.lhs.true.i12.i23
  %.b10.i13.i = load i1, ptr @landlock_get_task_domain.__warned, align 1
  br i1 %.b10.i13.i, label %land.lhs.true4.i14.i.landlock_get_task_domain.exit18.i_crit_edge, label %if.then.i15.i

land.lhs.true4.i14.i.landlock_get_task_domain.exit18.i_crit_edge: ; preds = %land.lhs.true4.i14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %landlock_get_task_domain.exit18.i

if.then.i15.i:                                    ; preds = %land.lhs.true4.i14.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @landlock_get_task_domain.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 40, ptr noundef nonnull @.str.4) #5
  br label %landlock_get_task_domain.exit18.i

landlock_get_task_domain.exit18.i:                ; preds = %if.then.i15.i, %land.lhs.true4.i14.i.landlock_get_task_domain.exit18.i_crit_edge, %land.lhs.true.i12.i23.landlock_get_task_domain.exit18.i_crit_edge, %landlock_get_task_domain.exit.i22.landlock_get_task_domain.exit18.i_crit_edge
  %security.i.i16.i = getelementptr inbounds %struct.cred, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %security.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %security.i.i16.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %39 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i17.i = getelementptr i8, ptr %38, i32 %39
  %40 = ptrtoint ptr %add.ptr.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i.i17.i, align 4
  %tobool.not.i19.i = icmp eq ptr %34, null
  br i1 %tobool.not.i19.i, label %landlock_get_task_domain.exit18.i.domain_scope_le.exit.i_crit_edge, label %if.end.i.i

landlock_get_task_domain.exit18.i.domain_scope_le.exit.i_crit_edge: ; preds = %landlock_get_task_domain.exit18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %domain_scope_le.exit.i

if.end.i.i:                                       ; preds = %landlock_get_task_domain.exit18.i
  %tobool1.not.i.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.domain_scope_le.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.domain_scope_le.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %domain_scope_le.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %hierarchy.i.i = getelementptr inbounds %struct.landlock_ruleset, ptr %41, i32 0, i32 1
  %hierarchy5.i.i = getelementptr inbounds %struct.landlock_ruleset, ptr %34, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end3.i.i
  %walker.0.in.i.i = phi ptr [ %hierarchy.i.i, %if.end3.i.i ], [ %walker.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %42 = ptrtoint ptr %walker.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %walker.0.i.i = load ptr, ptr %walker.0.in.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %walker.0.i.i, null
  br i1 %tobool4.not.i.i, label %for.cond.i.i.cleanup.loopexit.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup.loopexit.i.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.loopexit.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %43 = ptrtoint ptr %hierarchy5.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hierarchy5.i.i, align 4
  %cmp.i.i = icmp eq ptr %walker.0.i.i, %44
  br i1 %cmp.i.i, label %for.body.i.i.cleanup.loopexit.i.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.body.i.i.cleanup.loopexit.i.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.loopexit.i.i

cleanup.loopexit.i.i:                             ; preds = %for.body.i.i.cleanup.loopexit.i.i_crit_edge, %for.cond.i.i.cleanup.loopexit.i.i_crit_edge
  %phi.cast = sext i1 %tobool4.not.i.i to i32
  br label %domain_scope_le.exit.i

domain_scope_le.exit.i:                           ; preds = %cleanup.loopexit.i.i, %if.end.i.i.domain_scope_le.exit.i_crit_edge, %landlock_get_task_domain.exit18.i.domain_scope_le.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %landlock_get_task_domain.exit18.i.domain_scope_le.exit.i_crit_edge ], [ -1, %if.end.i.i.domain_scope_le.exit.i_crit_edge ], [ %phi.cast, %cleanup.loopexit.i.i ]
  %call.i20.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i20.i, label %domain_scope_le.exit.i.task_is_scoped.exit_crit_edge, label %land.lhs.true.i23.i

domain_scope_le.exit.i.task_is_scoped.exit_crit_edge: ; preds = %domain_scope_le.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_is_scoped.exit

land.lhs.true.i23.i:                              ; preds = %domain_scope_le.exit.i
  %call1.i21.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call1.i21.i, 0
  br i1 %tobool.not.i22.i, label %land.lhs.true.i23.i.task_is_scoped.exit_crit_edge, label %land.lhs.true2.i25.i

land.lhs.true.i23.i.task_is_scoped.exit_crit_edge: ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_is_scoped.exit

land.lhs.true2.i25.i:                             ; preds = %land.lhs.true.i23.i
  %.b4.i24.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24.i, label %land.lhs.true2.i25.i.task_is_scoped.exit_crit_edge, label %if.then.i26.i

land.lhs.true2.i25.i.task_is_scoped.exit_crit_edge: ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_is_scoped.exit

if.then.i26.i:                                    ; preds = %land.lhs.true2.i25.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.5) #5
  br label %task_is_scoped.exit

task_is_scoped.exit:                              ; preds = %if.then.i26.i, %land.lhs.true2.i25.i.task_is_scoped.exit_crit_edge, %land.lhs.true.i23.i.task_is_scoped.exit_crit_edge, %domain_scope_le.exit.i.task_is_scoped.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %45 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i.i.i.i27.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i27.i to ptr
  %preempt_count.i.i.i.i28.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i28.i, align 4
  %sub.i.i.i.i24 = add i32 %48, -1
  store volatile i32 %sub.i.i.i.i24, ptr %preempt_count.i.i.i.i28.i, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %return

return:                                           ; preds = %task_is_scoped.exit, %landlocked.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %landlocked.exit.return_crit_edge ], [ %retval.0.i.i, %task_is_scoped.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !14, !16}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/landlock/ptrace.c", i32 119, i32 4}
!2 = !{ptr @landlock_hooks, !3, !"landlock_hooks", i1 false, i1 false}
!3 = !{!"../security/landlock/ptrace.c", i32 111, i32 34}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../security/landlock/cred.h", i32 31, i32 23}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../security/landlock/cred.h", i32 40, i32 23}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2149216123}
!28 = !{i64 2149216389}
