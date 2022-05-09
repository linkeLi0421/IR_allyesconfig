; ModuleID = '/llk/IR_all_yes/security/yama/yama_lsm.c_pt.bc'
source_filename = "../security/yama/yama_lsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.security_list_options = type { ptr }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.ctl_path = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.access_report_info = type { %struct.callback_head, ptr, ptr, ptr }
%struct.ptrace_relation = type { ptr, ptr, i8, %struct.list_head, %struct.callback_head }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"yama\00", [27 x i8] zeroinitializer }, align 32
@__lsm_yama = internal global %struct.lsm_info { ptr @.str, i32 0, i32 0, ptr null, ptr @yama_init, ptr null }, section ".lsm_info.init", align 4
@yama_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016Yama: becoming mindful.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"yama_init\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/yama/yama_lsm.c\00", [39 x i8] zeroinitializer }, align 32
@yama_init._entry_ptr = internal global ptr @yama_init._entry, section ".printk_index", align 4
@yama_hooks = internal global { [4 x %struct.security_hook_list], [48 x i8] } { [4 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 16), %union.security_list_options { ptr @yama_ptrace_access_check }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 20), %union.security_list_options { ptr @yama_ptrace_traceme }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 500), %union.security_list_options { ptr @yama_task_prctl }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 384), %union.security_list_options { ptr @yama_task_free }, ptr null }], [48 x i8] zeroinitializer }, align 32
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@ptrace_scope = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@yama_ptrace_access_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@yama_ptrace_access_check.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"attach\00", [25 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@task_is_descendant.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@task_is_descendant.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@task_is_descendant.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ptracer_exception_found.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ptracer_exception_found.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ptracer_relations = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ptracer_relations, ptr @ptracer_relations }, [24 x i8] zeroinitializer }, align 32
@ptrace_parent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/ptrace.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@report_access._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.report_access = private unnamed_addr constant [14 x i8] c"report_access\00", align 1
@report_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.report_access, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015ptrace %s of \22%s\22[%d] was attempted by \22%s\22[%d]\0A\00", [45 x i8] zeroinitializer }, align 32
@report_access._entry_ptr = internal global ptr @report_access._entry, section ".printk_index", align 4
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"report_access called from exiting task\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__report_access._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.__report_access = private unnamed_addr constant [16 x i8] c"__report_access\00", align 1
@__report_access._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @__func__.__report_access, ptr @.str.3, i32 63, ptr null, ptr null }, align 1
@__report_access._entry_ptr = internal global ptr @__report_access._entry, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"traceme\00", [24 x i8] zeroinitializer }, align 32
@yama_task_prctl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@yama_ptracer_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@yama_relation_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @yama_relation_work, i64 4), ptr getelementptr (i8, ptr @yama_relation_work, i64 4) }, ptr @yama_relation_cleanup, %struct.lockdep_map { ptr @yama_relation_work, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"yama_relation_work\00", [45 x i8] zeroinitializer }, align 32
@ptracer_relations_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.10 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@yama_relation_cleanup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ptracer_relations_lock\00", [41 x i8] zeroinitializer }, align 32
@yama_ptracer_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@yama_sysctl_path = internal global { [3 x %struct.ctl_path], [20 x i8] } { [3 x %struct.ctl_path] [%struct.ctl_path { ptr @.str.22 }, %struct.ctl_path { ptr @.str }, %struct.ctl_path zeroinitializer], [20 x i8] zeroinitializer }, align 32
@yama_sysctl_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.23, ptr @ptrace_scope, i32 4, i16 420, ptr null, ptr @yama_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @max_scope }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Yama: sysctl registration failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ptrace_scope\00", [19 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@max_scope = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 486, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 479, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"yama_hooks\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 424, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"ptrace_scope\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 27, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 371, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 389, i32 17 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 695, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 328, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"ptracer_relations\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 38, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"../include/linux/ptrace.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 127, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 723, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 86, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 105, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 417, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"yama_relation_work\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 42, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [23 x i8] c"ptracer_relations_lock\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 39, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"yama_sysctl_path\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 450, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"yama_sysctl_table\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 456, i32 25 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 471, i32 9 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 451, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 458, i32 21 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"max_scope\00", align 1
@___asan_gen_.117 = private constant [28 x i8] c"../security/yama/yama_lsm.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 448, i32 12 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__lsm_yama, ptr @__report_access._entry, ptr @__report_access._entry_ptr, ptr @report_access._entry, ptr @report_access._entry_ptr, ptr @yama_init._entry, ptr @yama_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @yama_hooks, ptr @ptrace_scope, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.12, ptr @ptracer_relations, ptr @.str.13, ptr @.str.14, ptr @report_access._rs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @yama_relation_work, ptr @.str.19, ptr @ptracer_relations_lock, ptr @.str.20, ptr @yama_sysctl_path, ptr @yama_sysctl_table, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @max_scope], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yama_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yama_hooks to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptrace_scope to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptracer_relations to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_access._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yama_relation_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptracer_relations_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yama_sysctl_path to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yama_sysctl_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_scope to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @yama_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  tail call void @security_add_hooks(ptr noundef nonnull @yama_hooks, i32 noundef 4, ptr noundef nonnull @.str) #10
  tail call fastcc void @yama_init_sysctl() #14
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yama_init_sysctl() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_sysctl_paths(ptr noundef nonnull @yama_sysctl_path, ptr noundef nonnull @yama_sysctl_table) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.21) #15
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yama_ptrace_access_check(ptr noundef %child, i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end60_crit_edge, label %if.then

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @ptrace_scope, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %if.then.if.end53_crit_edge [
    i32 0, label %if.then.if.end60_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb29
  ]

if.then.if.end60_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then.if.end53_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

sw.bb:                                            ; preds = %if.then
  %2 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %sw.bb.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb.rcu_read_lock.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb.rcu_read_lock.exit_crit_edge
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 78
  %6 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread_pid.i, align 16
  %cmp.i.not = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %rcu_read_lock.exit.if.end28_crit_edge, label %land.lhs.true

rcu_read_lock.exit.if.end28_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %8 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %call5 = tail call fastcc i32 @task_is_descendant(ptr noundef %11, ptr noundef %child)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true7:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %land.lhs.true7.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true7.rcu_read_lock.exit.i_crit_edge:    ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true7
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true7.rcu_read_lock.exit.i_crit_edge
  %ptrace.i.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 4
  %18 = ptrtoint ptr %ptrace.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ptrace.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i72.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i72.i, label %rcu_read_lock.exit.i.if.end.i_crit_edge, label %if.then.i74.i, !prof !99

rcu_read_lock.exit.i.if.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i74.i:                                    ; preds = %rcu_read_lock.exit.i
  %parent.i.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 72
  %20 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %parent.i.i, align 8
  %call.i73.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool4.not.i.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i75.i, label %if.then.i74.i.ptrace_parent.exit.i_crit_edge

if.then.i74.i.ptrace_parent.exit.i_crit_edge:     ; preds = %if.then.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptrace_parent.exit.i

land.lhs.true.i75.i:                              ; preds = %if.then.i74.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i75.i.ptrace_parent.exit.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i75.i.ptrace_parent.exit.i_crit_edge: ; preds = %land.lhs.true.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptrace_parent.exit.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i75.i
  %.b15.i.i = load i1, ptr @ptrace_parent.__warned, align 1
  br i1 %.b15.i.i, label %land.lhs.true7.i.i.ptrace_parent.exit.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.ptrace_parent.exit.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptrace_parent.exit.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ptrace_parent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 127, ptr noundef nonnull @.str.4) #10
  br label %ptrace_parent.exit.i

ptrace_parent.exit.i:                             ; preds = %if.then9.i.i, %land.lhs.true7.i.i.ptrace_parent.exit.i_crit_edge, %land.lhs.true.i75.i.ptrace_parent.exit.i_crit_edge, %if.then.i74.i.ptrace_parent.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %21, null
  br i1 %cmp.not.i, label %ptrace_parent.exit.i.if.end.i_crit_edge, label %land.lhs.true.i84

ptrace_parent.exit.i.if.end.i_crit_edge:          ; preds = %ptrace_parent.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i84:                                ; preds = %ptrace_parent.exit.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 111
  %22 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %signal.i.i, align 16
  %signal1.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 111
  %24 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %signal1.i.i, align 16
  %cmp.i.i = icmp eq ptr %23, %25
  br i1 %cmp.i.i, label %land.lhs.true.i84.unlock.i_crit_edge, label %land.lhs.true.i84.if.end.i_crit_edge

land.lhs.true.i84.if.end.i_crit_edge:             ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i84.unlock.i_crit_edge:             ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

if.end.i:                                         ; preds = %land.lhs.true.i84.if.end.i_crit_edge, %ptrace_parent.exit.i.if.end.i_crit_edge, %rcu_read_lock.exit.i.if.end.i_crit_edge
  %exit_signal.i.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 59
  %26 = ptrtoint ptr %exit_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %exit_signal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i76.i = icmp sgt i32 %27, -1
  br i1 %cmp.i76.i, label %if.end.i.do.body17.i_crit_edge, label %if.then3.i

if.end.i.do.body17.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.i

if.then3.i:                                       ; preds = %if.end.i
  %group_leader.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 75
  %28 = ptrtoint ptr %group_leader.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %group_leader.i, align 4
  %call5.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i85 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i85, label %land.lhs.true6.i, label %if.then3.i.do.body17.i_crit_edge

if.then3.i.do.body17.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.i

land.lhs.true6.i:                                 ; preds = %if.then3.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true6.i.do.body17.i_crit_edge, label %land.lhs.true9.i

land.lhs.true6.i.do.body17.i_crit_edge:           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true6.i
  %.b71.i = load i1, ptr @ptracer_exception_found.__warned, align 1
  br i1 %.b71.i, label %land.lhs.true9.i.do.body17.i_crit_edge, label %if.then11.i

land.lhs.true9.i.do.body17.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.i

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ptracer_exception_found.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 327, ptr noundef nonnull @.str.4) #10
  br label %do.body17.i

do.body17.i:                                      ; preds = %if.then11.i, %land.lhs.true9.i.do.body17.i_crit_edge, %land.lhs.true6.i.do.body17.i_crit_edge, %if.then3.i.do.body17.i_crit_edge, %if.end.i.do.body17.i_crit_edge
  %tracee.addr.0.i = phi ptr [ %child, %if.end.i.do.body17.i_crit_edge ], [ %29, %if.then11.i ], [ %29, %land.lhs.true9.i.do.body17.i_crit_edge ], [ %29, %land.lhs.true6.i.do.body17.i_crit_edge ], [ %29, %if.then3.i.do.body17.i_crit_edge ]
  %call18.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true20.i, label %do.body17.i.do.end28.i_crit_edge

do.body17.i.do.end28.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

land.lhs.true20.i:                                ; preds = %do.body17.i
  %call21.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true20.i.do.end28.i_crit_edge, label %land.lhs.true23.i

land.lhs.true20.i.do.end28.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

land.lhs.true23.i:                                ; preds = %land.lhs.true20.i
  %.b6970.i = load i1, ptr @ptracer_exception_found.__warned.11, align 1
  br i1 %.b6970.i, label %land.lhs.true23.i.do.end28.i_crit_edge, label %if.then25.i

land.lhs.true23.i.do.end28.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

if.then25.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ptracer_exception_found.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 328, ptr noundef nonnull @.str.12) #10
  br label %do.end28.i

do.end28.i:                                       ; preds = %if.then25.i, %land.lhs.true23.i.do.end28.i_crit_edge, %land.lhs.true20.i.do.end28.i_crit_edge, %do.body17.i.do.end28.i_crit_edge
  %.pn91.i = load volatile ptr, ptr @ptracer_relations, align 4
  %cmp34.not92.i = icmp eq ptr %.pn91.i, @ptracer_relations
  br i1 %cmp34.not92.i, label %do.end28.i.unlock.i_crit_edge, label %do.end28.i.for.body.i_crit_edge

do.end28.i.for.body.i_crit_edge:                  ; preds = %do.end28.i
  br label %for.body.i

do.end28.i.unlock.i_crit_edge:                    ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end28.i.for.body.i_crit_edge
  %.pn93.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn91.i, %do.end28.i.for.body.i_crit_edge ]
  %invalid.i = getelementptr i8, ptr %.pn93.i, i32 -4
  %30 = ptrtoint ptr %invalid.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %invalid.i, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool35.not.i = icmp eq i8 %31, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end37.i:                                       ; preds = %for.body.i
  %tracee38.i = getelementptr i8, ptr %.pn93.i, i32 -8
  %32 = ptrtoint ptr %tracee38.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tracee38.i, align 4
  %cmp39.i = icmp eq ptr %33, %tracee.addr.0.i
  br i1 %cmp39.i, label %land.lhs.true52.i, label %if.end37.i.for.inc.i_crit_edge

if.end37.i.for.inc.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end37.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %34 = ptrtoint ptr %.pn93.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i = load volatile ptr, ptr %.pn93.i, align 4
  %cmp34.not.i = icmp eq ptr %.pn.i, @ptracer_relations
  br i1 %cmp34.not.i, label %for.inc.i.unlock.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.unlock.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

land.lhs.true52.i:                                ; preds = %if.end37.i
  %relation.0.le.i = getelementptr i8, ptr %.pn93.i, i32 -12
  %35 = ptrtoint ptr %relation.0.le.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %relation.0.le.i, align 4
  %cmp53.i = icmp eq ptr %36, null
  br i1 %cmp53.i, label %land.lhs.true52.i.if.then56.i_crit_edge, label %lor.lhs.false.i

land.lhs.true52.i.if.then56.i_crit_edge:          ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true52.i
  %call54.i = tail call fastcc i32 @task_is_descendant(ptr noundef nonnull %36, ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %lor.lhs.false.i.unlock.i_crit_edge, label %lor.lhs.false.i.if.then56.i_crit_edge

lor.lhs.false.i.if.then56.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56.i

lor.lhs.false.i.unlock.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

if.then56.i:                                      ; preds = %lor.lhs.false.i.if.then56.i_crit_edge, %land.lhs.true52.i.if.then56.i_crit_edge
  br label %unlock.i

unlock.i:                                         ; preds = %if.then56.i, %lor.lhs.false.i.unlock.i_crit_edge, %for.inc.i.unlock.i_crit_edge, %do.end28.i.unlock.i_crit_edge, %land.lhs.true.i84.unlock.i_crit_edge
  %tobool11.not = phi i1 [ false, %if.then56.i ], [ true, %lor.lhs.false.i.unlock.i_crit_edge ], [ true, %do.end28.i.unlock.i_crit_edge ], [ false, %land.lhs.true.i84.unlock.i_crit_edge ], [ true, %for.inc.i.unlock.i_crit_edge ]
  %call.i77.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i77.i, label %unlock.i.ptracer_exception_found.exit_crit_edge, label %land.lhs.true.i80.i

unlock.i.ptracer_exception_found.exit_crit_edge:  ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptracer_exception_found.exit

land.lhs.true.i80.i:                              ; preds = %unlock.i
  %call1.i78.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78.i)
  %tobool.not.i79.i = icmp eq i32 %call1.i78.i, 0
  br i1 %tobool.not.i79.i, label %land.lhs.true.i80.i.ptracer_exception_found.exit_crit_edge, label %land.lhs.true2.i82.i

land.lhs.true.i80.i.ptracer_exception_found.exit_crit_edge: ; preds = %land.lhs.true.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptracer_exception_found.exit

land.lhs.true2.i82.i:                             ; preds = %land.lhs.true.i80.i
  %.b4.i81.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i81.i, label %land.lhs.true2.i82.i.ptracer_exception_found.exit_crit_edge, label %if.then.i83.i

land.lhs.true2.i82.i.ptracer_exception_found.exit_crit_edge: ; preds = %land.lhs.true2.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ptracer_exception_found.exit

if.then.i83.i:                                    ; preds = %land.lhs.true2.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %ptracer_exception_found.exit

ptracer_exception_found.exit:                     ; preds = %if.then.i83.i, %land.lhs.true2.i82.i.ptracer_exception_found.exit_crit_edge, %land.lhs.true.i80.i.ptracer_exception_found.exit_crit_edge, %unlock.i.ptracer_exception_found.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %37 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i84.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i84.i to ptr
  %preempt_count.i.i.i.i85.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i85.i, align 4
  %sub.i.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i85.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %tobool11.not, label %land.lhs.true12, label %ptracer_exception_found.exit.if.end28_crit_edge

ptracer_exception_found.exit.if.end28_crit_edge:  ; preds = %ptracer_exception_found.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.lhs.true12:                                  ; preds = %ptracer_exception_found.exit
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 98
  %41 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %real_cred, align 4
  %call14 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %land.lhs.true12.do.end24_crit_edge

land.lhs.true12.do.end24_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b71 = load i1, ptr @yama_ptrace_access_check.__warned, align 1
  br i1 %.b71, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @yama_ptrace_access_check.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 371, ptr noundef nonnull @.str.4) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %land.lhs.true12.do.end24_crit_edge
  %user_ns = getelementptr inbounds %struct.cred, ptr %42, i32 0, i32 25
  %43 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %user_ns, align 4
  %call26 = tail call zeroext i1 @ns_capable(ptr noundef %44, i32 noundef 19) #10
  %not.call26 = xor i1 %call26, true
  %spec.select = sext i1 %not.call26 to i32
  br label %if.end28

if.end28:                                         ; preds = %do.end24, %ptracer_exception_found.exit.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %rcu_read_lock.exit.if.end28_crit_edge
  %rc.1 = phi i32 [ -1, %rcu_read_lock.exit.if.end28_crit_edge ], [ 0, %land.lhs.true.if.end28_crit_edge ], [ 0, %ptracer_exception_found.exit.if.end28_crit_edge ], [ %spec.select, %do.end24 ]
  %call.i86 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i86, label %if.end28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i89

if.end28.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i89:                                ; preds = %if.end28
  %call1.i87 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool.not.i88 = icmp eq i32 %call1.i87, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i91

land.lhs.true.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i91:                               ; preds = %land.lhs.true.i89
  %.b4.i90 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i90, label %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, label %if.then.i92

land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i92:                                      ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i92, %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, %if.end28.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  br label %if.end53.sink.split

sw.bb29:                                          ; preds = %if.then
  %45 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i73 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %add.i.i.i75 = add i32 %48, 1
  store volatile i32 %add.i.i.i75, ptr %preempt_count.i.i.i.i74, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i76 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i76, label %sw.bb29.rcu_read_lock.exit83_crit_edge, label %land.lhs.true.i79

sw.bb29.rcu_read_lock.exit83_crit_edge:           ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit83

land.lhs.true.i79:                                ; preds = %sw.bb29
  %call1.i77 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.rcu_read_lock.exit83_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.rcu_read_lock.exit83_crit_edge: ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit83

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.rcu_read_lock.exit83_crit_edge, label %if.then.i82

land.lhs.true2.i81.rcu_read_lock.exit83_crit_edge: ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit83

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit83

rcu_read_lock.exit83:                             ; preds = %if.then.i82, %land.lhs.true2.i81.rcu_read_lock.exit83_crit_edge, %land.lhs.true.i79.rcu_read_lock.exit83_crit_edge, %sw.bb29.rcu_read_lock.exit83_crit_edge
  %real_cred34 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 98
  %49 = ptrtoint ptr %real_cred34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %real_cred34, align 4
  %call36 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true38, label %rcu_read_lock.exit83.do.end46_crit_edge

rcu_read_lock.exit83.do.end46_crit_edge:          ; preds = %rcu_read_lock.exit83
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

land.lhs.true38:                                  ; preds = %rcu_read_lock.exit83
  %call39 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true38.do.end46_crit_edge, label %land.lhs.true41

land.lhs.true38.do.end46_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %.b6970 = load i1, ptr @yama_ptrace_access_check.__warned.5, align 1
  br i1 %.b6970, label %land.lhs.true41.do.end46_crit_edge, label %if.then43

land.lhs.true41.do.end46_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

if.then43:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @yama_ptrace_access_check.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 377, ptr noundef nonnull @.str.4) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %land.lhs.true41.do.end46_crit_edge, %land.lhs.true38.do.end46_crit_edge, %rcu_read_lock.exit83.do.end46_crit_edge
  %user_ns48 = getelementptr inbounds %struct.cred, ptr %50, i32 0, i32 25
  %51 = ptrtoint ptr %user_ns48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user_ns48, align 4
  %call49 = tail call zeroext i1 @ns_capable(ptr noundef %52, i32 noundef 19) #10
  %not.call49 = xor i1 %call49, true
  %spec.select72 = sext i1 %not.call49 to i32
  %call.i95 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i95, label %do.end46.rcu_read_unlock.exit105_crit_edge, label %land.lhs.true.i98

do.end46.rcu_read_unlock.exit105_crit_edge:       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit105

land.lhs.true.i98:                                ; preds = %do.end46
  %call1.i96 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96)
  %tobool.not.i97 = icmp eq i32 %call1.i96, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge, label %land.lhs.true2.i100

land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge: ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit105

land.lhs.true2.i100:                              ; preds = %land.lhs.true.i98
  %.b4.i99 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99, label %land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge, label %if.then.i101

land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge: ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit105

if.then.i101:                                     ; preds = %land.lhs.true2.i100
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit105

rcu_read_unlock.exit105:                          ; preds = %if.then.i101, %land.lhs.true2.i100.rcu_read_unlock.exit105_crit_edge, %land.lhs.true.i98.rcu_read_unlock.exit105_crit_edge, %do.end46.rcu_read_unlock.exit105_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  br label %if.end53.sink.split

if.end53.sink.split:                              ; preds = %rcu_read_unlock.exit105, %rcu_read_unlock.exit
  %rc.3.ph = phi i32 [ %rc.1, %rcu_read_unlock.exit ], [ %spec.select72, %rcu_read_unlock.exit105 ]
  %53 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i102 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i.i102 to ptr
  %preempt_count.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i.i103, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i103, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %if.then.if.end53_crit_edge
  %rc.3 = phi i32 [ -1, %if.then.if.end53_crit_edge ], [ %rc.3.ph, %if.end53.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3)
  %tobool54.not = icmp ne i32 %rc.3, 0
  %and56 = and i32 %mode, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %cmp = icmp eq i32 %and56, 0
  %or.cond = and i1 %cmp, %tobool54.not
  br i1 %or.cond, label %if.then57, label %if.end53.if.end60_crit_edge

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %57 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i106 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i106 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task59, align 8
  tail call fastcc void @report_access(ptr noundef nonnull @.str.6, ptr noundef %child, ptr noundef %60)
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end53.if.end60_crit_edge, %if.then.if.end60_crit_edge, %entry.if.end60_crit_edge
  %rc.3112 = phi i32 [ -1, %if.then57 ], [ %rc.3, %if.end53.if.end60_crit_edge ], [ %0, %if.then.if.end60_crit_edge ], [ 0, %entry.if.end60_crit_edge ]
  ret i32 %rc.3112
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yama_ptrace_traceme(ptr noundef %parent) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ptrace_scope, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %0, label %entry.if.end11_crit_edge [
    i32 2, label %sw.epilog
    i32 3, label %entry.if.then4_crit_edge
  ]

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

sw.epilog:                                        ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns, align 4
  %call2 = tail call zeroext i1 @has_ns_capability(ptr noundef %parent, ptr noundef %9, i32 noundef 19) #10
  br i1 %call2, label %sw.epilog.if.end11_crit_edge, label %sw.epilog.if.then4_crit_edge

sw.epilog.if.then4_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4:                                         ; preds = %sw.epilog.if.then4_crit_edge, %entry.if.then4_crit_edge
  %10 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i15 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i15 to ptr
  %task6 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task6, align 8
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #10
  %14 = ptrtoint ptr %task6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task6, align 8
  tail call fastcc void @report_access(ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef %parent)
  %16 = ptrtoint ptr %task6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task6, align 8
  %alloc_lock.i16 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i16) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %sw.epilog.if.end11_crit_edge, %entry.if.end11_crit_edge
  %rc.019 = phi i32 [ -1, %if.then4 ], [ 0, %sw.epilog.if.end11_crit_edge ], [ 0, %entry.if.end11_crit_edge ]
  ret i32 %rc.019
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yama_task_prctl(i32 noundef %option, i32 noundef %arg2, i32 noundef %arg3, i32 noundef %arg4, i32 noundef %arg5) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1499557217, i32 %option)
  %cond = icmp eq i32 %option, 1499557217
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %sw.bb.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb.rcu_read_lock.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb.rcu_read_lock.exit_crit_edge
  %exit_signal.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 59
  %6 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i = icmp sgt i32 %7, -1
  br i1 %cmp.i, label %rcu_read_lock.exit.if.end12_crit_edge, label %if.then

rcu_read_lock.exit.if.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %rcu_read_lock.exit
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 75
  %8 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %group_leader, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.then
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true6

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @yama_task_prctl.__warned, align 1
  br i1 %.b39, label %land.lhs.true6.if.end12_crit_edge, label %if.then8

land.lhs.true6.if.end12_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @yama_task_prctl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 237, ptr noundef nonnull @.str.4) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true6.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.then.if.end12_crit_edge, %rcu_read_lock.exit.if.end12_crit_edge
  %myself.0 = phi ptr [ %3, %rcu_read_lock.exit.if.end12_crit_edge ], [ %9, %if.then8 ], [ %9, %land.lhs.true6.if.end12_crit_edge ], [ %9, %land.lhs.true.if.end12_crit_edge ], [ %9, %if.then.if.end12_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %myself.0, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !102
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end12.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !103

if.end12.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end12
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !99

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end12.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end12.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %call.i40 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i40, label %get_task_struct.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

get_task_struct.exit.rcu_read_unlock.exit_crit_edge: ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %get_task_struct.exit
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %get_task_struct.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %12 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i47 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %16 = zext i32 %arg2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %arg2, label %if.else19 [
    i32 0, label %if.then14
    i32 -1, label %if.then17
  ]

if.then14:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @yama_ptracer_del(ptr noundef null, ptr noundef %myself.0)
  br label %if.end27

if.then17:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call fastcc i32 @yama_ptracer_add(ptr noundef null, ptr noundef %myself.0)
  br label %if.end27

if.else19:                                        ; preds = %rcu_read_unlock.exit
  %call20 = tail call ptr @find_get_task_by_vpid(i32 noundef %arg2) #10
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.else19.if.end27_crit_edge, label %if.else23

if.else19.if.end27_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.else23:                                        ; preds = %if.else19
  %call24 = tail call fastcc i32 @yama_ptracer_add(ptr noundef nonnull %call20, ptr noundef %myself.0)
  %usage.i49 = getelementptr inbounds %struct.task_struct, ptr %call20, i32 0, i32 2
  %call.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i49, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usage.i49, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i49, ptr %usage.i49, i32 1, ptr elementtype(i32) %usage.i49) #10, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i52, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i51, label %if.end5.i.i.i.i.if.end27_crit_edge, label %if.then10.i.i.i.i, !prof !99

if.end5.i.i.i.i.if.end27_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i49, i32 noundef 3) #10
  br label %if.end27

if.then.i52:                                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @__put_task_struct(ptr noundef nonnull %call20) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then.i52, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end27_crit_edge, %if.else19.if.end27_crit_edge, %if.then17, %if.then14
  %rc.1 = phi i32 [ 0, %if.then14 ], [ %call18, %if.then17 ], [ -22, %if.else19.if.end27_crit_edge ], [ %call24, %if.end5.i.i.i.i.if.end27_crit_edge ], [ %call24, %if.then10.i.i.i.i ], [ %call24, %if.then.i52 ]
  %call.i.i.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !105
  %asmresult.i.i.i.i.i.i.i55 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i55)
  %cmp.i.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i.i55, 1
  br i1 %cmp.i.i.i.i56, label %if.then.i60, label %if.end5.i.i.i.i58

if.end5.i.i.i.i58:                                ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i55)
  %.not.i.i.i.i57 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i55, 0
  br i1 %.not.i.i.i.i57, label %if.end5.i.i.i.i58.sw.epilog_crit_edge, label %if.then10.i.i.i.i59, !prof !99

if.end5.i.i.i.i58.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then10.i.i.i.i59:                              ; preds = %if.end5.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %sw.epilog

if.then.i60:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @__put_task_struct(ptr noundef %myself.0) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i60, %if.then10.i.i.i.i59, %if.end5.i.i.i.i58.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rc.2 = phi i32 [ -38, %entry.sw.epilog_crit_edge ], [ %rc.1, %if.end5.i.i.i.i58.sw.epilog_crit_edge ], [ %rc.1, %if.then10.i.i.i.i59 ], [ %rc.1, %if.then.i60 ]
  ret i32 %rc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yama_task_free(ptr noundef %task) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @yama_ptracer_del(ptr noundef %task, ptr noundef %task)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @task_is_descendant(ptr noundef %parent, ptr noundef %child) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  %tobool1.not = icmp eq ptr %child, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %exit_signal.i = getelementptr inbounds %struct.task_struct, ptr %parent, i32 0, i32 59
  %4 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp sgt i32 %5, -1
  br i1 %cmp.i, label %rcu_read_lock.exit.if.end15_crit_edge, label %if.then2

rcu_read_lock.exit.if.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then2:                                         ; preds = %rcu_read_lock.exit
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %parent, i32 0, i32 75
  %6 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %group_leader, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.then2.if.end15_crit_edge

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then2
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true8

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b70 = load i1, ptr @task_is_descendant.__warned, align 1
  br i1 %.b70, label %land.lhs.true8.if.end15_crit_edge, label %if.then10

land.lhs.true8.if.end15_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @task_is_descendant.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 283, ptr noundef nonnull @.str.4) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %land.lhs.true8.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.then2.if.end15_crit_edge, %rcu_read_lock.exit.if.end15_crit_edge
  %parent.addr.0 = phi ptr [ %parent, %rcu_read_lock.exit.if.end15_crit_edge ], [ %7, %if.then10 ], [ %7, %land.lhs.true8.if.end15_crit_edge ], [ %7, %land.lhs.true.if.end15_crit_edge ], [ %7, %if.then2.if.end15_crit_edge ]
  %pid82 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 68
  %8 = ptrtoint ptr %pid82 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp83 = icmp sgt i32 %9, 0
  br i1 %cmp83, label %if.end15.while.body_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  br label %while.body

while.body:                                       ; preds = %do.end55.while.body_crit_edge, %if.end15.while.body_crit_edge
  %walker.084 = phi ptr [ %15, %do.end55.while.body_crit_edge ], [ %child, %if.end15.while.body_crit_edge ]
  %exit_signal.i71 = getelementptr inbounds %struct.task_struct, ptr %walker.084, i32 0, i32 59
  %10 = ptrtoint ptr %exit_signal.i71 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %exit_signal.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i72 = icmp sgt i32 %11, -1
  br i1 %cmp.i72, label %while.body.if.end36_crit_edge, label %if.then17

while.body.if.end36_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then17:                                        ; preds = %while.body
  %group_leader22 = getelementptr inbounds %struct.task_struct, ptr %walker.084, i32 0, i32 75
  %12 = ptrtoint ptr %group_leader22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %group_leader22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %if.then17.if.end36_crit_edge

if.then17.if.end36_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true26:                                  ; preds = %if.then17
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.end36_crit_edge, label %land.lhs.true29

land.lhs.true26.if.end36_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b6669 = load i1, ptr @task_is_descendant.__warned.9, align 1
  br i1 %.b6669, label %land.lhs.true29.if.end36_crit_edge, label %if.then31

land.lhs.true29.if.end36_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @task_is_descendant.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 286, ptr noundef nonnull @.str.4) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %land.lhs.true29.if.end36_crit_edge, %land.lhs.true26.if.end36_crit_edge, %if.then17.if.end36_crit_edge, %while.body.if.end36_crit_edge
  %walker.1 = phi ptr [ %walker.084, %while.body.if.end36_crit_edge ], [ %13, %if.then31 ], [ %13, %land.lhs.true29.if.end36_crit_edge ], [ %13, %land.lhs.true26.if.end36_crit_edge ], [ %13, %if.then17.if.end36_crit_edge ]
  %cmp37 = icmp eq ptr %walker.1, %parent.addr.0
  br i1 %cmp37, label %if.end36.while.end_crit_edge, label %if.end39

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end39:                                         ; preds = %if.end36
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %walker.1, i32 0, i32 71
  %14 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %real_parent, align 4
  %call45 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %if.end39.do.end55_crit_edge

if.end39.do.end55_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

land.lhs.true47:                                  ; preds = %if.end39
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true47.do.end55_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %.b6768 = load i1, ptr @task_is_descendant.__warned.10, align 1
  br i1 %.b6768, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @task_is_descendant.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 291, ptr noundef nonnull @.str.4) #10
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true47.do.end55_crit_edge, %if.end39.do.end55_crit_edge
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  %cmp = icmp sgt i32 %17, 0
  br i1 %cmp, label %do.end55.while.body_crit_edge, label %do.end55.while.end_crit_edge

do.end55.while.end_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end55.while.body_crit_edge:                    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %do.end55.while.end_crit_edge, %if.end36.while.end_crit_edge, %if.end15.while.end_crit_edge
  %rc.0 = phi i32 [ 0, %if.end15.while.end_crit_edge ], [ 1, %if.end36.while.end_crit_edge ], [ 0, %do.end55.while.end_crit_edge ]
  %call.i73 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i73, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i76

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i76:                                ; preds = %while.end
  %call1.i74 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i78

land.lhs.true.i76.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i78:                               ; preds = %land.lhs.true.i76
  %.b4.i77 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77, label %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, label %if.then.i79

land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i79:                                      ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i79, %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %18 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i80 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i80 to ptr
  %preempt_count.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i81, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i81, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @report_access(ptr noundef %access, ptr noundef %target, ptr noundef %agent) unnamed_addr #3 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  %agent_comm = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %agent_comm) #10
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 127
  %0 = call ptr @memset(ptr %agent_comm, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %1 = ptrtoint ptr %alloc_lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %alloc_lock, align 4
  %2 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !103

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/yama/yama_lsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 80, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.end9:                                          ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end28, label %if.then12

if.then12:                                        ; preds = %do.end9
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @report_access._rs, ptr noundef nonnull @__func__.report_access) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %do.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %comm = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  %call24 = call ptr @__get_task_comm(ptr noundef nonnull %agent_comm, i32 noundef 16, ptr noundef %agent) #10
  %pid25 = getelementptr inbounds %struct.task_struct, ptr %agent, i32 0, i32 68
  %11 = ptrtoint ptr %pid25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid25, align 8
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %access, ptr noundef %comm, i32 noundef %10, ptr noundef %call24, i32 noundef %12) #13
  br label %cleanup

if.end28:                                         ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 2592, i32 noundef 20) #16
  %tobool30.not = icmp eq ptr %call7.i, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %func1.i = getelementptr inbounds %struct.callback_head, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @__report_access, ptr %func1.i, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %target, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !102
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end32.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !103

if.end32.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end32
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !99

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end32.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end32.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %usage.i87 = getelementptr inbounds %struct.task_struct, ptr %agent, i32 0, i32 2
  %call.i.i.i.i.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i87, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage.i87, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i87, ptr %usage.i87, i32 1, ptr elementtype(i32) %usage.i87) #10, !srcloc !102
  %asmresult.i.i.i.i.i.i89 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i89)
  %tobool1.not.i.i.i.i90 = icmp eq i32 %asmresult.i.i.i.i.i.i89, 0
  br i1 %tobool1.not.i.i.i.i90, label %get_task_struct.exit.if.end15.sink.split.i.i.i.i95_crit_edge, label %if.else.i.i.i.i93, !prof !103

get_task_struct.exit.if.end15.sink.split.i.i.i.i95_crit_edge: ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i95

if.else.i.i.i.i93:                                ; preds = %get_task_struct.exit
  %add.i.i.i.i91 = add i32 %asmresult.i.i.i.i.i.i89, 1
  %18 = or i32 %add.i.i.i.i91, %asmresult.i.i.i.i.i.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i92 = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i92, label %if.else.i.i.i.i93.get_task_struct.exit96_crit_edge, label %if.else.i.i.i.i93.if.end15.sink.split.i.i.i.i95_crit_edge, !prof !99

if.else.i.i.i.i93.if.end15.sink.split.i.i.i.i95_crit_edge: ; preds = %if.else.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i95

if.else.i.i.i.i93.get_task_struct.exit96_crit_edge: ; preds = %if.else.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_task_struct.exit96

if.end15.sink.split.i.i.i.i95:                    ; preds = %if.else.i.i.i.i93.if.end15.sink.split.i.i.i.i95_crit_edge, %get_task_struct.exit.if.end15.sink.split.i.i.i.i95_crit_edge
  %.sink.i.i.i.i94 = phi i32 [ 2, %get_task_struct.exit.if.end15.sink.split.i.i.i.i95_crit_edge ], [ 1, %if.else.i.i.i.i93.if.end15.sink.split.i.i.i.i95_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i87, i32 noundef %.sink.i.i.i.i94) #10
  br label %get_task_struct.exit96

get_task_struct.exit96:                           ; preds = %if.end15.sink.split.i.i.i.i95, %if.else.i.i.i.i93.get_task_struct.exit96_crit_edge
  %access35 = getelementptr inbounds %struct.access_report_info, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %access35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %access, ptr %access35, align 8
  %target36 = getelementptr inbounds %struct.access_report_info, ptr %call7.i, i32 0, i32 2
  %20 = ptrtoint ptr %target36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %target, ptr %target36, align 4
  %agent37 = getelementptr inbounds %struct.access_report_info, ptr %call7.i, i32 0, i32 3
  %21 = ptrtoint ptr %agent37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %agent, ptr %agent37, align 8
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %call41 = tail call i32 @task_work_add(ptr noundef %23, ptr noundef nonnull %call7.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp eq i32 %call41, 0
  br i1 %cmp, label %get_task_struct.exit96.cleanup_crit_edge, label %do.end55

get_task_struct.exit96.cleanup_crit_edge:         ; preds = %get_task_struct.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end55:                                         ; preds = %get_task_struct.exit96
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 105, i32 noundef 9, ptr noundef nonnull @.str.17) #10
  %call.i.i.i.i.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i99 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i99, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !99

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @__put_task_struct(ptr noundef %target) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %call.i.i.i.i.i.i101 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i87, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usage.i87, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i87, ptr %usage.i87, i32 1, ptr elementtype(i32) %usage.i87) #10, !srcloc !105
  %asmresult.i.i.i.i.i.i.i102 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i102)
  %cmp.i.i.i.i103 = icmp eq i32 %asmresult.i.i.i.i.i.i.i102, 1
  br i1 %cmp.i.i.i.i103, label %if.then.i107, label %if.end5.i.i.i.i105

if.end5.i.i.i.i105:                               ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i102)
  %.not.i.i.i.i104 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i102, 0
  br i1 %.not.i.i.i.i104, label %if.end5.i.i.i.i105.put_task_struct.exit108_crit_edge, label %if.then10.i.i.i.i106, !prof !99

if.end5.i.i.i.i105.put_task_struct.exit108_crit_edge: ; preds = %if.end5.i.i.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit108

if.then10.i.i.i.i106:                             ; preds = %if.end5.i.i.i.i105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i87, i32 noundef 3) #10
  br label %put_task_struct.exit108

if.then.i107:                                     ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @__put_task_struct(ptr noundef %agent) #10
  br label %put_task_struct.exit108

put_task_struct.exit108:                          ; preds = %if.then.i107, %if.then10.i.i.i.i106, %if.end5.i.i.i.i105.put_task_struct.exit108_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit108, %get_task_struct.exit96.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end18, %if.then12.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %agent_comm) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__report_access(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.access_report_info, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %target, align 4
  %call = tail call ptr @kstrdup_quotable_cmdline(ptr noundef %1, i32 noundef 3264) #10
  %agent = getelementptr inbounds %struct.access_report_info, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %agent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %agent, align 4
  %call1 = tail call ptr @kstrdup_quotable_cmdline(ptr noundef %3, i32 noundef 3264) #10
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @__report_access._rs, ptr noundef nonnull @__func__.__report_access) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %access = getelementptr inbounds %struct.access_report_info, ptr %work, i32 0, i32 1
  %4 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %access, align 4
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %target, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  %10 = ptrtoint ptr %agent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %agent, align 4
  %pid6 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid6, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %5, ptr noundef %call, i32 noundef %9, ptr noundef %call1, i32 noundef %13) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %call1) #10
  tail call void @kfree(ptr noundef %call) #10
  %14 = ptrtoint ptr %agent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %agent, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !99

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @__put_task_struct(ptr noundef %15) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %17 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %target, align 4
  %usage.i19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 2
  %call.i.i.i.i.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i19, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %usage.i19, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i19, ptr %usage.i19, i32 1, ptr elementtype(i32) %usage.i19) #10, !srcloc !105
  %asmresult.i.i.i.i.i.i.i21 = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i21)
  %cmp.i.i.i.i22 = icmp eq i32 %asmresult.i.i.i.i.i.i.i21, 1
  br i1 %cmp.i.i.i.i22, label %if.then.i26, label %if.end5.i.i.i.i24

if.end5.i.i.i.i24:                                ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i21)
  %.not.i.i.i.i23 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i21, 0
  br i1 %.not.i.i.i.i23, label %if.end5.i.i.i.i24.put_task_struct.exit27_crit_edge, label %if.then10.i.i.i.i25, !prof !99

if.end5.i.i.i.i24.put_task_struct.exit27_crit_edge: ; preds = %if.end5.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit27

if.then10.i.i.i.i25:                              ; preds = %if.end5.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i19, i32 noundef 3) #10
  br label %put_task_struct.exit27

if.then.i26:                                      ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @__put_task_struct(ptr noundef %18) #10
  br label %put_task_struct.exit27

put_task_struct.exit27:                           ; preds = %if.then.i26, %if.then10.i.i.i.i25, %if.end5.i.i.i.i24.put_task_struct.exit27_crit_edge
  tail call void @kfree(ptr noundef %work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_quotable_cmdline(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_ns_capability(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yama_ptracer_del(ptr noundef readnone %tracer, ptr noundef readnone %tracee) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @yama_ptracer_del.__warned, align 1
  br i1 %.b42, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @yama_ptracer_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 186, ptr noundef nonnull @.str.12) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn52 = load volatile ptr, ptr @ptracer_relations, align 4
  %cmp.not54 = icmp eq ptr %.pn52, @ptracer_relations
  br i1 %cmp.not54, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %tobool14.not = icmp eq ptr %tracer, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn56 = phi ptr [ %.pn52, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %marked.0.off055 = phi i1 [ false, %for.body.lr.ph ], [ %marked.1.off0, %for.inc.for.body_crit_edge ]
  %relation.057 = getelementptr i8, ptr %.pn56, i32 -12
  %invalid = getelementptr i8, ptr %.pn56, i32 -4
  %4 = ptrtoint ptr %invalid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invalid, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %tracee12 = getelementptr i8, ptr %.pn56, i32 -8
  %6 = ptrtoint ptr %tracee12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tracee12, align 4
  %cmp13 = icmp eq ptr %7, %tracee
  br i1 %cmp13, label %if.end11.if.then18_crit_edge, label %lor.lhs.false

if.end11.if.then18_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end11
  br i1 %tobool14.not, label %lor.lhs.false.for.inc_crit_edge, label %land.lhs.true15

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true15:                                  ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %relation.057 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %relation.057, align 4
  %cmp17 = icmp eq ptr %9, %tracer
  br i1 %cmp17, label %land.lhs.true15.if.then18_crit_edge, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true15.if.then18_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %land.lhs.true15.if.then18_crit_edge, %if.end11.if.then18_crit_edge
  %10 = ptrtoint ptr %invalid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %invalid, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %land.lhs.true15.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %marked.1.off0 = phi i1 [ %marked.0.off055, %for.body.for.inc_crit_edge ], [ true, %if.then18 ], [ %marked.0.off055, %land.lhs.true15.for.inc_crit_edge ], [ %marked.0.off055, %lor.lhs.false.for.inc_crit_edge ]
  %11 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load volatile ptr, ptr %.pn56, align 4
  %cmp.not = icmp eq ptr %.pn, @ptracer_relations
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %marked.0.off0.lcssa = phi i1 [ false, %do.end.for.end_crit_edge ], [ %marked.1.off0, %for.inc.for.end_crit_edge ]
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i43, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %for.end
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %12 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i50 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %marked.0.off0.lcssa, label %if.then30, label %rcu_read_unlock.exit.if.end32_crit_edge

rcu_read_unlock.exit.if.end32_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef nonnull @yama_relation_work) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %rcu_read_unlock.exit.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yama_ptracer_add(ptr noundef %tracer, ptr noundef %tracee) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 28) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tracee1 = getelementptr inbounds %struct.ptrace_relation, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %tracee1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tracee, ptr %tracee1, align 4
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tracer, ptr %call7.i, align 8
  %invalid = getelementptr inbounds %struct.ptrace_relation, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %invalid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %invalid, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @ptracer_relations_lock) #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call3 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @yama_ptracer_add.__warned, align 1
  br i1 %.b56, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @yama_ptracer_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 156, ptr noundef nonnull @.str.12) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn68 = load volatile ptr, ptr @ptracer_relations, align 4
  %cmp.not69 = icmp eq ptr %.pn68, @ptracer_relations
  br i1 %cmp.not69, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn70 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn68, %do.end.for.body_crit_edge ]
  %invalid15 = getelementptr i8, ptr %.pn70, i32 -4
  %8 = ptrtoint ptr %invalid15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %invalid15, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool16.not = icmp eq i8 %9, 0
  br i1 %tobool16.not, label %if.end18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %tracee19 = getelementptr i8, ptr %.pn70, i32 -8
  %10 = ptrtoint ptr %tracee19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tracee19, align 4
  %cmp20 = icmp eq ptr %11, %tracee
  br i1 %cmp20, label %if.then21, label %if.end18.for.inc_crit_edge

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then21:                                        ; preds = %if.end18
  %relation.0.le = getelementptr i8, ptr %.pn70, i32 -12
  %node23 = getelementptr inbounds %struct.ptrace_relation, ptr %call7.i, i32 0, i32 3
  %12 = ptrtoint ptr %.pn70 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn70, align 4
  %14 = ptrtoint ptr %node23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %node23, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn70, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %prev2.i = getelementptr inbounds %struct.ptrace_relation, ptr %call7.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %prev2.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !108
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node23, ptr %16, align 4
  %19 = ptrtoint ptr %node23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node23, align 4
  %prev38.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev38.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node23, ptr %prev38.i, align 4
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool25.not = icmp eq ptr %relation.0.le, null
  br i1 %tobool25.not, label %if.then21.out_crit_edge, label %do.end29

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end29:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr i8, ptr %.pn70, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 20 to ptr)) #10
  br label %out

for.inc:                                          ; preds = %if.end18.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %.pn70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load volatile ptr, ptr %.pn70, align 4
  %cmp.not = icmp eq ptr %.pn, @ptracer_relations
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %node42 = getelementptr inbounds %struct.ptrace_relation, ptr %call7.i, i32 0, i32 3
  %24 = load ptr, ptr @ptracer_relations, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node42, ptr noundef nonnull @ptracer_relations, ptr noundef %24) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %node42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %node42, align 4
  %prev2.i.i = getelementptr inbounds %struct.ptrace_relation, ptr %call7.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ptracer_relations, ptr %prev2.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  store volatile ptr %node42, ptr @ptracer_relations, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node42, ptr %prev37.i.i, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %for.end.out_crit_edge, %do.end29, %if.then21.out_crit_edge
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i57, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %out
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %28 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i64 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ptracer_relations_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yama_relation_cleanup(ptr nocapture noundef readnone %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ptracer_relations_lock) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b35 = load i1, ptr @yama_relation_cleanup.__warned, align 1
  br i1 %.b35, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @yama_relation_cleanup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 121, ptr noundef nonnull @.str.12) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn45 = load volatile ptr, ptr @ptracer_relations, align 4
  %cmp.not47 = icmp eq ptr %.pn45, @ptracer_relations
  br i1 %cmp.not47, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn48 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn45, %do.end.for.body_crit_edge ]
  %relation.049 = getelementptr i8, ptr %.pn48, i32 -12
  %invalid = getelementptr i8, ptr %.pn48, i32 -4
  %4 = ptrtoint ptr %invalid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invalid, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %if.then10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn48) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.list_del_rcu.exit_crit_edge

if.then10.list_del_rcu.exit_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn48, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn48, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then10.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn48, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool13.not = icmp eq ptr %relation.049, null
  br i1 %tobool13.not, label %list_del_rcu.exit.for.inc_crit_edge, label %do.end17

list_del_rcu.exit.for.inc_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end17:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr i8, ptr %.pn48, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 20 to ptr)) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end17, %list_del_rcu.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load volatile ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, @ptracer_relations
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i36, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %for.end
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %14 = tail call i32 @llvm.read_register.i32(metadata !88) #10
  %and.i.i.i.i.i43 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ptracer_relations_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_paths(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yama_dointvec_minmax(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  %table_copy = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %table_copy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 19) #10
  br i1 %call, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %0 = call ptr @memcpy(ptr %table_copy, ptr %table, i32 36)
  %data = getelementptr inbounds %struct.ctl_table, ptr %table_copy, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %table_copy, i32 0, i32 8
  %5 = ptrtoint ptr %extra2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extra2, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp = icmp eq i32 %4, %8
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table_copy, i32 0, i32 7
  %9 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %extra1, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %call4 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %table_copy, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %table_copy) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !27, !29, !31, !33, !35, !36, !38, !39, !41, !43, !44, !46, !47, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/yama/yama_lsm.c", i32 486, i32 10}
!2 = !{ptr @__lsm_yama, !3, !"__lsm_yama", i1 false, i1 false}
!3 = !{!"../security/yama/yama_lsm.c", i32 485, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/yama/yama_lsm.c", i32 479, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @yama_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @yama_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @yama_hooks, !11, !"yama_hooks", i1 false, i1 false}
!11 = !{!"../security/yama/yama_lsm.c", i32 424, i32 34}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../security/yama/yama_lsm.c", i32 371, i32 20}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../security/yama/yama_lsm.c", i32 377, i32 20}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/yama/yama_lsm.c", i32 389, i32 17}
!19 = !{ptr @ptrace_scope, !20, !"ptrace_scope", i1 false, i1 false}
!20 = !{!"../security/yama/yama_lsm.c", i32 27, i32 12}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../security/yama/yama_lsm.c", i32 283, i32 12}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../security/yama/yama_lsm.c", i32 286, i32 13}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../security/yama/yama_lsm.c", i32 291, i32 12}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../security/yama/yama_lsm.c", i32 327, i32 12}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../security/yama/yama_lsm.c", i32 328, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/ptrace.h", i32 127, i32 10}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ptracer_relations, !40, !"ptracer_relations", i1 false, i1 false}
!40 = !{!"../security/yama/yama_lsm.c", i32 38, i32 8}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/yama/yama_lsm.c", i32 86, i32 3}
!46 = !{ptr @report_access._rs, !45, !"_rs", i1 false, i1 false}
!47 = !{ptr @__func__.report_access, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @report_access._entry, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @report_access._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../security/yama/yama_lsm.c", i32 105, i32 2}
!53 = !{ptr @__report_access._rs, !54, !"_rs", i1 false, i1 false}
!54 = !{!"../security/yama/yama_lsm.c", i32 60, i32 2}
!55 = !{ptr @__func__.__report_access, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__report_access._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @__report_access._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../security/yama/yama_lsm.c", i32 407, i32 34}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/yama/yama_lsm.c", i32 417, i32 17}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../security/yama/yama_lsm.c", i32 237, i32 13}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../security/yama/yama_lsm.c", i32 186, i32 2}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/yama/yama_lsm.c", i32 42, i32 8}
!68 = !{ptr @yama_relation_work, !67, !"yama_relation_work", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../security/yama/yama_lsm.c", i32 121, i32 2}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../security/yama/yama_lsm.c", i32 39, i32 8}
!73 = !{ptr @ptracer_relations_lock, !72, !"ptracer_relations_lock", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../security/yama/yama_lsm.c", i32 156, i32 2}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/yama/yama_lsm.c", i32 471, i32 9}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/yama/yama_lsm.c", i32 451, i32 16}
!80 = !{ptr @yama_sysctl_path, !81, !"yama_sysctl_path", i1 false, i1 false}
!81 = !{!"../security/yama/yama_lsm.c", i32 450, i32 24}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../security/yama/yama_lsm.c", i32 458, i32 21}
!84 = !{ptr @yama_sysctl_table, !85, !"yama_sysctl_table", i1 false, i1 false}
!85 = !{!"../security/yama/yama_lsm.c", i32 456, i32 25}
!86 = !{ptr @max_scope, !87, !"max_scope", i1 false, i1 false}
!87 = !{!"../security/yama/yama_lsm.c", i32 448, i32 12}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2149310237}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i8 0, i8 2}
!101 = !{i64 2149310503}
!102 = !{i64 2148482237, i64 2148482269, i64 2148482298, i64 2148482332, i64 2148482363, i64 2148482386}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2148570262}
!105 = !{i64 2148484702, i64 2148484734, i64 2148484763, i64 2148484797, i64 2148484828, i64 2148484851}
!106 = !{i64 2149548491}
!107 = !{i64 2153606251, i64 2153606739, i64 2153606288, i64 2153606344, i64 2153606378, i64 2153606402, i64 2153606443, i64 2153606464, i64 2153606492, i64 2153606526}
!108 = !{i64 2149799478}
!109 = !{i64 2149785550}
