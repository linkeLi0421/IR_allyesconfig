; ModuleID = '/llk/IR_all_yes/fs/proc/array.c_pt.bc'
source_filename = "../fs/proc/array.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.73, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.7 }
%struct.llist_node = type { ptr }
%union.anon.7 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.57 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.44 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.44 = type { %struct.callback_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [36 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [68 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.upid = type { i32, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.ucounts = type { %struct.hlist_node, ptr, %struct.kuid_t, %struct.atomic_t, [16 x %struct.atomic_t] }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.80 = type { %struct.callback_head }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.82 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A\\\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.64s\00", [26 x i8] zeroinitializer }, align 32
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Name:\09\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0 0 0 0 0 0 0\0A\00", [17 x i8] zeroinitializer }, align 32
@proc_tid_children_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @children_seq_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@task_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/proc/array.c\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@task_state.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Umask:\09%#04o\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"State:\09\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0ATgid:\09\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0ANgid:\09\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0APid:\09\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0APPid:\09\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\0ATracerPid:\09\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0AUid:\09\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\09\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0AGid:\09\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0AFDSize:\09\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0AGroups:\09\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0ANStgid:\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0ANSpid:\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0ANSpgid:\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0ANSsid:\00", [24 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@ptrace_parent.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/ptrace.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@task_state_array = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"R (running)\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S (sleeping)\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"D (disk sleep)\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"T (stopped)\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"t (tracing stop)\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"X (dead)\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Z (zombie)\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"P (parked)\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I (idle)\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CoreDumping:\09\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"THP_enabled:\09%d\0A\00", [47 x i8] zeroinitializer }, align 32
@task_sig.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Threads:\09\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0ASigQ:\09\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0ASigPnd:\09\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ShdPnd:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SigBlk:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SigIgn:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SigCgt:\09\00", [23 x i8] zeroinitializer }, align 32
@task_cap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CapInh:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CapPrm:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CapEff:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CapBnd:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CapAmb:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NoNewPrivs:\09\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0ASeccomp:\09\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0ASpeculation_Store_Bypass:\09\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"not vulnerable\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"thread force mitigated\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"thread mitigated\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"thread vulnerable\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"globally mitigated\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vulnerable\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0ASpeculationIndirectBranch:\09\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unsupported\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"not affected\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"conditional force disabled\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"conditional disabled\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"conditional enabled\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"always enabled\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"always disabled\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cpus_allowed:\09%*pb\0A\00", [44 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cpus_allowed_list:\09%*pbl\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"voluntary_ctxt_switches:\09\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0Anonvoluntary_ctxt_switches:\09\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" (\00", [29 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c") \00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" 0 0 0 0 0 0 0\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" 0\00", [29 x i8] zeroinitializer }, align 32
@children_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @children_seq_start, ptr @children_seq_stop, ptr @children_seq_next, ptr @children_seq_show }, [16 x i8] zeroinitializer }, align 32
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.81 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 9, i64 4294967274]
@__sancov_gen_cov_switch_values.82 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 9, i64 4294967274]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 112, i32 59 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 114, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 434, i32 14 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 683, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 684, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 692, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant [29 x i8] c"proc_tid_children_operations\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 795, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 158, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 177, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 178, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 181, i32 25 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 182, i32 25 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 183, i32 25 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 184, i32 25 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 185, i32 25 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 186, i32 25 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 187, i32 25 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 190, i32 25 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 194, i32 25 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 196, i32 14 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 206, i32 14 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 209, i32 14 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 212, i32 14 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 215, i32 14 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 695, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"../include/linux/ptrace.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 127, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 723, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"task_state_array\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 123, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 126, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 127, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 128, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 129, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 130, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 131, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 132, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 133, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 136, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 286, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 416, i32 25 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 426, i32 16 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 286, i32 25 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 287, i32 25 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 288, i32 25 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 291, i32 21 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 292, i32 21 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 293, i32 21 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 294, i32 21 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 295, i32 21 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 326, i32 18 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 327, i32 18 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 328, i32 18 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 329, i32 18 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 330, i32 18 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 335, i32 25 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 337, i32 25 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 343, i32 14 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 346, i32 15 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 349, i32 15 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 352, i32 15 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 355, i32 15 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 358, i32 15 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 361, i32 15 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 364, i32 15 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 368, i32 14 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 371, i32 15 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 374, i32 15 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 377, i32 15 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 380, i32 15 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 383, i32 15 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 386, i32 15 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 389, i32 15 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 408, i32 16 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 410, i32 16 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 401, i32 25 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 402, i32 25 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 569, i32 14 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 571, i32 14 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 637, i32 15 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 642, i32 15 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"children_seq_ops\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 783, i32 36 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.331 = private constant [19 x i8] c"../fs/proc/array.c\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.331, i32 758, i32 18 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @proc_tid_children_operations, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @task_state_array, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @children_seq_ops, ptr @.str.80], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_tid_children_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_state_array to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @children_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_task_name(ptr noundef %m, ptr noundef %p, i1 noundef zeroext %escape) local_unnamed_addr #0 align 64 {
entry:
  %tcomm = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tcomm) #8
  %0 = call ptr @memset(ptr %tcomm, i32 255, i32 64)
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @wq_worker_comm(ptr noundef nonnull %tcomm, i32 noundef 64, ptr noundef %p) #8
  br label %if.end8

if.else:                                          ; preds = %entry
  %and2 = and i32 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else6, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @get_kthread_comm(ptr noundef nonnull %tcomm, i32 noundef 64, ptr noundef %p) #8
  br label %if.end8

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call = call ptr @__get_task_comm(ptr noundef nonnull %tcomm, i32 noundef 64, ptr noundef %p) #8
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then4, %if.then
  br i1 %escape, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @strlen(ptr noundef nonnull %tcomm) #11
  call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull %tcomm, i32 noundef %call.i, i32 noundef 3, ptr noundef nonnull @.str) #8
  br label %if.end14

if.else12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, ptr noundef nonnull %tcomm) #8
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tcomm) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wq_worker_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_kthread_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @render_sigset_t(ptr noundef %m, ptr noundef %header, ptr nocapture noundef readonly %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef %header) #8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 64, %entry ], [ %sub, %do.body.do.body_crit_edge ]
  %sub = add nsw i32 %i.0, -4
  %div3.i = lshr i32 %sub, 5
  %arrayidx.i = getelementptr [2 x i32], ptr %set, i32 0, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %rem.i = and i32 %sub, 28
  %2 = lshr i32 %1, %rem.i
  %3 = and i32 %2, 1
  %sub.i33 = add nsw i32 %i.0, -3
  %div3.i34 = lshr i32 %sub.i33, 5
  %arrayidx.i35 = getelementptr [2 x i32], ptr %set, i32 0, i32 %div3.i34
  %4 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i35, align 4
  %rem.i36 = and i32 %sub.i33, 29
  %6 = shl nuw nsw i32 1, %rem.i36
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  %or5 = or i32 %3, 2
  %x.1 = select i1 %tobool3.not, i32 %3, i32 %or5
  %add7 = add nsw i32 %i.0, -1
  %sub.i39 = add nsw i32 %i.0, -2
  %div3.i40 = lshr i32 %sub.i39, 5
  %arrayidx.i41 = getelementptr [2 x i32], ptr %set, i32 0, i32 %div3.i40
  %8 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i41, align 4
  %rem.i42 = and i32 %sub.i39, 30
  %10 = shl nuw nsw i32 1, %rem.i42
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  %or11 = or i32 %x.1, 4
  %x.2 = select i1 %tobool9.not, i32 %x.1, i32 %or11
  %div3.i46 = lshr i32 %add7, 5
  %arrayidx.i47 = getelementptr [2 x i32], ptr %set, i32 0, i32 %div3.i46
  %12 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i47, align 4
  %rem.i48 = and i32 %add7, 31
  %14 = shl nuw i32 1, %rem.i48
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  %or17 = or i32 %x.2, 8
  %x.3 = select i1 %tobool15.not, i32 %x.2, i32 %or17
  %arrayidx = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %x.3
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %17) #8
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_pid_status(ptr noundef %m, ptr noundef %ns, ptr noundef %pid, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %flags.i = alloca i32, align 4
  %pending.i = alloca %struct.sigset_t, align 8
  %shpending.i = alloca %struct.sigset_t, align 8
  %blocked.i = alloca %struct.sigset_t, align 8
  %ignored.i = alloca %struct.sigset_t, align 4
  %caught.i = alloca %struct.sigset_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_task_mm(ptr noundef %task) #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #8
  tail call void @proc_task_name(ptr noundef %m, ptr noundef %task, i1 noundef zeroext true)
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  %file.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file.i.i, align 4
  %f_cred.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %f_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_cred.i.i, align 8
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns.i.i, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !174) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 696, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 78
  %10 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread_pid.i.i, align 16
  %cmp.i.not.i = icmp eq ptr %11, null
  br i1 %cmp.i.not.i, label %rcu_read_lock.exit.i.cond.end.i_crit_edge, label %cond.true.i

rcu_read_lock.exit.i.cond.end.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %rcu_read_lock.exit.i
  %real_parent.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 71
  %12 = ptrtoint ptr %real_parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %real_parent.i, align 4
  %call3.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %cond.true.i.do.end10.i_crit_edge

cond.true.i.do.end10.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %cond.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b253.i = load i1, ptr @task_state.__warned, align 1
  br i1 %.b253.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 158, ptr noundef nonnull @.str.7) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %cond.true.i.do.end10.i_crit_edge
  %call.i254.i = tail call i32 @__task_pid_nr_ns(ptr noundef %13, i32 noundef 1, ptr noundef %ns) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %do.end10.i, %rcu_read_lock.exit.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call.i254.i, %do.end10.i ], [ 0, %rcu_read_lock.exit.i.cond.end.i_crit_edge ]
  %ptrace.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 4
  %14 = ptrtoint ptr %ptrace.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptrace.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i255.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i255.i, label %cond.end.i.if.end17.i_crit_edge, label %if.then.i257.i, !prof !185

cond.end.i.if.end17.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then.i257.i:                                   ; preds = %cond.end.i
  %parent.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 72
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %parent.i.i, align 8
  %call.i256.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256.i)
  %tobool4.not.i.i = icmp eq i32 %call.i256.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i258.i, label %if.then.i257.i.ptrace_parent.exit.i_crit_edge

if.then.i257.i.ptrace_parent.exit.i_crit_edge:    ; preds = %if.then.i257.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptrace_parent.exit.i

land.lhs.true.i258.i:                             ; preds = %if.then.i257.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i258.i.ptrace_parent.exit.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i258.i.ptrace_parent.exit.i_crit_edge: ; preds = %land.lhs.true.i258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptrace_parent.exit.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i258.i
  %.b15.i.i = load i1, ptr @ptrace_parent.__warned, align 1
  br i1 %.b15.i.i, label %land.lhs.true7.i.i.ptrace_parent.exit.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.ptrace_parent.exit.i_crit_edge: ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptrace_parent.exit.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ptrace_parent.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 127, ptr noundef nonnull @.str.7) #8
  br label %ptrace_parent.exit.i

ptrace_parent.exit.i:                             ; preds = %if.then9.i.i, %land.lhs.true7.i.i.ptrace_parent.exit.i_crit_edge, %land.lhs.true.i258.i.ptrace_parent.exit.i_crit_edge, %if.then.i257.i.ptrace_parent.exit.i_crit_edge
  %tobool14.not.i = icmp eq ptr %17, null
  br i1 %tobool14.not.i, label %ptrace_parent.exit.i.if.end17.i_crit_edge, label %if.then15.i

ptrace_parent.exit.i.if.end17.i_crit_edge:        ; preds = %ptrace_parent.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then15.i:                                      ; preds = %ptrace_parent.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i259.i = tail call i32 @__task_pid_nr_ns(ptr noundef nonnull %17, i32 noundef 0, ptr noundef %ns) #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %ptrace_parent.exit.i.if.end17.i_crit_edge, %cond.end.i.if.end17.i_crit_edge
  %tpid.0.i = phi i32 [ %call.i259.i, %if.then15.i ], [ 0, %ptrace_parent.exit.i.if.end17.i_crit_edge ], [ 0, %cond.end.i.if.end17.i_crit_edge ]
  %call.i260.i = tail call i32 @__task_pid_nr_ns(ptr noundef %task, i32 noundef 1, ptr noundef %ns) #8
  %call20.i = tail call ptr @get_task_cred(ptr noundef %task) #8
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #8
  %fs.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 107
  %18 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fs.i, align 128
  %tobool21.not.i = icmp eq ptr %19, null
  br i1 %tobool21.not.i, label %if.end17.i.if.end25.i_crit_edge, label %if.then22.i

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %umask24.i = getelementptr inbounds %struct.fs_struct, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %umask24.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %umask24.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end17.i.if.end25.i_crit_edge
  %umask.0.i = phi i32 [ %21, %if.then22.i ], [ -1, %if.end17.i.if.end25.i_crit_edge ]
  %files.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 108
  %22 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %files.i, align 4
  %tobool26.not.i = icmp eq ptr %23, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end50.i_crit_edge, label %if.then27.i

if.end25.i.if.end50.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then27.i:                                      ; preds = %if.end25.i
  %fdt.i = getelementptr inbounds %struct.files_struct, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %fdt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %fdt.i, align 4
  %dep_map.i = getelementptr inbounds %struct.files_struct, ptr %23, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i261.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261.i)
  %tobool36.not.i = icmp eq i32 %call.i261.i, 0
  br i1 %tobool36.not.i, label %lor.lhs.false.i, label %if.then27.i.do.end47.i_crit_edge

if.then27.i.do.end47.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47.i

lor.lhs.false.i:                                  ; preds = %if.then27.i
  %call37.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true39.i, label %lor.lhs.false.i.do.end47.i_crit_edge

lor.lhs.false.i.do.end47.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47.i

land.lhs.true39.i:                                ; preds = %lor.lhs.false.i
  %call40.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true39.i.do.end47.i_crit_edge, label %land.lhs.true42.i

land.lhs.true39.i.do.end47.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47.i

land.lhs.true42.i:                                ; preds = %land.lhs.true39.i
  %.b243252.i = load i1, ptr @task_state.__warned.8, align 1
  br i1 %.b243252.i, label %land.lhs.true42.i.do.end47.i_crit_edge, label %if.then44.i

land.lhs.true42.i.do.end47.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47.i

if.then44.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_state.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 172, ptr noundef nonnull @.str.7) #8
  br label %do.end47.i

do.end47.i:                                       ; preds = %if.then44.i, %land.lhs.true42.i.do.end47.i_crit_edge, %land.lhs.true39.i.do.end47.i_crit_edge, %lor.lhs.false.i.do.end47.i_crit_edge, %if.then27.i.do.end47.i_crit_edge
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end47.i, %if.end25.i.if.end50.i_crit_edge
  %max_fds.0.i = phi i32 [ %27, %do.end47.i ], [ 0, %if.end25.i.if.end50.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i) #8
  %call.i263.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i263.i, label %if.end50.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i266.i

if.end50.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i266.i:                             ; preds = %if.end50.i
  %call1.i264.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i264.i)
  %tobool.not.i265.i = icmp eq i32 %call1.i264.i, 0
  br i1 %tobool.not.i265.i, label %land.lhs.true.i266.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i268.i

land.lhs.true.i266.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i266.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i268.i:                            ; preds = %land.lhs.true.i266.i
  %.b4.i267.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i267.i, label %land.lhs.true2.i268.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i269.i

land.lhs.true2.i268.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i268.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i269.i:                                   ; preds = %land.lhs.true2.i268.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.28) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i269.i, %land.lhs.true2.i268.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i266.i.rcu_read_unlock.exit.i_crit_edge, %if.end50.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !186
  %28 = tail call i32 @llvm.read_register.i32(metadata !174) #8
  %and.i.i.i.i.i270.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i270.i to ptr
  %preempt_count.i.i.i.i271.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i271.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i271.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i271.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %umask.0.i)
  %cmp.i = icmp sgt i32 %umask.0.i, -1
  br i1 %cmp.i, label %if.then51.i, label %rcu_read_unlock.exit.i.if.end52.i_crit_edge

rcu_read_unlock.exit.i.if.end52.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

if.then51.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef %umask.0.i) #8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then51.i, %rcu_read_unlock.exit.i.if.end52.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.10) #8
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %task, align 128
  %exit_state.i.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 57
  %34 = ptrtoint ptr %exit_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %exit_state.i.i.i, align 4
  %or.i.i.i = or i32 %35, %33
  %and.i.i.i = and i32 %or.i.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %33)
  %cmp.i.i.i = icmp eq i32 %33, 1026
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i32 128, i32 %and.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  %36 = tail call i32 @llvm.ctlz.i32(i32 %spec.store.select.i.i.i, i1 true) #8, !range !187
  %sub.i.i.i272.i = sub nuw nsw i32 32, %36
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i272.i
  %arrayidx.i.i = getelementptr [9 x ptr], ptr @task_state_array, i32 0, i32 %cond.i.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef %38) #8
  %conv.i = sext i32 %call.i260.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.11, i64 noundef %conv.i) #8
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.12, i64 noundef 0) #8
  %call55.i = tail call i32 @pid_nr_ns(ptr noundef %pid, ptr noundef %ns) #8
  %conv56.i = sext i32 %call55.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.13, i64 noundef %conv56.i) #8
  %conv57.i = sext i32 %cond.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.14, i64 noundef %conv57.i) #8
  %conv58.i = sext i32 %tpid.0.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.15, i64 noundef %conv58.i) #8
  %uid.i = getelementptr inbounds %struct.cred, ptr %call20.i, i32 0, i32 4
  %39 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %40 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call59.i = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %40) #8
  %conv60.i = zext i32 %call59.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.16, i64 noundef %conv60.i) #8
  %euid.i = getelementptr inbounds %struct.cred, ptr %call20.i, i32 0, i32 8
  %41 = ptrtoint ptr %euid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack244.i = load i32, ptr %euid.i, align 4
  %42 = insertvalue [1 x i32] undef, i32 %.unpack244.i, 0
  %call62.i = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %42) #8
  %conv63.i = zext i32 %call62.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv63.i) #8
  %suid.i = getelementptr inbounds %struct.cred, ptr %call20.i, i32 0, i32 6
  %43 = ptrtoint ptr %suid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack245.i = load i32, ptr %suid.i, align 4
  %44 = insertvalue [1 x i32] undef, i32 %.unpack245.i, 0
  %call65.i = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %44) #8
  %conv66.i = zext i32 %call65.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv66.i) #8
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %call20.i, i32 0, i32 10
  %45 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack246.i = load i32, ptr %fsuid.i, align 4
  %46 = insertvalue [1 x i32] undef, i32 %.unpack246.i, 0
  %call68.i = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %46) #8
  %conv69.i = zext i32 %call68.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv69.i) #8
  %gid.i = getelementptr inbounds %struct.cred, ptr %call20.i, i32 0, i32 5
  %47 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack247.i = load i32, ptr %gid.i, align 4
  %48 = insertvalue [1 x i32] undef, i32 %.unpack247.i, 0
  %call71.i = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %48) #8
  %conv72.i = zext i32 %call71.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.18, i64 noundef %conv72.i) #8
  %egid.i = getelementptr inbounds %struct.cred, ptr %call20.i, i32 0, i32 9
  %49 = ptrtoint ptr %egid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack248.i = load i32, ptr %egid.i, align 4
  %50 = insertvalue [1 x i32] undef, i32 %.unpack248.i, 0
  %call74.i = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %50) #8
  %conv75.i = zext i32 %call74.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv75.i) #8
  %sgid.i = getelementptr inbounds %struct.cred, ptr %call20.i, i32 0, i32 7
  %51 = ptrtoint ptr %sgid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.unpack249.i = load i32, ptr %sgid.i, align 4
  %52 = insertvalue [1 x i32] undef, i32 %.unpack249.i, 0
  %call77.i = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %52) #8
  %conv78.i = zext i32 %call77.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv78.i) #8
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %call20.i, i32 0, i32 11
  %53 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.unpack250.i = load i32, ptr %fsgid.i, align 4
  %54 = insertvalue [1 x i32] undef, i32 %.unpack250.i, 0
  %call80.i = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %54) #8
  %conv81.i = zext i32 %call80.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv81.i) #8
  %conv82.i = zext i32 %max_fds.0.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.19, i64 noundef %conv82.i) #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.20) #8
  %group_info83.i = getelementptr inbounds %struct.cred, ptr %call20.i, i32 0, i32 27
  %55 = ptrtoint ptr %group_info83.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %group_info83.i, align 4
  %ngroups.i = getelementptr inbounds %struct.group_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp84280.i = icmp sgt i32 %58, 0
  br i1 %cmp84280.i, label %if.end52.i.for.body.i_crit_edge, label %if.end52.i.for.end.i_crit_edge

if.end52.i.for.end.i_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end52.i.for.body.i_crit_edge:                  ; preds = %if.end52.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end52.i.for.body.i_crit_edge
  %g.0281.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end52.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %g.0281.i)
  %tobool86.not.i = icmp eq i32 %g.0281.i, 0
  %cond87.i = select i1 %tobool86.not.i, ptr @.str.3, ptr @.str.4
  %arrayidx.i = getelementptr %struct.group_info, ptr %56, i32 0, i32 2, i32 %g.0281.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack251.i = load i32, ptr %arrayidx.i, align 4
  %60 = insertvalue [1 x i32] undef, i32 %.unpack251.i, 0
  %call90.i = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %60) #8
  %conv91.i = zext i32 %call90.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull %cond87.i, i64 noundef %conv91.i) #8
  %inc.i = add nuw nsw i32 %g.0281.i, 1
  %61 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ngroups.i, align 4
  %cmp84.i = icmp slt i32 %inc.i, %62
  br i1 %cmp84.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end52.i.for.end.i_crit_edge
  %tobool.not.i273.i = icmp eq ptr %call20.i, null
  br i1 %tobool.not.i273.i, label %for.end.i.put_cred.exit.i_crit_edge, label %do.body.i.i

for.end.i.put_cred.exit.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit.i

do.body.i.i:                                      ; preds = %for.end.i
  %call.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call20.i) #8
  br i1 %call.i.i.i, label %if.then.i.i.i, label %do.body.i.i.__validate_creds.exit.i.i_crit_edge, !prof !188

do.body.i.i.__validate_creds.exit.i.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_creds.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__invalid_creds(ptr noundef nonnull %call20.i, ptr noundef nonnull @.str.38, i32 noundef 286) #8
  br label %__validate_creds.exit.i.i

__validate_creds.exit.i.i:                        ; preds = %if.then.i.i.i, %do.body.i.i.__validate_creds.exit.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call20.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @llvm.prefetch.p0(ptr nonnull %call20.i, i32 1, i32 3, i32 1) #8
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call20.i, ptr nonnull %call20.i, i32 1, ptr nonnull elementtype(i32) %call20.i) #8, !srcloc !190
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then1.i.i, label %__validate_creds.exit.i.i.put_cred.exit.i_crit_edge

__validate_creds.exit.i.i.put_cred.exit.i_crit_edge: ; preds = %__validate_creds.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_cred.exit.i

if.then1.i.i:                                     ; preds = %__validate_creds.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_cred(ptr noundef nonnull %call20.i) #8
  br label %put_cred.exit.i

put_cred.exit.i:                                  ; preds = %if.then1.i.i, %__validate_creds.exit.i.i.put_cred.exit.i_crit_edge, %for.end.i.put_cred.exit.i_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.21) #8
  %level.i = getelementptr inbounds %struct.pid_namespace, ptr %ns, i32 0, i32 5
  %64 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %level.i, align 4
  %level93.i = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 1
  %66 = ptrtoint ptr %level93.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %level93.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp94.not282.i = icmp ugt i32 %65, %67
  br i1 %cmp94.not282.i, label %put_cred.exit.i.for.end103.i_crit_edge, label %put_cred.exit.i.for.body96.i_crit_edge

put_cred.exit.i.for.body96.i_crit_edge:           ; preds = %put_cred.exit.i
  br label %for.body96.i

put_cred.exit.i.for.end103.i_crit_edge:           ; preds = %put_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end103.i

for.body96.i:                                     ; preds = %for.body96.i.for.body96.i_crit_edge, %put_cred.exit.i.for.body96.i_crit_edge
  %g.1283.i = phi i32 [ %inc102.i, %for.body96.i.for.body96.i_crit_edge ], [ %65, %put_cred.exit.i.for.body96.i_crit_edge ]
  %ns98.i = getelementptr %struct.pid, ptr %pid, i32 0, i32 7, i32 %g.1283.i, i32 1
  %68 = ptrtoint ptr %ns98.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ns98.i, align 4
  %call.i274.i = tail call i32 @__task_pid_nr_ns(ptr noundef %task, i32 noundef 1, ptr noundef %69) #8
  %conv100.i = sext i32 %call.i274.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv100.i) #8
  %inc102.i = add i32 %g.1283.i, 1
  %70 = ptrtoint ptr %level93.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %level93.i, align 4
  %cmp94.not.i = icmp ugt i32 %inc102.i, %71
  br i1 %cmp94.not.i, label %for.body96.i.for.end103.i_crit_edge, label %for.body96.i.for.body96.i_crit_edge

for.body96.i.for.body96.i_crit_edge:              ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body96.i

for.body96.i.for.end103.i_crit_edge:              ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end103.i

for.end103.i:                                     ; preds = %for.body96.i.for.end103.i_crit_edge, %put_cred.exit.i.for.end103.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.22) #8
  %72 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %level.i, align 4
  %74 = ptrtoint ptr %level93.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %level93.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp107.not284.i = icmp ugt i32 %73, %75
  br i1 %cmp107.not284.i, label %for.end103.i.for.end117.i_crit_edge, label %for.end103.i.for.body109.i_crit_edge

for.end103.i.for.body109.i_crit_edge:             ; preds = %for.end103.i
  br label %for.body109.i

for.end103.i.for.end117.i_crit_edge:              ; preds = %for.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end117.i

for.body109.i:                                    ; preds = %for.body109.i.for.body109.i_crit_edge, %for.end103.i.for.body109.i_crit_edge
  %g.2285.i = phi i32 [ %inc116.i, %for.body109.i.for.body109.i_crit_edge ], [ %73, %for.end103.i.for.body109.i_crit_edge ]
  %ns112.i = getelementptr %struct.pid, ptr %pid, i32 0, i32 7, i32 %g.2285.i, i32 1
  %76 = ptrtoint ptr %ns112.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ns112.i, align 4
  %call.i275.i = tail call i32 @__task_pid_nr_ns(ptr noundef %task, i32 noundef 0, ptr noundef %77) #8
  %conv114.i = sext i32 %call.i275.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv114.i) #8
  %inc116.i = add i32 %g.2285.i, 1
  %78 = ptrtoint ptr %level93.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %level93.i, align 4
  %cmp107.not.i = icmp ugt i32 %inc116.i, %79
  br i1 %cmp107.not.i, label %for.body109.i.for.end117.i_crit_edge, label %for.body109.i.for.body109.i_crit_edge

for.body109.i.for.body109.i_crit_edge:            ; preds = %for.body109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body109.i

for.body109.i.for.end117.i_crit_edge:             ; preds = %for.body109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end117.i

for.end117.i:                                     ; preds = %for.body109.i.for.end117.i_crit_edge, %for.end103.i.for.end117.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.23) #8
  %80 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %level.i, align 4
  %82 = ptrtoint ptr %level93.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %level93.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp121.not286.i = icmp ugt i32 %81, %83
  br i1 %cmp121.not286.i, label %for.end117.i.for.end131.i_crit_edge, label %for.end117.i.for.body123.i_crit_edge

for.end117.i.for.body123.i_crit_edge:             ; preds = %for.end117.i
  br label %for.body123.i

for.end117.i.for.end131.i_crit_edge:              ; preds = %for.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end131.i

for.body123.i:                                    ; preds = %for.body123.i.for.body123.i_crit_edge, %for.end117.i.for.body123.i_crit_edge
  %g.3287.i = phi i32 [ %inc130.i, %for.body123.i.for.body123.i_crit_edge ], [ %81, %for.end117.i.for.body123.i_crit_edge ]
  %ns126.i = getelementptr %struct.pid, ptr %pid, i32 0, i32 7, i32 %g.3287.i, i32 1
  %84 = ptrtoint ptr %ns126.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ns126.i, align 4
  %call.i276.i = tail call i32 @__task_pid_nr_ns(ptr noundef %task, i32 noundef 2, ptr noundef %85) #8
  %conv128.i = sext i32 %call.i276.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv128.i) #8
  %inc130.i = add i32 %g.3287.i, 1
  %86 = ptrtoint ptr %level93.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %level93.i, align 4
  %cmp121.not.i = icmp ugt i32 %inc130.i, %87
  br i1 %cmp121.not.i, label %for.body123.i.for.end131.i_crit_edge, label %for.body123.i.for.body123.i_crit_edge

for.body123.i.for.body123.i_crit_edge:            ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body123.i

for.body123.i.for.end131.i_crit_edge:             ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end131.i

for.end131.i:                                     ; preds = %for.body123.i.for.end131.i_crit_edge, %for.end117.i.for.end131.i_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.24) #8
  %88 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %level.i, align 4
  %90 = ptrtoint ptr %level93.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %level93.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp135.not288.i = icmp ugt i32 %89, %91
  br i1 %cmp135.not288.i, label %for.end131.i.task_state.exit_crit_edge, label %for.end131.i.for.body137.i_crit_edge

for.end131.i.for.body137.i_crit_edge:             ; preds = %for.end131.i
  br label %for.body137.i

for.end131.i.task_state.exit_crit_edge:           ; preds = %for.end131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_state.exit

for.body137.i:                                    ; preds = %for.body137.i.for.body137.i_crit_edge, %for.end131.i.for.body137.i_crit_edge
  %g.4289.i = phi i32 [ %inc144.i, %for.body137.i.for.body137.i_crit_edge ], [ %89, %for.end131.i.for.body137.i_crit_edge ]
  %ns140.i = getelementptr %struct.pid, ptr %pid, i32 0, i32 7, i32 %g.4289.i, i32 1
  %92 = ptrtoint ptr %ns140.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ns140.i, align 4
  %call.i277.i = tail call i32 @__task_pid_nr_ns(ptr noundef %task, i32 noundef 3, ptr noundef %93) #8
  %conv142.i = sext i32 %call.i277.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv142.i) #8
  %inc144.i = add i32 %g.4289.i, 1
  %94 = ptrtoint ptr %level93.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %level93.i, align 4
  %cmp135.not.i = icmp ugt i32 %inc144.i, %95
  br i1 %cmp135.not.i, label %for.body137.i.task_state.exit_crit_edge, label %for.body137.i.for.body137.i_crit_edge

for.body137.i.for.body137.i_crit_edge:            ; preds = %for.body137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body137.i

for.body137.i.task_state.exit_crit_edge:          ; preds = %for.body137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_state.exit

task_state.exit:                                  ; preds = %for.body137.i.task_state.exit_crit_edge, %for.end131.i.task_state.exit_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %task_state.exit.if.end_crit_edge, label %if.then

task_state.exit.if.end_crit_edge:                 ; preds = %task_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %task_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @task_mem(ptr noundef %m, ptr noundef nonnull %call) #8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %96 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %signal.i, align 16
  %core_state.i = getelementptr inbounds %struct.signal_struct, ptr %97, i32 0, i32 13
  %98 = ptrtoint ptr %core_state.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %core_state.i, align 4
  %tobool.i = icmp ne ptr %99, null
  %100 = zext i1 %tobool.i to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.39, i64 noundef %100) #8
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef 0) #8
  tail call void @mmput(ptr noundef nonnull %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %task_state.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #8
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %flags.i, align 4, !annotation !192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pending.i) #8
  %102 = getelementptr inbounds [2 x i32], ptr %pending.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shpending.i) #8
  %103 = getelementptr inbounds [2 x i32], ptr %shpending.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocked.i) #8
  %104 = getelementptr inbounds [2 x i32], ptr %blocked.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ignored.i) #8
  %105 = getelementptr inbounds [2 x i32], ptr %ignored.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %caught.i) #8
  %106 = getelementptr inbounds [2 x i32], ptr %caught.i, i32 0, i32 1
  %107 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %102, align 4
  %108 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %pending.i, align 8
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %103, align 4
  %110 = ptrtoint ptr %shpending.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %shpending.i, align 8
  %111 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %104, align 4
  %112 = ptrtoint ptr %blocked.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %blocked.i, align 8
  %113 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %105, align 4
  %114 = ptrtoint ptr %ignored.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %ignored.i, align 4
  %115 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %106, align 4
  %116 = ptrtoint ptr %caught.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %caught.i, align 4
  %call.i54.i = call ptr @__lock_task_sighand(ptr noundef %task, ptr noundef nonnull %flags.i) #8
  %tobool.not.i = icmp eq ptr %call.i54.i, null
  br i1 %tobool.not.i, label %if.end.task_sig.exit_crit_edge, label %if.then.i26

if.end.task_sig.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_sig.exit

if.then.i26:                                      ; preds = %if.end
  %signal.i25 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 116, i32 1
  %117 = ptrtoint ptr %signal.i25 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %signal.i25, align 8
  %119 = ptrtoint ptr %pending.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %pending.i, align 8
  %signal2.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %120 = ptrtoint ptr %signal2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %signal2.i, align 16
  %signal3.i = getelementptr inbounds %struct.signal_struct, ptr %121, i32 0, i32 6, i32 1
  %122 = ptrtoint ptr %signal3.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 8)
  %123 = load i64, ptr %signal3.i, align 4
  %124 = ptrtoint ptr %shpending.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %shpending.i, align 8
  %blocked4.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 113
  %125 = ptrtoint ptr %blocked4.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %blocked4.i, align 8
  %127 = ptrtoint ptr %blocked.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %blocked.i, align 8
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 112
  %128 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sighand.i.i, align 4
  %action.i.i = getelementptr inbounds %struct.sighand_struct, ptr %129, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i26
  %i.019.i.i = phi i32 [ 1, %if.then.i26 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %k.018.i.i = phi ptr [ %action.i.i, %if.then.i26 ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %130 = ptrtoint ptr %k.018.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %k.018.i.i, align 4
  %magicptr.i.i = ptrtoint ptr %131 to i32
  %132 = zext i32 %magicptr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i.i, label %if.then5.i.i [
    i32 1, label %for.body.i.i.for.inc.sink.split.i.i_crit_edge
    i32 0, label %for.body.i.i.for.inc.i.i_crit_edge
  ]

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.body.i.i.for.inc.sink.split.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i.i

for.inc.sink.split.i.i:                           ; preds = %if.then5.i.i, %for.body.i.i.for.inc.sink.split.i.i_crit_edge
  %sigcatch.sink.i.i = phi ptr [ %caught.i, %if.then5.i.i ], [ %ignored.i, %for.body.i.i.for.inc.sink.split.i.i_crit_edge ]
  %sub.i12.i.i = add nsw i32 %i.019.i.i, -1
  %rem.i13.i.i = and i32 %sub.i12.i.i, 31
  %shl.i14.i.i = shl nuw i32 1, %rem.i13.i.i
  %div3.i15.i.i = lshr i32 %sub.i12.i.i, 5
  %arrayidx.i16.i.i = getelementptr [2 x i32], ptr %sigcatch.sink.i.i, i32 0, i32 %div3.i15.i.i
  %133 = ptrtoint ptr %arrayidx.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i16.i.i, align 4
  %or.i.i.i27 = or i32 %134, %shl.i14.i.i
  store i32 %or.i.i.i27, ptr %arrayidx.i16.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.k_sigaction, ptr %k.018.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 65
  br i1 %exitcond.not.i.i, label %collect_sigign_sigcatch.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

collect_sigign_sigcatch.exit.i:                   ; preds = %for.inc.i.i
  %nr_threads.i.i = getelementptr inbounds %struct.signal_struct, ptr %121, i32 0, i32 2
  %135 = ptrtoint ptr %nr_threads.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %nr_threads.i.i, align 8
  %137 = call i32 @llvm.read_register.i32(metadata !174) #8
  %and.i.i.i.i.i.i28 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %preempt_count.i.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %preempt_count.i.i.i.i.i29, align 4
  %add.i.i.i.i30 = add i32 %140, 1
  store volatile i32 %add.i.i.i.i30, ptr %preempt_count.i.i.i.i.i29, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i31 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i31, label %collect_sigign_sigcatch.exit.i.rcu_read_lock.exit.i38_crit_edge, label %land.lhs.true.i.i34

collect_sigign_sigcatch.exit.i.rcu_read_lock.exit.i38_crit_edge: ; preds = %collect_sigign_sigcatch.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i38

land.lhs.true.i.i34:                              ; preds = %collect_sigign_sigcatch.exit.i
  %call1.i.i32 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %call1.i.i32, 0
  br i1 %tobool.not.i.i33, label %land.lhs.true.i.i34.rcu_read_lock.exit.i38_crit_edge, label %land.lhs.true2.i.i36

land.lhs.true.i.i34.rcu_read_lock.exit.i38_crit_edge: ; preds = %land.lhs.true.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i38

land.lhs.true2.i.i36:                             ; preds = %land.lhs.true.i.i34
  %.b4.i.i35 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i35, label %land.lhs.true2.i.i36.rcu_read_lock.exit.i38_crit_edge, label %if.then.i.i37

land.lhs.true2.i.i36.rcu_read_lock.exit.i38_crit_edge: ; preds = %land.lhs.true2.i.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i38

if.then.i.i37:                                    ; preds = %land.lhs.true2.i.i36
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 696, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_lock.exit.i38

rcu_read_lock.exit.i38:                           ; preds = %if.then.i.i37, %land.lhs.true2.i.i36.rcu_read_lock.exit.i38_crit_edge, %land.lhs.true.i.i34.rcu_read_lock.exit.i38_crit_edge, %collect_sigign_sigcatch.exit.i.rcu_read_lock.exit.i38_crit_edge
  %141 = call i32 @llvm.read_register.i32(metadata !174) #8
  %and.i.i.i.i.i39.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i.i.i.i.i39.i to ptr
  %preempt_count.i.i.i.i40.i = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %preempt_count.i.i.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %preempt_count.i.i.i.i40.i, align 4
  %add.i.i.i41.i = add i32 %144, 1
  store volatile i32 %add.i.i.i41.i, ptr %preempt_count.i.i.i.i40.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i42.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i42.i, label %rcu_read_lock.exit.i38.rcu_read_lock.exit49.i_crit_edge, label %land.lhs.true.i45.i

rcu_read_lock.exit.i38.rcu_read_lock.exit49.i_crit_edge: ; preds = %rcu_read_lock.exit.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit49.i

land.lhs.true.i45.i:                              ; preds = %rcu_read_lock.exit.i38
  %call1.i43.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.i)
  %tobool.not.i44.i = icmp eq i32 %call1.i43.i, 0
  br i1 %tobool.not.i44.i, label %land.lhs.true.i45.i.rcu_read_lock.exit49.i_crit_edge, label %land.lhs.true2.i47.i

land.lhs.true.i45.i.rcu_read_lock.exit49.i_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit49.i

land.lhs.true2.i47.i:                             ; preds = %land.lhs.true.i45.i
  %.b4.i46.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i46.i, label %land.lhs.true2.i47.i.rcu_read_lock.exit49.i_crit_edge, label %if.then.i48.i

land.lhs.true2.i47.i.rcu_read_lock.exit49.i_crit_edge: ; preds = %land.lhs.true2.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit49.i

if.then.i48.i:                                    ; preds = %land.lhs.true2.i47.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 696, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_lock.exit49.i

rcu_read_lock.exit49.i:                           ; preds = %if.then.i48.i, %land.lhs.true2.i47.i.rcu_read_lock.exit49.i_crit_edge, %land.lhs.true.i45.i.rcu_read_lock.exit49.i_crit_edge, %rcu_read_lock.exit.i38.rcu_read_lock.exit49.i_crit_edge
  %real_cred.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 98
  %145 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %real_cred.i, align 4
  %call7.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i39, label %rcu_read_lock.exit49.i.do.end15.i_crit_edge

rcu_read_lock.exit49.i.do.end15.i_crit_edge:      ; preds = %rcu_read_lock.exit49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15.i

land.lhs.true.i39:                                ; preds = %rcu_read_lock.exit49.i
  %call9.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i39.do.end15.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i39.do.end15.i_crit_edge:           ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i39
  %.b38.i = load i1, ptr @task_sig.__warned, align 1
  br i1 %.b38.i, label %land.lhs.true11.i.do.end15.i_crit_edge, label %if.then13.i

land.lhs.true11.i.do.end15.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15.i

if.then13.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_sig.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 280, ptr noundef nonnull @.str.7) #8
  br label %do.end15.i

do.end15.i:                                       ; preds = %if.then13.i, %land.lhs.true11.i.do.end15.i_crit_edge, %land.lhs.true.i39.do.end15.i_crit_edge, %rcu_read_lock.exit49.i.do.end15.i_crit_edge
  %ucounts.i = getelementptr inbounds %struct.cred, ptr %146, i32 0, i32 26
  %147 = ptrtoint ptr %ucounts.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ucounts.i, align 4
  %call.i55.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i55.i, label %do.end15.i.rcu_read_unlock.exit.i42_crit_edge, label %land.lhs.true.i58.i

do.end15.i.rcu_read_unlock.exit.i42_crit_edge:    ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i42

land.lhs.true.i58.i:                              ; preds = %do.end15.i
  %call1.i56.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call1.i56.i, 0
  br i1 %tobool.not.i57.i, label %land.lhs.true.i58.i.rcu_read_unlock.exit.i42_crit_edge, label %land.lhs.true2.i60.i

land.lhs.true.i58.i.rcu_read_unlock.exit.i42_crit_edge: ; preds = %land.lhs.true.i58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i42

land.lhs.true2.i60.i:                             ; preds = %land.lhs.true.i58.i
  %.b4.i59.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59.i, label %land.lhs.true2.i60.i.rcu_read_unlock.exit.i42_crit_edge, label %if.then.i61.i

land.lhs.true2.i60.i.rcu_read_unlock.exit.i42_crit_edge: ; preds = %land.lhs.true2.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i42

if.then.i61.i:                                    ; preds = %land.lhs.true2.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.28) #8
  br label %rcu_read_unlock.exit.i42

rcu_read_unlock.exit.i42:                         ; preds = %if.then.i61.i, %land.lhs.true2.i60.i.rcu_read_unlock.exit.i42_crit_edge, %land.lhs.true.i58.i.rcu_read_unlock.exit.i42_crit_edge, %do.end15.i.rcu_read_unlock.exit.i42_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !186
  %149 = call i32 @llvm.read_register.i32(metadata !174) #8
  %and.i.i.i.i.i62.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i.i.i.i62.i to ptr
  %preempt_count.i.i.i.i63.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %preempt_count.i.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %preempt_count.i.i.i.i63.i, align 4
  %sub.i.i.i.i40 = add i32 %152, -1
  store volatile i32 %sub.i.i.i.i40, ptr %preempt_count.i.i.i.i63.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %arrayidx.i64.i = getelementptr %struct.ucounts, ptr %148, i32 0, i32 4, i32 14
  %call.i.i.i.i41 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i64.i, i32 noundef 4) #8
  %153 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %arrayidx.i64.i, align 4
  %call.i65.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i65.i, label %rcu_read_unlock.exit.i42.rcu_read_unlock.exit75.i_crit_edge, label %land.lhs.true.i68.i

rcu_read_unlock.exit.i42.rcu_read_unlock.exit75.i_crit_edge: ; preds = %rcu_read_unlock.exit.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit75.i

land.lhs.true.i68.i:                              ; preds = %rcu_read_unlock.exit.i42
  %call1.i66.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66.i)
  %tobool.not.i67.i = icmp eq i32 %call1.i66.i, 0
  br i1 %tobool.not.i67.i, label %land.lhs.true.i68.i.rcu_read_unlock.exit75.i_crit_edge, label %land.lhs.true2.i70.i

land.lhs.true.i68.i.rcu_read_unlock.exit75.i_crit_edge: ; preds = %land.lhs.true.i68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit75.i

land.lhs.true2.i70.i:                             ; preds = %land.lhs.true.i68.i
  %.b4.i69.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i69.i, label %land.lhs.true2.i70.i.rcu_read_unlock.exit75.i_crit_edge, label %if.then.i71.i

land.lhs.true2.i70.i.rcu_read_unlock.exit75.i_crit_edge: ; preds = %land.lhs.true2.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit75.i

if.then.i71.i:                                    ; preds = %land.lhs.true2.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.28) #8
  br label %rcu_read_unlock.exit75.i

rcu_read_unlock.exit75.i:                         ; preds = %if.then.i71.i, %land.lhs.true2.i70.i.rcu_read_unlock.exit75.i_crit_edge, %land.lhs.true.i68.i.rcu_read_unlock.exit75.i_crit_edge, %rcu_read_unlock.exit.i42.rcu_read_unlock.exit75.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !186
  %155 = call i32 @llvm.read_register.i32(metadata !174) #8
  %and.i.i.i.i.i72.i = and i32 %155, -16384
  %156 = inttoptr i32 %and.i.i.i.i.i72.i to ptr
  %preempt_count.i.i.i.i73.i = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %preempt_count.i.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %preempt_count.i.i.i.i73.i, align 4
  %sub.i.i.i74.i = add i32 %158, -1
  store volatile i32 %sub.i.i.i74.i, ptr %preempt_count.i.i.i.i73.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %159 = ptrtoint ptr %signal2.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %signal2.i, align 16
  %arrayidx.i77.i = getelementptr %struct.signal_struct, ptr %160, i32 0, i32 51, i32 11
  %161 = ptrtoint ptr %arrayidx.i77.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %arrayidx.i77.i, align 8
  %163 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %sighand.i.i, align 4
  %165 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flags.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %164, i32 noundef %166) #8
  br label %task_sig.exit

task_sig.exit:                                    ; preds = %rcu_read_unlock.exit75.i, %if.end.task_sig.exit_crit_edge
  %qlim.0.i = phi i32 [ %162, %rcu_read_unlock.exit75.i ], [ 0, %if.end.task_sig.exit_crit_edge ]
  %qsize.0.i = phi i32 [ %154, %rcu_read_unlock.exit75.i ], [ 0, %if.end.task_sig.exit_crit_edge ]
  %num_threads.0.i = phi i32 [ %136, %rcu_read_unlock.exit75.i ], [ 0, %if.end.task_sig.exit_crit_edge ]
  %conv.i43 = sext i32 %num_threads.0.i to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.41, i64 noundef %conv.i43) #8
  %conv21.i = zext i32 %qsize.0.i to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.42, i64 noundef %conv21.i) #8
  %conv22.i = zext i32 %qlim.0.i to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.43, i64 noundef %conv22.i) #8
  call void @render_sigset_t(ptr noundef %m, ptr noundef nonnull @.str.44, ptr noundef nonnull %pending.i) #8
  call void @render_sigset_t(ptr noundef %m, ptr noundef nonnull @.str.45, ptr noundef nonnull %shpending.i) #8
  call void @render_sigset_t(ptr noundef %m, ptr noundef nonnull @.str.46, ptr noundef nonnull %blocked.i) #8
  call void @render_sigset_t(ptr noundef %m, ptr noundef nonnull @.str.47, ptr noundef nonnull %ignored.i) #8
  call void @render_sigset_t(ptr noundef %m, ptr noundef nonnull @.str.48, ptr noundef nonnull %caught.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %caught.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ignored.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocked.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shpending.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pending.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #8
  %167 = call i32 @llvm.read_register.i32(metadata !174) #8
  %and.i.i.i.i.i.i44 = and i32 %167, -16384
  %168 = inttoptr i32 %and.i.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %preempt_count.i.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %preempt_count.i.i.i.i.i45, align 4
  %add.i.i.i.i46 = add i32 %170, 1
  store volatile i32 %add.i.i.i.i46, ptr %preempt_count.i.i.i.i.i45, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !184
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i47 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i47, label %task_sig.exit.rcu_read_lock.exit.i56_crit_edge, label %land.lhs.true.i.i50

task_sig.exit.rcu_read_lock.exit.i56_crit_edge:   ; preds = %task_sig.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i56

land.lhs.true.i.i50:                              ; preds = %task_sig.exit
  %call1.i.i48 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i48)
  %tobool.not.i.i49 = icmp eq i32 %call1.i.i48, 0
  br i1 %tobool.not.i.i49, label %land.lhs.true.i.i50.rcu_read_lock.exit.i56_crit_edge, label %land.lhs.true2.i.i52

land.lhs.true.i.i50.rcu_read_lock.exit.i56_crit_edge: ; preds = %land.lhs.true.i.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i56

land.lhs.true2.i.i52:                             ; preds = %land.lhs.true.i.i50
  %.b4.i.i51 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i51, label %land.lhs.true2.i.i52.rcu_read_lock.exit.i56_crit_edge, label %if.then.i.i53

land.lhs.true2.i.i52.rcu_read_lock.exit.i56_crit_edge: ; preds = %land.lhs.true2.i.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i56

if.then.i.i53:                                    ; preds = %land.lhs.true2.i.i52
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 696, ptr noundef nonnull @.str.26) #8
  br label %rcu_read_lock.exit.i56

rcu_read_lock.exit.i56:                           ; preds = %if.then.i.i53, %land.lhs.true2.i.i52.rcu_read_lock.exit.i56_crit_edge, %land.lhs.true.i.i50.rcu_read_lock.exit.i56_crit_edge, %task_sig.exit.rcu_read_lock.exit.i56_crit_edge
  %real_cred.i54 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 98
  %171 = ptrtoint ptr %real_cred.i54 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile ptr, ptr %real_cred.i54, align 4
  %call.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i55 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i57, label %rcu_read_lock.exit.i56.do.end7.i_crit_edge

rcu_read_lock.exit.i56.do.end7.i_crit_edge:       ; preds = %rcu_read_lock.exit.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true.i57:                                ; preds = %rcu_read_lock.exit.i56
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i57.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i57.do.end7.i_crit_edge:            ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i57
  %.b22.i = load i1, ptr @task_cap.__warned, align 1
  br i1 %.b22.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i58

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

if.then.i58:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @task_cap.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 318, ptr noundef nonnull @.str.7) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i58, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i57.do.end7.i_crit_edge, %rcu_read_lock.exit.i56.do.end7.i_crit_edge
  %cap_inheritable9.i = getelementptr inbounds %struct.cred, ptr %172, i32 0, i32 13
  %173 = ptrtoint ptr %cap_inheritable9.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 8)
  %174 = load i64, ptr %cap_inheritable9.i, align 4
  %cap_permitted10.i = getelementptr inbounds %struct.cred, ptr %172, i32 0, i32 14
  %175 = ptrtoint ptr %cap_permitted10.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 8)
  %176 = load i64, ptr %cap_permitted10.i, align 4
  %cap_effective11.i = getelementptr inbounds %struct.cred, ptr %172, i32 0, i32 15
  %177 = ptrtoint ptr %cap_effective11.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 8)
  %178 = load i64, ptr %cap_effective11.i, align 4
  %cap_bset12.i = getelementptr inbounds %struct.cred, ptr %172, i32 0, i32 16
  %179 = ptrtoint ptr %cap_bset12.i to i32
  call void @__asan_loadN_noabort(i32 %179, i32 8)
  %180 = load i64, ptr %cap_bset12.i, align 4
  %cap_ambient13.i = getelementptr inbounds %struct.cred, ptr %172, i32 0, i32 17
  %181 = ptrtoint ptr %cap_ambient13.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 8)
  %182 = load i64, ptr %cap_ambient13.i, align 4
  %call.i23.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i23.i, label %do.end7.i.task_cap.exit_crit_edge, label %land.lhs.true.i26.i

do.end7.i.task_cap.exit_crit_edge:                ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_cap.exit

land.lhs.true.i26.i:                              ; preds = %do.end7.i
  %call1.i24.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call1.i24.i, 0
  br i1 %tobool.not.i25.i, label %land.lhs.true.i26.i.task_cap.exit_crit_edge, label %land.lhs.true2.i28.i

land.lhs.true.i26.i.task_cap.exit_crit_edge:      ; preds = %land.lhs.true.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_cap.exit

land.lhs.true2.i28.i:                             ; preds = %land.lhs.true.i26.i
  %.b4.i27.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27.i, label %land.lhs.true2.i28.i.task_cap.exit_crit_edge, label %if.then.i29.i

land.lhs.true2.i28.i.task_cap.exit_crit_edge:     ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_cap.exit

if.then.i29.i:                                    ; preds = %land.lhs.true2.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 724, ptr noundef nonnull @.str.28) #8
  br label %task_cap.exit

task_cap.exit:                                    ; preds = %if.then.i29.i, %land.lhs.true2.i28.i.task_cap.exit_crit_edge, %land.lhs.true.i26.i.task_cap.exit_crit_edge, %do.end7.i.task_cap.exit_crit_edge
  %cap_ambient.sroa.0.0.extract.shift.i = lshr i64 %182, 32
  %cap_bset.sroa.0.0.extract.shift.i = lshr i64 %180, 32
  %cap_effective.sroa.0.0.extract.shift.i = lshr i64 %178, 32
  %cap_permitted.sroa.0.0.extract.shift.i = lshr i64 %176, 32
  %cap_inheritable.sroa.0.0.extract.shift.i = lshr i64 %174, 32
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !186
  %183 = call i32 @llvm.read_register.i32(metadata !174) #8
  %and.i.i.i.i.i30.i = and i32 %183, -16384
  %184 = inttoptr i32 %and.i.i.i.i.i30.i to ptr
  %preempt_count.i.i.i.i31.i = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %preempt_count.i.i.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %preempt_count.i.i.i.i31.i, align 4
  %sub.i.i.i.i59 = add i32 %186, -1
  store volatile i32 %sub.i.i.i.i59, ptr %preempt_count.i.i.i.i31.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.49) #8
  %conv.i.i = and i64 %174, 4294967295
  call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %conv.i.i, i32 noundef 8) #8
  call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %cap_inheritable.sroa.0.0.extract.shift.i, i32 noundef 8) #8
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.50) #8
  %conv.i33.i = and i64 %176, 4294967295
  call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %conv.i33.i, i32 noundef 8) #8
  call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %cap_permitted.sroa.0.0.extract.shift.i, i32 noundef 8) #8
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.51) #8
  %conv.i36.i = and i64 %178, 4294967295
  call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %conv.i36.i, i32 noundef 8) #8
  call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %cap_effective.sroa.0.0.extract.shift.i, i32 noundef 8) #8
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.52) #8
  %conv.i39.i = and i64 %180, 4294967295
  call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %conv.i39.i, i32 noundef 8) #8
  call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %cap_bset.sroa.0.0.extract.shift.i, i32 noundef 8) #8
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.53) #8
  %conv.i42.i = and i64 %182, 4294967295
  call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %conv.i42.i, i32 noundef 8) #8
  call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %cap_ambient.sroa.0.0.extract.shift.i, i32 noundef 8) #8
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  %atomic_flags.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 66
  %187 = ptrtoint ptr %atomic_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %atomic_flags.i.i, align 4
  %and1.i.i.i = and i32 %188, 1
  %189 = zext i32 %and1.i.i.i to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.54, i64 noundef %189) #8
  %seccomp.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 123
  %190 = ptrtoint ptr %seccomp.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %seccomp.i, align 8
  %conv1.i = sext i32 %191 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.55, i64 noundef %conv1.i) #8
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.56) #8
  %call2.i61 = call i32 @arch_prctl_spec_ctrl_get(ptr noundef %task, i32 noundef 0) #8
  %192 = zext i32 %call2.i61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call2.i61, label %sw.default.i [
    i32 -22, label %task_cap.exit.sw.epilog.i_crit_edge
    i32 0, label %sw.bb3.i
    i32 9, label %sw.bb4.i
    i32 5, label %sw.bb5.i
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb7.i
  ]

task_cap.exit.sw.epilog.i_crit_edge:              ; preds = %task_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %task_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %task_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %task_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %task_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %task_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %task_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %task_cap.exit.sw.epilog.i_crit_edge
  %.str.63.sink.i = phi ptr [ @.str.63, %sw.default.i ], [ @.str.62, %sw.bb7.i ], [ @.str.61, %sw.bb6.i ], [ @.str.60, %sw.bb5.i ], [ @.str.59, %sw.bb4.i ], [ @.str.58, %sw.bb3.i ], [ @.str.57, %task_cap.exit.sw.epilog.i_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.63.sink.i) #8
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.64) #8
  %call8.i = call i32 @arch_prctl_spec_ctrl_get(ptr noundef %task, i32 noundef 1) #8
  %193 = zext i32 %call8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %193, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call8.i, label %sw.default16.i [
    i32 -22, label %sw.epilog.i.task_seccomp.exit_crit_edge
    i32 0, label %sw.bb10.i
    i32 9, label %sw.bb11.i
    i32 5, label %sw.bb12.i
    i32 3, label %sw.bb13.i
    i32 2, label %sw.bb14.i
    i32 4, label %sw.bb15.i
  ]

sw.epilog.i.task_seccomp.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_seccomp.exit

sw.bb10.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_seccomp.exit

sw.bb11.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_seccomp.exit

sw.bb12.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_seccomp.exit

sw.bb13.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_seccomp.exit

sw.bb14.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_seccomp.exit

sw.bb15.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_seccomp.exit

sw.default16.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %task_seccomp.exit

task_seccomp.exit:                                ; preds = %sw.default16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.epilog.i.task_seccomp.exit_crit_edge
  %.str.57.sink.i = phi ptr [ @.str.57, %sw.default16.i ], [ @.str.71, %sw.bb15.i ], [ @.str.70, %sw.bb14.i ], [ @.str.69, %sw.bb13.i ], [ @.str.68, %sw.bb12.i ], [ @.str.67, %sw.bb11.i ], [ @.str.66, %sw.bb10.i ], [ @.str.65, %sw.epilog.i.task_seccomp.exit_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.57.sink.i) #8
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %194 = load i32, ptr @nr_cpu_ids, align 4
  %cpus_mask.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 35
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %194, ptr noundef %cpus_mask.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %195 = load i32, ptr @nr_cpu_ids, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, i32 noundef %195, ptr noundef %cpus_mask.i) #8
  call void @cpuset_task_status_allowed(ptr noundef %m, ptr noundef %task) #8
  %nvcsw.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 90
  %196 = ptrtoint ptr %nvcsw.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %nvcsw.i, align 16
  %conv.i62 = zext i32 %197 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.74, i64 noundef %conv.i62) #8
  %nivcsw.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 91
  %198 = ptrtoint ptr %nivcsw.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %nivcsw.i, align 4
  %conv1.i63 = zext i32 %199 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.75, i64 noundef %conv1.i63) #8
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_mem(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuset_task_status_allowed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_tid_stat(ptr noundef %m, ptr noundef %ns, ptr noundef %pid, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_task_stat(ptr noundef %m, ptr noundef %ns, ptr noundef %pid, ptr noundef %task, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_task_stat(ptr noundef %m, ptr noundef %ns, ptr noundef %pid, ptr noundef %task, i32 noundef %whole) unnamed_addr #0 align 64 {
entry:
  %tcomm.i = alloca [64 x i8], align 1
  %sigign = alloca %struct.sigset_t, align 4
  %sigcatch = alloca %struct.sigset_t, align 4
  %utime = alloca i64, align 8
  %stime = alloca i64, align 8
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sigign) #8
  %0 = getelementptr inbounds [2 x i32], ptr %sigign, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sigcatch) #8
  %1 = getelementptr inbounds [2 x i32], ptr %sigcatch, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %utime) #8
  %2 = ptrtoint ptr %utime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %utime, align 8, !annotation !192
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stime) #8
  %3 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %stime, align 8, !annotation !192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !192
  %exit_code1 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 58
  %5 = ptrtoint ptr %exit_code1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %exit_code1, align 16
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %task, align 128
  %exit_state.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 57
  %9 = ptrtoint ptr %exit_state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %exit_state.i.i, align 4
  %or.i.i = or i32 %10, %8
  %and.i.i = and i32 %or.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1026, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 1026
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 128, i32 %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i)
  %tobool.not.i.i.i = icmp eq i32 %spec.store.select.i.i, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %spec.store.select.i.i, i1 true) #8, !range !187
  %sub.i.i.i = sub nuw nsw i32 32, %11
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %arrayidx.i = getelementptr [9 x ptr], ptr @task_state_array, i32 0, i32 %cond.i.i.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %call2 = tail call zeroext i1 @ptrace_may_access(ptr noundef %task, i32 noundef 13) #8
  %call3 = tail call ptr @get_task_mm(ptr noundef %task) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @task_vsize(ptr noundef nonnull %call3) #8
  br i1 %call2, label %land.lhs.true, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then
  %flags6 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %16 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags6, align 4
  %and = and i32 %17, 516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end19_crit_edge, label %if.then8

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then8:                                         ; preds = %land.lhs.true
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.then8.if.end19_crit_edge, label %if.then11

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %19, i32 16364
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %arrayidx17 = getelementptr i8, ptr %19, i32 16356
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then11, %if.then8.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  %esp.0 = phi i32 [ %23, %if.then11 ], [ 0, %if.then8.if.end19_crit_edge ], [ 0, %land.lhs.true.if.end19_crit_edge ], [ 0, %if.then.if.end19_crit_edge ], [ 0, %entry.if.end19_crit_edge ]
  %eip.0 = phi i32 [ %21, %if.then11 ], [ 0, %if.then8.if.end19_crit_edge ], [ 0, %land.lhs.true.if.end19_crit_edge ], [ 0, %if.then.if.end19_crit_edge ], [ 0, %entry.if.end19_crit_edge ]
  %vsize.0 = phi i32 [ %call4, %if.then11 ], [ %call4, %if.then8.if.end19_crit_edge ], [ %call4, %land.lhs.true.if.end19_crit_edge ], [ %call4, %if.then.if.end19_crit_edge ], [ 0, %entry.if.end19_crit_edge ]
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %0, align 4
  %25 = ptrtoint ptr %sigign to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sigign, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %1, align 4
  %27 = ptrtoint ptr %sigcatch to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %sigcatch, align 4
  %28 = ptrtoint ptr %stime to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %stime, align 8
  %29 = ptrtoint ptr %utime to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %utime, align 8
  %call.i = call ptr @__lock_task_sighand(ptr noundef %task, ptr noundef nonnull %flags) #8
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.end19.if.end66_crit_edge, label %if.then22

if.end19.if.end66_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then22:                                        ; preds = %if.end19
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %30 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %signal, align 16
  %tty = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 25
  %32 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tty, align 8
  %tobool23.not = icmp eq ptr %33, null
  br i1 %tobool23.not, label %if.then22.if.end31_crit_edge, label %if.then24

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call ptr @tty_get_pgrp(ptr noundef nonnull %33) #8
  %call27 = call i32 @pid_nr_ns(ptr noundef %call26, ptr noundef %ns) #8
  call void @put_pid(ptr noundef %call26) #8
  %34 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tty, align 8
  %call29 = call i32 @tty_devnum(ptr noundef %35) #8
  %and1.i = and i32 %call29, 255
  %36 = lshr i32 %call29, 12
  %shl.i = and i32 %36, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %call29, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %if.then22.if.end31_crit_edge
  %tty_pgrp.0 = phi i32 [ %call27, %if.then24 ], [ -1, %if.then22.if.end31_crit_edge ]
  %tty_nr.0 = phi i32 [ %or4.i, %if.then24 ], [ 0, %if.then22.if.end31_crit_edge ]
  %37 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %signal, align 16
  %nr_threads.i = getelementptr inbounds %struct.signal_struct, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %nr_threads.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_threads.i, align 8
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 112
  %41 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sighand.i, align 4
  %action.i = getelementptr inbounds %struct.sighand_struct, ptr %42, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end31
  %i.019.i = phi i32 [ 1, %if.end31 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %k.018.i = phi ptr [ %action.i, %if.end31 ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %43 = ptrtoint ptr %k.018.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %k.018.i, align 4
  %magicptr.i = ptrtoint ptr %44 to i32
  %45 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %magicptr.i, label %if.then5.i [
    i32 1, label %for.body.i.for.inc.sink.split.i_crit_edge
    i32 0, label %for.body.i.for.inc.i_crit_edge
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then5.i, %for.body.i.for.inc.sink.split.i_crit_edge
  %sigcatch.sink.i = phi ptr [ %sigcatch, %if.then5.i ], [ %sigign, %for.body.i.for.inc.sink.split.i_crit_edge ]
  %sub.i12.i = add nsw i32 %i.019.i, -1
  %rem.i13.i = and i32 %sub.i12.i, 31
  %shl.i14.i = shl nuw i32 1, %rem.i13.i
  %div3.i15.i = lshr i32 %sub.i12.i, 5
  %arrayidx.i16.i = getelementptr [2 x i32], ptr %sigcatch.sink.i, i32 0, i32 %div3.i15.i
  %46 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i16.i, align 4
  %or.i.i8 = or i32 %47, %shl.i14.i
  store i32 %or.i.i8, ptr %arrayidx.i16.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %incdec.ptr.i = getelementptr %struct.k_sigaction, ptr %k.018.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 65
  br i1 %exitcond.not.i, label %collect_sigign_sigcatch.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

collect_sigign_sigcatch.exit:                     ; preds = %for.inc.i
  %cmin_flt33 = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 41
  %48 = ptrtoint ptr %cmin_flt33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cmin_flt33, align 8
  %cmaj_flt34 = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 42
  %50 = ptrtoint ptr %cmaj_flt34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cmaj_flt34, align 4
  %cutime35 = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 30
  %52 = ptrtoint ptr %cutime35 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %cutime35, align 8
  %cstime36 = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 31
  %54 = ptrtoint ptr %cstime36 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %cstime36, align 8
  %cgtime37 = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 33
  %56 = ptrtoint ptr %cgtime37 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %cgtime37, align 8
  %arrayidx38 = getelementptr %struct.signal_struct, ptr %31, i32 0, i32 51, i32 5
  %58 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whole)
  %tobool39.not = icmp eq i32 %whole, 0
  br i1 %tobool39.not, label %collect_sigign_sigcatch.exit.if.end62_crit_edge, label %collect_sigign_sigcatch.exit.do.body41_crit_edge

collect_sigign_sigcatch.exit.do.body41_crit_edge: ; preds = %collect_sigign_sigcatch.exit
  br label %do.body41

collect_sigign_sigcatch.exit.if.end62_crit_edge:  ; preds = %collect_sigign_sigcatch.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.body41:                                        ; preds = %do.body41.do.body41_crit_edge, %collect_sigign_sigcatch.exit.do.body41_crit_edge
  %min_flt.0 = phi i32 [ %add, %do.body41.do.body41_crit_edge ], [ 0, %collect_sigign_sigcatch.exit.do.body41_crit_edge ]
  %maj_flt.0 = phi i32 [ %add44, %do.body41.do.body41_crit_edge ], [ 0, %collect_sigign_sigcatch.exit.do.body41_crit_edge ]
  %gtime.0 = phi i64 [ %add46, %do.body41.do.body41_crit_edge ], [ 0, %collect_sigign_sigcatch.exit.do.body41_crit_edge ]
  %t.0 = phi ptr [ %add.ptr.i, %do.body41.do.body41_crit_edge ], [ %task, %collect_sigign_sigcatch.exit.do.body41_crit_edge ]
  %min_flt42 = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 94
  %60 = ptrtoint ptr %min_flt42 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %min_flt42, align 8
  %add = add i32 %61, %min_flt.0
  %maj_flt43 = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 95
  %62 = ptrtoint ptr %maj_flt43 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %maj_flt43, align 4
  %add44 = add i32 %63, %maj_flt.0
  %gtime.i = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 88
  %64 = ptrtoint ptr %gtime.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %gtime.i, align 8
  %add46 = add i64 %65, %gtime.0
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %t.0, i32 0, i32 80
  %66 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %thread_group.i, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 -1396
  %cmp.not = icmp eq ptr %add.ptr.i, %task
  br i1 %cmp.not, label %do.end50, label %do.body41.do.body41_crit_edge

do.body41.do.body41_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

do.end50:                                         ; preds = %do.body41
  %min_flt51 = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 39
  %68 = ptrtoint ptr %min_flt51 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %min_flt51, align 8
  %add52 = add i32 %69, %add
  %maj_flt53 = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 40
  %70 = ptrtoint ptr %maj_flt53 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %maj_flt53, align 4
  %add54 = add i32 %71, %add44
  call void @thread_group_cputime_adjusted(ptr noundef %task, ptr noundef nonnull %utime, ptr noundef nonnull %stime) #8
  %gtime55 = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 32
  %72 = ptrtoint ptr %gtime55 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %gtime55, align 8
  %add56 = add i64 %73, %add46
  %flags57 = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 12
  %74 = ptrtoint ptr %flags57 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags57, align 8
  %and58 = and i32 %75, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.end50.if.end62_crit_edge, label %if.then60

do.end50.if.end62_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then60:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  %group_exit_code = getelementptr inbounds %struct.signal_struct, ptr %31, i32 0, i32 8
  %76 = ptrtoint ptr %group_exit_code to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %group_exit_code, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %do.end50.if.end62_crit_edge, %collect_sigign_sigcatch.exit.if.end62_crit_edge
  %min_flt.1 = phi i32 [ 0, %collect_sigign_sigcatch.exit.if.end62_crit_edge ], [ %add52, %if.then60 ], [ %add52, %do.end50.if.end62_crit_edge ]
  %maj_flt.1 = phi i32 [ 0, %collect_sigign_sigcatch.exit.if.end62_crit_edge ], [ %add54, %if.then60 ], [ %add54, %do.end50.if.end62_crit_edge ]
  %gtime.1 = phi i64 [ 0, %collect_sigign_sigcatch.exit.if.end62_crit_edge ], [ %add56, %if.then60 ], [ %add56, %do.end50.if.end62_crit_edge ]
  %exit_code.1 = phi i32 [ %6, %collect_sigign_sigcatch.exit.if.end62_crit_edge ], [ %77, %if.then60 ], [ %6, %do.end50.if.end62_crit_edge ]
  %call.i9 = call i32 @__task_pid_nr_ns(ptr noundef %task, i32 noundef 3, ptr noundef %ns) #8
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 71
  %78 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %real_parent, align 4
  %call.i10 = call i32 @__task_pid_nr_ns(ptr noundef %79, i32 noundef 1, ptr noundef %ns) #8
  %call.i11 = call i32 @__task_pid_nr_ns(ptr noundef %task, i32 noundef 2, ptr noundef %ns) #8
  %80 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sighand.i, align 4
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %81, i32 noundef %83) #8
  br label %if.end66

if.end66:                                         ; preds = %if.end62, %if.end19.if.end66_crit_edge
  %tty_pgrp.1 = phi i32 [ %tty_pgrp.0, %if.end62 ], [ -1, %if.end19.if.end66_crit_edge ]
  %tty_nr.1 = phi i32 [ %tty_nr.0, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %ppid.0 = phi i32 [ %call.i10, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %pgid.0 = phi i32 [ %call.i11, %if.end62 ], [ -1, %if.end19.if.end66_crit_edge ]
  %sid.0 = phi i32 [ %call.i9, %if.end62 ], [ -1, %if.end19.if.end66_crit_edge ]
  %num_threads.0 = phi i32 [ %40, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %cmin_flt.0 = phi i32 [ %49, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %cmaj_flt.0 = phi i32 [ %51, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %min_flt.2 = phi i32 [ %min_flt.1, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %maj_flt.2 = phi i32 [ %maj_flt.1, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %cutime.0 = phi i64 [ %53, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %cstime.0 = phi i64 [ %55, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %cgtime.0 = phi i64 [ %57, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %gtime.2 = phi i64 [ %gtime.1, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %rsslim.0 = phi i32 [ %59, %if.end62 ], [ 0, %if.end19.if.end66_crit_edge ]
  %exit_code.2 = phi i32 [ %exit_code.1, %if.end62 ], [ %6, %if.end19.if.end66_crit_edge ]
  br i1 %call2, label %land.lhs.true68, label %if.end66.if.end79_crit_edge

if.end66.if.end79_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.lhs.true68:                                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whole)
  %tobool69.not = icmp eq i32 %whole, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_threads.0)
  %cmp70 = icmp slt i32 %num_threads.0, 2
  %or.cond = select i1 %tobool69.not, i1 true, i1 %cmp70
  br i1 %or.cond, label %do.end75, label %land.lhs.true68.if.end85_crit_edge

land.lhs.true68.if.end85_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.end75:                                         ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %task, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp77 = icmp ne i32 %85, 0
  %lnot.ext = zext i1 %cmp77 to i32
  br label %if.end79

if.end79:                                         ; preds = %do.end75, %if.end66.if.end79_crit_edge
  %wchan.0 = phi i32 [ %lnot.ext, %do.end75 ], [ 0, %if.end66.if.end79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whole)
  %tobool80.not = icmp eq i32 %whole, 0
  br i1 %tobool80.not, label %if.then81, label %if.end79.if.end85_crit_edge

if.end79.if.end85_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %min_flt82 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 94
  %86 = ptrtoint ptr %min_flt82 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %min_flt82, align 8
  %maj_flt83 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 95
  %88 = ptrtoint ptr %maj_flt83 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %maj_flt83, align 4
  call void @task_cputime_adjusted(ptr noundef %task, ptr noundef nonnull %utime, ptr noundef nonnull %stime) #8
  %gtime.i13 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 88
  %90 = ptrtoint ptr %gtime.i13 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %gtime.i13, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end79.if.end85_crit_edge, %land.lhs.true68.if.end85_crit_edge
  %wchan.022 = phi i32 [ %wchan.0, %if.end79.if.end85_crit_edge ], [ %wchan.0, %if.then81 ], [ 0, %land.lhs.true68.if.end85_crit_edge ]
  %min_flt.3 = phi i32 [ %min_flt.2, %if.end79.if.end85_crit_edge ], [ %87, %if.then81 ], [ %min_flt.2, %land.lhs.true68.if.end85_crit_edge ]
  %maj_flt.3 = phi i32 [ %maj_flt.2, %if.end79.if.end85_crit_edge ], [ %89, %if.then81 ], [ %maj_flt.2, %land.lhs.true68.if.end85_crit_edge ]
  %gtime.3 = phi i64 [ %gtime.2, %if.end79.if.end85_crit_edge ], [ %91, %if.then81 ], [ %gtime.2, %land.lhs.true68.if.end85_crit_edge ]
  %call86 = call i32 @task_prio(ptr noundef %task) #8
  %static_prio.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 14
  %92 = ptrtoint ptr %static_prio.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %static_prio.i, align 4
  %sub.i = add i32 %93, -120
  %start_boottime = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 93
  %94 = ptrtoint ptr %start_boottime to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %start_boottime, align 128
  %call89 = call i64 @nsec_to_clock_t(i64 noundef %95) #8
  %call90 = call i32 @pid_nr_ns(ptr noundef %pid, ptr noundef %ns) #8
  %conv91 = sext i32 %call90 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.3, i64 noundef %conv91) #8
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.76) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tcomm.i) #8
  %96 = call ptr @memset(ptr %tcomm.i, i32 255, i32 64)
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %97 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  call void @wq_worker_comm(ptr noundef nonnull %tcomm.i, i32 noundef 64, ptr noundef %task) #8
  br label %proc_task_name.exit

if.else.i:                                        ; preds = %if.end85
  %and2.i14 = and i32 %98, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i14)
  %tobool3.not.i = icmp eq i32 %and2.i14, 0
  br i1 %tobool3.not.i, label %if.else6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @get_kthread_comm(ptr noundef nonnull %tcomm.i, i32 noundef 64, ptr noundef %task) #8
  br label %proc_task_name.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i15 = call ptr @__get_task_comm(ptr noundef nonnull %tcomm.i, i32 noundef 64, ptr noundef %task) #8
  br label %proc_task_name.exit

proc_task_name.exit:                              ; preds = %if.else6.i, %if.then4.i, %if.then.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, ptr noundef nonnull %tcomm.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tcomm.i) #8
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.77) #8
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext %15) #8
  %conv92 = sext i32 %ppid.0 to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv92) #8
  %conv93 = sext i32 %pgid.0 to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv93) #8
  %conv94 = sext i32 %sid.0 to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv94) #8
  %conv95 = sext i32 %tty_nr.1 to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv95) #8
  %conv96 = sext i32 %tty_pgrp.1 to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv96) #8
  %99 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i, align 4
  %conv98 = zext i32 %100 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv98) #8
  %conv99 = zext i32 %min_flt.3 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv99) #8
  %conv100 = zext i32 %cmin_flt.0 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv100) #8
  %conv101 = zext i32 %maj_flt.3 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv101) #8
  %conv102 = zext i32 %cmaj_flt.0 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv102) #8
  %101 = ptrtoint ptr %utime to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %utime, align 8
  %call103 = call i64 @nsec_to_clock_t(i64 noundef %102) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %call103) #8
  %103 = ptrtoint ptr %stime to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %stime, align 8
  %call104 = call i64 @nsec_to_clock_t(i64 noundef %104) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %call104) #8
  %call105 = call i64 @nsec_to_clock_t(i64 noundef %cutime.0) #8
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %call105) #8
  %call106 = call i64 @nsec_to_clock_t(i64 noundef %cstime.0) #8
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %call106) #8
  %conv107 = sext i32 %call86 to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv107) #8
  %conv108 = sext i32 %sub.i to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv108) #8
  %conv109 = sext i32 %num_threads.0 to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv109) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef 0) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %call89) #8
  %conv110 = zext i32 %vsize.0 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv110) #8
  br i1 %tobool.not, label %cond.end123.critedge, label %cond.true

cond.true:                                        ; preds = %proc_task_name.exit
  %rss_stat.i.i = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 40
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i, i32 noundef 4) #8
  %105 = ptrtoint ptr %rss_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %rss_stat.i.i, align 4
  %107 = call i32 @llvm.smax.i32(i32 %106, i32 0) #8
  %arrayidx.i.i = getelementptr %struct.anon.9, ptr %call3, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #8
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %arrayidx.i.i, align 4
  %110 = call i32 @llvm.smax.i32(i32 %109, i32 0) #8
  %add.i = add nuw i32 %110, %107
  %arrayidx.i9.i = getelementptr %struct.anon.9, ptr %call3, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i, i32 noundef 4) #8
  %111 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %arrayidx.i9.i, align 4
  %113 = call i32 @llvm.smax.i32(i32 %112, i32 0) #8
  %add3.i = add i32 %add.i, %113
  %conv113.c = zext i32 %add3.i to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv113.c) #8
  %conv114.c1 = zext i32 %rsslim.0 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv114.c1) #8
  br i1 %call2, label %cond.true118, label %cond.true127.critedge2

cond.true118:                                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %start_code = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 28
  %114 = ptrtoint ptr %start_code to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %start_code, align 4
  %conv125.c = zext i32 %115 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv125.c) #8
  %end_code = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 29
  %116 = ptrtoint ptr %end_code to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %end_code, align 8
  br label %cond.end134

cond.end123.critedge:                             ; preds = %proc_task_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef 0) #8
  %conv114.c = zext i32 %rsslim.0 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv114.c) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef 0) #8
  br label %cond.end134

cond.true127.critedge2:                           ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef 1) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef 1) #8
  br label %cond.end142

cond.end134:                                      ; preds = %cond.end123.critedge, %cond.true118
  %cond135 = phi i32 [ %117, %cond.true118 ], [ 0, %cond.end123.critedge ]
  %conv136 = zext i32 %cond135 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv136) #8
  %call2.not = xor i1 %call2, true
  %brmerge = select i1 %call2.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %cond.end134.cond.end142_crit_edge, label %cond.true140

cond.end134.cond.end142_crit_edge:                ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end142

cond.true140:                                     ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #10
  %start_stack = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 34
  %118 = ptrtoint ptr %start_stack to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %start_stack, align 4
  br label %cond.end142

cond.end142:                                      ; preds = %cond.true140, %cond.end134.cond.end142_crit_edge, %cond.true127.critedge2
  %cond143 = phi i32 [ %119, %cond.true140 ], [ 0, %cond.end134.cond.end142_crit_edge ], [ 0, %cond.true127.critedge2 ]
  %conv144 = zext i32 %cond143 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv144) #8
  %conv145 = zext i32 %esp.0 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv145) #8
  %conv146 = zext i32 %eip.0 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv146) #8
  %signal147 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 116, i32 1
  %120 = ptrtoint ptr %signal147 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %signal147, align 8
  %and150 = and i32 %121, 2147483647
  %conv151 = zext i32 %and150 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv151) #8
  %blocked = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 113
  %122 = ptrtoint ptr %blocked to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %blocked, align 8
  %and154 = and i32 %123, 2147483647
  %conv155 = zext i32 %and154 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv155) #8
  %124 = ptrtoint ptr %sigign to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sigign, align 4
  %and158 = and i32 %125, 2147483647
  %conv159 = zext i32 %and158 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv159) #8
  %126 = ptrtoint ptr %sigcatch to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sigcatch, align 4
  %and162 = and i32 %127, 2147483647
  %conv163 = zext i32 %and162 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv163) #8
  %conv164 = zext i32 %wchan.022 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv164) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef 0) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef 0) #8
  %exit_signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 59
  %128 = ptrtoint ptr %exit_signal to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %exit_signal, align 4
  %conv165 = sext i32 %129 to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv165) #8
  %stack.i16 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 1
  %130 = ptrtoint ptr %stack.i16 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %stack.i16, align 4
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %cpu.i, align 4
  %conv167 = zext i32 %133 to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv167) #8
  %rt_priority = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 16
  %134 = ptrtoint ptr %rt_priority to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rt_priority, align 4
  %conv168 = zext i32 %135 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv168) #8
  %policy = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 31
  %136 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %policy, align 4
  %conv169 = zext i32 %137 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv169) #8
  %delays.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 181
  %138 = ptrtoint ptr %delays.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %delays.i, align 8
  %tobool.not.i17 = icmp eq ptr %139, null
  br i1 %tobool.not.i17, label %cond.end142.delayacct_blkio_ticks.exit_crit_edge, label %if.then.i19

cond.end142.delayacct_blkio_ticks.exit_crit_edge: ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %delayacct_blkio_ticks.exit

if.then.i19:                                      ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #10
  %call.i18 = call i64 @__delayacct_blkio_ticks(ptr noundef %task) #8
  br label %delayacct_blkio_ticks.exit

delayacct_blkio_ticks.exit:                       ; preds = %if.then.i19, %cond.end142.delayacct_blkio_ticks.exit_crit_edge
  %retval.0.i = phi i64 [ %call.i18, %if.then.i19 ], [ 0, %cond.end142.delayacct_blkio_ticks.exit_crit_edge ]
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %retval.0.i) #8
  %call171 = call i64 @nsec_to_clock_t(i64 noundef %gtime.3) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %call171) #8
  %call172 = call i64 @nsec_to_clock_t(i64 noundef %cgtime.0) #8
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %call172) #8
  %call2.not4 = xor i1 %call2, true
  %brmerge5 = select i1 %tobool.not, i1 true, i1 %call2.not4
  br i1 %brmerge5, label %if.else, label %if.then176

if.then176:                                       ; preds = %delayacct_blkio_ticks.exit
  call void @__sanitizer_cov_trace_pc() #10
  %start_data = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 30
  %140 = ptrtoint ptr %start_data to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %start_data, align 4
  %conv177 = zext i32 %141 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv177) #8
  %end_data = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 31
  %142 = ptrtoint ptr %end_data to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %end_data, align 8
  %conv178 = zext i32 %143 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv178) #8
  %start_brk = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 32
  %144 = ptrtoint ptr %start_brk to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %start_brk, align 4
  %conv179 = zext i32 %145 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv179) #8
  %arg_start = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 35
  %146 = ptrtoint ptr %arg_start to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arg_start, align 8
  %conv180 = zext i32 %147 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv180) #8
  %arg_end = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 36
  %148 = ptrtoint ptr %arg_end to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arg_end, align 4
  %conv181 = zext i32 %149 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv181) #8
  %env_start = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 37
  %150 = ptrtoint ptr %env_start to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %env_start, align 8
  %conv182 = zext i32 %151 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv182) #8
  %env_end = getelementptr inbounds %struct.anon.9, ptr %call3, i32 0, i32 38
  %152 = ptrtoint ptr %env_end to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %env_end, align 4
  %conv183 = zext i32 %153 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv183) #8
  br label %if.end184

if.else:                                          ; preds = %delayacct_blkio_ticks.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.78) #8
  br label %if.end184

if.end184:                                        ; preds = %if.else, %if.then176
  br i1 %call2, label %if.then186, label %if.else188

if.then186:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  %conv187 = sext i32 %exit_code.2 to i64
  call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv187) #8
  br label %if.end189

if.else188:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.79) #8
  br label %if.end189

if.end189:                                        ; preds = %if.else188, %if.then186
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  br i1 %tobool.not, label %if.end189.if.end192_crit_edge, label %if.then191

if.end189.if.end192_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192

if.then191:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  call void @mmput(ptr noundef nonnull %call3) #8
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %if.end189.if.end192_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stime) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %utime) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sigcatch) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sigign) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_tgid_stat(ptr noundef %m, ptr noundef %ns, ptr noundef %pid, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_task_stat(ptr noundef %m, ptr noundef %ns, ptr noundef %pid, ptr noundef %task, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_pid_statm(ptr noundef %m, ptr nocapture noundef readnone %ns, ptr nocapture noundef readnone %pid, ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %resident = alloca i32, align 4
  %shared = alloca i32, align 4
  %text = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_task_mm(ptr noundef %task) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resident) #8
  %0 = ptrtoint ptr %resident to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %resident, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shared) #8
  %1 = ptrtoint ptr %shared to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %shared, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %text) #8
  %2 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %text, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data, align 4
  %call1 = call i32 @task_statm(ptr noundef nonnull %call, ptr noundef nonnull %shared, ptr noundef nonnull %text, ptr noundef nonnull %data, ptr noundef nonnull %resident) #8
  call void @mmput(ptr noundef nonnull %call) #8
  %conv = zext i32 %call1 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.3, i64 noundef %conv) #8
  %4 = ptrtoint ptr %resident to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resident, align 4
  %conv2 = zext i32 %5 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv2) #8
  %6 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shared, align 4
  %conv3 = zext i32 %7 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv3) #8
  %8 = ptrtoint ptr %text to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %text, align 4
  %conv4 = zext i32 %9 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv4) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef 0) #8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %conv5 = zext i32 %11 to i64
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv5) #8
  call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef 0) #8
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %text) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shared) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resident) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef 14) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_statm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @children_seq_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @children_seq_ops) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_hex_ll(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_prctl_spec_ctrl_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_vsize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_get_pgrp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_devnum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_cputime_adjusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_prio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ll(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__delayacct_blkio_ticks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @children_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %call1 = tail call fastcc ptr @get_children_pid(ptr noundef %3, ptr noundef null, i64 noundef %5)
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @children_seq_stop(ptr nocapture noundef readnone %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_pid(ptr noundef %v) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @children_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %add = add i64 %5, 1
  %call1 = tail call fastcc ptr @get_children_pid(ptr noundef %3, ptr noundef %v, i64 noundef %add)
  tail call void @put_pid(ptr noundef %v) #8
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %pos, align 8
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @children_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @pid_nr_ns(ptr noundef %v, ptr noundef %9) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.80, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_children_pid(ptr nocapture noundef readonly %inode, ptr noundef %pid_prev, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #8
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %call1 = tail call ptr @pid_task(ptr noundef %1, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %pid_prev, null
  br i1 %tobool2.not, label %if.end.if.end19_crit_edge, label %if.then3

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @pid_task(ptr noundef nonnull %pid_prev, i32 noundef 0) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then3.if.end19_crit_edge, label %land.lhs.true

if.then3.if.end19_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then3
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 71
  %2 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %real_parent, align 4
  %cmp = icmp eq ptr %3, %call1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true6:                                   ; preds = %land.lhs.true
  %sibling = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 74
  %4 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sibling, align 4
  %cmp.i.not = icmp eq ptr %5, %sibling
  br i1 %cmp.i.not, label %land.lhs.true6.if.end19_crit_edge, label %if.then9

land.lhs.true6.if.end19_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then9:                                         ; preds = %land.lhs.true6
  %children = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 73
  %cmp.i51.not = icmp eq ptr %5, %children
  br i1 %cmp.i51.not, label %if.then9.out_crit_edge, label %if.end14

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %thread_pid.i = getelementptr i8, ptr %5, i32 28
  %6 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread_pid.i, align 16
  %call17 = tail call fastcc ptr @get_pid(ptr noundef %7)
  br label %out

if.end19:                                         ; preds = %land.lhs.true6.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.then3.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %children21 = getelementptr inbounds %struct.task_struct, ptr %call1, i32 0, i32 73
  %8 = ptrtoint ptr %children21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn55 = load ptr, ptr %children21, align 4
  %cmp27.not56 = icmp eq ptr %.pn55, %children21
  br i1 %cmp27.not56, label %if.end19.out_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond:                                         ; preds = %for.body
  %dec = add i64 %pos.addr.057, -1
  %9 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn58, align 4
  %cmp27.not = icmp eq ptr %.pn, %children21
  br i1 %cmp27.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end19.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn55, %if.end19.for.body_crit_edge ]
  %pos.addr.057 = phi i64 [ %dec, %for.cond.for.body_crit_edge ], [ %pos, %if.end19.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.addr.057)
  %cmp28 = icmp eq i64 %pos.addr.057, 0
  br i1 %cmp28, label %if.then29, label %for.cond

if.then29:                                        ; preds = %for.body
  %thread_pid.i53 = getelementptr i8, ptr %.pn58, i32 28
  %10 = ptrtoint ptr %thread_pid.i53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thread_pid.i53, align 16
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then29.out_crit_edge, label %if.then.i

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i:                                        ; preds = %if.then29
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #8, !srcloc !193
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !188

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.out_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !185

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.out_crit_edge:                    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %.sink.i.i.i.i) #8
  br label %out

out:                                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.out_crit_edge, %if.then29.out_crit_edge, %for.cond.out_crit_edge, %if.end19.out_crit_edge, %if.end14, %if.then9.out_crit_edge, %entry.out_crit_edge
  %pid.0 = phi ptr [ null, %if.then9.out_crit_edge ], [ %7, %if.end14 ], [ null, %entry.out_crit_edge ], [ null, %if.then29.out_crit_edge ], [ %11, %if.else.i.i.i.i.out_crit_edge ], [ %11, %if.end15.sink.split.i.i.i.i ], [ null, %if.end19.out_crit_edge ], [ null, %for.cond.out_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #8
  ret ptr %pid.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_pid(ptr noundef returned %pid) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %pid, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #8, !srcloc !193
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !188

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !185

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef %.sink.i.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %pid
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172}
!llvm.named.register.sp = !{!174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/proc/array.c", i32 112, i32 59}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/proc/array.c", i32 114, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/proc/array.c", i32 434, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/proc/array.c", i32 683, i32 26}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/proc/array.c", i32 684, i32 26}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/proc/array.c", i32 692, i32 16}
!12 = !{ptr @proc_tid_children_operations, !13, !"proc_tid_children_operations", i1 false, i1 false}
!13 = !{!"../fs/proc/array.c", i32 795, i32 30}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../fs/proc/array.c", i32 158, i32 19}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../fs/proc/array.c", i32 172, i32 13}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/proc/array.c", i32 177, i32 17}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/proc/array.c", i32 178, i32 14}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/proc/array.c", i32 181, i32 25}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/proc/array.c", i32 182, i32 25}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/proc/array.c", i32 183, i32 25}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/proc/array.c", i32 184, i32 25}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/proc/array.c", i32 185, i32 25}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/proc/array.c", i32 186, i32 25}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/proc/array.c", i32 187, i32 25}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/proc/array.c", i32 190, i32 25}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/proc/array.c", i32 194, i32 25}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/proc/array.c", i32 196, i32 14}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/proc/array.c", i32 206, i32 14}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/proc/array.c", i32 209, i32 14}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/proc/array.c", i32 212, i32 14}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/proc/array.c", i32 215, i32 14}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/ptrace.h", i32 127, i32 10}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/proc/array.c", i32 126, i32 2}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/proc/array.c", i32 127, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/proc/array.c", i32 128, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/proc/array.c", i32 129, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/proc/array.c", i32 130, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/proc/array.c", i32 131, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/proc/array.c", i32 132, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/proc/array.c", i32 133, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/proc/array.c", i32 136, i32 2}
!80 = !{ptr @task_state_array, !81, !"task_state_array", i1 false, i1 false}
!81 = !{!"../fs/proc/array.c", i32 123, i32 27}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/cred.h", i32 286, i32 3}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/proc/array.c", i32 416, i32 25}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/proc/array.c", i32 426, i32 16}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../fs/proc/array.c", i32 280, i32 29}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/proc/array.c", i32 286, i32 25}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/proc/array.c", i32 287, i32 25}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/proc/array.c", i32 288, i32 25}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/proc/array.c", i32 291, i32 21}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/proc/array.c", i32 292, i32 21}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/proc/array.c", i32 293, i32 21}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/proc/array.c", i32 294, i32 21}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/proc/array.c", i32 295, i32 21}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../fs/proc/array.c", i32 318, i32 9}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/proc/array.c", i32 326, i32 18}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/proc/array.c", i32 327, i32 18}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/proc/array.c", i32 328, i32 18}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/proc/array.c", i32 329, i32 18}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/proc/array.c", i32 330, i32 18}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/proc/array.c", i32 335, i32 25}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/proc/array.c", i32 337, i32 25}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/proc/array.c", i32 343, i32 14}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/proc/array.c", i32 346, i32 15}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/proc/array.c", i32 349, i32 15}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/proc/array.c", i32 352, i32 15}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/proc/array.c", i32 355, i32 15}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/proc/array.c", i32 358, i32 15}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/proc/array.c", i32 361, i32 15}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/proc/array.c", i32 364, i32 15}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/proc/array.c", i32 368, i32 14}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/proc/array.c", i32 371, i32 15}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/proc/array.c", i32 374, i32 15}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/proc/array.c", i32 377, i32 15}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/proc/array.c", i32 380, i32 15}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/proc/array.c", i32 383, i32 15}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/proc/array.c", i32 386, i32 15}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/proc/array.c", i32 389, i32 15}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/proc/array.c", i32 408, i32 16}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/proc/array.c", i32 410, i32 16}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/proc/array.c", i32 401, i32 25}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/proc/array.c", i32 402, i32 25}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/proc/array.c", i32 569, i32 14}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/proc/array.c", i32 571, i32 14}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/proc/array.c", i32 637, i32 15}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/proc/array.c", i32 642, i32 15}
!170 = !{ptr @children_seq_ops, !171, !"children_seq_ops", i1 false, i1 false}
!171 = !{!"../fs/proc/array.c", i32 783, i32 36}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/proc/array.c", i32 758, i32 18}
!174 = !{!"sp"}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i64 2149295070}
!185 = !{!"branch_weights", i32 2000, i32 1}
!186 = !{i64 2149295336}
!187 = !{i32 0, i32 33}
!188 = !{!"branch_weights", i32 1, i32 2000}
!189 = !{i64 2148317992}
!190 = !{i64 2148232725, i64 2148232757, i64 2148232786, i64 2148232820, i64 2148232851, i64 2148232874}
!191 = !{i64 2148318221}
!192 = !{!"auto-init"}
!193 = !{i64 2148231070, i64 2148231102, i64 2148231131, i64 2148231165, i64 2148231196, i64 2148231219}
