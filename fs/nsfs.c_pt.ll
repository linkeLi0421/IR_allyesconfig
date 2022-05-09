; ModuleID = '/llk/IR_all_yes/fs/nsfs.c_pt.bc'
source_filename = "../fs/nsfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+open_related_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_open_related_ns\09\09\09\09"
module asm "\09.long\09__crc_open_related_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_open_related_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22open_related_ns\22\09\09\09\09\09"
module asm "__kstrtabns_open_related_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.71 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.72 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.6 }
%struct.llist_node = type { ptr }
%union.anon.6 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.25 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.25 = type { %struct.callback_head }
%struct.pseudo_fs_context = type { ptr, ptr, ptr, i32 }

@ns_dentry_operations = dso_local constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr @always_delete_dentry, ptr null, ptr null, ptr @ns_prune_dentry, ptr null, ptr @ns_dname, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@__kstrtab_open_related_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_open_related_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_open_related_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @open_related_ns to i32), ptr @__kstrtab_open_related_ns, ptr @__kstrtabns_open_related_ns }, section "___ksymtab_gpl+open_related_ns", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:[%u]\00", [24 x i8] zeroinitializer }, align 32
@ns_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ns_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nsfs_mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nsfs = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.7, i32 0, ptr @nsfs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't set nsfs up\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:[%lu]\00", [23 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fs/nsfs.c\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nsfs\00", [27 x i8] zeroinitializer }, align 32
@nsfs_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsfs_evict, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr @nsfs_show_path, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 46849, i64 46850, i64 46851, i64 46852]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 226, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"ns_file_operations\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 21, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"nsfs_mnt\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 17, i32 25 }
@___asan_gen_.19 = private unnamed_addr constant [5 x i8] c"nsfs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 294, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 304, i32 9 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 31, i32 47 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 695, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 723, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 211, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 295, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"nsfs_ops\00", align 1
@___asan_gen_.44 = private constant [13 x i8] c"../fs/nsfs.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 278, i32 38 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_open_related_ns, ptr @.str, ptr @ns_file_operations, ptr @nsfs_mnt, ptr @nsfs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nsfs_ops], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsfs_mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsfs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsfs_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns_prune_dentry(ptr nocapture noundef readonly %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ns_dname(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buflen) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %call1 = tail call ptr (ptr, ptr, i32, ptr, ...) @dynamic_dname(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buflen, ptr noundef nonnull @.str.2, ptr noundef %5, i32 noundef %7) #11
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ns_get_path_cb(ptr nocapture noundef writeonly %path, ptr nocapture noundef readonly %ns_get_cb, ptr noundef %private_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %call = tail call ptr %ns_get_cb(ptr noundef %private_data) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body.cleanup2_crit_edge, label %do.cond

do.body.cleanup2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup2

do.cond:                                          ; preds = %do.body
  %call1 = tail call fastcc i32 @__ns_get_path(ptr noundef %path, ptr noundef nonnull %call)
  %cmp = icmp eq i32 %call1, -11
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.cond.cleanup2_crit_edge

do.cond.cleanup2_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup2

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup2:                                         ; preds = %do.cond.cleanup2_crit_edge, %do.body.cleanup2_crit_edge
  %retval.2 = phi i32 [ %call1, %do.cond.cleanup2_crit_edge ], [ -2, %do.body.cleanup2_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ns_get_path(ptr nocapture noundef writeonly %path, ptr noundef %ns) unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nsfs_mnt, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !33) #11
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !43
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ns, i32 noundef 4) #11
  %5 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.slow_crit_edge, label %if.end

rcu_read_lock.exit.slow_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow

if.end:                                           ; preds = %rcu_read_lock.exit
  %7 = inttoptr i32 %6 to ptr
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 7
  %call1 = tail call i32 @lockref_get_not_dead(ptr noundef %d_lockref) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.slow_crit_edge, label %if.end4

if.end.slow_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow

if.end4:                                          ; preds = %if.end
  %call.i66 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i66, label %if.end4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i69

if.end4.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i69:                                ; preds = %if.end4
  %call1.i67 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, %if.end4.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !44
  %8 = tail call i32 @llvm.read_register.i32(metadata !33) #11
  %and.i.i.i.i.i73 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i74, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %ops = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %put = getelementptr inbounds %struct.proc_ns_operations, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %put, align 4
  tail call void %15(ptr noundef %ns) #11
  br label %got_it

got_it:                                           ; preds = %atomic_long_cmpxchg.exit.got_it_crit_edge, %rcu_read_unlock.exit
  %dentry.0 = phi ptr [ %7, %rcu_read_unlock.exit ], [ %call15, %atomic_long_cmpxchg.exit.got_it_crit_edge ]
  %call5 = call ptr @mntget(ptr noundef %0) #11
  %16 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5, ptr %path, align 4
  %dentry7 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %17 = ptrtoint ptr %dentry7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dentry.0, ptr %dentry7, align 4
  br label %cleanup

slow:                                             ; preds = %if.end.slow_crit_edge, %rcu_read_lock.exit.slow_crit_edge
  %call.i75 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i75, label %slow.rcu_read_unlock.exit85_crit_edge, label %land.lhs.true.i78

slow.rcu_read_unlock.exit85_crit_edge:            ; preds = %slow
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit85

land.lhs.true.i78:                                ; preds = %slow
  %call1.i76 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool.not.i77 = icmp eq i32 %call1.i76, 0
  br i1 %tobool.not.i77, label %land.lhs.true.i78.rcu_read_unlock.exit85_crit_edge, label %land.lhs.true2.i80

land.lhs.true.i78.rcu_read_unlock.exit85_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit85

land.lhs.true2.i80:                               ; preds = %land.lhs.true.i78
  %.b4.i79 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i79, label %land.lhs.true2.i80.rcu_read_unlock.exit85_crit_edge, label %if.then.i81

land.lhs.true2.i80.rcu_read_unlock.exit85_crit_edge: ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit85

if.then.i81:                                      ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit85

rcu_read_unlock.exit85:                           ; preds = %if.then.i81, %land.lhs.true2.i80.rcu_read_unlock.exit85_crit_edge, %land.lhs.true.i78.rcu_read_unlock.exit85_crit_edge, %slow.rcu_read_unlock.exit85_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !44
  %18 = tail call i32 @llvm.read_register.i32(metadata !33) #11
  %and.i.i.i.i.i82 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i82 to ptr
  %preempt_count.i.i.i.i83 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i83, align 4
  %sub.i.i.i84 = add i32 %21, -1
  store volatile i32 %sub.i.i.i84, ptr %preempt_count.i.i.i.i83, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  %22 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mnt_sb, align 4
  %call8 = tail call ptr @new_inode_pseudo(ptr noundef %23) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %rcu_read_unlock.exit85
  call void @__sanitizer_cov_trace_pc() #13
  %ops11 = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 1
  %24 = ptrtoint ptr %ops11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops11, align 4
  %put12 = getelementptr inbounds %struct.proc_ns_operations, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %put12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %put12, align 4
  tail call void %27(ptr noundef %ns) #11
  br label %cleanup

if.end13:                                         ; preds = %rcu_read_unlock.exit85
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 2
  %28 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inum, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call8) #11
  %31 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  %32 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %33 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_flags = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 4
  %34 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_flags, align 4
  %or = or i32 %35, 8
  store i32 %or, ptr %i_flags, align 4
  %36 = ptrtoint ptr %call8 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -32476, ptr %call8, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 44
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ns_file_operations, ptr %37, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %call8, i32 0, i32 54
  %39 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ns, ptr %i_private, align 4
  %40 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mnt_sb, align 4
  %call15 = call ptr @d_alloc_anon(ptr noundef %41) #11
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @iput(ptr noundef nonnull %call8) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @d_instantiate(ptr noundef nonnull %call15, ptr noundef nonnull %call8) #11
  %ops19 = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 1
  %42 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops19, align 4
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %call15, i32 0, i32 11
  %44 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %d_fsdata, align 4
  %45 = ptrtoint ptr %call15 to i32
  %call.i.i65 = call zeroext i1 @__kasan_check_write(ptr noundef %ns, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !45
  call void @llvm.prefetch.p0(ptr %ns, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end18
  %46 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ns, ptr %ns, i32 0, i32 %45, ptr elementtype(i32) %ns) #11, !srcloc !46
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %46, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_long_cmpxchg.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

atomic_long_cmpxchg.exit:                         ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %46, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %tobool22.not = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %tobool22.not, label %atomic_long_cmpxchg.exit.got_it_crit_edge, label %if.then23

atomic_long_cmpxchg.exit.got_it_crit_edge:        ; preds = %atomic_long_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %got_it

if.then23:                                        ; preds = %atomic_long_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @d_delete(ptr noundef nonnull %call15) #11
  call void @dput(ptr noundef nonnull %call15) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !48
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !49
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.then17, %if.then10, %got_it
  %retval.0 = phi i32 [ 0, %got_it ], [ -11, %if.then23 ], [ -12, %if.then17 ], [ -12, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ns_get_path(ptr nocapture noundef writeonly %path, ptr noundef %task, ptr noundef %ns_ops) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %get.i = getelementptr inbounds %struct.proc_ns_operations, ptr %ns_ops, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %0 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get.i, align 4
  %call.i3 = tail call ptr %1(ptr noundef %task) #11
  %tobool.not.i = icmp eq ptr %call.i3, null
  br i1 %tobool.not.i, label %do.body.i.ns_get_path_cb.exit_crit_edge, label %do.cond.i

do.body.i.ns_get_path_cb.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_path_cb.exit

do.cond.i:                                        ; preds = %do.body.i
  %call1.i = tail call fastcc i32 @__ns_get_path(ptr noundef %path, ptr noundef nonnull %call.i3) #11
  %cmp.i = icmp eq i32 %call1.i, -11
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.ns_get_path_cb.exit_crit_edge

do.cond.i.ns_get_path_cb.exit_crit_edge:          ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ns_get_path_cb.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

ns_get_path_cb.exit:                              ; preds = %do.cond.i.ns_get_path_cb.exit_crit_edge, %do.body.i.ns_get_path_cb.exit_crit_edge
  %retval.2.i = phi i32 [ %call1.i, %do.cond.i.ns_get_path_cb.exit_crit_edge ], [ -2, %do.body.i.ns_get_path_cb.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @open_related_ns(ptr noundef %ns, ptr nocapture noundef readonly %get_ns) #1 align 64 {
entry:
  %path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #11
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %path, align 8
  %call = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup19_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup19

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry.do.body_crit_edge
  %call1 = tail call ptr %get_ns(ptr noundef %ns) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %do.cond

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_unused_fd(i32 noundef %call) #11
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup19

do.cond:                                          ; preds = %do.body
  %call6 = call fastcc i32 @__ns_get_path(ptr noundef nonnull %path, ptr noundef %call1)
  %2 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.then8 [
    i32 -11, label %do.cond.do.body_crit_edge
    i32 0, label %do.end12
  ]

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then8:                                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_unused_fd(i32 noundef %call) #11
  br label %cleanup19

do.end12:                                         ; preds = %do.cond
  %3 = tail call i32 @llvm.read_register.i32(metadata !33) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 16
  %call14 = call ptr @dentry_open(ptr noundef nonnull %path, i32 noundef 0, ptr noundef %8) #11
  call void @path_put(ptr noundef nonnull %path) #11
  %cmp.i35 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %if.then16, label %if.else

if.then16:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void @put_unused_fd(i32 noundef %call) #11
  %9 = ptrtoint ptr %call14 to i32
  br label %cleanup19

if.else:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void @fd_install(i32 noundef %call, ptr noundef %call14) #11
  br label %cleanup19

cleanup19:                                        ; preds = %if.else, %if.then16, %if.then8, %cleanup.thread, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ %call6, %if.then8 ], [ %call, %entry.cleanup19_crit_edge ], [ %9, %if.then16 ], [ %call, %if.else ], [ %1, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #11
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ns_get_name(ptr nocapture noundef writeonly %buf, i32 noundef %size, ptr noundef %task, ptr nocapture noundef readonly %ns_ops) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %get = getelementptr inbounds %struct.proc_ns_operations, ptr %ns_ops, i32 0, i32 3
  %0 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get, align 4
  %call = tail call ptr %1(ptr noundef %task) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %real_ns_name = getelementptr inbounds %struct.proc_ns_operations, ptr %ns_ops, i32 0, i32 1
  %2 = ptrtoint ptr %real_ns_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %real_ns_name, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %ns_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_ops, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.false ], [ %3, %if.then.cond.end_crit_edge ]
  %inum = getelementptr inbounds %struct.ns_common, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inum, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str, ptr noundef %cond, i32 noundef %7)
  %put = getelementptr inbounds %struct.proc_ns_operations, ptr %ns_ops, i32 0, i32 4
  %8 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %put, align 4
  tail call void %9(ptr noundef nonnull %call) #11
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  %res.0 = phi i32 [ %call3, %cond.end ], [ -2, %entry.if.end_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @proc_ns_file(ptr nocapture noundef readonly %file) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %cmp = icmp eq ptr %1, @ns_file_operations
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @proc_ns_fget(i32 noundef %fd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fget(i32 noundef %fd) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp eq ptr %1, @ns_file_operations
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %out_invalid

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_invalid:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %out_invalid, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %out_invalid ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -9 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ns_match(ptr nocapture noundef readonly %ns, i32 noundef %dev, i32 noundef %ino) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %inum = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 2
  %0 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ino)
  %cmp = icmp eq i32 %1, %ino
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load ptr, ptr @nsfs_mnt, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mnt_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %dev)
  %cmp1 = icmp eq i32 %6, %dev
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp1, %land.rhs ]
  ret i1 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @nsfs_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kern_mount(ptr noundef nonnull @nsfs) #11
  store ptr %call, ptr @nsfs_mnt, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #14
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mnt_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 2147483647
  store i32 %and, ptr %s_flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dynamic_dname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_dead(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode_pseudo(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_anon(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %ioctl, i32 noundef %arg) #1 align 64 {
entry:
  %path.i = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %4 = zext i32 %ioctl to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %ioctl, label %entry.cleanup_crit_edge [
    i32 46849, label %sw.bb
    i32 46850, label %sw.bb2
    i32 46851, label %sw.bb6
    i32 46852, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #11
  %5 = ptrtoint ptr %path.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %path.i, align 8
  %call.i = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.open_related_ns.exit_crit_edge, label %sw.bb.do.body.i_crit_edge

sw.bb.do.body.i_crit_edge:                        ; preds = %sw.bb
  br label %do.body.i

sw.bb.open_related_ns.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %open_related_ns.exit

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %sw.bb.do.body.i_crit_edge
  %call1.i = tail call ptr @ns_get_owner(ptr noundef %3) #11
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.thread.i, label %do.cond.i

cleanup.thread.i:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_unused_fd(i32 noundef %call.i) #11
  %6 = ptrtoint ptr %call1.i to i32
  br label %open_related_ns.exit

do.cond.i:                                        ; preds = %do.body.i
  %call6.i = call fastcc i32 @__ns_get_path(ptr noundef nonnull %path.i, ptr noundef %call1.i) #11
  %7 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call6.i, label %if.then8.i [
    i32 -11, label %do.cond.i.do.body.i_crit_edge
    i32 0, label %do.end12.i
  ]

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then8.i:                                       ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @put_unused_fd(i32 noundef %call.i) #11
  br label %open_related_ns.exit

do.end12.i:                                       ; preds = %do.cond.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !33) #11
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred.i, align 16
  %call14.i = call ptr @dentry_open(ptr noundef nonnull %path.i, i32 noundef 0, ptr noundef %13) #11
  call void @path_put(ptr noundef nonnull %path.i) #11
  %cmp.i35.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @put_unused_fd(i32 noundef %call.i) #11
  %14 = ptrtoint ptr %call14.i to i32
  br label %open_related_ns.exit

if.else.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @fd_install(i32 noundef %call.i, ptr noundef %call14.i) #11
  br label %open_related_ns.exit

open_related_ns.exit:                             ; preds = %if.else.i, %if.then16.i, %if.then8.i, %cleanup.thread.i, %sw.bb.open_related_ns.exit_crit_edge
  %retval.2.i = phi i32 [ %call6.i, %if.then8.i ], [ %call.i, %sw.bb.open_related_ns.exit_crit_edge ], [ %14, %if.then16.i ], [ %call.i, %if.else.i ], [ %6, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.ns_common, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %get_parent = getelementptr inbounds %struct.proc_ns_operations, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %get_parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_parent, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %sw.bb2.cleanup_crit_edge, label %if.end

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @open_related_ns(ptr noundef %3, ptr noundef nonnull %18)
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ops7 = getelementptr inbounds %struct.ns_common, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops7, align 4
  %type = getelementptr inbounds %struct.proc_ns_operations, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %ops9 = getelementptr inbounds %struct.ns_common, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %ops9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops9, align 4
  %type10 = getelementptr inbounds %struct.proc_ns_operations, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %type10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %26)
  %cmp.not = icmp eq i32 %26, 268435456
  br i1 %cmp.not, label %if.end12, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  %27 = inttoptr i32 %arg to ptr
  %28 = tail call i32 @llvm.read_register.i32(metadata !33) #11
  %and.i33 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i33 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 99
  %32 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cred, align 16
  %user_ns16 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %user_ns16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %user_ns16, align 4
  %owner = getelementptr i8, ptr %3, i32 -8
  %36 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack = load i32, ptr %owner, align 4
  %37 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call17 = tail call i32 @from_kuid_munged(ptr noundef %35, [1 x i32] %37) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 211) #11
  %38 = tail call i32 @llvm.read_register.i32(metadata !33) #11
  %and.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !50
  %and.i = and i32 %40, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !52
  %41 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %27, i32 %call17, i32 -1226833921) #11, !srcloc !53
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #11, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.bb8.cleanup_crit_edge, %sw.bb6, %if.end, %sw.bb2.cleanup_crit_edge, %open_related_ns.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %41, %if.end12 ], [ %22, %sw.bb6 ], [ %call5, %if.end ], [ %retval.2.i, %open_related_ns.exit ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ns_get_owner(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsfs_init_fs_context(ptr noundef %fc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @init_pseudo(ptr noundef %fc, i32 noundef 1853056627) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nsfs_ops, ptr %call, align 4
  %dops = getelementptr inbounds %struct.pseudo_fs_context, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %dops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ns_dentry_operations, ptr %dops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nsfs_evict(ptr noundef %inode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  tail call void @clear_inode(ptr noundef %inode) #11
  %ops = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %put = getelementptr inbounds %struct.proc_ns_operations, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %put, align 4
  tail call void %5(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsfs_show_path(ptr noundef %seq, ptr nocapture noundef readonly %dentry) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.2, ptr noundef %5, i32 noundef %7) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @ns_dentry_operations, !1, !"ns_dentry_operations", i1 false, i1 false}
!1 = !{!"../fs/nsfs.c", i32 44, i32 32}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../fs/nsfs.c", i32 176, i32 35}
!4 = !{ptr @__ksymtab_open_related_ns, !5, !"__ksymtab_open_related_ns", i1 false, i1 false}
!5 = !{!"../fs/nsfs.c", i32 186, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nsfs.c", i32 226, i32 29}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/nsfs.c", i32 304, i32 9}
!10 = !{ptr @nsfs_mnt, !11, !"nsfs_mnt", i1 false, i1 false}
!11 = !{!"../fs/nsfs.c", i32 17, i32 25}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nsfs.c", i32 31, i32 47}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ns_file_operations, !22, !"ns_file_operations", i1 false, i1 false}
!22 = !{!"../fs/nsfs.c", i32 21, i32 37}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../fs/nsfs.c", i32 210, i32 26}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/nsfs.c", i32 211, i32 10}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/nsfs.c", i32 295, i32 10}
!29 = !{ptr @nsfs, !30, !"nsfs", i1 false, i1 false}
!30 = !{!"../fs/nsfs.c", i32 294, i32 32}
!31 = !{ptr @nsfs_ops, !32, !"nsfs_ops", i1 false, i1 false}
!32 = !{!"../fs/nsfs.c", i32 278, i32 38}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2149826663}
!44 = !{i64 2149826929}
!45 = !{i64 2148417730}
!46 = !{i64 799619, i64 799643, i64 799664, i64 799681, i64 799698}
!47 = !{i64 2148417956}
!48 = !{i64 2153428581}
!49 = !{i64 2153428423}
!50 = !{i64 4810986}
!51 = !{i64 4811183}
!52 = !{i64 2152296416}
!53 = !{i64 2153440507, i64 2153440787, i64 2153441121, i64 2153441455}
