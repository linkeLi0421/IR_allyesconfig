; ModuleID = '/llk/IR_all_yes/fs/proc_namespace.c_pt.bc'
source_filename = "../fs/proc_namespace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mnt_namespace = type { %struct.ns_common, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proc_mounts = type { ptr, %struct.path, ptr, %struct.mount }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.68, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.69, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_node = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.68 = type { %struct.callback_head }
%union.anon.69 = type { %struct.hlist_node }
%struct.hlist_head = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@proc_mounts_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr null, ptr null, ptr @seq_read_iter, ptr null, ptr null, ptr null, ptr null, ptr @mounts_poll, ptr null, ptr null, ptr null, i32 0, ptr @mounts_open, ptr null, ptr @mounts_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_mountinfo_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr null, ptr null, ptr @seq_read_iter, ptr null, ptr null, ptr null, ptr null, ptr @mounts_poll, ptr null, ptr null, ptr null, i32 0, ptr @mountinfo_open, ptr null, ptr @mounts_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_mountstats_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr null, ptr null, ptr @seq_read_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mountstats_open, ptr null, ptr @mounts_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mounts_op = external dso_local constant %struct.seq_operations, align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" \09\0A\\\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" ro\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" rw\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" 0 0\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",sync\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",dirsync\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",mand\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",lazytime\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",nosuid\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",nodev\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",noexec\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",noatime\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",nodiratime\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",relatime\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",nosymfollow\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",idmapped\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%i %i %u:%u \00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" shared:%i\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" master:%i\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" propagate_from:%i\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" unbindable\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" - \00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"device \00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no device\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" mounted on \00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"with fstype \00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"proc_mounts_operations\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 324, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant [26 x i8] c"proc_mountinfo_operations\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 333, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"proc_mountstats_operations\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 342, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 114, i32 47 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 118, i32 46 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 123, i32 39 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 123, i32 47 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 130, i32 14 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 48, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 49, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 50, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 51, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 67, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 68, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 69, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 70, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 71, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 72, i32 19 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 73, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 84, i32 15 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 143, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 164, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 168, i32 17 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 170, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 173, i32 15 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 176, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 207, i32 15 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 216, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 220, i32 14 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [23 x i8] c"../fs/proc_namespace.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 228, i32 14 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @proc_mounts_operations, ptr @proc_mountinfo_operations, ptr @proc_mountstats_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_mounts_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_mountinfo_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_mountstats_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read_iter(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mounts_poll(ptr noundef %file, ptr noundef %wait) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %poll = getelementptr inbounds %struct.mnt_namespace, ptr %5, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %tobool3.not.i = icmp eq ptr %poll, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %7(ptr noundef %file, ptr noundef nonnull %poll, ptr noundef nonnull %wait) #5
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %event3 = getelementptr inbounds %struct.mnt_namespace, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %event3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load volatile i64, ptr %event3, align 8
  %conv = trunc i64 %9 to i32
  %poll_event = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %poll_event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poll_event, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp.not = icmp eq i32 %11, %conv
  br i1 %cmp.not, label %poll_wait.exit.if.end_crit_edge, label %if.then

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %poll_event to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %poll_event, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %poll_wait.exit.if.end_crit_edge
  %res.0 = phi i32 [ 75, %if.then ], [ 65, %poll_wait.exit.if.end_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mounts_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mounts_open_common(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @show_vfsmnt)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mounts_release(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %root = getelementptr inbounds %struct.proc_mounts, ptr %3, i32 0, i32 1
  tail call void @path_put(ptr noundef %root) #5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cursor = getelementptr inbounds %struct.proc_mounts, ptr %3, i32 0, i32 3
  tail call void @mnt_cursor_del(ptr noundef %5, ptr noundef %cursor) #5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @put_mnt_ns(ptr noundef %7) #5
  %call = tail call i32 @seq_release_private(ptr noundef %inode, ptr noundef %file) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mountinfo_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mounts_open_common(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @show_mountinfo)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mountstats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mounts_open_common(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @show_vfsstat)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mounts_open_common(ptr nocapture noundef readonly %inode, ptr noundef %file, ptr noundef %show) unnamed_addr #1 align 64 {
entry:
  %root = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %root) #5
  %2 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %root, align 8, !annotation !73
  %3 = getelementptr inbounds %struct.path, ptr %root, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !73
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #5
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 110
  %5 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nsproxy, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %mnt_ns = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %mnt_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mnt_ns, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then3_crit_edge, label %if.end4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #5
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #5
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #5, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #5
  br label %cleanup

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #5
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %count.i = getelementptr inbounds %struct.ns_common, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #5
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #5, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end4.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !79

if.end4.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end4
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i50 = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i50, label %if.else.i.i.i.i.get_mnt_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_mnt_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_mnt_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #5
  br label %get_mnt_ns.exit

get_mnt_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_mnt_ns.exit_crit_edge
  %fs = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 107
  %12 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fs, align 128
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %get_mnt_ns.exit
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #5
  %usage.i52 = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i52, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %usage.i52, i32 1, i32 3, i32 1) #5
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i52, ptr %usage.i52, i32 1, ptr elementtype(i32) %usage.i52) #5, !srcloc !75
  %asmresult.i.i.i.i.i.i.i54 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i54)
  %cmp.i.i.i.i55 = icmp eq i32 %asmresult.i.i.i.i.i.i.i54, 1
  br i1 %cmp.i.i.i.i55, label %if.then.i59, label %if.end5.i.i.i.i57

if.end5.i.i.i.i57:                                ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i54)
  %.not.i.i.i.i56 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i54, 0
  br i1 %.not.i.i.i.i56, label %if.end5.i.i.i.i57.err_put_ns_crit_edge, label %if.then10.i.i.i.i58, !prof !76

if.end5.i.i.i.i57.err_put_ns_crit_edge:           ; preds = %if.end5.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_put_ns

if.then10.i.i.i.i58:                              ; preds = %if.end5.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %usage.i52, i32 noundef 3) #5
  br label %err_put_ns

if.then.i59:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #5
  br label %err_put_ns

if.end8:                                          ; preds = %get_mnt_ns.exit
  %lock.i = getelementptr inbounds %struct.fs_struct, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %root1.i = getelementptr inbounds %struct.fs_struct, ptr %13, i32 0, i32 5
  %15 = ptrtoint ptr %root1.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %root1.i, align 4
  %17 = ptrtoint ptr %root to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %root, align 8
  call void @path_get(ptr noundef nonnull %root) #5
  call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #5
  %usage.i62 = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i63 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i62, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !74
  call void @llvm.prefetch.p0(ptr %usage.i62, i32 1, i32 3, i32 1) #5
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i62, ptr %usage.i62, i32 1, ptr elementtype(i32) %usage.i62) #5, !srcloc !75
  %asmresult.i.i.i.i.i.i.i64 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i64)
  %cmp.i.i.i.i65 = icmp eq i32 %asmresult.i.i.i.i.i.i.i64, 1
  br i1 %cmp.i.i.i.i65, label %if.then.i69, label %if.end5.i.i.i.i67

if.end5.i.i.i.i67:                                ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i64)
  %.not.i.i.i.i66 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i64, 0
  br i1 %.not.i.i.i.i66, label %if.end5.i.i.i.i67.put_task_struct.exit70_crit_edge, label %if.then10.i.i.i.i68, !prof !76

if.end5.i.i.i.i67.put_task_struct.exit70_crit_edge: ; preds = %if.end5.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_task_struct.exit70

if.then10.i.i.i.i68:                              ; preds = %if.end5.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %usage.i62, i32 noundef 3) #5
  br label %put_task_struct.exit70

if.then.i69:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !77
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #5
  br label %put_task_struct.exit70

put_task_struct.exit70:                           ; preds = %if.then.i69, %if.then10.i.i.i.i68, %if.end5.i.i.i.i67.put_task_struct.exit70_crit_edge
  %call10 = call i32 @seq_open_private(ptr noundef %file, ptr noundef nonnull @mounts_op, i32 noundef 184) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %err_put_path

if.end13:                                         ; preds = %put_task_struct.exit70
  call void @__sanitizer_cov_trace_pc() #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %19 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data, align 4
  %event = getelementptr inbounds %struct.mnt_namespace, ptr %8, i32 0, i32 8
  %21 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %event, align 8
  %conv = trunc i64 %22 to i32
  %poll_event = getelementptr inbounds %struct.seq_file, ptr %20, i32 0, i32 9
  %23 = ptrtoint ptr %poll_event to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %poll_event, align 8
  %private = getelementptr inbounds %struct.seq_file, ptr %20, i32 0, i32 11
  %24 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %8, ptr %25, align 4
  %root15 = getelementptr inbounds %struct.proc_mounts, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %root to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %root, align 8
  %29 = ptrtoint ptr %root15 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %root15, align 4
  %show16 = getelementptr inbounds %struct.proc_mounts, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %show16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %show, ptr %show16, align 4
  %mnt_list = getelementptr inbounds %struct.proc_mounts, ptr %25, i32 0, i32 3, i32 10
  %31 = ptrtoint ptr %mnt_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %mnt_list, ptr %mnt_list, align 4
  %prev.i = getelementptr inbounds %struct.proc_mounts, ptr %25, i32 0, i32 3, i32 10, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %mnt_list, ptr %prev.i, align 4
  %mnt_flags = getelementptr inbounds %struct.proc_mounts, ptr %25, i32 0, i32 3, i32 3, i32 2
  %33 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 268435456, ptr %mnt_flags, align 4
  br label %cleanup

err_put_path:                                     ; preds = %put_task_struct.exit70
  call void @__sanitizer_cov_trace_pc() #7
  call void @path_put(ptr noundef nonnull %root) #5
  br label %err_put_ns

err_put_ns:                                       ; preds = %err_put_path, %if.then.i59, %if.then10.i.i.i.i58, %if.end5.i.i.i.i57.err_put_ns_crit_edge
  %ret.0 = phi i32 [ %call10, %err_put_path ], [ -2, %if.end5.i.i.i.i57.err_put_ns_crit_edge ], [ -2, %if.then10.i.i.i.i58 ], [ -2, %if.then.i59 ]
  call void @put_mnt_ns(ptr noundef nonnull %8) #5
  br label %cleanup

cleanup:                                          ; preds = %err_put_ns, %if.end13, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %ret.0, %err_put_ns ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i ], [ -22, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %root) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vfsmnt(ptr noundef %m, ptr noundef %mnt) #1 align 64 {
entry:
  %mnt_path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mnt_path) #5
  %2 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1
  %3 = ptrtoint ptr %mnt_path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mnt, ptr %mnt_path, align 4
  %4 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mnt, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %2, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_sb, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_op, align 4
  %show_devname = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %show_devname to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %show_devname, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call6 = tail call i32 %12(ptr noundef %m, ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end11_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mnt_devname = getelementptr i8, ptr %mnt, i32 52
  %13 = ptrtoint ptr %mnt_devname to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mnt_devname, align 4
  %tobool9.not = icmp eq ptr %14, null
  %spec.select = select i1 %tobool9.not, ptr @.str, ptr %14
  %call.i.i.i = tail call i32 @strlen(ptr noundef %spec.select) #8
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef %spec.select, i32 noundef %call.i.i.i, i32 noundef 8, ptr noundef nonnull @.str.1) #5
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then.if.end11_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #5
  %root = getelementptr inbounds %struct.proc_mounts, ptr %1, i32 0, i32 1
  %call12 = call i32 @seq_path_root(ptr noundef %m, ptr noundef nonnull %mnt_path, ptr noundef %root, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %if.end11
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #5
  %s_type.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 5
  %15 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_type.i, align 32
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call.i.i.i.i = call i32 @strlen(ptr noundef %18) #8
  call void @seq_escape_mem(ptr noundef %m, ptr noundef %18, i32 noundef %call.i.i.i.i, i32 noundef 8, ptr noundef nonnull @.str.1) #5
  %s_subtype.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 44
  %19 = ptrtoint ptr %s_subtype.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_subtype.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end15.show_type.exit_crit_edge, label %if.then.i

if.end15.show_type.exit_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %show_type.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 46) #5
  %21 = ptrtoint ptr %s_subtype.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_subtype.i, align 4
  %call.i.i.i6.i = call i32 @strlen(ptr noundef %22) #8
  call void @seq_escape_mem(ptr noundef %m, ptr noundef %22, i32 noundef %call.i.i.i6.i, i32 noundef 8, ptr noundef nonnull @.str.1) #5
  br label %show_type.exit

show_type.exit:                                   ; preds = %if.then.i, %if.end15.show_type.exit_crit_edge
  %call16 = call zeroext i1 @__mnt_is_readonly(ptr noundef %mnt) #5
  %cond17 = select i1 %call16, ptr @.str.2, ptr @.str.3
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %cond17) #5
  %call18 = call fastcc i32 @show_sb_opts(ptr noundef %m, ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %show_type.exit.out_crit_edge

show_type.exit.out_crit_edge:                     ; preds = %show_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end21:                                         ; preds = %show_type.exit
  call fastcc void @show_mnt_opts(ptr noundef %m, ptr noundef %mnt)
  %23 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_op, align 4
  %show_options = getelementptr inbounds %struct.super_operations, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %show_options to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %show_options, align 4
  %tobool23.not = icmp eq ptr %26, null
  br i1 %tobool23.not, label %if.end21.if.end29_crit_edge, label %if.then24

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
  %call28 = call i32 %26(ptr noundef %m, ptr noundef %28) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end21.if.end29_crit_edge
  %err.0 = phi i32 [ %call28, %if.then24 ], [ 0, %if.end21.if.end29_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #5
  br label %out

out:                                              ; preds = %if.end29, %show_type.exit.out_crit_edge, %if.end11.out_crit_edge, %if.then.out_crit_edge
  %err.1 = phi i32 [ %call6, %if.then.out_crit_edge ], [ %call12, %if.end11.out_crit_edge ], [ %call18, %show_type.exit.out_crit_edge ], [ %err.0, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mnt_path) #5
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mnt_ns(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_path_root(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mnt_is_readonly(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @show_sb_opts(ptr noundef %m, ptr noundef %sb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.5) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and.1 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.6) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %4 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags, align 4
  %and.2 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.7) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %6 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags, align 4
  %and.3 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool2.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.8) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %call = tail call i32 @security_sb_show_options(ptr noundef %m, ptr noundef %sb) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @show_mnt_opts(ptr noundef %m, ptr noundef %mnt) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 2
  %0 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mnt_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.9) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %2 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mnt_flags, align 4
  %and.1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.10) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %4 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mnt_flags, align 4
  %and.2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %6 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mnt_flags, align 4
  %and.3 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool2.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %8 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mnt_flags, align 4
  %and.4 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool2.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool2.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #5
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %10 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mnt_flags, align 4
  %and.5 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool2.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool2.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.14) #5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %12 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mnt_flags, align 4
  %and.6 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool2.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool2.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.15) #5
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 3
  %14 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !80
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 1
  %16 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mnt_sb.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 53
  %18 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_user_ns.i, align 8
  %cmp.i.not = icmp eq ptr %15, %19
  br i1 %cmp.i.not, label %for.inc.6.if.end4_crit_edge, label %if.then3

for.inc.6.if.end4_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.16) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.inc.6.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sb_show_options(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_cursor_del(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_mountinfo(ptr noundef %m, ptr noundef %mnt) #1 align 64 {
entry:
  %mnt_path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %add.ptr.i = getelementptr i8, ptr %mnt, i32 -16
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %mnt, i32 0, i32 1
  %2 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mnt_sb, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mnt_path) #5
  %4 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1
  %5 = ptrtoint ptr %mnt_path to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mnt, ptr %mnt_path, align 4
  %6 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mnt, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %4, align 4
  %mnt_id = getelementptr i8, ptr %mnt, i32 132
  %9 = ptrtoint ptr %mnt_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mnt_id, align 4
  %mnt_parent = getelementptr i8, ptr %mnt, i32 -8
  %11 = ptrtoint ptr %mnt_parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mnt_parent, align 4
  %mnt_id2 = getelementptr inbounds %struct.mount, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %mnt_id2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mnt_id2, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_dev, align 8
  %shr = lshr i32 %16, 20
  %and = and i32 %16, 1048575
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %10, i32 noundef %14, i32 noundef %shr, i32 noundef %and) #5
  %s_op = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_op, align 4
  %show_path = getelementptr inbounds %struct.super_operations, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %show_path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %show_path, align 4
  %tobool.not = icmp eq ptr %20, null
  %21 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mnt, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call7 = tail call i32 %20(ptr noundef %m, ptr noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then.if.end12_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @seq_dentry(ptr noundef %m, ptr noundef %22, ptr noundef nonnull @.str.1) #5
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then.if.end12_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #5
  %root = getelementptr inbounds %struct.proc_mounts, ptr %1, i32 0, i32 1
  %call13 = call i32 @seq_path_root(ptr noundef %m, ptr noundef nonnull %mnt_path, ptr noundef %root, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end16:                                         ; preds = %if.end12
  %mnt_flags = getelementptr %struct.vfsmount, ptr %mnt, i32 0, i32 2
  %23 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mnt_flags, align 4
  %and17 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond = select i1 %tobool18.not, ptr @.str.3, ptr @.str.2
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %cond) #5
  call fastcc void @show_mnt_opts(ptr noundef %m, ptr noundef %mnt)
  %25 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mnt_flags, align 4
  %and21 = and i32 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end16.if.end24_crit_edge, label %if.then23

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %mnt_group_id = getelementptr i8, ptr %mnt, i32 136
  %27 = ptrtoint ptr %mnt_group_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mnt_group_id, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %28) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end16.if.end24_crit_edge
  %mnt_master = getelementptr i8, ptr %mnt, i32 96
  %29 = ptrtoint ptr %mnt_master to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mnt_master, align 4
  %tobool25.not = icmp eq ptr %30, null
  br i1 %tobool25.not, label %if.end24.if.end34_crit_edge, label %if.then26

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then26:                                        ; preds = %if.end24
  %mnt_group_id28 = getelementptr inbounds %struct.mount, ptr %30, i32 0, i32 23
  %31 = ptrtoint ptr %mnt_group_id28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mnt_group_id28, align 4
  %call30 = call i32 @get_dominating_id(ptr noundef %add.ptr.i, ptr noundef %root) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, i32 noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %32)
  %cmp.not = icmp eq i32 %call30, %32
  %or.cond = select i1 %tobool31.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.then26.if.end34_crit_edge, label %if.then32

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then32:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %call30) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then26.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  %33 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mnt_flags, align 4
  %and37 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end34.if.end40_crit_edge, label %if.then39

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.21) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end34.if.end40_crit_edge
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.22) #5
  %s_type.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_type.i, align 32
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call.i.i.i.i = call i32 @strlen(ptr noundef %38) #8
  call void @seq_escape_mem(ptr noundef %m, ptr noundef %38, i32 noundef %call.i.i.i.i, i32 noundef 8, ptr noundef nonnull @.str.1) #5
  %s_subtype.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 44
  %39 = ptrtoint ptr %s_subtype.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_subtype.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end40.show_type.exit_crit_edge, label %if.then.i

if.end40.show_type.exit_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %show_type.exit

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 46) #5
  %41 = ptrtoint ptr %s_subtype.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_subtype.i, align 4
  %call.i.i.i6.i = call i32 @strlen(ptr noundef %42) #8
  call void @seq_escape_mem(ptr noundef %m, ptr noundef %42, i32 noundef %call.i.i.i6.i, i32 noundef 8, ptr noundef nonnull @.str.1) #5
  br label %show_type.exit

show_type.exit:                                   ; preds = %if.then.i, %if.end40.show_type.exit_crit_edge
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #5
  %43 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_op, align 4
  %show_devname = getelementptr inbounds %struct.super_operations, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %show_devname to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %show_devname, align 4
  %tobool42.not = icmp eq ptr %46, null
  br i1 %tobool42.not, label %if.else51, label %if.then43

if.then43:                                        ; preds = %show_type.exit
  %47 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mnt, align 4
  %call47 = call i32 %46(ptr noundef %m, ptr noundef %48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then43.if.end55_crit_edge, label %if.then43.out_crit_edge

if.then43.out_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then43.if.end55_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.else51:                                        ; preds = %show_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  %mnt_devname = getelementptr i8, ptr %mnt, i32 52
  %49 = ptrtoint ptr %mnt_devname to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mnt_devname, align 4
  %tobool52.not = icmp eq ptr %50, null
  %spec.select = select i1 %tobool52.not, ptr @.str, ptr %50
  %call.i.i.i = call i32 @strlen(ptr noundef %spec.select) #8
  call void @seq_escape_mem(ptr noundef %m, ptr noundef %spec.select, i32 noundef %call.i.i.i, i32 noundef 8, ptr noundef nonnull @.str.1) #5
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %if.then43.if.end55_crit_edge
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %51 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond57 = select i1 %tobool.i.not, ptr @.str.3, ptr @.str.2
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %cond57) #5
  %call58 = call fastcc i32 @show_sb_opts(ptr noundef %m, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end55.out_crit_edge

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end61:                                         ; preds = %if.end55
  %53 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_op, align 4
  %show_options = getelementptr inbounds %struct.super_operations, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %show_options to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %show_options, align 4
  %tobool63.not = icmp eq ptr %56, null
  br i1 %tobool63.not, label %if.end61.if.end69_crit_edge, label %if.then64

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mnt, align 4
  %call68 = call i32 %56(ptr noundef %m, ptr noundef %58) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end61.if.end69_crit_edge
  %err.0 = phi i32 [ %call68, %if.then64 ], [ 0, %if.end61.if.end69_crit_edge ]
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  br label %out

out:                                              ; preds = %if.end69, %if.end55.out_crit_edge, %if.then43.out_crit_edge, %if.end12.out_crit_edge, %if.then.out_crit_edge
  %err.1 = phi i32 [ %call7, %if.then.out_crit_edge ], [ %call13, %if.end12.out_crit_edge ], [ %call47, %if.then43.out_crit_edge ], [ %call58, %if.end55.out_crit_edge ], [ %err.0, %if.end69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mnt_path) #5
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_dentry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_dominating_id(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vfsstat(ptr noundef %m, ptr noundef %mnt) #1 align 64 {
entry:
  %mnt_path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mnt_path) #5
  %2 = getelementptr inbounds %struct.path, ptr %mnt_path, i32 0, i32 1
  %3 = ptrtoint ptr %mnt_path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mnt, ptr %mnt_path, align 4
  %4 = ptrtoint ptr %mnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mnt, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %2, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_sb, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_op, align 4
  %show_devname = getelementptr inbounds %struct.super_operations, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %show_devname to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %show_devname, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.23) #5
  %13 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_op, align 4
  %show_devname4 = getelementptr inbounds %struct.super_operations, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %show_devname4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %show_devname4, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %call6 = tail call i32 %16(ptr noundef %m, ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end14_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.else:                                          ; preds = %entry
  %mnt_devname = getelementptr i8, ptr %mnt, i32 52
  %19 = ptrtoint ptr %mnt_devname to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mnt_devname, align 4
  %tobool9.not = icmp eq ptr %20, null
  br i1 %tobool9.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.23) #5
  %21 = ptrtoint ptr %mnt_devname to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mnt_devname, align 4
  %call.i.i.i = tail call i32 @strlen(ptr noundef %22) #8
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef %22, i32 noundef %call.i.i.i, i32 noundef 8, ptr noundef nonnull @.str.1) #5
  br label %if.end14

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.24) #5
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then10, %if.then.if.end14_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.25) #5
  %root = getelementptr inbounds %struct.proc_mounts, ptr %1, i32 0, i32 1
  %call15 = call i32 @seq_path_root(ptr noundef %m, ptr noundef nonnull %mnt_path, ptr noundef %root, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %if.end14
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #5
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.26) #5
  %s_type.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 5
  %23 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_type.i, align 32
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call.i.i.i.i = call i32 @strlen(ptr noundef %26) #8
  call void @seq_escape_mem(ptr noundef %m, ptr noundef %26, i32 noundef %call.i.i.i.i, i32 noundef 8, ptr noundef nonnull @.str.1) #5
  %s_subtype.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 44
  %27 = ptrtoint ptr %s_subtype.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_subtype.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end18.show_type.exit_crit_edge, label %if.then.i

if.end18.show_type.exit_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %show_type.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 46) #5
  %29 = ptrtoint ptr %s_subtype.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_subtype.i, align 4
  %call.i.i.i6.i = call i32 @strlen(ptr noundef %30) #8
  call void @seq_escape_mem(ptr noundef %m, ptr noundef %30, i32 noundef %call.i.i.i6.i, i32 noundef 8, ptr noundef nonnull @.str.1) #5
  br label %show_type.exit

show_type.exit:                                   ; preds = %if.then.i, %if.end18.show_type.exit_crit_edge
  %31 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_op, align 4
  %show_stats = getelementptr inbounds %struct.super_operations, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %show_stats to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %show_stats, align 4
  %tobool20.not = icmp eq ptr %34, null
  br i1 %tobool20.not, label %show_type.exit.if.end26_crit_edge, label %if.then21

show_type.exit.if.end26_crit_edge:                ; preds = %show_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then21:                                        ; preds = %show_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #5
  %35 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_op, align 4
  %show_stats23 = getelementptr inbounds %struct.super_operations, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %show_stats23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %show_stats23, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %2, align 4
  %call25 = call i32 %38(ptr noundef %m, ptr noundef %40) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %show_type.exit.if.end26_crit_edge
  %err.0 = phi i32 [ %call25, %if.then21 ], [ 0, %show_type.exit.if.end26_crit_edge ]
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  br label %out

out:                                              ; preds = %if.end26, %if.end14.out_crit_edge, %if.then.out_crit_edge
  %err.1 = phi i32 [ %call6, %if.then.out_crit_edge ], [ %call15, %if.end14.out_crit_edge ], [ %err.0, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mnt_path) #5
  ret i32 %err.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @proc_mounts_operations, !1, !"proc_mounts_operations", i1 false, i1 false}
!1 = !{!"../fs/proc_namespace.c", i32 324, i32 30}
!2 = !{ptr @proc_mountinfo_operations, !3, !"proc_mountinfo_operations", i1 false, i1 false}
!3 = !{!"../fs/proc_namespace.c", i32 333, i32 30}
!4 = !{ptr @proc_mountstats_operations, !5, !"proc_mountstats_operations", i1 false, i1 false}
!5 = !{!"../fs/proc_namespace.c", i32 342, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/proc_namespace.c", i32 114, i32 47}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/proc_namespace.c", i32 118, i32 46}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/proc_namespace.c", i32 123, i32 39}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/proc_namespace.c", i32 123, i32 47}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/proc_namespace.c", i32 130, i32 14}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/proc_namespace.c", i32 48, i32 21}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/proc_namespace.c", i32 49, i32 17}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/proc_namespace.c", i32 50, i32 18}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/proc_namespace.c", i32 51, i32 18}
!24 = distinct !{null, !25, !"fs_opts", i1 false, i1 false}
!25 = !{!"../fs/proc_namespace.c", i32 47, i32 35}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/proc_namespace.c", i32 67, i32 17}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/proc_namespace.c", i32 68, i32 16}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/proc_namespace.c", i32 69, i32 17}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/proc_namespace.c", i32 70, i32 18}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/proc_namespace.c", i32 71, i32 21}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/proc_namespace.c", i32 72, i32 19}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/proc_namespace.c", i32 73, i32 22}
!40 = distinct !{null, !41, !"mnt_opts", i1 false, i1 false}
!41 = !{!"../fs/proc_namespace.c", i32 66, i32 35}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/proc_namespace.c", i32 84, i32 15}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/proc_namespace.c", i32 143, i32 16}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/proc_namespace.c", i32 164, i32 17}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/proc_namespace.c", i32 168, i32 17}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/proc_namespace.c", i32 170, i32 18}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/proc_namespace.c", i32 173, i32 15}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/proc_namespace.c", i32 176, i32 14}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/proc_namespace.c", i32 207, i32 15}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/proc_namespace.c", i32 216, i32 16}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/proc_namespace.c", i32 220, i32 14}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/proc_namespace.c", i32 228, i32 14}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 2148577096}
!75 = !{i64 2148491536, i64 2148491568, i64 2148491597, i64 2148491631, i64 2148491662, i64 2148491685}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2149564949}
!78 = !{i64 2148489071, i64 2148489103, i64 2148489132, i64 2148489166, i64 2148489197, i64 2148489220}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2152478523}
