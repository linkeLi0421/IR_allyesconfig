; ModuleID = '/llk/IR_all_yes/fs/proc/inode.c_pt.bc'
source_filename = "../fs/proc/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type opaque
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.proc_inode = type { ptr, i32, %union.proc_op, ptr, ptr, ptr, %struct.hlist_node, ptr, %struct.inode }
%union.proc_op = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.71, ptr, %union.anon.72, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.71 = type { ptr }
%union.anon.72 = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pde_opener = type { %struct.list_head, ptr, i8, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.delayed_call = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.14 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"proc_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@proc_inode_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pde_opener\00", [21 x i8] zeroinitializer }, align 32
@pde_opener_cache = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"proc_dir_entry\00", [17 x i8] zeroinitializer }, align 32
@proc_dir_entry_cache = external dso_local local_unnamed_addr global ptr, align 4
@proc_sops = dso_local constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @proc_alloc_inode, ptr null, ptr @proc_free_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr @proc_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @proc_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@proc_link_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @proc_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_iter_file_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @proc_reg_llseek, ptr null, ptr @proc_reg_write, ptr @proc_reg_read_iter, ptr null, ptr null, ptr null, ptr null, ptr @proc_reg_poll, ptr @proc_reg_unlocked_ioctl, ptr null, ptr @proc_reg_mmap, i32 0, ptr @proc_reg_open, ptr null, ptr @proc_reg_release, ptr null, ptr null, ptr null, ptr null, ptr @proc_reg_get_unmapped_area, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_reg_file_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @proc_reg_llseek, ptr @proc_reg_read, ptr @proc_reg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_reg_poll, ptr @proc_reg_unlocked_ioctl, ptr null, ptr @proc_reg_mmap, i32 0, ptr @proc_reg_open, ptr null, ptr @proc_reg_release, ptr null, ptr null, ptr null, ptr null, ptr @proc_reg_get_unmapped_area, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",hidepid=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",subset=pid\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"noaccess\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"invisible\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ptraceable\00", [21 x i8] zeroinitializer }, align 32
@hidepid2str.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/proc/inode.c\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad hide_pid value: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 97, i32 40 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 104, i32 21 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 107, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"proc_sops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 195, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"proc_iter_file_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 582, i32 37 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"proc_reg_file_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 570, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 695, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 723, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 186, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 188, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 190, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 173, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 174, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 175, i32 39 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 177, i32 2 }
@___asan_gen_.70 = private constant [19 x i8] c"../fs/proc/inode.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 178, i32 9 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 87, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @proc_sops, ptr @proc_iter_file_ops, ptr @proc_reg_file_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @init_completion.__key, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_iter_file_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_reg_file_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_init_kmemcache() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 824, i32 noundef 0, i32 noundef 68550656, ptr noundef nonnull @init_once) #7
  store ptr %call, ptr @proc_inode_cachep, align 4
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef 0, i32 noundef 67371008, ptr noundef null) #7
  store ptr %call1, ptr @pde_opener_cache, align 4
  %call2 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.2, i32 noundef 192, i32 noundef 0, i32 noundef 262144, i32 noundef 148, i32 noundef 40, ptr noundef null) #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @proc_dir_entry_cache to i32))
  store ptr %call2, ptr @proc_dir_entry_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.proc_inode, ptr %foo, i32 0, i32 8
  tail call void @inode_init_once(ptr noundef %vfs_inode) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_invalidate_siblings_dcache(ptr nocapture noundef readonly %inodes, ptr noundef %lock) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inodes, align 4
  %tobool.not102 = icmp eq ptr %5, null
  br i1 %tobool.not102, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.if.end_crit_edge

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  br label %if.end

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %6 = phi ptr [ %33, %cleanup.if.end_crit_edge ], [ %5, %rcu_read_lock.exit.if.end_crit_edge ]
  %old_sb.0103 = phi ptr [ %old_sb.2, %cleanup.if.end_crit_edge ], [ null, %rcu_read_lock.exit.if.end_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i, label %if.end.hlist_del_init_rcu.exit_crit_edge, label %if.then.i72

if.end.hlist_del_init_rcu.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del_init_rcu.exit

if.then.i72:                                      ; preds = %if.end
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %8, align 4
  %tobool.not.i7.i = icmp eq ptr %10, null
  br i1 %tobool.not.i7.i, label %if.then.i72.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i72.__hlist_del.exit.i_crit_edge:         ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i72.__hlist_del.exit.i_crit_edge
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %if.end.hlist_del_init_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %vfs_inode = getelementptr i8, ptr %6, i32 16
  %i_sb = getelementptr i8, ptr %6, i32 44
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %cmp.not = icmp eq ptr %15, %old_sb.0103
  br i1 %cmp.not, label %hlist_del_init_rcu.exit.if.end2_crit_edge, label %land.lhs.true

hlist_del_init_rcu.exit.if.end2_crit_edge:        ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

land.lhs.true:                                    ; preds = %hlist_del_init_rcu.exit
  %s_active = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_active, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %s_active, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %s_active, ptr %s_active, i32 0, i32 1, ptr elementtype(i32) %s_active) #7, !srcloc !60
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.cleanup_crit_edge, label %atomic_inc_not_zero.exit.thread

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

atomic_inc_not_zero.exit.thread:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  br label %if.end2

if.end2:                                          ; preds = %atomic_inc_not_zero.exit.thread, %hlist_del_init_rcu.exit.if.end2_crit_edge
  %call3 = tail call ptr @igrab(ptr noundef %vfs_inode) #7
  %call.i73 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i73, label %if.end2.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i76

if.end2.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i76:                                ; preds = %if.end2
  %call1.i74 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i78

land.lhs.true.i76.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i78:                               ; preds = %land.lhs.true.i76
  %.b4.i77 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77, label %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, label %if.then.i79

land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i79:                                      ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i79, %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, %if.end2.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %17 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i80 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i80 to ptr
  %preempt_count.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i81, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i81, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %cmp.not, label %rcu_read_unlock.exit.if.end9_crit_edge, label %if.then5

rcu_read_unlock.exit.if.end9_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %rcu_read_unlock.exit
  %tobool6.not = icmp eq ptr %old_sb.0103, null
  br i1 %tobool6.not, label %if.then5.if.end9_crit_edge, label %if.then7

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @deactivate_super(ptr noundef nonnull %old_sb.0103) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5.if.end9_crit_edge, %rcu_read_unlock.exit.if.end9_crit_edge
  %old_sb.1 = phi ptr [ %old_sb.0103, %rcu_read_unlock.exit.if.end9_crit_edge ], [ %15, %if.then7 ], [ %15, %if.then5.if.end9_crit_edge ]
  %tobool10.not = icmp eq ptr %call3, null
  br i1 %tobool10.not, label %if.then14, label %if.end15, !prof !63

if.then14:                                        ; preds = %if.end9
  %21 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i50 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %add.i.i.i52 = add i32 %24, 1
  store volatile i32 %add.i.i.i52, ptr %preempt_count.i.i.i.i51, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i53 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i53, label %if.then14.cleanup_crit_edge, label %land.lhs.true.i56

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i56:                                ; preds = %if.then14
  %call1.i54 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.cleanup_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.cleanup_crit_edge:              ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.cleanup_crit_edge, label %land.lhs.true2.i58.cleanup.sink.split_crit_edge

land.lhs.true2.i58.cleanup.sink.split_crit_edge:  ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true2.i58.cleanup_crit_edge:             ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %25 = ptrtoint ptr %call3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call3, align 8
  %27 = and i16 %26, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %27)
  %cmp16 = icmp eq i16 %27, 16384
  br i1 %cmp16, label %if.then18, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end15
  %call2399 = tail call ptr @d_find_alias(ptr noundef nonnull %call3) #7
  %tobool24.not100 = icmp eq ptr %call2399, null
  br i1 %tobool24.not100, label %while.cond.preheader.if.end25_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end25_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then18:                                        ; preds = %if.end15
  %call19 = tail call ptr @d_find_any_alias(ptr noundef nonnull %call3) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then18.if.end25_crit_edge, label %if.then21

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @d_invalidate(ptr noundef nonnull %call19) #7
  tail call void @dput(ptr noundef nonnull %call19) #7
  br label %if.end25

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call23101 = phi ptr [ %call23, %while.body.while.body_crit_edge ], [ %call2399, %while.cond.preheader.while.body_crit_edge ]
  tail call void @d_invalidate(ptr noundef nonnull %call23101) #7
  tail call void @dput(ptr noundef nonnull %call23101) #7
  %call23 = tail call ptr @d_find_alias(ptr noundef nonnull %call3) #7
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %while.body.if.end25_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end25:                                         ; preds = %while.body.if.end25_crit_edge, %if.then21, %if.then18.if.end25_crit_edge, %while.cond.preheader.if.end25_crit_edge
  tail call void @iput(ptr noundef nonnull %call3) #7
  %28 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i61 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %add.i.i.i63 = add i32 %31, 1
  store volatile i32 %add.i.i.i63, ptr %preempt_count.i.i.i.i62, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i64 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i64, label %if.end25.cleanup_crit_edge, label %land.lhs.true.i67

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i67:                                ; preds = %if.end25
  %call1.i65 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.cleanup_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.cleanup_crit_edge:              ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.cleanup_crit_edge, label %land.lhs.true2.i69.cleanup.sink.split_crit_edge

land.lhs.true2.i69.cleanup.sink.split_crit_edge:  ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true2.i69.cleanup_crit_edge:             ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true2.i69.cleanup.sink.split_crit_edge, %land.lhs.true2.i58.cleanup.sink.split_crit_edge
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true2.i69.cleanup_crit_edge, %land.lhs.true.i67.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %land.lhs.true2.i58.cleanup_crit_edge, %land.lhs.true.i56.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %old_sb.2 = phi ptr [ %old_sb.0103, %land.lhs.true.cleanup_crit_edge ], [ %old_sb.1, %if.then14.cleanup_crit_edge ], [ %old_sb.1, %land.lhs.true.i56.cleanup_crit_edge ], [ %old_sb.1, %land.lhs.true2.i58.cleanup_crit_edge ], [ %old_sb.1, %if.end25.cleanup_crit_edge ], [ %old_sb.1, %land.lhs.true.i67.cleanup_crit_edge ], [ %old_sb.1, %land.lhs.true2.i69.cleanup_crit_edge ], [ %old_sb.1, %cleanup.sink.split ]
  %32 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %inodes, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %old_sb.0.lcssa = phi ptr [ null, %rcu_read_lock.exit.for.end_crit_edge ], [ %old_sb.2, %cleanup.for.end_crit_edge ]
  %call.i82 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i82, label %for.end.rcu_read_unlock.exit92_crit_edge, label %land.lhs.true.i85

for.end.rcu_read_unlock.exit92_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit92

land.lhs.true.i85:                                ; preds = %for.end
  %call1.i83 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %land.lhs.true.i85.rcu_read_unlock.exit92_crit_edge, label %land.lhs.true2.i87

land.lhs.true.i85.rcu_read_unlock.exit92_crit_edge: ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit92

land.lhs.true2.i87:                               ; preds = %land.lhs.true.i85
  %.b4.i86 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i86, label %land.lhs.true2.i87.rcu_read_unlock.exit92_crit_edge, label %if.then.i88

land.lhs.true2.i87.rcu_read_unlock.exit92_crit_edge: ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit92

if.then.i88:                                      ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit92

rcu_read_unlock.exit92:                           ; preds = %if.then.i88, %land.lhs.true2.i87.rcu_read_unlock.exit92_crit_edge, %land.lhs.true.i85.rcu_read_unlock.exit92_crit_edge, %for.end.rcu_read_unlock.exit92_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %34 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i.i.i89 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i89 to ptr
  %preempt_count.i.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i90, align 4
  %sub.i.i.i91 = add i32 %37, -1
  store volatile i32 %sub.i.i.i91, ptr %preempt_count.i.i.i.i90, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %tobool26.not = icmp eq ptr %old_sb.0.lcssa, null
  br i1 %tobool26.not, label %rcu_read_unlock.exit92.if.end28_crit_edge, label %if.then27

rcu_read_unlock.exit92.if.end28_crit_edge:        ; preds = %rcu_read_unlock.exit92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %rcu_read_unlock.exit92
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @deactivate_super(ptr noundef nonnull %old_sb.0.lcssa) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %rcu_read_unlock.exit92.if.end28_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_any_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @proc_alloc_inode(ptr nocapture noundef readnone %sb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @proc_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vfs_inode = getelementptr inbounds %struct.proc_inode, ptr %call, i32 0, i32 8
  %1 = call ptr @memset(ptr %call, i32 0, i32 36)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_free_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @proc_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -40
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_evict_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -40
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #7
  tail call void @clear_inode(ptr noundef %inode) #7
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @proc_pid_evict_inode(ptr noundef %add.ptr.i) #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %add.ptr.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pde = getelementptr i8, ptr %inode, i32 -28
  %3 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pde, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pde_put(ptr noundef nonnull %4) #7
  %5 = ptrtoint ptr %pde to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pde, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %sysctl = getelementptr i8, ptr %inode, i32 -24
  %6 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysctl, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.if.end18_crit_edge, label %do.body10

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.body10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %sysctl to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %sysctl, align 8
  tail call void @proc_sys_evict_inode(ptr noundef %inode, ptr noundef nonnull %7) #7
  br label %if.end18

if.end18:                                         ; preds = %do.body10, %if.end5.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %pid_gid = getelementptr inbounds %struct.proc_fs_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pid_gid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %pid_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call5 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %5) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, i32 noundef %call5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hide_pid = getelementptr inbounds %struct.proc_fs_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %hide_pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hide_pid, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %land.end.i [
    i32 0, label %if.end.if.end9_crit_edge
    i32 4, label %sw.bb3.i
    i32 1, label %if.end.hidepid2str.exit_crit_edge
    i32 2, label %sw.bb2.i
  ]

if.end.hidepid2str.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hidepid2str.exit

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hidepid2str.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hidepid2str.exit

land.end.i:                                       ; preds = %if.end
  %.b39.i = load i1, ptr @hidepid2str.__already_done, align 1
  br i1 %.b39.i, label %land.end.i.hidepid2str.exit_crit_edge, label %if.then.i, !prof !64

land.end.i.hidepid2str.exit_crit_edge:            ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hidepid2str.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @hidepid2str.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 177, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %7) #7
  br label %hidepid2str.exit

hidepid2str.exit:                                 ; preds = %if.then.i, %land.end.i.hidepid2str.exit_crit_edge, %sw.bb3.i, %sw.bb2.i, %if.end.hidepid2str.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.12, %sw.bb3.i ], [ @.str.11, %sw.bb2.i ], [ @.str.15, %if.then.i ], [ @.str.15, %land.end.i.hidepid2str.exit_crit_edge ], [ @.str.10, %if.end.hidepid2str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, ptr noundef nonnull %retval.0.i) #7
  br label %if.end9

if.end9:                                          ; preds = %hidepid2str.exit, %if.end.if.end9_crit_edge
  %pidonly = getelementptr inbounds %struct.proc_fs_info, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %pidonly to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pidonly, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10.not = icmp eq i32 %10, 0
  br i1 %cmp10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_entry_rundown(ptr noundef %de) local_unnamed_addr #2 align 64 {
entry:
  %c = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %c) #7
  %0 = getelementptr inbounds i8, ptr %c, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %c, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #7
  %pde_unload_completion = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 4
  %3 = ptrtoint ptr %pde_unload_completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %c, ptr %pde_unload_completion, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %de, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @llvm.prefetch.p0(ptr %de, i32 1, i32 3, i32 1) #7
  %4 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %de, ptr %de, i32 -2147483648, ptr elementtype(i32) %de) #7, !srcloc !66
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i.i, -2147483648
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @wait_for_completion(ptr noundef nonnull %c) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pde_unload_lock = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %pde_unload_lock) #7
  %pde_openers = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 2
  %5 = ptrtoint ptr %pde_openers to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pde_openers, align 4
  %cmp.i.not13 = icmp eq ptr %6, %pde_openers
  br i1 %cmp.i.not13, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %7 = phi ptr [ %9, %while.body.while.body_crit_edge ], [ %6, %if.end.while.body_crit_edge ]
  call fastcc void @close_pdeo(ptr noundef %de, ptr noundef %7)
  call void @_raw_spin_lock(ptr noundef %pde_unload_lock) #7
  %8 = ptrtoint ptr %pde_openers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pde_openers, align 4
  %cmp.i.not = icmp eq ptr %9, %pde_openers
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %pde_unload_lock) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %c) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @close_pdeo(ptr noundef %pde, ptr noundef %pdeo) unnamed_addr #2 align 64 {
entry:
  %c = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %closing = getelementptr inbounds %struct.pde_opener, ptr %pdeo, i32 0, i32 2
  %0 = ptrtoint ptr %closing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %closing, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %c) #7
  %2 = getelementptr inbounds i8, ptr %c, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %c, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %c, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #7
  %c1 = getelementptr inbounds %struct.pde_opener, ptr %pdeo, i32 0, i32 3
  %5 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %c, ptr %c1, align 4
  %pde_unload_lock = getelementptr inbounds %struct.proc_dir_entry, ptr %pde, i32 0, i32 3
  call void @_raw_spin_unlock(ptr noundef %pde_unload_lock) #7
  call void @wait_for_completion(ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %c) #7
  br label %if.end14

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %closing to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %closing, align 4
  %pde_unload_lock4 = getelementptr inbounds %struct.proc_dir_entry, ptr %pde, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %pde_unload_lock4) #7
  %file5 = getelementptr inbounds %struct.pde_opener, ptr %pdeo, i32 0, i32 1
  %7 = ptrtoint ptr %file5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %file5, align 4
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %pde, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %proc_release = getelementptr inbounds %struct.proc_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %proc_release to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %proc_release, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_inode.i, align 8
  %call6 = tail call i32 %13(ptr noundef %15, ptr noundef %8) #7
  tail call void @_raw_spin_lock(ptr noundef %pde_unload_lock4) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pdeo) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pdeo, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %pdeo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdeo, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %22 = ptrtoint ptr %pdeo to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %pdeo, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pdeo, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %c8 = getelementptr inbounds %struct.pde_opener, ptr %pdeo, i32 0, i32 3
  %24 = ptrtoint ptr %c8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %c8, align 4
  tail call void @_raw_spin_unlock(ptr noundef %pde_unload_lock4) #7
  %tobool10.not = icmp eq ptr %25, null
  br i1 %tobool10.not, label %list_del.exit.if.end_crit_edge, label %if.then13, !prof !64

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then13:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef nonnull %25) #7
  br label %if.end

if.end:                                           ; preds = %if.then13, %list_del.exit.if.end_crit_edge
  %26 = load ptr, ptr @pde_opener_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef %pdeo) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_get_link(ptr nocapture noundef readnone %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %done) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pde.i = getelementptr i8, ptr %inode, i32 -28
  %0 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pde.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %entry
  %c.0.i.i.i = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %1) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !64

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @proc_put_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %6 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %arg2.i, align 4
  %data = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body1.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.end ], [ inttoptr (i32 -22 to ptr), %do.body1.i.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @proc_get_inode(ptr noundef %sb, ptr noundef %de) local_unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @new_inode(ptr noundef %sb) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pde_put(ptr noundef %de) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %i_private, align 4
  %low_ino = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 12
  %3 = ptrtoint ptr %low_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %low_ino, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call) #7
  %6 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  %7 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %8 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %pde = getelementptr i8, ptr %call, i32 -28
  %9 = ptrtoint ptr %pde to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %de, ptr %pde, align 4
  %mode.i = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 21
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode.i, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp.i = icmp eq i16 %12, 16384
  br i1 %cmp.i, label %is_empty_pde.exit, label %if.end4

is_empty_pde.exit:                                ; preds = %if.end
  %proc_iops.i = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 5
  %13 = ptrtoint ptr %proc_iops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %proc_iops.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then3, label %is_empty_pde.exit.if.then6_crit_edge

is_empty_pde.exit.if.then6_crit_edge:             ; preds = %is_empty_pde.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then3:                                         ; preds = %is_empty_pde.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @make_empty_dir_inode(ptr noundef nonnull %call) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool5.not = icmp eq i16 %11, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.end4.if.then6_crit_edge

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end4.if.then6_crit_edge, %is_empty_pde.exit.if.then6_crit_edge
  %15 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %11, ptr %call, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %uid = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 14
  %16 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uid, align 4
  %18 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %gid = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 15
  %19 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gid, align 8
  %21 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %i_gid, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %size = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 16
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool9.not = icmp eq i64 %23, 0
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %24 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %i_size, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %nlink = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 13
  %25 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nlink, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool13.not = icmp eq i32 %26, 0
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @set_nlink(ptr noundef nonnull %call, i32 noundef %26) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call, align 8
  %29 = and i16 %28, -4096
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %29, label %do.body [
    i16 -32768, label %if.then19
    i16 16384, label %if.then29
    i16 -24576, label %if.then38
  ]

if.then19:                                        ; preds = %if.end16
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 5
  %31 = ptrtoint ptr %proc_iops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %proc_iops, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %33 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %i_op, align 8
  %34 = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 6
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %proc_read_iter = getelementptr inbounds %struct.proc_ops, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %proc_read_iter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %proc_read_iter, align 4
  %tobool20.not = icmp eq ptr %38, null
  %39 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @proc_iter_file_ops, ptr %39, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @proc_reg_file_ops, ptr %39, align 8
  br label %cleanup

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %proc_iops30 = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 5
  %42 = ptrtoint ptr %proc_iops30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %proc_iops30, align 8
  %i_op31 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %44 = ptrtoint ptr %i_op31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %i_op31, align 8
  %45 = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 6
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %48, align 8
  br label %cleanup

if.then38:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %proc_iops39 = getelementptr inbounds %struct.proc_dir_entry, ptr %de, i32 0, i32 5
  %50 = ptrtoint ptr %proc_iops39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %proc_iops39, align 8
  %i_op40 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %52 = ptrtoint ptr %i_op40 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %i_op40, align 8
  %53 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %53, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/proc/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 693, 0\0A.popsection", ""() #7, !srcloc !72
  unreachable

cleanup:                                          ; preds = %if.then38, %if.then29, %if.else, %if.then21, %if.then3, %if.then
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pde_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_pid_evict_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sys_evict_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_put_link(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %p, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %p, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %p, ptr %p, i32 1, ptr elementtype(i32) %p) #7, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483648
  br i1 %cmp.i, label %if.then.i, label %entry.unuse_pde.exit_crit_edge, !prof !63

entry.unuse_pde.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unuse_pde.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pde_unload_completion.i = getelementptr inbounds %struct.proc_dir_entry, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %pde_unload_completion.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pde_unload_completion.i, align 4
  tail call void @complete(ptr noundef %2) #7
  br label %unuse_pde.exit

unuse_pde.exit:                                   ; preds = %if.then.i, %entry.unuse_pde.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @proc_reg_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %pde.i = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pde.i, align 4
  %flags.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %proc_lseek = getelementptr inbounds %struct.proc_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %proc_lseek to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_lseek, align 4
  %call3 = tail call i64 %11(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %3, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.else
  %c.0.i.i.i = phi i32 [ %13, %if.else ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %3) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.then5, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !64

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.then5:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %proc_lseek6 = getelementptr inbounds %struct.proc_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %proc_lseek6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proc_lseek6, align 4
  %call7 = tail call i64 %19(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #7
  %call.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #7, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483648
  br i1 %cmp.i, label %if.then.i, label %if.then5.cleanup_crit_edge, !prof !63

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %pde_unload_completion.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %pde_unload_completion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pde_unload_completion.i, align 4
  tail call void @complete(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then5.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i64 [ %call3, %if.then ], [ %call7, %if.then5.cleanup_crit_edge ], [ %call7, %if.then.i ], [ -22, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_reg_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %pde.i = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pde.i, align 4
  %flags.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %proc_write.i = getelementptr inbounds %struct.proc_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %proc_write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_write.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %11(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %3, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.else
  %c.0.i.i.i = phi i32 [ %13, %if.else ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %3) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.then5, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !64

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.then5:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %proc_write.i18 = getelementptr inbounds %struct.proc_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %proc_write.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proc_write.i18, align 4
  %tobool.not.i19 = icmp eq ptr %19, null
  br i1 %tobool.not.i19, label %if.then5.pde_write.exit23_crit_edge, label %if.then.i21

if.then5.pde_write.exit23_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %pde_write.exit23

if.then.i21:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call.i20 = tail call i32 %19(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #7
  br label %pde_write.exit23

pde_write.exit23:                                 ; preds = %if.then.i21, %if.then5.pde_write.exit23_crit_edge
  %retval.0.i22 = phi i32 [ %call.i20, %if.then.i21 ], [ -5, %if.then5.pde_write.exit23_crit_edge ]
  %call.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #7, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483648
  br i1 %cmp.i, label %if.then.i25, label %pde_write.exit23.cleanup_crit_edge, !prof !63

pde_write.exit23.cleanup_crit_edge:               ; preds = %pde_write.exit23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i25:                                      ; preds = %pde_write.exit23
  call void @__sanitizer_cov_trace_pc() #9
  %pde_unload_completion.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %pde_unload_completion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pde_unload_completion.i, align 4
  tail call void @complete(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i25, %pde_write.exit23.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i ], [ -5, %if.then.cleanup_crit_edge ], [ %retval.0.i22, %pde_write.exit23.cleanup_crit_edge ], [ %retval.0.i22, %if.then.i25 ], [ -5, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_reg_read_iter(ptr noundef %iocb, ptr noundef %iter) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %pde.i = getelementptr i8, ptr %3, i32 -28
  %4 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pde.i, align 4
  %flags.i = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags.i, align 2
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not = icmp eq i8 %8, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %proc_read_iter = getelementptr inbounds %struct.proc_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %proc_read_iter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %proc_read_iter, align 4
  %call3 = tail call i32 %13(ptr noundef %iocb, ptr noundef %iter) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #7
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %5, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end
  %c.0.i.i.i = phi i32 [ %15, %if.end ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %5) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end6, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !64

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.end6:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %17 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %proc_read_iter7 = getelementptr inbounds %struct.proc_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %proc_read_iter7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %proc_read_iter7, align 4
  %call8 = tail call i32 %21(ptr noundef %iocb, ptr noundef %iter) #7
  %call.i.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #7
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #7, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483648
  br i1 %cmp.i, label %if.then.i, label %if.end6.cleanup_crit_edge, !prof !63

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %pde_unload_completion.i = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 4
  %23 = ptrtoint ptr %pde_unload_completion.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pde_unload_completion.i, align 4
  tail call void @complete(ptr noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end6.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call8, %if.end6.cleanup_crit_edge ], [ %call8, %if.then.i ], [ -5, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_reg_poll(ptr noundef %file, ptr noundef %pts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %pde.i = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pde.i, align 4
  %flags.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %proc_poll.i = getelementptr inbounds %struct.proc_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %proc_poll.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_poll.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %11(ptr noundef %file, ptr noundef %pts) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %3, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.else
  %c.0.i.i.i = phi i32 [ %13, %if.else ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %3) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.then5, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !64

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.then5:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %proc_poll.i16 = getelementptr inbounds %struct.proc_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %proc_poll.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proc_poll.i16, align 4
  %tobool.not.i17 = icmp eq ptr %19, null
  br i1 %tobool.not.i17, label %if.then5.pde_poll.exit21_crit_edge, label %if.then.i19

if.then5.pde_poll.exit21_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %pde_poll.exit21

if.then.i19:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call.i18 = tail call i32 %19(ptr noundef %file, ptr noundef %pts) #7
  br label %pde_poll.exit21

pde_poll.exit21:                                  ; preds = %if.then.i19, %if.then5.pde_poll.exit21_crit_edge
  %retval.0.i20 = phi i32 [ %call.i18, %if.then.i19 ], [ 325, %if.then5.pde_poll.exit21_crit_edge ]
  %call.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #7, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483648
  br i1 %cmp.i, label %if.then.i23, label %pde_poll.exit21.cleanup_crit_edge, !prof !63

pde_poll.exit21.cleanup_crit_edge:                ; preds = %pde_poll.exit21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i23:                                      ; preds = %pde_poll.exit21
  call void @__sanitizer_cov_trace_pc() #9
  %pde_unload_completion.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %pde_unload_completion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pde_unload_completion.i, align 4
  tail call void @complete(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i23, %pde_poll.exit21.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i ], [ 325, %if.then.cleanup_crit_edge ], [ %retval.0.i20, %pde_poll.exit21.cleanup_crit_edge ], [ %retval.0.i20, %if.then.i23 ], [ 325, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_reg_unlocked_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %pde.i = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pde.i, align 4
  %flags.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %proc_ioctl.i = getelementptr inbounds %struct.proc_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %proc_ioctl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_ioctl.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %11(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %3, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.else
  %c.0.i.i.i = phi i32 [ %13, %if.else ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %3) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.then5, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !64

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.then5:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %proc_ioctl.i17 = getelementptr inbounds %struct.proc_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %proc_ioctl.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proc_ioctl.i17, align 4
  %tobool.not.i18 = icmp eq ptr %19, null
  br i1 %tobool.not.i18, label %if.then5.pde_ioctl.exit22_crit_edge, label %if.then.i20

if.then5.pde_ioctl.exit22_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %pde_ioctl.exit22

if.then.i20:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call.i19 = tail call i32 %19(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #7
  br label %pde_ioctl.exit22

pde_ioctl.exit22:                                 ; preds = %if.then.i20, %if.then5.pde_ioctl.exit22_crit_edge
  %retval.0.i21 = phi i32 [ %call.i19, %if.then.i20 ], [ -25, %if.then5.pde_ioctl.exit22_crit_edge ]
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #7, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483648
  br i1 %cmp.i, label %if.then.i24, label %pde_ioctl.exit22.cleanup_crit_edge, !prof !63

pde_ioctl.exit22.cleanup_crit_edge:               ; preds = %pde_ioctl.exit22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i24:                                      ; preds = %pde_ioctl.exit22
  call void @__sanitizer_cov_trace_pc() #9
  %pde_unload_completion.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %pde_unload_completion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pde_unload_completion.i, align 4
  tail call void @complete(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i24, %pde_ioctl.exit22.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i ], [ -25, %if.then.cleanup_crit_edge ], [ %retval.0.i21, %pde_ioctl.exit22.cleanup_crit_edge ], [ %retval.0.i21, %if.then.i24 ], [ -25, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_reg_mmap(ptr noundef %file, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %pde.i = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pde.i, align 4
  %flags.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %proc_mmap.i = getelementptr inbounds %struct.proc_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %proc_mmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_mmap.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %11(ptr noundef %file, ptr noundef %vma) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %3, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.else
  %c.0.i.i.i = phi i32 [ %13, %if.else ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %3) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.then5, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !64

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.then5:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %proc_mmap.i16 = getelementptr inbounds %struct.proc_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %proc_mmap.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proc_mmap.i16, align 4
  %tobool.not.i17 = icmp eq ptr %19, null
  br i1 %tobool.not.i17, label %if.then5.pde_mmap.exit21_crit_edge, label %if.then.i19

if.then5.pde_mmap.exit21_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %pde_mmap.exit21

if.then.i19:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call.i18 = tail call i32 %19(ptr noundef %file, ptr noundef %vma) #7
  br label %pde_mmap.exit21

pde_mmap.exit21:                                  ; preds = %if.then.i19, %if.then5.pde_mmap.exit21_crit_edge
  %retval.0.i20 = phi i32 [ %call.i18, %if.then.i19 ], [ -5, %if.then5.pde_mmap.exit21_crit_edge ]
  %call.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #7, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483648
  br i1 %cmp.i, label %if.then.i23, label %pde_mmap.exit21.cleanup_crit_edge, !prof !63

pde_mmap.exit21.cleanup_crit_edge:                ; preds = %pde_mmap.exit21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i23:                                      ; preds = %pde_mmap.exit21
  call void @__sanitizer_cov_trace_pc() #9
  %pde_unload_completion.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %pde_unload_completion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pde_unload_completion.i, align 4
  tail call void @complete(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i23, %pde_mmap.exit21.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i ], [ -5, %if.then.cleanup_crit_edge ], [ %retval.0.i20, %pde_mmap.exit21.cleanup_crit_edge ], [ %retval.0.i20, %if.then.i23 ], [ -5, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_reg_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pde.i = getelementptr i8, ptr %inode, i32 -28
  %0 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pde.i, align 4
  %flags.i = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags.i, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %proc_open = getelementptr inbounds %struct.proc_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %proc_open to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proc_open, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 %9(ptr noundef %inode, ptr noundef %file) #7
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %1, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end4
  %c.0.i.i.i = phi i32 [ %11, %if.end4 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %1) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end8, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !64

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.end8:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %proc_release = getelementptr inbounds %struct.proc_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %proc_release to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %proc_release, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end8
  %18 = load ptr, ptr @pde_opener_cache, align 4
  %call11 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %18, i32 noundef 3264) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then10.out_unuse_crit_edge, label %if.end15.thread

if.then10.out_unuse_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unuse

if.end15:                                         ; preds = %if.end8
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %13, align 4
  %proc_open16 = getelementptr inbounds %struct.proc_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %proc_open16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %proc_open16, align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %if.end15.out_unuse_crit_edge, label %if.end20

if.end15.out_unuse_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unuse

if.end15.thread:                                  ; preds = %if.then10
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %13, align 4
  %proc_open1663 = getelementptr inbounds %struct.proc_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %proc_open1663 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %proc_open1663, align 4
  %tobool17.not64 = icmp eq ptr %26, null
  br i1 %tobool17.not64, label %if.end15.thread.if.then23_crit_edge, label %if.then22

if.end15.thread.if.then23_crit_edge:              ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 %22(ptr noundef %inode, ptr noundef %file) #7
  br label %out_unuse

if.then22:                                        ; preds = %if.end15.thread
  %call1972 = tail call i32 %26(ptr noundef %inode, ptr noundef %file) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1972)
  %cmp = icmp eq i32 %call1972, 0
  br i1 %cmp, label %if.then22.if.then23_crit_edge, label %if.else

if.then22.if.then23_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.then23:                                        ; preds = %if.then22.if.then23_crit_edge, %if.end15.thread.if.then23_crit_edge
  %file24 = getelementptr inbounds %struct.pde_opener, ptr %call11, i32 0, i32 1
  %27 = ptrtoint ptr %file24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %file, ptr %file24, align 8
  %closing = getelementptr inbounds %struct.pde_opener, ptr %call11, i32 0, i32 2
  %28 = ptrtoint ptr %closing to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %closing, align 4
  %c = getelementptr inbounds %struct.pde_opener, ptr %call11, i32 0, i32 3
  %29 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %c, align 8
  %pde_unload_lock = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pde_unload_lock) #7
  %pde_openers = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %pde_openers to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pde_openers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call11, ptr noundef %pde_openers, ptr noundef %31) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then23.list_add.exit_crit_edge

if.then23.list_add.exit_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call11, ptr %prev1.i.i, align 4
  %33 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %call11, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call11, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pde_openers, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %pde_openers to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call11, ptr %pde_openers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then23.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %pde_unload_lock) #7
  br label %out_unuse

if.else:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %36 = load ptr, ptr @pde_opener_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef nonnull %call11) #7
  br label %out_unuse

out_unuse:                                        ; preds = %if.else, %list_add.exit, %if.end20, %if.end15.out_unuse_crit_edge, %if.then10.out_unuse_crit_edge
  %rv.2 = phi i32 [ 0, %list_add.exit ], [ %call1972, %if.else ], [ %call19, %if.end20 ], [ -12, %if.then10.out_unuse_crit_edge ], [ 0, %if.end15.out_unuse_crit_edge ]
  %call.i.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #7
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #7, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483648
  br i1 %cmp.i, label %if.then.i, label %out_unuse.cleanup_crit_edge, !prof !63

out_unuse.cleanup_crit_edge:                      ; preds = %out_unuse
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %out_unuse
  call void @__sanitizer_cov_trace_pc() #9
  %pde_unload_completion.i = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %pde_unload_completion.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pde_unload_completion.i, align 4
  tail call void @complete(ptr noundef %39) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out_unuse.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %if.then.cleanup_crit_edge ], [ %rv.2, %out_unuse.cleanup_crit_edge ], [ %rv.2, %if.then.i ], [ -2, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_reg_release(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pde.i = getelementptr i8, ptr %inode, i32 -28
  %0 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pde.i, align 4
  %flags.i = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags.i, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %proc_release = getelementptr inbounds %struct.proc_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %proc_release to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proc_release, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.cleanup16_crit_edge, label %if.then2

if.then.cleanup16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 %9(ptr noundef %inode, ptr noundef %file) #7
  br label %cleanup16

if.end4:                                          ; preds = %entry
  %pde_unload_lock = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pde_unload_lock) #7
  %pde_openers = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end4
  %pdeo.0.in = phi ptr [ %pde_openers, %if.end4 ], [ %pdeo.0, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %pdeo.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %pdeo.0 = load ptr, ptr %pdeo.0.in, align 4
  %cmp.not = icmp eq ptr %pdeo.0, %pde_openers
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %file6 = getelementptr inbounds %struct.pde_opener, ptr %pdeo.0, i32 0, i32 1
  %11 = ptrtoint ptr %file6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file6, align 4
  %cmp7 = icmp eq ptr %12, %file
  br i1 %cmp7, label %if.then8, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @close_pdeo(ptr noundef %1, ptr noundef %pdeo.0)
  br label %cleanup16

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %pde_unload_lock) #7
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %if.then8, %if.then2, %if.then.cleanup16_crit_edge
  %retval.1 = phi i32 [ 0, %if.then8 ], [ 0, %for.end ], [ %call3, %if.then2 ], [ 0, %if.then.cleanup16_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_reg_get_unmapped_area(ptr noundef %file, i32 noundef %orig_addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %pde.i = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pde.i, align 4
  %flags.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %proc_get_unmapped_area.i = getelementptr inbounds %struct.proc_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %proc_get_unmapped_area.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_get_unmapped_area.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.then2.i_crit_edge

if.then.if.then2.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i

if.end.i:                                         ; preds = %if.then
  %12 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm.i, align 8
  %get_unmapped_area.i = getelementptr inbounds %struct.anon.14, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %get_unmapped_area.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_unmapped_area.i, align 8
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.then2.i_crit_edge

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i.if.then2.i_crit_edge, %if.then.if.then2.i_crit_edge
  %get_area.010.i = phi ptr [ %19, %if.end.i.if.then2.i_crit_edge ], [ %11, %if.then.if.then2.i_crit_edge ]
  %call3.i = tail call i32 %get_area.010.i(ptr noundef %file, i32 noundef %orig_addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %3, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.else
  %c.0.i.i.i = phi i32 [ %21, %if.else ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %3) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.then5, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !64

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.then5:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %23 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %proc_get_unmapped_area.i19 = getelementptr inbounds %struct.proc_ops, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %proc_get_unmapped_area.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %proc_get_unmapped_area.i19, align 4
  %tobool.not.i20 = icmp eq ptr %27, null
  br i1 %tobool.not.i20, label %if.end.i26, label %if.then5.if.then2.i29_crit_edge

if.then5.if.then2.i29_crit_edge:                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i29

if.end.i26:                                       ; preds = %if.then5
  %28 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i21 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i21 to ptr
  %task.i22 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i22, align 8
  %mm.i23 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 53
  %32 = ptrtoint ptr %mm.i23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mm.i23, align 8
  %get_unmapped_area.i24 = getelementptr inbounds %struct.anon.14, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %get_unmapped_area.i24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_unmapped_area.i24, align 8
  %tobool1.not.i25 = icmp eq ptr %35, null
  br i1 %tobool1.not.i25, label %if.end.i26.pde_get_unmapped_area.exit31_crit_edge, label %if.end.i26.if.then2.i29_crit_edge

if.end.i26.if.then2.i29_crit_edge:                ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2.i29

if.end.i26.pde_get_unmapped_area.exit31_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %pde_get_unmapped_area.exit31

if.then2.i29:                                     ; preds = %if.end.i26.if.then2.i29_crit_edge, %if.then5.if.then2.i29_crit_edge
  %get_area.010.i27 = phi ptr [ %35, %if.end.i26.if.then2.i29_crit_edge ], [ %27, %if.then5.if.then2.i29_crit_edge ]
  %call3.i28 = tail call i32 %get_area.010.i27(ptr noundef %file, i32 noundef %orig_addr, i32 noundef %len, i32 noundef %pgoff, i32 noundef %flags) #7
  br label %pde_get_unmapped_area.exit31

pde_get_unmapped_area.exit31:                     ; preds = %if.then2.i29, %if.end.i26.pde_get_unmapped_area.exit31_crit_edge
  %retval.0.i30 = phi i32 [ %call3.i28, %if.then2.i29 ], [ %orig_addr, %if.end.i26.pde_get_unmapped_area.exit31_crit_edge ]
  %call.i.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #7, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483648
  br i1 %cmp.i, label %if.then.i, label %pde_get_unmapped_area.exit31.cleanup_crit_edge, !prof !63

pde_get_unmapped_area.exit31.cleanup_crit_edge:   ; preds = %pde_get_unmapped_area.exit31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %pde_get_unmapped_area.exit31
  call void @__sanitizer_cov_trace_pc() #9
  %pde_unload_completion.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %pde_unload_completion.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pde_unload_completion.i, align 4
  tail call void @complete(ptr noundef %38) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %pde_get_unmapped_area.exit31.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.then2.i, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %if.then2.i ], [ %orig_addr, %if.end.i.cleanup_crit_edge ], [ %retval.0.i30, %pde_get_unmapped_area.exit31.cleanup_crit_edge ], [ %retval.0.i30, %if.then.i ], [ -5, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_reg_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %pde.i = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pde.i, align 4
  %flags.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %proc_read.i = getelementptr inbounds %struct.proc_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %proc_read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_read.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %11(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %3, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.else
  %c.0.i.i.i = phi i32 [ %13, %if.else ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !63

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %3) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.then5, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !64

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i.i

if.then5:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %proc_read.i18 = getelementptr inbounds %struct.proc_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %proc_read.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proc_read.i18, align 4
  %tobool.not.i19 = icmp eq ptr %19, null
  br i1 %tobool.not.i19, label %if.then5.pde_read.exit23_crit_edge, label %if.then.i21

if.then5.pde_read.exit23_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %pde_read.exit23

if.then.i21:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call.i20 = tail call i32 %19(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #7
  br label %pde_read.exit23

pde_read.exit23:                                  ; preds = %if.then.i21, %if.then5.pde_read.exit23_crit_edge
  %retval.0.i22 = phi i32 [ %call.i20, %if.then.i21 ], [ -5, %if.then5.pde_read.exit23_crit_edge ]
  %call.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #7, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i.i, -2147483648
  br i1 %cmp.i, label %if.then.i25, label %pde_read.exit23.cleanup_crit_edge, !prof !63

pde_read.exit23.cleanup_crit_edge:                ; preds = %pde_read.exit23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i25:                                      ; preds = %pde_read.exit23
  call void @__sanitizer_cov_trace_pc() #9
  %pde_unload_completion.i = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %pde_unload_completion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pde_unload_completion.i, align 4
  tail call void @complete(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i25, %pde_read.exit23.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i ], [ -5, %if.then.cleanup_crit_edge ], [ %retval.0.i22, %pde_read.exit23.cleanup_crit_edge ], [ %retval.0.i22, %if.then.i25 ], [ -5, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !41, !43, !44, !46}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/proc/inode.c", i32 97, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/proc/inode.c", i32 104, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/proc/inode.c", i32 107, i32 3}
!6 = !{ptr @proc_sops, !7, !"proc_sops", i1 false, i1 false}
!7 = !{!"../fs/proc/inode.c", i32 195, i32 31}
!8 = !{ptr @proc_link_inode_operations, !9, !"proc_link_inode_operations", i1 false, i1 false}
!9 = !{!"../fs/proc/inode.c", i32 640, i32 31}
!10 = !{ptr @proc_inode_cachep, !11, !"proc_inode_cachep", i1 false, i1 false}
!11 = !{!"../fs/proc/inode.c", i32 62, i32 27}
!12 = !{ptr @pde_opener_cache, !13, !"pde_opener_cache", i1 false, i1 false}
!13 = !{!"../fs/proc/inode.c", i32 63, i32 27}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/proc/inode.c", i32 186, i32 19}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/proc/inode.c", i32 188, i32 19}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/proc/inode.c", i32 190, i32 19}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/proc/inode.c", i32 172, i32 28}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/proc/inode.c", i32 173, i32 34}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/proc/inode.c", i32 174, i32 34}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/proc/inode.c", i32 175, i32 39}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/proc/inode.c", i32 177, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/proc/inode.c", i32 178, i32 9}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @proc_iter_file_ops, !45, !"proc_iter_file_ops", i1 false, i1 false}
!45 = !{!"../fs/proc/inode.c", i32 582, i32 37}
!46 = !{ptr @proc_reg_file_ops, !47, !"proc_reg_file_ops", i1 false, i1 false}
!47 = !{!"../fs/proc/inode.c", i32 570, i32 37}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2149512657}
!59 = !{i64 2148214824}
!60 = !{i64 700444, i64 700469, i64 700491, i64 700507, i64 700519, i64 700539, i64 700563, i64 700579, i64 700591}
!61 = !{i64 2148215012}
!62 = !{i64 2149512923}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2148300816}
!66 = !{i64 2148216125, i64 2148216157, i64 2148216186, i64 2148216220, i64 2148216251, i64 2148216274}
!67 = !{i64 2148301045}
!68 = !{i8 0, i8 2}
!69 = !{i64 2148317228}
!70 = !{i64 699938, i64 699962, i64 699983, i64 700000, i64 700017}
!71 = !{i64 2148317454}
!72 = !{i64 2153608697, i64 2153609177, i64 2153608734, i64 2153608790, i64 2153608824, i64 2153608848, i64 2153608889, i64 2153608910, i64 2153608938, i64 2153608972}
!73 = !{i64 2148303857}
!74 = !{i64 2148218590, i64 2148218622, i64 2148218651, i64 2148218685, i64 2148218716, i64 2148218739}
!75 = !{i64 2148304086}
