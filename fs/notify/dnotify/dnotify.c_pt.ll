; ModuleID = '/llk/IR_all_yes/fs/notify/dnotify/dnotify.c_pt.bc'
source_filename = "../fs/notify/dnotify/dnotify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.76 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.76 = type { %struct.fanotify_group_private_data }
%struct.fanotify_group_private_data = type { ptr, %struct.list_head, %struct.wait_queue_head, i32, i32, ptr, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.dnotify_mark = type { %struct.fsnotify_mark, ptr }
%struct.dnotify_struct = type { ptr, i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [36 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [68 x i8] }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }

@dnotify_group = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@dnotify_struct_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@dir_notify_enable = internal global i32 1, section ".data..read_mostly", align 4
@dnotify_mark_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_dnotify__232_411_dnotify_init6 = internal global ptr @dnotify_init, section ".initcall6.init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@files_lookup_fd_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/fdtable.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dnotify_struct\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dnotify_mark\00", [19 x i8] zeroinitializer }, align 32
@dnotify_fsnotify_ops = internal constant { %struct.fsnotify_ops, [40 x i8] } { %struct.fsnotify_ops { ptr null, ptr @dnotify_handle_event, ptr null, ptr null, ptr null, ptr @dnotify_free_mark }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to allocate fsnotify group for dnotify\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@dnotify_sysctls = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.10, ptr @dir_notify_enable, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dnotify_sysctls\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dir-notify-enable\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 695, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/linux/fdtable.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 103, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 723, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 400, i32 25 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 402, i32 23 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"dnotify_fsnotify_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 141, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 406, i32 9 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"dnotify_sysctls\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 24, i32 25 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 36, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [31 x i8] c"../fs/notify/dnotify/dnotify.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 26, i32 15 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_dnotify__232_411_dnotify_init6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dnotify_fsnotify_ops, ptr @.str.7, ptr @.str.8, ptr @dnotify_sysctls, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnotify_fsnotify_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnotify_sysctls to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dnotify_flush(ptr noundef readonly %filp, ptr noundef readnone %id) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 51
  %5 = load ptr, ptr @dnotify_group, align 4
  %call2 = tail call ptr @fsnotify_find_mark(ptr noundef %i_fsnotify_marks, ptr noundef %5) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr @dnotify_group, align 4
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mark_mutex, i32 noundef 0) #8
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %call2, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %dn5 = getelementptr inbounds %struct.dnotify_mark, ptr %call2, i32 0, i32 1
  %7 = ptrtoint ptr %dn5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dn5, align 4
  %cmp6.not48 = icmp eq ptr %8, null
  br i1 %cmp6.not48, label %if.end4.while.end_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  br label %while.body

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %if.end4.while.body_crit_edge
  %9 = phi ptr [ %30, %if.end13.while.body_crit_edge ], [ %8, %if.end4.while.body_crit_edge ]
  %prev.049 = phi ptr [ %9, %if.end13.while.body_crit_edge ], [ %dn5, %if.end4.while.body_crit_edge ]
  %dn_owner = getelementptr inbounds %struct.dnotify_struct, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %dn_owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dn_owner, align 4
  %cmp8 = icmp eq ptr %11, %id
  br i1 %cmp8, label %land.lhs.true, label %while.body.if.end13_crit_edge

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %while.body
  %dn_filp = getelementptr inbounds %struct.dnotify_struct, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %dn_filp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dn_filp, align 4
  %cmp10 = icmp eq ptr %13, %filp
  br i1 %cmp10, label %if.then12, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %16 = ptrtoint ptr %prev.049 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %prev.049, align 4
  %17 = load ptr, ptr @dnotify_struct_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %18 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %lock, align 4
  %19 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !46

do.body4.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/dnotify/dnotify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #8, !srcloc !47
  unreachable

do.end9.i:                                        ; preds = %if.then12
  %20 = ptrtoint ptr %dn5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %dn.025.i = load ptr, ptr %dn5, align 4
  %cmp.not26.i = icmp eq ptr %dn.025.i, null
  br i1 %cmp.not26.i, label %do.end9.i.for.end.i_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.for.end.i_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %dn.028.i = phi ptr [ %dn.0.i, %for.body.i.for.body.i_crit_edge ], [ %dn.025.i, %do.end9.i.for.body.i_crit_edge ]
  %new_mask.027.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end9.i.for.body.i_crit_edge ]
  %dn_mask.i = getelementptr inbounds %struct.dnotify_struct, ptr %dn.028.i, i32 0, i32 1
  %21 = ptrtoint ptr %dn_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dn_mask.i, align 4
  %and.i = and i32 %22, -536870913
  %or.i = or i32 %and.i, %new_mask.027.i
  %23 = ptrtoint ptr %dn.028.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %dn.0.i = load ptr, ptr %dn.028.i, align 4
  %cmp.not.i = icmp eq ptr %dn.0.i, null
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end9.i.for.end.i_crit_edge
  %new_mask.0.lcssa.i = phi i32 [ 0, %do.end9.i.for.end.i_crit_edge ], [ %or.i, %for.body.i.for.end.i_crit_edge ]
  %24 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %new_mask.0.lcssa.i)
  %cmp11.i = icmp eq i32 %25, %new_mask.0.lcssa.i
  br i1 %cmp11.i, label %for.end.i.while.end_crit_edge, label %if.end13.i

for.end.i.while.end_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end13.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %new_mask.0.lcssa.i, ptr %call2, align 4
  %connector.i = getelementptr inbounds %struct.fsnotify_mark, ptr %call2, i32 0, i32 6
  %27 = ptrtoint ptr %connector.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %connector.i, align 4
  tail call void @fsnotify_recalc_mask(ptr noundef %28) #8
  br label %while.end

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %while.body.if.end13_crit_edge
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %9, align 4
  %cmp6.not = icmp eq ptr %30, null
  br i1 %cmp6.not, label %if.end13.while.end_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %if.end13.i, %for.end.i.while.end_crit_edge, %if.end4.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %31 = ptrtoint ptr %dn5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dn5, align 4
  %cmp17 = icmp eq ptr %32, null
  br i1 %cmp17, label %if.then19, label %if.end24.critedge

if.then19:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fsnotify_detach_mark(ptr noundef nonnull %call2) #8
  %33 = load ptr, ptr @dnotify_group, align 4
  %mark_mutex21.c = getelementptr inbounds %struct.fsnotify_group, ptr %33, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mark_mutex21.c) #8
  tail call void @fsnotify_free_mark(ptr noundef nonnull %call2) #8
  br label %if.end24

if.end24.critedge:                                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = load ptr, ptr @dnotify_group, align 4
  %mark_mutex21.c45 = getelementptr inbounds %struct.fsnotify_group, ptr %34, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mark_mutex21.c45) #8
  br label %if.end24

if.end24:                                         ; preds = %if.end24.critedge, %if.then19
  tail call void @fsnotify_put_mark(ptr noundef nonnull %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_find_mark(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dnotify_recalc_inode_mask(ptr noundef %fsn_mark) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %fsn_mark, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !46

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/dnotify/dnotify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #8, !srcloc !47
  unreachable

do.end9:                                          ; preds = %entry
  %dn10 = getelementptr inbounds %struct.dnotify_mark, ptr %fsn_mark, i32 0, i32 1
  %2 = ptrtoint ptr %dn10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %dn.025 = load ptr, ptr %dn10, align 4
  %cmp.not26 = icmp eq ptr %dn.025, null
  br i1 %cmp.not26, label %do.end9.for.end_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end9.for.body_crit_edge
  %dn.028 = phi ptr [ %dn.0, %for.body.for.body_crit_edge ], [ %dn.025, %do.end9.for.body_crit_edge ]
  %new_mask.027 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %do.end9.for.body_crit_edge ]
  %dn_mask = getelementptr inbounds %struct.dnotify_struct, ptr %dn.028, i32 0, i32 1
  %3 = ptrtoint ptr %dn_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dn_mask, align 4
  %and = and i32 %4, -536870913
  %or = or i32 %and, %new_mask.027
  %5 = ptrtoint ptr %dn.028 to i32
  call void @__asan_load4_noabort(i32 %5)
  %dn.0 = load ptr, ptr %dn.028, align 4
  %cmp.not = icmp eq ptr %dn.0, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end9.for.end_crit_edge
  %new_mask.0.lcssa = phi i32 [ 0, %do.end9.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %6 = ptrtoint ptr %fsn_mark to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fsn_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %new_mask.0.lcssa)
  %cmp11 = icmp eq i32 %7, %new_mask.0.lcssa
  br i1 %cmp11, label %for.end.cleanup_crit_edge, label %if.end13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %fsn_mark to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %new_mask.0.lcssa, ptr %fsn_mark, align 4
  %connector = getelementptr inbounds %struct.fsnotify_mark, ptr %fsn_mark, i32 0, i32 6
  %9 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connector, align 4
  tail call void @fsnotify_recalc_mask(ptr noundef %10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_detach_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_free_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_put_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fcntl_dirnotify(i32 noundef %fd, ptr noundef %filp, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files, align 4
  %6 = load i32, ptr @dir_notify_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end70_crit_edge, label %if.end

entry.if.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end:                                           ; preds = %entry
  %and = and i32 %arg, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dnotify_flush(ptr noundef %filp, ptr noundef %5)
  br label %if.end70

if.end2:                                          ; preds = %if.end
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %7 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp5 = icmp eq i16 %11, 16384
  br i1 %cmp5, label %if.end8, label %if.end2.if.end70_crit_edge

if.end2.if.end70_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %arg)
  %tobool.not.i110 = icmp sgt i32 %arg, -1
  %spec.select.i = select i1 %tobool.not.i110, i32 134217728, i32 671088640
  %and1.i = and i32 %arg, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or4.i = or i32 %spec.select.i, 576
  %new_mask.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  %and16.i = lshr i32 %arg, 3
  %12 = and i32 %and16.i, 4
  %and21.i = shl i32 %arg, 24
  %13 = and i32 %and21.i, 268435456
  %14 = and i32 %arg, 3
  %15 = or i32 %12, %14
  %16 = or i32 %15, %13
  %17 = or i32 %16, %new_mask.1.i
  %and26.i = and i32 %arg, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %or29.i = or i32 %17, 384
  %new_mask.6.i = select i1 %tobool27.not.i, i32 %17, i32 %or29.i
  %f_path = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %conv10 = zext i32 %new_mask.6.i to i64
  %call11 = tail call i32 @security_path_notify(ptr noundef %f_path, i64 noundef %conv10, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.if.end70_crit_edge

if.end8.if.end70_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end14:                                         ; preds = %if.end8
  %18 = load ptr, ptr @dnotify_struct_cache, align 4
  %call15 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %18, i32 noundef 3264) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.if.end70_crit_edge, label %if.end18

if.end14.if.end70_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end18:                                         ; preds = %if.end14
  %19 = load ptr, ptr @dnotify_mark_cache, align 4
  %call19 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %19, i32 noundef 3264) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.if.then69_crit_edge, label %if.end22

if.end18.if.then69_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69

if.end22:                                         ; preds = %if.end18
  %20 = load ptr, ptr @dnotify_group, align 4
  tail call void @fsnotify_init_mark(ptr noundef nonnull %call19, ptr noundef %20) #8
  %21 = ptrtoint ptr %call19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %new_mask.6.i, ptr %call19, align 8
  %dn25 = getelementptr inbounds %struct.dnotify_mark, ptr %call19, i32 0, i32 1
  %22 = ptrtoint ptr %dn25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %dn25, align 4
  %23 = load ptr, ptr @dnotify_group, align 4
  %mark_mutex = getelementptr inbounds %struct.fsnotify_group, ptr %23, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mark_mutex, i32 noundef 0) #8
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 51
  %24 = load ptr, ptr @dnotify_group, align 4
  %call26 = tail call ptr @fsnotify_find_mark(ptr noundef %i_fsnotify_marks, ptr noundef %24) #8
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.else, label %if.end22.if.end35_crit_edge

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.else:                                          ; preds = %if.end22
  %call.i111 = tail call i32 @fsnotify_add_mark_locked(ptr noundef nonnull %call19, ptr noundef %i_fsnotify_marks, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool30.not = icmp eq i32 %call.i111, 0
  br i1 %tobool30.not, label %if.else.if.end35_crit_edge, label %out_err.thread136

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

out_err.thread136:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %25 = load ptr, ptr @dnotify_group, align 4
  %mark_mutex32 = getelementptr inbounds %struct.fsnotify_group, ptr %25, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mark_mutex32) #8
  br label %if.then66

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.end22.if.end35_crit_edge
  %call19.sink = phi ptr [ %call26, %if.end22.if.end35_crit_edge ], [ %call19, %if.else.if.end35_crit_edge ]
  %new_fsn_mark.0 = phi ptr [ %call19, %if.end22.if.end35_crit_edge ], [ null, %if.else.if.end35_crit_edge ]
  %lock34 = getelementptr inbounds %struct.fsnotify_mark, ptr %call19.sink, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock34) #8
  %26 = tail call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end35.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end35.rcu_read_lock.exit_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end35
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end35.rcu_read_lock.exit_crit_edge
  %30 = tail call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %files.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 108
  %34 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %files.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.do.end.i.i_crit_edge

rcu_read_lock.exit.do.end.i.i_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b6.i.i = load i1, ptr @files_lookup_fd_rcu.__warned, align 1
  br i1 %.b6.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @files_lookup_fd_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 104, ptr noundef nonnull @.str.3) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %rcu_read_lock.exit.do.end.i.i_crit_edge
  %fdt1.i.i.i = getelementptr inbounds %struct.files_struct, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %fdt1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %fdt1.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %fd)
  %cmp.i.i.i = icmp ugt i32 %39, %fd
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end.i.i.lookup_fd_rcu.exit_crit_edge

do.end.i.i.lookup_fd_rcu.exit_crit_edge:          ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lookup_fd_rcu.exit

if.then.i.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %fd, i32 %39) #8, !srcloc !49
  %and.i.i.i = and i32 %40, %fd
  %fd15.i.i.i = getelementptr inbounds %struct.fdtable, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %fd15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fd15.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %42, i32 %and.i.i.i
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  br label %lookup_fd_rcu.exit

lookup_fd_rcu.exit:                               ; preds = %if.then.i.i.i, %do.end.i.i.lookup_fd_rcu.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %44, %if.then.i.i.i ], [ null, %do.end.i.i.lookup_fd_rcu.exit_crit_edge ]
  %call.i112 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i112, label %lookup_fd_rcu.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i115

lookup_fd_rcu.exit.rcu_read_unlock.exit_crit_edge: ; preds = %lookup_fd_rcu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i115:                               ; preds = %lookup_fd_rcu.exit
  %call1.i113 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %tobool.not.i114 = icmp eq i32 %call1.i113, 0
  br i1 %tobool.not.i114, label %land.lhs.true.i115.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i117

land.lhs.true.i115.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i117:                              ; preds = %land.lhs.true.i115
  %.b4.i116 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i116, label %land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge, label %if.then.i118

land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i118:                                     ; preds = %land.lhs.true2.i117
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i118, %land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i115.rcu_read_unlock.exit_crit_edge, %lookup_fd_rcu.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !50
  %45 = tail call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i.i.i.i119 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i119 to ptr
  %preempt_count.i.i.i.i120 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i120, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i120, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %cmp37.not = icmp eq ptr %retval.0.i.i.i, %filp
  br i1 %cmp37.not, label %if.end44, label %if.then39

if.then39:                                        ; preds = %rcu_read_unlock.exit
  %cmp40 = icmp eq ptr %call19.sink, %call19
  br i1 %cmp40, label %if.then59, label %if.then39.if.end64.critedge_crit_edge

if.then39.if.end64.critedge_crit_edge:            ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.critedge

if.end44:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task, align 8
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 78
  %51 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %thread_pid.i, align 16
  tail call void @__f_setown(ptr noundef %filp, ptr noundef %52, i32 noundef 1, i32 noundef 0) #8
  %call48 = tail call fastcc i32 @attach_dn(ptr noundef nonnull %call15, ptr noundef nonnull %call19.sink, ptr noundef %5, i32 noundef %fd, ptr noundef %filp, i32 noundef %new_mask.6.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call48)
  %cmp52 = icmp eq i32 %call48, -17
  %dn.0 = select i1 %tobool49.not, ptr null, ptr %call15
  %53 = or i1 %tobool49.not, %cmp52
  %error.0 = select i1 %53, i32 0, i32 %call48
  tail call fastcc void @dnotify_recalc_inode_mask(ptr noundef nonnull %call19.sink)
  br label %if.end64.critedge

if.then59:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %lock57 = getelementptr inbounds %struct.fsnotify_mark, ptr %call19, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock57) #8
  tail call void @fsnotify_detach_mark(ptr noundef nonnull %call19) #8
  %54 = load ptr, ptr @dnotify_group, align 4
  %mark_mutex61.c = getelementptr inbounds %struct.fsnotify_group, ptr %54, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mark_mutex61.c) #8
  tail call void @fsnotify_free_mark(ptr noundef nonnull %call19) #8
  br label %out_err

if.end64.critedge:                                ; preds = %if.end44, %if.then39.if.end64.critedge_crit_edge
  %dn.1.ph = phi ptr [ %dn.0, %if.end44 ], [ %call15, %if.then39.if.end64.critedge_crit_edge ]
  %error.1.ph = phi i32 [ %error.0, %if.end44 ], [ 0, %if.then39.if.end64.critedge_crit_edge ]
  %lock57124 = getelementptr inbounds %struct.fsnotify_mark, ptr %call19.sink, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %lock57124) #8
  %55 = load ptr, ptr @dnotify_group, align 4
  %mark_mutex61.c109 = getelementptr inbounds %struct.fsnotify_group, ptr %55, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %mark_mutex61.c109) #8
  br label %out_err

out_err:                                          ; preds = %if.end64.critedge, %if.then59
  %error.1128 = phi i32 [ %error.1.ph, %if.end64.critedge ], [ 0, %if.then59 ]
  %dn.1126 = phi ptr [ %dn.1.ph, %if.end64.critedge ], [ %call15, %if.then59 ]
  tail call void @fsnotify_put_mark(ptr noundef nonnull %call19.sink) #8
  %tobool65.not = icmp eq ptr %new_fsn_mark.0, null
  br i1 %tobool65.not, label %out_err.if.end67_crit_edge, label %out_err.if.then66_crit_edge

out_err.if.then66_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then66

out_err.if.end67_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then66:                                        ; preds = %out_err.if.then66_crit_edge, %out_err.thread136
  %error.2143 = phi i32 [ %call.i111, %out_err.thread136 ], [ %error.1128, %out_err.if.then66_crit_edge ]
  %dn.2142 = phi ptr [ %call15, %out_err.thread136 ], [ %dn.1126, %out_err.if.then66_crit_edge ]
  %new_fsn_mark.1141 = phi ptr [ %call19, %out_err.thread136 ], [ %new_fsn_mark.0, %out_err.if.then66_crit_edge ]
  tail call void @fsnotify_put_mark(ptr noundef nonnull %new_fsn_mark.1141) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %out_err.if.end67_crit_edge
  %error.2135 = phi i32 [ %error.2143, %if.then66 ], [ %error.1128, %out_err.if.end67_crit_edge ]
  %dn.2134 = phi ptr [ %dn.2142, %if.then66 ], [ %dn.1126, %out_err.if.end67_crit_edge ]
  %tobool68.not = icmp eq ptr %dn.2134, null
  br i1 %tobool68.not, label %if.end67.if.end70_crit_edge, label %if.end67.if.then69_crit_edge

if.end67.if.then69_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then69

if.end67.if.end70_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then69:                                        ; preds = %if.end67.if.then69_crit_edge, %if.end18.if.then69_crit_edge
  %dn.2134153 = phi ptr [ %dn.2134, %if.end67.if.then69_crit_edge ], [ %call15, %if.end18.if.then69_crit_edge ]
  %error.2135152 = phi i32 [ %error.2135, %if.end67.if.then69_crit_edge ], [ -12, %if.end18.if.then69_crit_edge ]
  %56 = load ptr, ptr @dnotify_struct_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %56, ptr noundef nonnull %dn.2134153) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67.if.end70_crit_edge, %if.end14.if.end70_crit_edge, %if.end8.if.end70_crit_edge, %if.end2.if.end70_crit_edge, %if.then1, %entry.if.end70_crit_edge
  %error.2135147 = phi i32 [ %error.2135152, %if.then69 ], [ %error.2135, %if.end67.if.end70_crit_edge ], [ 0, %if.then1 ], [ %call11, %if.end8.if.end70_crit_edge ], [ -22, %entry.if.end70_crit_edge ], [ -20, %if.end2.if.end70_crit_edge ], [ -12, %if.end14.if.end70_crit_edge ]
  ret i32 %error.2135147
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_notify(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_init_mark(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_setown(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @attach_dn(ptr noundef %dn, ptr nocapture noundef %dn_mark, ptr noundef %id, i32 noundef %fd, ptr noundef %filp, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dn1 = getelementptr inbounds %struct.dnotify_mark, ptr %dn_mark, i32 0, i32 1
  %0 = ptrtoint ptr %dn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %odn.028 = load ptr, ptr %dn1, align 4
  %cmp.not29 = icmp eq ptr %odn.028, null
  br i1 %cmp.not29, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %odn.030 = phi ptr [ %odn.0, %if.end.while.body_crit_edge ], [ %odn.028, %entry.while.body_crit_edge ]
  %dn_owner = getelementptr inbounds %struct.dnotify_struct, ptr %odn.030, i32 0, i32 4
  %1 = ptrtoint ptr %dn_owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dn_owner, align 4
  %cmp2 = icmp eq ptr %2, %id
  br i1 %cmp2, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %dn_filp = getelementptr inbounds %struct.dnotify_struct, ptr %odn.030, i32 0, i32 3
  %3 = ptrtoint ptr %dn_filp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dn_filp, align 4
  %cmp3 = icmp eq ptr %4, %filp
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dn_fd = getelementptr inbounds %struct.dnotify_struct, ptr %odn.030, i32 0, i32 2
  %5 = ptrtoint ptr %dn_fd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %fd, ptr %dn_fd, align 4
  %dn_mask = getelementptr inbounds %struct.dnotify_struct, ptr %odn.030, i32 0, i32 1
  %6 = ptrtoint ptr %dn_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dn_mask, align 4
  %or = or i32 %7, %mask
  store i32 %or, ptr %dn_mask, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %8 = ptrtoint ptr %odn.030 to i32
  call void @__asan_load4_noabort(i32 %8)
  %odn.0 = load ptr, ptr %odn.030, align 4
  %cmp.not = icmp eq ptr %odn.0, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %dn_mask4 = getelementptr inbounds %struct.dnotify_struct, ptr %dn, i32 0, i32 1
  %9 = ptrtoint ptr %dn_mask4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mask, ptr %dn_mask4, align 4
  %dn_fd5 = getelementptr inbounds %struct.dnotify_struct, ptr %dn, i32 0, i32 2
  %10 = ptrtoint ptr %dn_fd5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %fd, ptr %dn_fd5, align 4
  %dn_filp6 = getelementptr inbounds %struct.dnotify_struct, ptr %dn, i32 0, i32 3
  %11 = ptrtoint ptr %dn_filp6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %filp, ptr %dn_filp6, align 4
  %dn_owner7 = getelementptr inbounds %struct.dnotify_struct, ptr %dn, i32 0, i32 4
  %12 = ptrtoint ptr %dn_owner7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %id, ptr %dn_owner7, align 4
  %13 = ptrtoint ptr %dn1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dn1, align 4
  %15 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dn, align 4
  store ptr %dn, ptr %dn1, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ -17, %if.then ], [ 0, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dnotify_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 20, i32 noundef 4, i32 noundef 67371008, ptr noundef null) #8
  store ptr %call, ptr @dnotify_struct_cache, align 4
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 88, i32 noundef 4, i32 noundef 67371008, ptr noundef null) #8
  store ptr %call1, ptr @dnotify_mark_cache, align 4
  %call2 = tail call ptr @fsnotify_alloc_group(ptr noundef nonnull @dnotify_fsnotify_ops) #8
  store ptr %call2, ptr @dnotify_group, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.7) #11
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.8, ptr noundef nonnull @dnotify_sysctls, ptr noundef nonnull @.str.9) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_recalc_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_add_mark_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
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
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsnotify_alloc_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnotify_handle_event(ptr noundef %inode_mark, i32 noundef %mask, ptr nocapture noundef readnone %inode, ptr noundef readnone %dir, ptr nocapture noundef readnone %name, i32 noundef %cookie) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, -134217729
  %tobool.not = icmp eq ptr %dir, null
  %and1 = and i32 %mask, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond = and i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fsnotify_mark, ptr %inode_mark, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %dn3 = getelementptr inbounds %struct.dnotify_mark, ptr %inode_mark, i32 0, i32 1
  %0 = ptrtoint ptr %dn3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn3, align 4
  %cmp.not32 = icmp eq ptr %1, null
  br i1 %cmp.not32, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %connector.i = getelementptr inbounds %struct.fsnotify_mark, ptr %inode_mark, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %27, %while.cond.backedge.while.body_crit_edge ]
  %prev.033 = phi ptr [ %dn3, %while.body.lr.ph ], [ %prev.0.be, %while.cond.backedge.while.body_crit_edge ]
  %dn_mask = getelementptr inbounds %struct.dnotify_struct, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dn_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dn_mask, align 4
  %and4 = and i32 %and, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 0
  br i1 %cmp5, label %while.body.while.cond.backedge_crit_edge, label %if.end7

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end7:                                          ; preds = %while.body
  %dn_filp = getelementptr inbounds %struct.dnotify_struct, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %dn_filp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dn_filp, align 4
  %f_owner = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 11
  %dn_fd = getelementptr inbounds %struct.dnotify_struct, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %dn_fd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dn_fd, align 4
  tail call void @send_sigio(ptr noundef %f_owner, i32 noundef %8, i32 noundef 3) #8
  %9 = ptrtoint ptr %dn_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dn_mask, align 4
  %and9 = and i32 %10, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.end7.while.cond.backedge_crit_edge

if.end7.while.cond.backedge_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end7
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %13 = ptrtoint ptr %prev.033 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %prev.033, align 4
  %14 = load ptr, ptr @dnotify_struct_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %lock, align 4
  %16 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !46

do.body4.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/dnotify/dnotify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #8, !srcloc !47
  unreachable

do.end9.i:                                        ; preds = %if.else
  %17 = ptrtoint ptr %dn3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %dn.025.i = load ptr, ptr %dn3, align 4
  %cmp.not26.i = icmp eq ptr %dn.025.i, null
  br i1 %cmp.not26.i, label %do.end9.i.for.end.i_crit_edge, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

do.end9.i.for.end.i_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %dn.028.i = phi ptr [ %dn.0.i, %for.body.i.for.body.i_crit_edge ], [ %dn.025.i, %do.end9.i.for.body.i_crit_edge ]
  %new_mask.027.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end9.i.for.body.i_crit_edge ]
  %dn_mask.i = getelementptr inbounds %struct.dnotify_struct, ptr %dn.028.i, i32 0, i32 1
  %18 = ptrtoint ptr %dn_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dn_mask.i, align 4
  %and.i = and i32 %19, -536870913
  %or.i = or i32 %and.i, %new_mask.027.i
  %20 = ptrtoint ptr %dn.028.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %dn.0.i = load ptr, ptr %dn.028.i, align 4
  %cmp.not.i = icmp eq ptr %dn.0.i, null
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end9.i.for.end.i_crit_edge
  %new_mask.0.lcssa.i = phi i32 [ 0, %do.end9.i.for.end.i_crit_edge ], [ %or.i, %for.body.i.for.end.i_crit_edge ]
  %21 = ptrtoint ptr %inode_mark to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %inode_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %new_mask.0.lcssa.i)
  %cmp11.i = icmp eq i32 %22, %new_mask.0.lcssa.i
  br i1 %cmp11.i, label %for.end.i.while.cond.backedge_crit_edge, label %if.end13.i

for.end.i.while.cond.backedge_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end13.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %inode_mark to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %new_mask.0.lcssa.i, ptr %inode_mark, align 4
  %24 = ptrtoint ptr %connector.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %connector.i, align 4
  tail call void @fsnotify_recalc_mask(ptr noundef %25) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end13.i, %for.end.i.while.cond.backedge_crit_edge, %if.end7.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %prev.0.be = phi ptr [ %2, %while.body.while.cond.backedge_crit_edge ], [ %2, %if.end7.while.cond.backedge_crit_edge ], [ %prev.033, %for.end.i.while.cond.backedge_crit_edge ], [ %prev.033, %if.end13.i ]
  %26 = ptrtoint ptr %prev.0.be to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.0.be, align 4
  %cmp.not = icmp eq ptr %27, null
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dnotify_free_mark(ptr noundef %fsn_mark) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dn = getelementptr inbounds %struct.dnotify_mark, ptr %fsn_mark, i32 0, i32 1
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !51

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/notify/dnotify/dnotify.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #8, !srcloc !52
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr @dnotify_mark_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %fsn_mark) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @send_sigio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !32, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_dnotify__232_411_dnotify_init6, !1, !"__initcall__kmod_dnotify__232_411_dnotify_init6", i1 false, i1 false}
!1 = !{!"../fs/notify/dnotify/dnotify.c", i32 411, i32 1}
!2 = !{ptr @dnotify_struct_cache, !3, !"dnotify_struct_cache", i1 false, i1 false}
!3 = !{!"../fs/notify/dnotify/dnotify.c", i32 42, i32 27}
!4 = !{ptr @dnotify_mark_cache, !5, !"dnotify_mark_cache", i1 false, i1 false}
!5 = !{!"../fs/notify/dnotify/dnotify.c", i32 43, i32 27}
!6 = !{ptr @dnotify_group, !7, !"dnotify_group", i1 false, i1 false}
!7 = !{!"../fs/notify/dnotify/dnotify.c", i32 44, i32 31}
!8 = !{ptr @dir_notify_enable, !9, !"dir_notify_enable", i1 false, i1 false}
!9 = !{!"../fs/notify/dnotify/dnotify.c", i32 22, i32 12}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/fdtable.h", i32 103, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/notify/dnotify/dnotify.c", i32 400, i32 25}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/notify/dnotify/dnotify.c", i32 402, i32 23}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/notify/dnotify/dnotify.c", i32 406, i32 9}
!27 = !{ptr @dnotify_fsnotify_ops, !28, !"dnotify_fsnotify_ops", i1 false, i1 false}
!28 = !{!"../fs/notify/dnotify/dnotify.c", i32 141, i32 34}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/notify/dnotify/dnotify.c", i32 36, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/notify/dnotify/dnotify.c", i32 26, i32 15}
!34 = !{ptr @dnotify_sysctls, !35, !"dnotify_sysctls", i1 false, i1 false}
!35 = !{!"../fs/notify/dnotify/dnotify.c", i32 24, i32 25}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2153641120, i64 2153641611, i64 2153641157, i64 2153641213, i64 2153641247, i64 2153641271, i64 2153641312, i64 2153641333, i64 2153641361, i64 2153641395}
!48 = !{i64 2149474064}
!49 = !{i64 775795, i64 775812}
!50 = !{i64 2149474330}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2153645315, i64 2153645807, i64 2153645352, i64 2153645408, i64 2153645442, i64 2153645466, i64 2153645507, i64 2153645528, i64 2153645556, i64 2153645590}
