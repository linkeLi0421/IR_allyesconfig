; ModuleID = '/llk/IR_all_yes/security/lockdown/lockdown.c_pt.bc'
source_filename = "../security/lockdown/lockdown.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.security_list_options = type { ptr }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__setup_str_lockdown_param = internal constant [9 x i8] c"lockdown\00", section ".init.rodata", align 1
@__setup_lockdown_param = internal global %struct.obs_kernel_param { ptr @__setup_str_lockdown_param, ptr @lockdown_param, i32 1 }, section ".init.setup", align 4
@__initcall__kmod_lockdown__217_158_lockdown_secfs_init1 = internal global ptr @lockdown_secfs_init, section ".initcall1.init", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lockdown\00", [23 x i8] zeroinitializer }, align 32
@__early_lsm_lockdown = internal global %struct.lsm_info { ptr @.str, i32 0, i32 0, ptr null, ptr @lockdown_lsm_init, ptr null }, section ".early_lsm_info.init", align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"integrity\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"command line\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"confidentiality\00", [16 x i8] zeroinitializer }, align 32
@kernel_locked_down = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lock_kernel_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015Kernel is locked down from %s; see man kernel_lockdown.7\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lock_kernel_down\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"security/lockdown/lockdown.c\00", [35 x i8] zeroinitializer }, align 32
@lock_kernel_down._entry_ptr = internal global ptr @lock_kernel_down._entry, section ".printk_index", align 4
@lockdown_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @lockdown_read, ptr @lockdown_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@lockdown_reasons = external dso_local local_unnamed_addr constant [26 x ptr], align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"securityfs\00", [21 x i8] zeroinitializer }, align 32
@lockdown_hooks = internal global { [1 x %struct.security_hook_list], [44 x i8] } { [1 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 924), %union.security_list_options { ptr @lockdown_is_locked_down }, ptr null }], [44 x i8] zeroinitializer }, align 32
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid lockdown reason\00", [40 x i8] zeroinitializer }, align 32
@lockdown_is_locked_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015Lockdown: %s: %s is restricted; see man kernel_lockdown.7\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lockdown_is_locked_down\00", [40 x i8] zeroinitializer }, align 32
@lockdown_is_locked_down._entry_ptr = internal global ptr @lockdown_is_locked_down._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 165, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 42, i32 20 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 43, i32 20 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 44, i32 25 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"kernel_locked_down\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 17, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 32, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"lockdown_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 144, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 103, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 105, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 137, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"lockdown_hooks\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 74, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 60, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [32 x i8] c"../security/lockdown/lockdown.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 66, i32 4 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__early_lsm_lockdown, ptr @__initcall__kmod_lockdown__217_158_lockdown_secfs_init1, ptr @__setup_lockdown_param, ptr @lock_kernel_down._entry, ptr @lock_kernel_down._entry_ptr, ptr @lockdown_is_locked_down._entry, ptr @lockdown_is_locked_down._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @kernel_locked_down, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lockdown_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @lockdown_hooks, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_locked_down to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_kernel_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockdown_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockdown_hooks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockdown_is_locked_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lockdown_param(ptr noundef readonly %level) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %level, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull %level, ptr noundef nonnull dereferenceable(10) @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %0 = load i32, ptr @kernel_locked_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %0)
  %cmp.not.i = icmp ult i32 %0, 17
  br i1 %cmp.not.i, label %if.then1.return.sink.split_crit_edge, label %if.then1.return_crit_edge

if.then1.return_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then1.return.sink.split_crit_edge:             ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @strcmp(ptr noundef nonnull %level, ptr noundef nonnull dereferenceable(16) @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then5:                                         ; preds = %if.else
  %1 = load i32, ptr @kernel_locked_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp.not.i12 = icmp ult i32 %1, 25
  br i1 %cmp.not.i12, label %if.then5.return.sink.split_crit_edge, label %if.then5.return_crit_edge

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then5.return.sink.split_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then5.return.sink.split_crit_edge, %if.then1.return.sink.split_crit_edge
  %.sink = phi i32 [ 17, %if.then1.return.sink.split_crit_edge ], [ 25, %if.then5.return.sink.split_crit_edge ]
  store i32 %.sink, ptr @kernel_locked_down, align 4
  %call.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #12
  br label %return

return:                                           ; preds = %return.sink.split, %if.then5.return_crit_edge, %if.else.return_crit_edge, %if.then1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.else.return_crit_edge ], [ 0, %if.then1.return_crit_edge ], [ 0, %if.then5.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lockdown_secfs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @securityfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 420, ptr noundef null, ptr noundef null, ptr noundef nonnull @lockdown_ops) #8
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %0, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lockdown_lsm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @security_add_hooks(ptr noundef nonnull @lockdown_hooks, i32 noundef 1, ptr noundef nonnull @.str) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lockdown_read(ptr nocapture noundef readnone %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #5 align 64 {
entry:
  %temp = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %temp) #8
  %0 = call ptr @memset(ptr %temp, i32 255, i32 80)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lockdown_reasons to i32))
  %1 = load ptr, ptr @lockdown_reasons, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @kernel_locked_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3 = icmp eq i32 %2, 0
  %.str.7..str.8 = select i1 %cmp3, ptr @.str.7, ptr @.str.8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %temp, ptr noundef nonnull %.str.7..str.8, ptr noundef nonnull %1)
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %offset.2 = phi i32 [ 0, %entry.if.end9_crit_edge ], [ %call, %if.then ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([26 x ptr], ptr @lockdown_reasons, i32 0, i32 17) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([26 x ptr], ptr @lockdown_reasons, i32 0, i32 17), align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %if.end9.if.end9.1_crit_edge, label %if.then.1

if.end9.if.end9.1_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.1

if.then.1:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @kernel_locked_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %4)
  %cmp3.1 = icmp eq i32 %4, 17
  %add.ptr.1 = getelementptr i8, ptr %temp, i32 %offset.2
  %.str.7..str.832 = select i1 %cmp3.1, ptr @.str.7, ptr @.str.8
  %call.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull %.str.7..str.832, ptr noundef nonnull %3)
  %offset.1.1 = add i32 %call.1, %offset.2
  br label %if.end9.1

if.end9.1:                                        ; preds = %if.then.1, %if.end9.if.end9.1_crit_edge
  %offset.2.1 = phi i32 [ %offset.1.1, %if.then.1 ], [ %offset.2, %if.end9.if.end9.1_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([26 x ptr], ptr @lockdown_reasons, i32 0, i32 25) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([26 x ptr], ptr @lockdown_reasons, i32 0, i32 25), align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %if.end9.1.if.end9.2_crit_edge, label %if.then.2

if.end9.1.if.end9.2_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.2

if.then.2:                                        ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @kernel_locked_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %6)
  %cmp3.2 = icmp eq i32 %6, 25
  %add.ptr.2 = getelementptr i8, ptr %temp, i32 %offset.2.1
  %.str.7..str.833 = select i1 %cmp3.2, ptr @.str.7, ptr @.str.8
  %call.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull %.str.7..str.833, ptr noundef nonnull %5)
  %offset.1.2 = add i32 %call.2, %offset.2.1
  br label %if.end9.2

if.end9.2:                                        ; preds = %if.then.2, %if.end9.1.if.end9.2_crit_edge
  %offset.2.2 = phi i32 [ %offset.1.2, %if.then.2 ], [ %offset.2.1, %if.end9.1.if.end9.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.2.2)
  %cmp10 = icmp sgt i32 %offset.2.2, 0
  br i1 %cmp10, label %if.then11, label %if.end9.2.if.end13_crit_edge

if.end9.2.if.end13_crit_edge:                     ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %offset.2.2, -1
  %arrayidx12 = getelementptr [80 x i8], ptr %temp, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %arrayidx12, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.2.if.end13_crit_edge
  %call16 = call i32 @strlen(ptr noundef nonnull %temp) #11
  %call17 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %temp, i32 noundef %call16) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %temp) #8
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lockdown_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %n, ptr nocapture noundef readnone %ppos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %n) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @strlen(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %sub = add i32 %call3, -1
  %arrayidx = getelementptr i8, ptr %call, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp = icmp eq i8 %2, 10
  br i1 %cmp, label %if.then5, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lockdown_reasons to i32))
  %4 = load ptr, ptr @lockdown_reasons, align 4
  %tobool13.not = icmp eq ptr %4, null
  br i1 %tobool13.not, label %if.end8.if.end19_crit_edge, label %land.lhs.true14

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true14:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %spec.select = select i1 %tobool16.not, i32 -1, i32 -22
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true14, %if.end8.if.end19_crit_edge
  %err.1 = phi i32 [ -22, %if.end8.if.end19_crit_edge ], [ %spec.select, %land.lhs.true14 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([26 x ptr], ptr @lockdown_reasons, i32 0, i32 17) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([26 x ptr], ptr @lockdown_reasons, i32 0, i32 17), align 4
  %tobool13.not.1 = icmp eq ptr %5, null
  br i1 %tobool13.not.1, label %if.end19.if.end19.1_crit_edge, label %land.lhs.true14.1

if.end19.if.end19.1_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.1

land.lhs.true14.1:                                ; preds = %if.end19
  %call15.1 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %tobool16.not.1 = icmp eq i32 %call15.1, 0
  br i1 %tobool16.not.1, label %if.then17.1, label %land.lhs.true14.1.if.end19.1_crit_edge

land.lhs.true14.1.if.end19.1_crit_edge:           ; preds = %land.lhs.true14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.1

if.then17.1:                                      ; preds = %land.lhs.true14.1
  %6 = load i32, ptr @kernel_locked_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %6)
  %cmp.not.i.1 = icmp ult i32 %6, 17
  br i1 %cmp.not.i.1, label %if.end.i.1, label %if.then17.1.if.end19.1_crit_edge

if.then17.1.if.end19.1_crit_edge:                 ; preds = %if.then17.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.1

if.end.i.1:                                       ; preds = %if.then17.1
  call void @__sanitizer_cov_trace_pc() #10
  store i32 17, ptr @kernel_locked_down, align 4
  %call.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #12
  br label %if.end19.1

if.end19.1:                                       ; preds = %if.end.i.1, %if.then17.1.if.end19.1_crit_edge, %land.lhs.true14.1.if.end19.1_crit_edge, %if.end19.if.end19.1_crit_edge
  %err.1.1 = phi i32 [ %err.1, %land.lhs.true14.1.if.end19.1_crit_edge ], [ %err.1, %if.end19.if.end19.1_crit_edge ], [ 0, %if.end.i.1 ], [ -1, %if.then17.1.if.end19.1_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([26 x ptr], ptr @lockdown_reasons, i32 0, i32 25) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([26 x ptr], ptr @lockdown_reasons, i32 0, i32 25), align 4
  %tobool13.not.2 = icmp eq ptr %7, null
  br i1 %tobool13.not.2, label %if.end19.1.if.end19.2_crit_edge, label %land.lhs.true14.2

if.end19.1.if.end19.2_crit_edge:                  ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.2

land.lhs.true14.2:                                ; preds = %if.end19.1
  %call15.2 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %tobool16.not.2 = icmp eq i32 %call15.2, 0
  br i1 %tobool16.not.2, label %if.then17.2, label %land.lhs.true14.2.if.end19.2_crit_edge

land.lhs.true14.2.if.end19.2_crit_edge:           ; preds = %land.lhs.true14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.2

if.then17.2:                                      ; preds = %land.lhs.true14.2
  %8 = load i32, ptr @kernel_locked_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %8)
  %cmp.not.i.2 = icmp ult i32 %8, 25
  br i1 %cmp.not.i.2, label %if.end19.2.thread, label %if.end19.2.thread43

if.end19.2.thread43:                              ; preds = %if.then17.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %call) #8
  br label %cleanup

if.end19.2.thread:                                ; preds = %if.then17.2
  call void @__sanitizer_cov_trace_pc() #10
  store i32 25, ptr @kernel_locked_down, align 4
  %call.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #12
  tail call void @kfree(ptr noundef %call) #8
  br label %9

if.end19.2:                                       ; preds = %land.lhs.true14.2.if.end19.2_crit_edge, %if.end19.1.if.end19.2_crit_edge
  tail call void @kfree(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.1)
  %tobool20.not = icmp eq i32 %err.1.1, 0
  br i1 %tobool20.not, label %if.end19.2._crit_edge, label %if.end19.2.cleanup_crit_edge

if.end19.2.cleanup_crit_edge:                     ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.2._crit_edge:                            ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %9

9:                                                ; preds = %if.end19.2._crit_edge, %if.end19.2.thread
  br label %cleanup

cleanup:                                          ; preds = %9, %if.end19.2.cleanup_crit_edge, %if.end19.2.thread43, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %n, %9 ], [ %err.1.1, %if.end19.2.cleanup_crit_edge ], [ -1, %if.end19.2.thread43 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lockdown_is_locked_down(i32 noundef %what) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %what)
  %cmp = icmp ugt i32 %what, 24
  br i1 %cmp, label %do.end, label %if.end21, !prof !52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %return

if.end21:                                         ; preds = %entry
  %0 = load i32, ptr @kernel_locked_down, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %what)
  %cmp22.not = icmp ult i32 %0, %what
  br i1 %cmp22.not, label %if.end21.return_crit_edge, label %if.then23

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then23:                                        ; preds = %if.end21
  %arrayidx = getelementptr [26 x ptr], ptr @lockdown_reasons, i32 0, i32 %what
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %2, null
  br i1 %tobool24.not, label %if.then23.return_crit_edge, label %do.end28

if.then23.return_crit_edge:                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.read_register.i32(metadata !42) #8
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %comm, ptr noundef nonnull %2) #12
  br label %return

return:                                           ; preds = %do.end28, %if.then23.return_crit_edge, %if.end21.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end28 ], [ -1, %if.then23.return_crit_edge ], [ 0, %if.end21.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__setup_lockdown_param, !1, !"__setup_lockdown_param", i1 false, i1 false}
!1 = !{!"../security/lockdown/lockdown.c", i32 52, i32 1}
!2 = !{ptr @__initcall__kmod_lockdown__217_158_lockdown_secfs_init1, !3, !"__initcall__kmod_lockdown__217_158_lockdown_secfs_init1", i1 false, i1 false}
!3 = !{!"../security/lockdown/lockdown.c", i32 158, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/lockdown/lockdown.c", i32 165, i32 10}
!6 = !{ptr @__early_lsm_lockdown, !7, !"__early_lsm_lockdown", i1 false, i1 false}
!7 = !{!"../security/lockdown/lockdown.c", i32 161, i32 1}
!8 = !{ptr @__setup_str_lockdown_param, !1, !"__setup_str_lockdown_param", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../security/lockdown/lockdown.c", i32 42, i32 20}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../security/lockdown/lockdown.c", i32 43, i32 20}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../security/lockdown/lockdown.c", i32 44, i32 25}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/lockdown/lockdown.c", i32 32, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lock_kernel_down._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @lock_kernel_down._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @kernel_locked_down, !22, !"kernel_locked_down", i1 false, i1 false}
!22 = !{!"../security/lockdown/lockdown.c", i32 17, i32 29}
!23 = !{ptr @lockdown_ops, !24, !"lockdown_ops", i1 false, i1 false}
!24 = !{!"../security/lockdown/lockdown.c", i32 144, i32 37}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/lockdown/lockdown.c", i32 103, i32 36}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/lockdown/lockdown.c", i32 105, i32 36}
!29 = distinct !{null, !30, !"lockdown_levels", i1 false, i1 false}
!30 = !{!"../security/lockdown/lockdown.c", i32 19, i32 35}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/lockdown/lockdown.c", i32 137, i32 27}
!33 = !{ptr @lockdown_hooks, !34, !"lockdown_hooks", i1 false, i1 false}
!34 = !{!"../security/lockdown/lockdown.c", i32 74, i32 34}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../security/lockdown/lockdown.c", i32 60, i32 6}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../security/lockdown/lockdown.c", i32 66, i32 4}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @lockdown_is_locked_down._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @lockdown_is_locked_down._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 1, i32 2000}
