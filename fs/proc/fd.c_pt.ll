; ModuleID = '/llk/IR_all_yes/fs/proc/fd.c_pt.bc'
source_filename = "../fs/proc/fd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.fd_data = type { i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.59 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.63 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [36 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [68 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }

@proc_fd_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_readfd, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@proc_fd_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @proc_lookupfd, ptr null, ptr @proc_fd_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_fdinfo_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @proc_lookupfdinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_fdinfo_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_readfdinfo, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/proc/fd.c\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@proc_pid_link_inode_operations = external dso_local constant %struct.inode_operations, align 128
@tid_fd_dentry_operations = internal constant %struct.dentry_operations { ptr @tid_fd_revalidate, ptr null, ptr null, ptr null, ptr @pid_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@proc_fdinfo_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @seq_fdinfo_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pos:\09%lli\0Aflags:\090%o\0Amnt_id:\09%i\0Aino:\09%lu\0A\00", [54 x i8] zeroinitializer }, align 32
@files_lookup_fd_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/fdtable.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"proc_fd_operations\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 277, i32 30 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"proc_fdinfo_operations\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 356, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 258, i32 38 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 263, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 3566, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 3571, i32 25 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 695, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 723, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"proc_fdinfo_file_operations\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 92, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 40, i32 26 }
@___asan_gen_.44 = private constant [16 x i8] c"../fs/proc/fd.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 57, i32 16 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"../include/linux/fdtable.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 96, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @proc_fd_operations, ptr @proc_fdinfo_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @proc_fdinfo_file_operations, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fd_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fdinfo_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_fdinfo_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_readfd(ptr noundef %file, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_readfd_common(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull @proc_fd_instantiate)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_fd_permission(ptr nocapture readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -40
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %call2 = tail call ptr @pid_task(ptr noundef %5, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end6_crit_edge, label %land.lhs.true

rcu_read_lock.exit.if.end6_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 111
  %10 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal.i, align 16
  %signal1.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 111
  %12 = ptrtoint ptr %signal1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal1.i, align 16
  %cmp.i = icmp eq ptr %11, %13
  %spec.select = select i1 %cmp.i, i32 0, i32 %call
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %rcu_read_lock.exit.if.end6_crit_edge
  %rv.0 = phi i32 [ %call, %rcu_read_lock.exit.if.end6_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call.i12 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i12, label %if.end6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

if.end6.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %if.end6
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %if.end6.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %14 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i19 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_lookupfd(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @proc_lookupfd_common(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull @proc_fd_instantiate)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_lookupfdinfo(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @proc_lookupfd_common(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull @proc_fdinfo_instantiate)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_readfdinfo(ptr noundef %file, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_readfd_common(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull @proc_fdinfo_instantiate)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @proc_readfd_common(ptr noundef %file, ptr noundef %ctx, ptr noundef %instantiate) unnamed_addr #1 align 64 {
entry:
  %fd = alloca i32, align 4
  %data = alloca %struct.fd_data, align 4
  %name = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i43 = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fd) #7
  %4 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %fd, align 4, !annotation !47
  %tobool.not = icmp eq ptr %call1.i43, null
  br i1 %tobool.not, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.end:                                           ; preds = %entry
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i64 %6, label %if.end.if.end4_crit_edge [
    i64 0, label %if.then.i44
    i64 1, label %if.end.if.then6.i_crit_edge
  ]

if.end.if.then6.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then.i44:                                      ; preds = %if.end
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %14 to i64
  %call.i.i = tail call i32 %8(ptr noundef %ctx, ptr noundef nonnull @.str.2, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i44.out_crit_edge

if.then.i44.out_crit_edge:                        ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3.thread.i:                                 ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1, ptr %pos.i, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.end.if.then6.i_crit_edge
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #7
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #7
  %conv.i20.i = zext i32 %25 to i64
  %call1.i.i = tail call i32 %17(ptr noundef %ctx, ptr noundef nonnull @.str.3, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.out_crit_edge

if.then6.i.out_crit_edge:                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 2, ptr %pos.i, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end9.i, %if.end.if.end4_crit_edge
  %27 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %31 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %pos.i, align 8
  %33 = trunc i64 %32 to i32
  %conv = add i32 %33, -2
  %34 = getelementptr inbounds %struct.fd_data, ptr %data, i32 0, i32 1
  %35 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv, ptr %fd, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %data, align 4, !annotation !47
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %34, align 4, !annotation !47
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %name) #7
  %38 = call ptr @memset(ptr %name, i32 255, i32 11)
  %call571 = call ptr @task_lookup_next_fd_rcu(ptr noundef nonnull %call1.i43, ptr noundef nonnull %fd) #7
  %39 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fd, align 4
  %conv672 = zext i32 %40 to i64
  %add73 = add nuw nsw i64 %conv672, 2
  %41 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %add73, ptr %pos.i, align 8
  %tobool8.not74 = icmp eq ptr %call571, null
  br i1 %tobool8.not74, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.if.end10_crit_edge

rcu_read_lock.exit.if.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %if.end10

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10:                                         ; preds = %for.inc.if.end10_crit_edge, %rcu_read_lock.exit.if.end10_crit_edge
  %call575 = phi ptr [ %call5, %for.inc.if.end10_crit_edge ], [ %call571, %rcu_read_lock.exit.if.end10_crit_edge ]
  %f_mode = getelementptr inbounds %struct.file, ptr %call575, i32 0, i32 8
  %42 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %f_mode, align 8
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %data, align 4
  %call.i45 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i45, label %if.end10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

if.end10.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %if.end10
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %if.end10.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %45 = call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i52 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %49 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fd, align 4
  %51 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %34, align 4
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 11, ptr noundef nonnull @.str, i32 noundef %50)
  %call14 = call zeroext i1 @proc_fill_cache(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull %name, i32 noundef %call12, ptr noundef %instantiate, ptr noundef nonnull %call1.i43, ptr noundef nonnull %data) #7
  br i1 %call14, label %if.end16, label %cleanup

if.end16:                                         ; preds = %rcu_read_unlock.exit
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 263, i32 noundef 0) #7
  %call.i54 = call i32 @__cond_resched() #7
  %52 = call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i32 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %add.i.i.i34 = add i32 %55, 1
  store volatile i32 %add.i.i.i34, ptr %preempt_count.i.i.i.i33, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i35 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i35, label %if.end16.for.inc_crit_edge, label %land.lhs.true.i38

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.i38:                                ; preds = %if.end16
  %call1.i36 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.for.inc_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.for.inc_crit_edge:              ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.for.inc_crit_edge, label %if.then.i41

land.lhs.true2.i40.for.inc_crit_edge:             ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %for.inc

cleanup:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  br label %out

for.inc:                                          ; preds = %if.then.i41, %land.lhs.true2.i40.for.inc_crit_edge, %land.lhs.true.i38.for.inc_crit_edge, %if.end16.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  %56 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fd, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %fd, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %58 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %data, align 4, !annotation !47
  %59 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %34, align 4, !annotation !47
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %name) #7
  %60 = call ptr @memset(ptr %name, i32 255, i32 11)
  %call5 = call ptr @task_lookup_next_fd_rcu(ptr noundef nonnull %call1.i43, ptr noundef nonnull %fd) #7
  %61 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fd, align 4
  %conv6 = zext i32 %62 to i64
  %add = add nuw nsw i64 %conv6, 2
  %63 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %add, ptr %pos.i, align 8
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %for.inc.for.end_crit_edge, label %for.inc.if.end10_crit_edge

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  %call.i55 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i55, label %for.end.rcu_read_unlock.exit65_crit_edge, label %land.lhs.true.i58

for.end.rcu_read_unlock.exit65_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit65

land.lhs.true.i58:                                ; preds = %for.end
  %call1.i56 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true.i58.rcu_read_unlock.exit65_crit_edge, label %land.lhs.true2.i60

land.lhs.true.i58.rcu_read_unlock.exit65_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit65

land.lhs.true2.i60:                               ; preds = %land.lhs.true.i58
  %.b4.i59 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59, label %land.lhs.true2.i60.rcu_read_unlock.exit65_crit_edge, label %if.then.i61

land.lhs.true2.i60.rcu_read_unlock.exit65_crit_edge: ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit65

if.then.i61:                                      ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit65

rcu_read_unlock.exit65:                           ; preds = %if.then.i61, %land.lhs.true2.i60.rcu_read_unlock.exit65_crit_edge, %land.lhs.true.i58.rcu_read_unlock.exit65_crit_edge, %for.end.rcu_read_unlock.exit65_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %64 = call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i62 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i62 to ptr
  %preempt_count.i.i.i.i63 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i63, align 4
  %sub.i.i.i64 = add i32 %67, -1
  store volatile i32 %sub.i.i.i64, ptr %preempt_count.i.i.i.i63, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit65, %cleanup, %if.then6.i.out_crit_edge, %if.then.i44.out_crit_edge
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i43, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #7
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i66, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup21_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.cleanup21_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #7
  br label %cleanup21

if.then.i66:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__put_task_struct(ptr noundef nonnull %call1.i43) #7
  br label %cleanup21

cleanup21:                                        ; preds = %if.then.i66, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup21_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup21_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_fd_instantiate(ptr noundef %dentry, ptr noundef %task, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call = tail call ptr @proc_pid_make_inode(ptr noundef %1, ptr noundef %task, i16 noundef zeroext -24576) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fd = getelementptr inbounds %struct.fd_data, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fd, align 4
  %fd3 = getelementptr i8, ptr %call, i32 -36
  %4 = ptrtoint ptr %fd3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fd3, align 4
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @proc_pid_link_inode_operations, ptr %i_op, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 64, ptr %i_size, align 8
  %op = getelementptr i8, ptr %call, i32 -32
  %7 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @proc_fd_link, ptr %op, align 8
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptr, align 4
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef %task, i16 noundef zeroext 0, ptr noundef %i_uid.i, ptr noundef %i_gid.i) #7
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %12)
  %cmp.i = icmp eq i16 %12, -24576
  br i1 %cmp.i, label %if.then.i, label %if.end.tid_fd_update_inode.exit_crit_edge

if.end.tid_fd_update_inode.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tid_fd_update_inode.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 40960, i32 41280
  %and5.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or8.i = or i32 %spec.select.i, 192
  %i_mode2.1.i = select i1 %tobool6.not.i, i32 %spec.select.i, i32 %or8.i
  %conv10.i = trunc i32 %i_mode2.1.i to i16
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv10.i, ptr %call, align 8
  br label %tid_fd_update_inode.exit

tid_fd_update_inode.exit:                         ; preds = %if.then.i, %if.end.tid_fd_update_inode.exit_crit_edge
  tail call void @security_task_to_inode(ptr noundef %task, ptr noundef nonnull %call) #7
  tail call void @d_set_d_op(ptr noundef %dentry, ptr noundef nonnull @tid_fd_dentry_operations) #7
  %call4 = tail call ptr @d_splice_alias(ptr noundef nonnull %call, ptr noundef %dentry) #7
  br label %cleanup

cleanup:                                          ; preds = %tid_fd_update_inode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %tid_fd_update_inode.exit ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_lookup_next_fd_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @proc_fill_cache(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_pid_make_inode(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_fd_link(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %path) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %fd.i = getelementptr i8, ptr %5, i32 -36
  %6 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fd.i, align 4
  %call4 = tail call ptr @fget_task(ptr noundef nonnull %call1.i, i32 noundef %7) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %f_path = getelementptr inbounds %struct.file, ptr %call4, i32 0, i32 1
  %8 = ptrtoint ptr %f_path to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %f_path, align 8
  %10 = ptrtoint ptr %path to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %path, align 4
  tail call void @path_get(ptr noundef %f_path) #7
  tail call void @fput(ptr noundef nonnull %call4) #7
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then6 ], [ -2, %if.then.if.end_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end8_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.if.end8_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #7
  br label %if.end8

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ret.1 = phi i32 [ -2, %entry.if.end8_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.if.end8_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget_task(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_dump_owner(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_task_to_inode(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tid_fd_revalidate(ptr nocapture noundef readonly %dentry, i32 noundef %flags) #1 align 64 {
entry:
  %f_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup9_crit_edge

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #7
  %tobool3.not = icmp eq ptr %call1.i, null
  br i1 %tobool3.not, label %if.end.cleanup9_crit_edge, label %if.then4

if.end.cleanup9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup9

if.then4:                                         ; preds = %if.end
  %fd.i = getelementptr i8, ptr %1, i32 -36
  %4 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fd.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f_mode) #7
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %f_mode, align 4, !annotation !47
  %call5 = call fastcc zeroext i1 @tid_fd_mode(ptr noundef nonnull %call1.i, i32 noundef %5, ptr noundef nonnull %f_mode)
  br i1 %call5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  %7 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_mode, align 4
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef nonnull %call1.i, i16 noundef zeroext 0, ptr noundef %i_uid.i, ptr noundef %i_gid.i) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %11)
  %cmp.i = icmp eq i16 %11, -24576
  br i1 %cmp.i, label %if.then.i, label %if.then6.tid_fd_update_inode.exit_crit_edge

if.then6.tid_fd_update_inode.exit_crit_edge:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %tid_fd_update_inode.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 40960, i32 41280
  %and5.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or8.i = or i32 %spec.select.i, 192
  %i_mode2.1.i = select i1 %tobool6.not.i, i32 %spec.select.i, i32 %or8.i
  %conv10.i = trunc i32 %i_mode2.1.i to i16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv10.i, ptr %1, align 8
  br label %tid_fd_update_inode.exit

tid_fd_update_inode.exit:                         ; preds = %if.then.i, %if.then6.tid_fd_update_inode.exit_crit_edge
  tail call void @security_task_to_inode(ptr noundef nonnull %call1.i, ptr noundef %1) #7
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i18, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %tid_fd_update_inode.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #7
  br label %put_task_struct.exit

if.then.i18:                                      ; preds = %tid_fd_update_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #7
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i18, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_mode) #7
  br label %cleanup9

if.end7:                                          ; preds = %if.then4
  %usage.i19 = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i19, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %usage.i19, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i19, ptr %usage.i19, i32 1, ptr elementtype(i32) %usage.i19) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i21 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i21)
  %cmp.i.i.i.i22 = icmp eq i32 %asmresult.i.i.i.i.i.i.i21, 1
  br i1 %cmp.i.i.i.i22, label %if.then.i26, label %if.end5.i.i.i.i24

if.end5.i.i.i.i24:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i21)
  %.not.i.i.i.i23 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i21, 0
  br i1 %.not.i.i.i.i23, label %if.end5.i.i.i.i24.put_task_struct.exit27_crit_edge, label %if.then10.i.i.i.i25, !prof !50

if.end5.i.i.i.i24.put_task_struct.exit27_crit_edge: ; preds = %if.end5.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_task_struct.exit27

if.then10.i.i.i.i25:                              ; preds = %if.end5.i.i.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %usage.i19, i32 noundef 3) #7
  br label %put_task_struct.exit27

if.then.i26:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #7
  br label %put_task_struct.exit27

put_task_struct.exit27:                           ; preds = %if.then.i26, %if.then10.i.i.i.i25, %if.end5.i.i.i.i24.put_task_struct.exit27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_mode) #7
  br label %cleanup9

cleanup9:                                         ; preds = %put_task_struct.exit27, %put_task_struct.exit, %if.end.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ -10, %entry.cleanup9_crit_edge ], [ 1, %put_task_struct.exit ], [ 0, %put_task_struct.exit27 ], [ 0, %if.end.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_delete_dentry(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tid_fd_mode(ptr noundef %task, i32 noundef %fd, ptr nocapture noundef writeonly %mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @task_lookup_fd_rcu(ptr noundef %task, i32 noundef %fd) #7
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.then, label %rcu_read_lock.exit.if.end_crit_edge

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %f_mode = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %call.i5 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i5, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %if.end
  %call1.i6 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %7 = tail call i32 @llvm.read_register.i32(metadata !35) #7
  %and.i.i.i.i.i12 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_lookup_fd_rcu(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @proc_lookupfd_common(ptr nocapture noundef readonly %dir, ptr noundef %dentry, ptr nocapture noundef readonly %instantiate) unnamed_addr #1 align 64 {
entry:
  %data = alloca %struct.fd_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dir, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %2 = getelementptr inbounds %struct.fd_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call1 = tail call i32 @name_to_int(ptr noundef %d_name) #7
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %2, align 4
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.out_no_task_crit_edge, label %if.end

entry.out_no_task_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_no_task

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5:                                          ; preds = %if.end
  %call8 = call fastcc zeroext i1 @tid_fd_mode(ptr noundef nonnull %call1.i, i32 noundef %call1, ptr noundef nonnull %data)
  br i1 %call8, label %if.end10, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call ptr %instantiate(ptr noundef %dentry, ptr noundef nonnull %call1.i, ptr noundef nonnull %data) #7, !callees !52
  br label %out

out:                                              ; preds = %if.end10, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %result.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end.out_crit_edge ], [ %call11, %if.end10 ], [ inttoptr (i32 -2 to ptr), %if.end5.out_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #7
  %5 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_no_task_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.out_no_task_crit_edge:            ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_no_task

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #7
  br label %out_no_task

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #7
  br label %out_no_task

out_no_task:                                      ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_no_task_crit_edge, %entry.out_no_task_crit_edge
  %result.1 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.out_no_task_crit_edge ], [ %result.0, %if.end5.i.i.i.i.out_no_task_crit_edge ], [ %result.0, %if.then10.i.i.i.i ], [ %result.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  ret ptr %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_int(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_fdinfo_instantiate(ptr noundef %dentry, ptr noundef %task, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %call = tail call ptr @proc_pid_make_inode(ptr noundef %1, ptr noundef %task, i16 noundef zeroext -32476) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fd = getelementptr inbounds %struct.fd_data, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fd, align 4
  %fd3 = getelementptr i8, ptr %call, i32 -36
  %4 = ptrtoint ptr %fd3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fd3, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @proc_fdinfo_file_operations, ptr %5, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  tail call void @task_dump_owner(ptr noundef %task, i16 noundef zeroext 0, ptr noundef %i_uid.i, ptr noundef %i_gid.i) #7
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %9)
  %cmp.i = icmp eq i16 %9, -24576
  br i1 %cmp.i, label %if.then.i, label %if.end.tid_fd_update_inode.exit_crit_edge

if.end.tid_fd_update_inode.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tid_fd_update_inode.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -24576, ptr %call, align 8
  br label %tid_fd_update_inode.exit

tid_fd_update_inode.exit:                         ; preds = %if.then.i, %if.end.tid_fd_update_inode.exit_crit_edge
  tail call void @security_task_to_inode(ptr noundef %task, ptr noundef nonnull %call) #7
  tail call void @d_set_d_op(ptr noundef %dentry, ptr noundef nonnull @tid_fd_dentry_operations) #7
  %call4 = tail call ptr @d_splice_alias(ptr noundef nonnull %call, ptr noundef %dentry) #7
  br label %cleanup

cleanup:                                          ; preds = %tid_fd_update_inode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %tid_fd_update_inode.exit ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_fdinfo_open(ptr noundef %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %inode, i32 -40
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %1, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call1.i, i32 noundef 9) #7
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #7
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #7
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  br i1 %call1, label %if.end4, label %put_task_struct.exit.cleanup_crit_edge

put_task_struct.exit.cleanup_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @seq_show, ptr noundef %inode) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %put_task_struct.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -3, %entry.cleanup_crit_edge ], [ -13, %put_task_struct.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_show(ptr noundef %m, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 -40
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %3, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #7
  %files1 = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end32_crit_edge, label %if.then3

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then3:                                         ; preds = %if.end
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 8
  %fd.i = getelementptr i8, ptr %7, i32 -36
  %8 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fd.i, align 4
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #7
  %dep_map.i = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then3.do.end.i_crit_edge

if.then3.do.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then3
  %call1.i80 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool2.not.i = icmp eq i32 %call1.i80, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b7.i = load i1, ptr @files_lookup_fd_locked.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @files_lookup_fd_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 97, ptr noundef nonnull @.str.7) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then3.do.end.i_crit_edge
  %fdt1.i.i = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %fdt1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %fdt1.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.i.i = icmp ugt i32 %13, %9
  br i1 %cmp.i.i, label %files_lookup_fd_locked.exit, label %do.end.i.if.end30_crit_edge

do.end.i.if.end30_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

files_lookup_fd_locked.exit:                      ; preds = %do.end.i
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %9, i32 %13) #7, !srcloc !53
  %and.i.i = and i32 %14, %9
  %fd15.i.i = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %fd15.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fd15.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %16, i32 %and.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %files_lookup_fd_locked.exit.if.end30_crit_edge, label %if.then8

files_lookup_fd_locked.exit.if.end30_crit_edge:   ; preds = %files_lookup_fd_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then8:                                         ; preds = %files_lookup_fd_locked.exit
  %19 = ptrtoint ptr %fdt1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %fdt1.i.i, align 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.then8.do.end23_crit_edge

if.then8.do.end23_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

lor.lhs.false:                                    ; preds = %if.then8
  %call14 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %lor.lhs.false.do.end23_crit_edge

lor.lhs.false.do.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true.do.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b79 = load i1, ptr @seq_show.__warned, align 1
  br i1 %.b79, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @seq_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 40, ptr noundef nonnull @.str.7) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true.do.end23_crit_edge, %lor.lhs.false.do.end23_crit_edge, %if.then8.do.end23_crit_edge
  %f_flags25 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 7
  %21 = ptrtoint ptr %f_flags25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f_flags25, align 4
  %close_on_exec.i = getelementptr inbounds %struct.fdtable, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %close_on_exec.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %close_on_exec.i, align 4
  %div3.i.i = lshr i32 %9, 5
  %arrayidx.i.i81 = getelementptr i32, ptr %24, i32 %div3.i.i
  %25 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i.i81, align 4
  %and.i.i82 = and i32 %9, 31
  %27 = shl nuw i32 1, %and.i.i82
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  %or = or i32 %22, 524288
  %spec.select = select i1 %tobool.i.not, i32 %22, i32 %or
  %f_count.i = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #7
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #7, !srcloc !54
  br label %if.end30

if.end30:                                         ; preds = %do.end23, %files_lookup_fd_locked.exit.if.end30_crit_edge, %do.end.i.if.end30_crit_edge
  %retval.0.i.i87 = phi ptr [ %18, %do.end23 ], [ null, %files_lookup_fd_locked.exit.if.end30_crit_edge ], [ null, %do.end.i.if.end30_crit_edge ]
  %f_flags.1 = phi i32 [ %spec.select, %do.end23 ], [ 0, %files_lookup_fd_locked.exit.if.end30_crit_edge ], [ 0, %do.end.i.if.end30_crit_edge ]
  %ret.0 = phi i32 [ 0, %do.end23 ], [ -2, %files_lookup_fd_locked.exit.if.end30_crit_edge ], [ -2, %do.end.i.if.end30_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #7
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end.if.end32_crit_edge
  %f_flags.2 = phi i32 [ %f_flags.1, %if.end30 ], [ 0, %if.end.if.end32_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %if.end30 ], [ -2, %if.end.if.end32_crit_edge ]
  %file.0 = phi ptr [ %retval.0.i.i87, %if.end30 ], [ null, %if.end.if.end32_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #7
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #7
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i84, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #7
  br label %put_task_struct.exit

if.then.i84:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @__put_task_struct(ptr noundef nonnull %call1.i) #7
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i84, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool33.not = icmp eq i32 %ret.1, 0
  br i1 %tobool33.not, label %if.end35, label %put_task_struct.exit.cleanup_crit_edge

put_task_struct.exit.cleanup_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %put_task_struct.exit
  %f_pos = getelementptr inbounds %struct.file, ptr %file.0, i32 0, i32 10
  %31 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %f_pos, align 8
  %f_path = getelementptr inbounds %struct.file, ptr %file.0, i32 0, i32 1
  %33 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f_path, align 8
  %mnt_id = getelementptr i8, ptr %34, i32 132
  %35 = ptrtoint ptr %mnt_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mnt_id, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file.0, i32 0, i32 2
  %37 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %32, i32 noundef %f_flags.2, i32 noundef %36, i32 noundef %40) #7
  tail call void @show_fd_locks(ptr noundef %m, ptr noundef %file.0, ptr noundef %5) #7
  %count.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 3
  %41 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count.i, align 4
  %size.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 1
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i = icmp eq i32 %42, %44
  br i1 %cmp.i, label %if.end35.out_crit_edge, label %if.end40

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end40:                                         ; preds = %if.end35
  %f_op = getelementptr inbounds %struct.file, ptr %file.0, i32 0, i32 3
  %45 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %f_op, align 4
  %show_fdinfo = getelementptr inbounds %struct.file_operations, ptr %46, i32 0, i32 28
  %47 = ptrtoint ptr %show_fdinfo to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %show_fdinfo, align 4
  %tobool41.not = icmp eq ptr %48, null
  br i1 %tobool41.not, label %if.end40.out_crit_edge, label %if.then42

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %48(ptr noundef %m, ptr noundef %file.0) #7
  br label %out

out:                                              ; preds = %if.then42, %if.end40.out_crit_edge, %if.end35.out_crit_edge
  tail call void @fput(ptr noundef %file.0) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %put_task_struct.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -2, %entry.cleanup_crit_edge ], [ %ret.1, %put_task_struct.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_fd_locks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !27, !29, !30, !32, !34}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @proc_fd_operations, !1, !"proc_fd_operations", i1 false, i1 false}
!1 = !{!"../fs/proc/fd.c", i32 277, i32 30}
!2 = !{ptr @proc_fd_inode_operations, !3, !"proc_fd_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/proc/fd.c", i32 312, i32 31}
!4 = !{ptr @proc_fdinfo_inode_operations, !5, !"proc_fdinfo_inode_operations", i1 false, i1 false}
!5 = !{!"../fs/proc/fd.c", i32 351, i32 31}
!6 = !{ptr @proc_fdinfo_operations, !7, !"proc_fdinfo_operations", i1 false, i1 false}
!7 = !{!"../fs/proc/fd.c", i32 356, i32 30}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/proc/fd.c", i32 258, i32 38}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/proc/fd.c", i32 263, i32 3}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!16 = !{ptr @tid_fd_dentry_operations, !17, !"tid_fd_dentry_operations", i1 false, i1 false}
!17 = !{!"../fs/proc/fd.c", i32 152, i32 39}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @proc_fdinfo_file_operations, !26, !"proc_fdinfo_file_operations", i1 false, i1 false}
!26 = !{!"../fs/proc/fd.c", i32 92, i32 37}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../fs/proc/fd.c", i32 40, i32 26}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/proc/fd.c", i32 57, i32 16}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/fdtable.h", i32 96, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2149191029}
!46 = !{i64 2149191295}
!47 = !{!"auto-init"}
!48 = !{i64 2148412054}
!49 = !{i64 2148326494, i64 2148326526, i64 2148326555, i64 2148326589, i64 2148326620, i64 2148326643}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2149628269}
!52 = !{ptr @proc_fd_instantiate, ptr @proc_fdinfo_instantiate}
!53 = !{i64 632271, i64 632288}
!54 = !{i64 2148322499, i64 2148322525, i64 2148322554, i64 2148322588, i64 2148322619, i64 2148322642}
