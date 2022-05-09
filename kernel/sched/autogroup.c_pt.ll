; ModuleID = '/llk/IR_all_yes/kernel/sched/autogroup.c_pt.bc'
source_filename = "../kernel/sched/autogroup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sched_autogroup_create_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_sched_autogroup_create_attach\09\09\09\09"
module asm "\09.long\09__crc_sched_autogroup_create_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_autogroup_create_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_autogroup_create_attach\22\09\09\09\09\09"
module asm "__kstrtabns_sched_autogroup_create_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sched_autogroup_detach\22, \22a\22\09"
module asm "\09.weak\09__crc_sched_autogroup_detach\09\09\09\09"
module asm "\09.long\09__crc_sched_autogroup_detach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_autogroup_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_autogroup_detach\22\09\09\09\09\09"
module asm "__kstrtabns_sched_autogroup_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.task_group = type { %struct.cgroup_subsys_state, ptr, ptr, i32, i32, [72 x i8], %struct.atomic_t, ptr, ptr, %struct.rt_bandwidth, %struct.callback_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.cfs_bandwidth, [2 x i32], [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [72 x i8] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.atomic_t = type { i32 }
%struct.rt_bandwidth = type { %struct.raw_spinlock, i64, i64, %struct.hrtimer, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cfs_bandwidth = type { %struct.raw_spinlock, i64, i64, i64, i64, i64, i64, i8, i8, i8, %struct.hrtimer, %struct.hrtimer, %struct.list_head, i32, i32, i32, i64, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.autogroup = type { %struct.kref, ptr, %struct.rw_semaphore, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.132 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@sysctl_sched_autogroup_enabled = dso_local local_unnamed_addr global i32 1, section ".data..read_mostly", align 4
@root_task_group = external dso_local global %struct.task_group, align 128
@autogroup_default = internal global { %struct.autogroup, [48 x i8] } zeroinitializer, align 32
@autogroup_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&autogroup_default.lock\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_sched_autogroup_create_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_autogroup_create_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_autogroup_create_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_autogroup_create_attach to i32), ptr @__kstrtab_sched_autogroup_create_attach, ptr @__kstrtabns_sched_autogroup_create_attach }, section "___ksymtab+sched_autogroup_create_attach", align 4
@__kstrtab_sched_autogroup_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_autogroup_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_autogroup_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_autogroup_detach to i32), ptr @__kstrtab_sched_autogroup_detach, ptr @__kstrtabns_sched_autogroup_detach }, section "___ksymtab+sched_autogroup_detach", align 4
@__setup_str_setup_autogroup = internal constant [12 x i8] c"noautogroup\00", section ".init.rodata", align 1
@__setup_setup_autogroup = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_autogroup, ptr @setup_autogroup, i32 0 }, section ".init.setup", align 4
@proc_sched_autogroup_set_nice.next = internal global { i32, [28 x i8] } { i32 -30000, [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sched_prio_to_weight = external dso_local local_unnamed_addr constant [40 x i32], align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"/autogroup-%ld nice %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-%ld\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"/autogroup\00", [21 x i8] zeroinitializer }, align 32
@autogroup_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ag->lock\00", [22 x i8] zeroinitializer }, align 32
@autogroup_seq_nr = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__func__.autogroup_create = private unnamed_addr constant [17 x i8] c"autogroup_create\00", align 1
@autogroup_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.autogroup_create, ptr @.str.6, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014autogroup_create: %s failure.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kernel/sched/autogroup.c\00", [39 x i8] zeroinitializer }, align 32
@autogroup_create._entry_ptr = internal global ptr @autogroup_create._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sched_create_group()\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kzalloc()\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@autogroup_move_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"autogroup_default\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 9, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 16, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 210, i32 23 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 254, i32 16 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 267, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 267, i32 41 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 76, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"autogroup_seq_nr\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 10, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 100, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [28 x i8] c"../kernel/sched/autogroup.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 162, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_sched_autogroup_create_attach, ptr @__ksymtab_sched_autogroup_detach, ptr @__setup_setup_autogroup, ptr @autogroup_create._entry, ptr @autogroup_create._entry_ptr, ptr @autogroup_default, ptr @autogroup_init.__key, ptr @.str, ptr @proc_sched_autogroup_set_nice.next, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @autogroup_create.__key, ptr @.str.4, ptr @autogroup_seq_nr, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autogroup_default to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autogroup_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sched_autogroup_set_nice.next to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autogroup_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autogroup_seq_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autogroup_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @autogroup_init(ptr nocapture noundef readonly %init_task) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @root_task_group, ptr getelementptr inbounds (%struct.autogroup, ptr @autogroup_default, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @autogroup_default, i32 noundef 4) #13
  store volatile i32 1, ptr @autogroup_default, align 4
  tail call void @__init_rwsem(ptr noundef getelementptr inbounds (%struct.autogroup, ptr @autogroup_default, i32 0, i32 2), ptr noundef nonnull @.str, ptr noundef nonnull @autogroup_init.__key) #13
  %signal = getelementptr inbounds %struct.task_struct, ptr %init_task, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %autogroup = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %autogroup to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @autogroup_default, ptr %autogroup, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @autogroup_free(ptr nocapture noundef readonly %tg) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %autogroup = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 15
  %0 = ptrtoint ptr %autogroup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %autogroup, align 4
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @task_wants_autogroup(ptr nocapture noundef readonly %p, ptr noundef readnone %tg) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %tg, @root_task_group
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  %tobool.not = icmp eq i32 %and, 0
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %tobool.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_autogroup_exit_task(ptr noundef %p) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sched_move_task(ptr noundef %p) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_move_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_autogroup_create_attach(ptr noundef %p) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %out_fail.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @sched_create_group(ptr noundef nonnull @root_task_group) #13
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %out_free.i, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #13
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %lock.i = getelementptr inbounds %struct.autogroup, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @autogroup_create.__key) #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @autogroup_seq_nr, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr nonnull @autogroup_seq_nr, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @autogroup_seq_nr, ptr nonnull @autogroup_seq_nr, i32 1, ptr nonnull elementtype(i32) @autogroup_seq_nr) #13, !srcloc !50
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !51
  %id.i = getelementptr inbounds %struct.autogroup, ptr %call7.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %asmresult.i.i.i.i.i, ptr %id.i, align 8
  %tg6.i = getelementptr inbounds %struct.autogroup, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %tg6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %tg6.i, align 4
  tail call void @free_rt_sched_group(ptr noundef %call1.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_group, ptr @root_task_group, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.task_group, ptr @root_task_group, i32 0, i32 7), align 4
  %rt_se.i = getelementptr inbounds %struct.task_group, ptr %call1.i, i32 0, i32 7
  %6 = ptrtoint ptr %rt_se.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %rt_se.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_group, ptr @root_task_group, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.task_group, ptr @root_task_group, i32 0, i32 8), align 8
  %rt_rq.i = getelementptr inbounds %struct.task_group, ptr %call1.i, i32 0, i32 8
  %8 = ptrtoint ptr %rt_rq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %rt_rq.i, align 8
  %autogroup.i = getelementptr inbounds %struct.task_group, ptr %call1.i, i32 0, i32 15
  %9 = ptrtoint ptr %autogroup.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %autogroup.i, align 4
  tail call void @sched_online_group(ptr noundef %call1.i, ptr noundef nonnull @root_task_group) #13
  br label %autogroup_create.exit

out_free.i:                                       ; preds = %if.end.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %out_fail.i

out_fail.i:                                       ; preds = %out_free.i, %entry
  %call7.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.autogroup_create) #13
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end15.i, label %do.end12.i

do.end12.i:                                       ; preds = %out_fail.i
  %cond.i = select i1 %tobool.not.i, ptr @.str.8, ptr @.str.7
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %cond.i) #16
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end12.i, %out_fail.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @autogroup_default, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @autogroup_default, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @autogroup_default, ptr nonnull @autogroup_default, i32 1, ptr nonnull elementtype(i32) @autogroup_default) #13, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end15.sink.split.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i, !prof !53

if.else.i.i.i.i.i.i:                              ; preds = %if.end15.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i.i, label %autogroup_create.exit, label %if.end15.sink.split.i.i.i.i.i.i, !prof !54

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i, %if.end15.i
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end15.i ], [ 1, %if.else.i.i.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull @autogroup_default, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %autogroup_create.exit

autogroup_create.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i, %if.end4.i
  %retval.0.i = phi ptr [ %call7.i.i.i, %if.end4.i ], [ @autogroup_default, %if.else.i.i.i.i.i.i ], [ @autogroup_default, %if.end15.sink.split.i.i.i.i.i.i ]
  tail call fastcc void @autogroup_move_group(ptr noundef %p, ptr noundef nonnull %retval.0.i)
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr nonnull %retval.0.i, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %retval.0.i, ptr nonnull %retval.0.i, i32 1, ptr nonnull elementtype(i32) %retval.0.i) #13, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i2 = extractvalue { i32, i32, i32 } %12, 0
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i2, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %autogroup_create.exit
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i2, 0
  br i1 %.not.i.i.i.i.i, label %autogroup_kref_put.exit, label %if.then10.i.i.i.i.i, !prof !54

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %retval.0.i, i32 noundef 3) #13
  br label %autogroup_kref_put.exit

if.then.i.i:                                      ; preds = %autogroup_create.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !57
  %tg.i.i.i = getelementptr inbounds %struct.autogroup, ptr %retval.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %tg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tg.i.i.i, align 4
  %rt_se.i.i.i = getelementptr inbounds %struct.task_group, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %rt_se.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rt_se.i.i.i, align 4
  %16 = load ptr, ptr %tg.i.i.i, align 4
  %rt_rq.i.i.i = getelementptr inbounds %struct.task_group, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %rt_rq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rt_rq.i.i.i, align 8
  %18 = load ptr, ptr %tg.i.i.i, align 4
  tail call void @sched_release_group(ptr noundef %18) #13
  %19 = ptrtoint ptr %tg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tg.i.i.i, align 4
  tail call void @sched_destroy_group(ptr noundef %20) #13
  br label %autogroup_kref_put.exit

autogroup_kref_put.exit:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @autogroup_move_group(ptr noundef %p, ptr noundef %ag) unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !58
  %call.i = call ptr @__lock_task_sighand(ptr noundef %p, ptr noundef nonnull %flags) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !53

do.body4:                                         ; preds = %entry
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/autogroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #13, !srcloc !59
  unreachable

do.end9:                                          ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %1 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %signal, align 16
  %autogroup = getelementptr inbounds %struct.signal_struct, ptr %2, i32 0, i32 26
  %3 = ptrtoint ptr %autogroup to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %autogroup, align 4
  %cmp = icmp eq ptr %4, %ag
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end9
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %5 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sighand.i, align 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %8) #13
  br label %cleanup

if.end11:                                         ; preds = %do.end9
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ag, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %ag, i32 1, i32 3, i32 1) #13
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ag, ptr %ag, i32 1, ptr elementtype(i32) %ag) #13, !srcloc !52
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end15.sink.split.i.i.i.i.i, label %if.else.i.i.i.i.i, !prof !53

if.else.i.i.i.i.i:                                ; preds = %if.end11
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i, label %autogroup_kref_get.exit, label %if.end15.sink.split.i.i.i.i.i, !prof !54

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i, %if.end11
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end11 ], [ 1, %if.else.i.i.i.i.i ]
  call void @refcount_warn_saturate(ptr noundef %ag, i32 noundef %.sink.i.i.i.i.i) #13
  br label %autogroup_kref_get.exit

autogroup_kref_get.exit:                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signal, align 16
  %autogroup14 = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %autogroup14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ag, ptr %autogroup14, align 4
  %call16 = call i32 @rcu_read_lock_any_held() #13
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %do.end25

land.lhs.true:                                    ; preds = %autogroup_kref_get.exit
  %call18 = call i32 @debug_lockdep_rcu_enabled() #13
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end25, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b55 = load i1, ptr @autogroup_move_group.__warned, align 1
  br i1 %.b55, label %do.end25, label %if.then22

if.then22:                                        ; preds = %land.lhs.true20
  store i1 true, ptr @autogroup_move_group.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 162, ptr noundef nonnull @.str.9) #13
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20, %land.lhs.true, %autogroup_kref_get.exit
  %14 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn59 = load volatile ptr, ptr %thread_head, align 4
  %cmp33.not61 = icmp eq ptr %.pn59, %thread_head
  br i1 %cmp33.not61, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %do.end25
  %.pn62 = phi ptr [ %.pn, %for.body ], [ %.pn59, %do.end25 ]
  %t.0 = getelementptr i8, ptr %.pn62, i32 -1404
  call void @sched_move_task(ptr noundef %t.0) #13
  %17 = ptrtoint ptr %.pn62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load volatile ptr, ptr %.pn62, align 4
  %18 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal, align 16
  %thread_head32 = getelementptr inbounds %struct.signal_struct, ptr %19, i32 0, i32 3
  %cmp33.not = icmp eq ptr %.pn, %thread_head32
  br i1 %cmp33.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %do.end25
  %sighand.i56 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %20 = ptrtoint ptr %sighand.i56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sighand.i56, align 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %23) #13
  %call.i.i.i.i.i.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !55
  call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #13
  %24 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #13, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end
  %.not.i.i.i.i.i58 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i58, label %cleanup, label %if.then10.i.i.i.i.i, !prof !54

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #13
  br label %cleanup

if.then.i.i:                                      ; preds = %for.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !57
  %tg.i.i.i = getelementptr inbounds %struct.autogroup, ptr %4, i32 0, i32 1
  %25 = ptrtoint ptr %tg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tg.i.i.i, align 4
  %rt_se.i.i.i = getelementptr inbounds %struct.task_group, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %rt_se.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rt_se.i.i.i, align 4
  %28 = load ptr, ptr %tg.i.i.i, align 4
  %rt_rq.i.i.i = getelementptr inbounds %struct.task_group, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %rt_rq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rt_rq.i.i.i, align 8
  %30 = load ptr, ptr %tg.i.i.i, align 4
  call void @sched_release_group(ptr noundef %30) #13
  %31 = ptrtoint ptr %tg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tg.i.i.i, align 4
  call void @sched_destroy_group(ptr noundef %32) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_autogroup_detach(ptr noundef %p) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @autogroup_move_group(ptr noundef %p, ptr noundef nonnull @autogroup_default)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_autogroup_fork(ptr nocapture noundef writeonly %sig) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call fastcc ptr @autogroup_task_get(ptr noundef %3)
  %autogroup = getelementptr inbounds %struct.signal_struct, ptr %sig, i32 0, i32 26
  %4 = ptrtoint ptr %autogroup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %autogroup, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @autogroup_task_get(ptr noundef %p) unnamed_addr #5 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !58
  %call.i = call ptr @__lock_task_sighand(ptr noundef %p, ptr noundef nonnull %flags) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @autogroup_default, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull @autogroup_default, i32 1, i32 3, i32 1) #13
  %1 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @autogroup_default, ptr nonnull @autogroup_default, i32 1, ptr nonnull elementtype(i32) @autogroup_default) #13, !srcloc !52
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end15.sink.split.i.i.i.i.i, label %if.else.i.i.i.i.i, !prof !53

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i, label %cleanup, label %if.end15.sink.split.i.i.i.i.i, !prof !54

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i, %if.then
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then ], [ 1, %if.else.i.i.i.i.i ]
  call void @refcount_warn_saturate(ptr noundef nonnull @autogroup_default, i32 noundef %.sink.i.i.i.i.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %3 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %signal, align 16
  %autogroup = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 26
  %5 = ptrtoint ptr %autogroup to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %autogroup, align 4
  %call.i.i.i.i.i.i.i6 = call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #13
  %7 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #13, !srcloc !52
  %asmresult.i.i.i.i.i.i.i7 = extractvalue { i32, i32, i32 } %7, 0
  %tobool1.not.i.i.i.i.i8 = icmp eq i32 %asmresult.i.i.i.i.i.i.i7, 0
  br i1 %tobool1.not.i.i.i.i.i8, label %if.end15.sink.split.i.i.i.i.i13, label %if.else.i.i.i.i.i11, !prof !53

if.else.i.i.i.i.i11:                              ; preds = %if.end
  %add.i.i.i.i.i9 = add i32 %asmresult.i.i.i.i.i.i.i7, 1
  %8 = or i32 %add.i.i.i.i.i9, %asmresult.i.i.i.i.i.i.i7
  %.not.i.i.i.i.i10 = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i10, label %autogroup_kref_get.exit14, label %if.end15.sink.split.i.i.i.i.i13, !prof !54

if.end15.sink.split.i.i.i.i.i13:                  ; preds = %if.else.i.i.i.i.i11, %if.end
  %.sink.i.i.i.i.i12 = phi i32 [ 2, %if.end ], [ 1, %if.else.i.i.i.i.i11 ]
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %.sink.i.i.i.i.i12) #13
  br label %autogroup_kref_get.exit14

autogroup_kref_get.exit14:                        ; preds = %if.end15.sink.split.i.i.i.i.i13, %if.else.i.i.i.i.i11
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %9 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sighand.i, align 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %12) #13
  br label %cleanup

cleanup:                                          ; preds = %autogroup_kref_get.exit14, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i
  %retval.0 = phi ptr [ %6, %autogroup_kref_get.exit14 ], [ @autogroup_default, %if.else.i.i.i.i.i ], [ @autogroup_default, %if.end15.sink.split.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_autogroup_exit(ptr nocapture noundef readonly %sig) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %autogroup = getelementptr inbounds %struct.signal_struct, ptr %sig, i32 0, i32 26
  %0 = ptrtoint ptr %autogroup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %autogroup, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #13, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %autogroup_kref_put.exit, label %if.then10.i.i.i.i.i, !prof !54

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #13
  br label %autogroup_kref_put.exit

if.then.i.i:                                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !57
  %tg.i.i.i = getelementptr inbounds %struct.autogroup, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %tg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tg.i.i.i, align 4
  %rt_se.i.i.i = getelementptr inbounds %struct.task_group, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %rt_se.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rt_se.i.i.i, align 4
  %6 = load ptr, ptr %tg.i.i.i, align 4
  %rt_rq.i.i.i = getelementptr inbounds %struct.task_group, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %rt_rq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rt_rq.i.i.i, align 8
  %8 = load ptr, ptr %tg.i.i.i, align 4
  tail call void @sched_release_group(ptr noundef %8) #13
  %9 = ptrtoint ptr %tg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tg.i.i.i, align 4
  tail call void @sched_destroy_group(ptr noundef %10) #13
  br label %autogroup_kref_put.exit

autogroup_kref_put.exit:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @setup_autogroup(ptr nocapture noundef readnone %str) #6 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @sysctl_sched_autogroup_enabled, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_sched_autogroup_set_nice(ptr noundef %p, i32 noundef %nice) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %nice, -20
  %1 = icmp ult i32 %0, -40
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !39) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %call2 = tail call i32 @security_task_setnice(ptr noundef %5, i32 noundef %nice) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %nice, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end4
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %call8 = tail call i32 @can_nice(ptr noundef %7, i32 noundef %nice) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end4
  %call12 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call12, label %if.end16, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = load i32, ptr @proc_sched_autogroup_set_nice.next, align 4
  %sub = sub i32 %8, %9
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %land.lhs.true13, %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 10
  store i32 %add, ptr @proc_sched_autogroup_set_nice.next, align 4
  %call17 = tail call fastcc ptr @autogroup_task_get(ptr noundef %p)
  %add18 = add nsw i32 %nice, 20
  %11 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %add18, i32 40) #13, !srcloc !60
  %and = and i32 %11, %add18
  %arrayidx = getelementptr [40 x i32], ptr @sched_prio_to_weight, i32 0, i32 %and
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.autogroup, ptr %call17, i32 0, i32 2
  tail call void @down_write(ptr noundef %lock) #13
  %tg = getelementptr inbounds %struct.autogroup, ptr %call17, i32 0, i32 1
  %14 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tg, align 4
  %call23 = tail call i32 @sched_group_set_shares(ptr noundef %15, i32 noundef %13) #13
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end16
  %nice26 = getelementptr inbounds %struct.autogroup, ptr %call17, i32 0, i32 4
  %16 = ptrtoint ptr %nice26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %nice, ptr %nice26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end16
  tail call void @up_write(ptr noundef %lock) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call17, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %call17, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call17, ptr %call17, i32 1, ptr elementtype(i32) %call17) #13, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end27
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %cleanup, label %if.then10.i.i.i.i.i, !prof !54

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %call17, i32 noundef 3) #13
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !57
  %18 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tg, align 4
  %rt_se.i.i.i = getelementptr inbounds %struct.task_group, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %rt_se.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rt_se.i.i.i, align 4
  %21 = load ptr, ptr %tg, align 4
  %rt_rq.i.i.i = getelementptr inbounds %struct.task_group, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %rt_rq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rt_rq.i.i.i, align 8
  %23 = load ptr, ptr %tg, align 4
  tail call void @sched_release_group(ptr noundef %23) #13
  %24 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tg, align 4
  tail call void @sched_destroy_group(ptr noundef %25) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i, %land.lhs.true13, %land.lhs.true, %if.end, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %call2, %if.end ], [ -1, %land.lhs.true ], [ -11, %land.lhs.true13 ], [ %call23, %if.end5.i.i.i.i.i ], [ %call23, %if.then10.i.i.i.i.i ], [ %call23, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_setnice(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_nice(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_group_set_shares(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_sched_autogroup_show_task(ptr noundef %p, ptr noundef %m) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @autogroup_task_get(ptr noundef %p)
  %tg = getelementptr inbounds %struct.autogroup, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tg, align 4
  %autogroup.i = getelementptr inbounds %struct.task_group, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %autogroup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %autogroup.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.autogroup, ptr %call, i32 0, i32 2
  tail call void @down_read(ptr noundef %lock) #13
  %id = getelementptr inbounds %struct.autogroup, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %nice = getelementptr inbounds %struct.autogroup, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %nice to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nice, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %7) #13
  tail call void @up_read(ptr noundef %lock) #13
  br label %out

out:                                              ; preds = %if.end, %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 1, ptr elementtype(i32) %call) #13, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %autogroup_kref_put.exit, label %if.then10.i.i.i.i.i, !prof !54

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %call, i32 noundef 3) #13
  br label %autogroup_kref_put.exit

if.then.i.i:                                      ; preds = %out
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !57
  %9 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tg, align 4
  %rt_se.i.i.i = getelementptr inbounds %struct.task_group, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %rt_se.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rt_se.i.i.i, align 4
  %12 = load ptr, ptr %tg, align 4
  %rt_rq.i.i.i = getelementptr inbounds %struct.task_group, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %rt_rq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rt_rq.i.i.i, align 8
  %14 = load ptr, ptr %tg, align 4
  tail call void @sched_release_group(ptr noundef %14) #13
  %15 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tg, align 4
  tail call void @sched_destroy_group(ptr noundef %16) #13
  br label %autogroup_kref_put.exit

autogroup_kref_put.exit:                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @autogroup_path(ptr nocapture noundef readonly %tg, ptr nocapture noundef writeonly %buf, i32 noundef %buflen) local_unnamed_addr #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %autogroup.i = getelementptr inbounds %struct.task_group, ptr %tg, i32 0, i32 15
  %0 = ptrtoint ptr %autogroup.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %autogroup.i, align 4
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.autogroup, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %buflen, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %3)
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sched_create_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rt_sched_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_online_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_release_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_destroy_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !29, !30, !31, !32, !33, !35, !37, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @sysctl_sched_autogroup_enabled, !1, !"sysctl_sched_autogroup_enabled", i1 false, i1 false}
!1 = !{!"../kernel/sched/autogroup.c", i32 8, i32 28}
!2 = !{ptr @autogroup_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../kernel/sched/autogroup.c", i32 16, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_sched_autogroup_create_attach, !6, !"__ksymtab_sched_autogroup_create_attach", i1 false, i1 false}
!6 = !{!"../kernel/sched/autogroup.c", i32 179, i32 1}
!7 = !{ptr @__ksymtab_sched_autogroup_detach, !8, !"__ksymtab_sched_autogroup_detach", i1 false, i1 false}
!8 = !{!"../kernel/sched/autogroup.c", i32 186, i32 1}
!9 = !{ptr @__setup_setup_autogroup, !10, !"__setup_setup_autogroup", i1 false, i1 false}
!10 = !{!"../kernel/sched/autogroup.c", i32 204, i32 1}
!11 = !{ptr @proc_sched_autogroup_set_nice.next, !12, !"next", i1 false, i1 false}
!12 = !{!"../kernel/sched/autogroup.c", i32 210, i32 23}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/sched/autogroup.c", i32 254, i32 16}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/sched/autogroup.c", i32 267, i32 31}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/sched/autogroup.c", i32 267, i32 41}
!19 = !{ptr @autogroup_default, !20, !"autogroup_default", i1 false, i1 false}
!20 = !{!"../kernel/sched/autogroup.c", i32 9, i32 25}
!21 = !{ptr @autogroup_create.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../kernel/sched/autogroup.c", i32 76, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__func__.autogroup_create, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/sched/autogroup.c", i32 99, i32 6}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/sched/autogroup.c", i32 100, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @autogroup_create._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @autogroup_create._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @autogroup_seq_nr, !34, !"autogroup_seq_nr", i1 false, i1 false}
!34 = !{!"../kernel/sched/autogroup.c", i32 10, i32 17}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../kernel/sched/autogroup.c", i32 162, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__setup_str_setup_autogroup, !10, !"__setup_str_setup_autogroup", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148594333}
!50 = !{i64 2148509642, i64 2148509674, i64 2148509703, i64 2148509737, i64 2148509768, i64 2148509791}
!51 = !{i64 2148594562}
!52 = !{i64 2148510452, i64 2148510484, i64 2148510513, i64 2148510547, i64 2148510578, i64 2148510601}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2148598453}
!56 = !{i64 2148512917, i64 2148512949, i64 2148512978, i64 2148513012, i64 2148513043, i64 2148513066}
!57 = !{i64 2149644423}
!58 = !{!"auto-init"}
!59 = !{i64 2158446686, i64 2158447175, i64 2158446723, i64 2158446779, i64 2158446813, i64 2158446837, i64 2158446878, i64 2158446899, i64 2158446927, i64 2158446961}
!60 = !{i64 532874, i64 532891}
