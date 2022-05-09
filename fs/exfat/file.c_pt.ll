; ModuleID = '/llk/IR_all_yes/fs/exfat/file.c_pt.bc'
source_filename = "../fs/exfat/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type opaque
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.exfat_chain = type { i32, i32, i8 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
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
%struct.exfat_sb_info = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.exfat_mount_options, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.callback_head }
%struct.exfat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, ptr, i32, i8, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.exfat_dentry = type { i8, %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [7 x i8] }>
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.33 = type { %struct.callback_head }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/exfat/file.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tried to truncate zeroed cluster.\00", [62 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@exfat_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @exfat_ioctl, ptr null, ptr @generic_file_mmap, i32 0, ptr null, ptr null, ptr null, ptr @exfat_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@exfat_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exfat_setattr, ptr @exfat_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 260, i64 287]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 40960]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 185, i32 4 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 240, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"exfat_file_operations\00", align 1
@___asan_gen_.15 = private constant [19 x i8] c"../fs/exfat/file.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 418, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 271, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 156, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @exfat_file_operations, ptr @.str.2, ptr @.str.5], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__exfat_truncate(ptr noundef %inode, i64 noundef %new_size) local_unnamed_addr #0 align 64 {
entry:
  %clu = alloca %struct.exfat_chain, align 4
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clu) #8
  %0 = call ptr @memset(ptr %clu, i32 255, i32 12)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64735, i32 %6)
  %cmp = icmp eq i32 %6, -64735
  %type = getelementptr i8, ptr %inode, i32 -248
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %entry.cleanup154_crit_edge [
    i32 287, label %entry.if.end_crit_edge
    i32 260, label %entry.if.end_crit_edge241
  ]

entry.if.end_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup154_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge241
  %call6 = tail call i32 @exfat_set_volume_dirty(ptr noundef %2) #8
  %call7 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %cluster_size_bits = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cluster_size_bits, align 8
  %sh_prom = zext i32 %11 to i64
  %i_size_ondisk = getelementptr i8, ptr %inode, i32 -128
  %12 = ptrtoint ptr %i_size_ondisk to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size_ondisk, align 8
  %sub8 = add i64 %13, -1
  %shr11 = ashr i64 %sub8, %sh_prom
  %14 = trunc i64 %shr11 to i32
  %conv13 = add i32 %14, 1
  %start_clu = getelementptr i8, ptr %inode, i32 -240
  %15 = ptrtoint ptr %start_clu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_clu, align 8
  %flags = getelementptr i8, ptr %inode, i32 -236
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags, align 4
  call void @exfat_chain_set(ptr noundef nonnull %clu, i32 noundef %16, i32 noundef %conv13, i8 noundef zeroext %18) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_size)
  %cmp14 = icmp sgt i64 %new_size, 0
  br i1 %cmp14, label %if.then16, label %if.else39

if.then16:                                        ; preds = %if.end
  %sub = add i64 %call7, -1
  %shr = ashr i64 %sub, %sh_prom
  %19 = trunc i64 %shr to i32
  %conv = add i32 %19, 1
  %20 = call i32 @llvm.umin.i32(i32 %conv, i32 %conv13)
  %flags20 = getelementptr inbounds %struct.exfat_chain, ptr %clu, i32 0, i32 2
  %21 = ptrtoint ptr %flags20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp22 = icmp eq i8 %22, 3
  br i1 %cmp22, label %if.then24, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp28.not233 = icmp eq i32 %20, 0
  br i1 %cmp28.not233, label %while.cond.preheader.if.end42_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end42_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %size36 = getelementptr inbounds %struct.exfat_chain, ptr %clu, i32 0, i32 1
  br label %while.body

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clu, align 4
  %add26 = add i32 %24, %20
  store i32 %add26, ptr %clu, align 4
  %size = getelementptr inbounds %struct.exfat_chain, ptr %clu, i32 0, i32 1
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %sub27 = sub i32 %26, %20
  store i32 %sub27, ptr %size, align 4
  br label %if.end42

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.body.lr.ph
  %num_clusters.0234 = phi i32 [ %20, %while.body.lr.ph ], [ %dec, %if.end35.while.body_crit_edge ]
  %27 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clu, align 4
  %call33 = call i32 @exfat_ent_get(ptr noundef %2, i32 noundef %28, ptr noundef nonnull %clu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool.not = icmp eq i32 %call33, 0
  br i1 %tobool.not, label %if.end35, label %while.body.cleanup154_crit_edge

while.body.cleanup154_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end35:                                         ; preds = %while.body
  %dec = add i32 %num_clusters.0234, -1
  %29 = ptrtoint ptr %size36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size36, align 4
  %dec37 = add i32 %30, -1
  store i32 %dec37, ptr %size36, align 4
  %cmp28.not = icmp eq i32 %dec, 0
  br i1 %cmp28.not, label %if.end35.if.end42_crit_edge, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.else39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %flags, align 4
  %32 = ptrtoint ptr %start_clu to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %start_clu, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.end35.if.end42_crit_edge, %if.then24, %while.cond.preheader.if.end42_crit_edge
  %last_clu.3 = phi i32 [ 0, %if.else39 ], [ 0, %if.then24 ], [ 0, %while.cond.preheader.if.end42_crit_edge ], [ %28, %if.end35.if.end42_crit_edge ]
  %33 = call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %37 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %if.end42.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.end42.i_size_write.exit_crit_edge:             ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.end42
  %38 = call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  %42 = call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %47, ptrtoint (ptr @lockdep_recursion to i32)
  %48 = inttoptr i32 %add.i28.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !32
  %51 = call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i7.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool20.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %55 = call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i29.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i = icmp eq i32 %58, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %59 = call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i9.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %62, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !33
  %63 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %66, ptrtoint (ptr @hardirqs_enabled to i32)
  %67 = inttoptr i32 %add47.i.i to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !34
  %70 = call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i12.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %73, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool54.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !35

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.end42.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %74 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %75, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %76 = call ptr @llvm.returnaddress(i32 0) #8
  %77 = ptrtoint ptr %76 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %77) #8
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %78 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %new_size, ptr %i_size8.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %77) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %79 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !38
  %81 = call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i26.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %84, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %85 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %86)
  %cmp44 = icmp eq i32 %86, 287
  br i1 %cmp44, label %if.then46, label %i_size_write.exit.if.end49_crit_edge

i_size_write.exit.if.end49_crit_edge:             ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then46:                                        ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %attr = getelementptr i8, ptr %inode, i32 -244
  %87 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %attr, align 4
  %89 = or i16 %88, 32
  store i16 %89, ptr %attr, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %i_size_write.exit.if.end49_crit_edge
  br i1 %cmp, label %if.end49.if.end127_crit_edge, label %if.then51

if.end49.if.end127_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then51:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #8
  %90 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %entry53 = getelementptr i8, ptr %inode, i32 -252
  %91 = ptrtoint ptr %entry53 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %entry53, align 4
  %call54 = call ptr @exfat_get_dentry_set(ptr noundef %2, ptr noundef %add.ptr.i, i32 noundef %92, i32 noundef 0) #8
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %cleanup120.thread, label %if.end57

cleanup120.thread:                                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #8
  br label %cleanup154

if.end57:                                         ; preds = %if.then51
  %call58 = call ptr @exfat_get_dentry_cached(ptr noundef nonnull %call54, i32 noundef 0) #8
  %call59 = call ptr @exfat_get_dentry_cached(ptr noundef nonnull %call54, i32 noundef 1) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %ts, ptr noundef %inode) #8
  %modify_tz = getelementptr inbounds %struct.exfat_dentry, ptr %call58, i32 0, i32 1, i32 0, i32 13
  %modify_time = getelementptr inbounds %struct.exfat_dentry, ptr %call58, i32 0, i32 1, i32 0, i32 6
  %modify_date = getelementptr inbounds %struct.exfat_dentry, ptr %call58, i32 0, i32 1, i32 0, i32 7
  %modify_time_cs = getelementptr inbounds %struct.exfat_dentry, ptr %call58, i32 0, i32 1, i32 0, i32 11
  call void @exfat_set_entry_time(ptr noundef %4, ptr noundef nonnull %ts, ptr noundef %modify_tz, ptr noundef %modify_time, ptr noundef %modify_date, ptr noundef %modify_time_cs) #8
  %attr64 = getelementptr i8, ptr %inode, i32 -244
  %93 = ptrtoint ptr %attr64 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %attr64, align 4
  %95 = call i16 @llvm.bswap.i16(i16 %94)
  %attr66 = getelementptr inbounds %struct.exfat_dentry, ptr %call58, i32 0, i32 1, i32 0, i32 2
  %96 = ptrtoint ptr %attr66 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 2)
  store i16 %95, ptr %attr66, align 1
  %97 = ptrtoint ptr %start_clu to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %start_clu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %cmp68 = icmp eq i32 %98, -1
  %99 = call i64 @llvm.bswap.i64(i64 %new_size)
  %.sink236 = select i1 %cmp68, i64 0, i64 %99
  %100 = getelementptr inbounds %struct.exfat_dentry, ptr %call59, i32 0, i32 1, i32 0, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %.sink236, ptr %100, align 1
  %102 = getelementptr inbounds %struct.exfat_dentry, ptr %call59, i32 0, i32 1, i32 0, i32 14
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 %.sink236, ptr %102, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_size)
  %cmp82 = icmp eq i64 %new_size, 0
  br i1 %cmp82, label %if.then84, label %if.end57.cleanup120_crit_edge

if.end57.cleanup120_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup120

if.then84:                                        ; preds = %if.end57
  %104 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %105)
  %cmp86.not = icmp eq i32 %105, 287
  br i1 %cmp86.not, label %if.then84.if.end102_crit_edge, label %do.end, !prof !35

if.then84.if.end102_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

do.end:                                           ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef null) #8
  br label %if.end102

if.end102:                                        ; preds = %do.end, %if.then84.if.end102_crit_edge
  %dentry110 = getelementptr inbounds %struct.exfat_dentry, ptr %call59, i32 0, i32 1
  %106 = ptrtoint ptr %dentry110 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %dentry110, align 1
  %start_clu113 = getelementptr inbounds %struct.exfat_dentry, ptr %call59, i32 0, i32 1, i32 0, i32 10
  %107 = ptrtoint ptr %start_clu113 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 0, ptr %start_clu113, align 1
  br label %cleanup120

cleanup120:                                       ; preds = %if.end102, %if.end57.cleanup120_crit_edge
  call void @exfat_update_dir_chksum_with_entry_set(ptr noundef nonnull %call54) #8
  %call115 = call i32 @inode_needs_sync(ptr noundef %inode) #8
  %call116 = call i32 @exfat_free_dentry_set(ptr noundef nonnull %call54, i32 noundef %call115) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #8
  br i1 %tobool117.not, label %cleanup120.if.end127_crit_edge, label %cleanup120.cleanup154_crit_edge

cleanup120.cleanup154_crit_edge:                  ; preds = %cleanup120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

cleanup120.if.end127_crit_edge:                   ; preds = %cleanup120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.end127:                                        ; preds = %cleanup120.if.end127_crit_edge, %if.end49.if.end127_crit_edge
  %108 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %flags, align 4
  %.fr = freeze i8 %109
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.fr)
  %cmp130.not = icmp eq i8 %.fr, 1
  br i1 %cmp130.not, label %switch.early.test, label %if.end127.if.end143_crit_edge

if.end127.if.end143_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

switch.early.test:                                ; preds = %if.end127
  %110 = zext i32 %last_clu.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %last_clu.3, label %if.then138 [
    i32 -1, label %switch.early.test.if.end143_crit_edge
    i32 0, label %switch.early.test.if.end143_crit_edge242
  ]

switch.early.test.if.end143_crit_edge242:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

switch.early.test.if.end143_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then138:                                       ; preds = %switch.early.test
  %call139 = call i32 @exfat_ent_set(ptr noundef %2, i32 noundef %last_clu.3, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then138.if.end143_crit_edge, label %if.then138.cleanup154_crit_edge

if.then138.cleanup154_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.then138.if.end143_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.end143:                                        ; preds = %if.then138.if.end143_crit_edge, %switch.early.test.if.end143_crit_edge, %switch.early.test.if.end143_crit_edge242, %if.end127.if.end143_crit_edge
  call void @exfat_cache_inval_inode(ptr noundef %inode) #8
  %hint_bmap = getelementptr i8, ptr %inode, i32 -228
  %111 = getelementptr i8, ptr %inode, i32 -224
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %111, align 4
  %113 = ptrtoint ptr %hint_bmap to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %hint_bmap, align 4
  %hint_stat = getelementptr i8, ptr %inode, i32 -220
  %114 = getelementptr i8, ptr %inode, i32 -216
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %114, align 4
  %116 = ptrtoint ptr %start_clu to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %start_clu, align 8
  %118 = ptrtoint ptr %hint_stat to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %hint_stat, align 4
  %hint_femp = getelementptr i8, ptr %inode, i32 -212
  %119 = ptrtoint ptr %hint_femp to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %hint_femp, align 4
  %call149 = call i32 @exfat_free_cluster(ptr noundef %inode, ptr noundef nonnull %clu) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.end143.cleanup154_crit_edge

if.end143.cleanup154_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end152:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  %call153 = call i32 @exfat_clear_volume_dirty(ptr noundef %2) #8
  br label %cleanup154

cleanup154:                                       ; preds = %if.end152, %if.end143.cleanup154_crit_edge, %if.then138.cleanup154_crit_edge, %cleanup120.cleanup154_crit_edge, %cleanup120.thread, %while.body.cleanup154_crit_edge, %entry.cleanup154_crit_edge
  %retval.3 = phi i32 [ 0, %if.end152 ], [ %call116, %cleanup120.cleanup154_crit_edge ], [ -1, %entry.cleanup154_crit_edge ], [ -5, %if.then138.cleanup154_crit_edge ], [ -5, %if.end143.cleanup154_crit_edge ], [ -5, %cleanup120.thread ], [ -5, %while.body.cleanup154_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu) #8
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_set_volume_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !39
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #8
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !41

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !42
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !44
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_chain_set(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_ent_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exfat_get_dentry_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exfat_get_dentry_cached(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_set_entry_time(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_update_dir_chksum_with_entry_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_free_dentry_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_ent_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_cache_inval_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_free_cluster(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_clear_volume_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_truncate(ptr noundef %inode, i64 %size) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %5 to i32
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #8
  %start_clu = getelementptr i8, ptr %inode, i32 -240
  %6 = ptrtoint ptr %start_clu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start_clu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.1) #11
  br label %write_size

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %call4 = tail call i32 @__exfat_truncate(ptr noundef %inode, i64 noundef %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.write_size_crit_edge

if.end.write_size_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_size

if.end6:                                          ; preds = %if.end
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #8
  %8 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  %9 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags, align 4
  %and = and i32 %13, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end6.if.then11_crit_edge

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end6
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags, align 4
  %and9 = and i32 %15, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  call void @exfat_sync_inode(ptr noundef %inode) #8
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %call13 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %sub = add i64 %call13, -1
  %cluster_size = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cluster_size, align 4
  %sub14 = add i32 %17, -1
  %conv = zext i32 %sub14 to i64
  %or = or i64 %sub, %conv
  %add = add i64 %or, 1
  %18 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom = zext i8 %19 to i64
  %shr = ashr i64 %add, %sh_prom
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %20 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %shr, ptr %i_blocks, align 8
  br label %write_size

write_size:                                       ; preds = %if.end12, %if.end.write_size_crit_edge, %if.then
  %call16 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %notmask = shl nsw i32 -1, %conv.i
  %sub17 = xor i32 %notmask, -1
  %conv18 = zext i32 %sub17 to i64
  %and19 = and i64 %call16, %conv18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19)
  %tobool20.not = icmp eq i64 %and19, 0
  %or24 = or i64 %call16, %conv18
  %inc = add i64 %or24, 1
  %aligned_size.0 = select i1 %tobool20.not, i64 %call16, i64 %inc
  %i_size_ondisk = getelementptr i8, ptr %inode, i32 -128
  %21 = ptrtoint ptr %i_size_ondisk to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_size_ondisk, align 8
  %call26 = call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %call26)
  %cmp27 = icmp sgt i64 %22, %call26
  br i1 %cmp27, label %if.then29, label %write_size.if.end31_crit_edge

write_size.if.end31_crit_edge:                    ; preds = %write_size
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %write_size
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %i_size_ondisk to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %aligned_size.0, ptr %i_size_ondisk, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %write_size.if.end31_crit_edge
  %i_size_aligned = getelementptr i8, ptr %inode, i32 -120
  %24 = ptrtoint ptr %i_size_aligned to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_size_aligned, align 8
  %call32 = call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %call32)
  %cmp33 = icmp sgt i64 %25, %call32
  br i1 %cmp33, label %if.then35, label %if.end31.if.end37_crit_edge

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %i_size_aligned to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %aligned_size.0, ptr %i_size_aligned, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end31.if.end37_crit_edge
  call void @mutex_unlock(ptr noundef %s_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__exfat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_sync_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_getattr(ptr nocapture readnone %mnt_uerns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 %request_mask, i32 %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #8
  %atime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  tail call void @exfat_truncate_atime(ptr noundef %atime) #8
  %4 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat, align 8
  %or = or i32 %5, 2048
  store i32 %or, ptr %stat, align 8
  %i_crtime = getelementptr i8, ptr %3, i32 784
  %6 = ptrtoint ptr %i_crtime to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_crtime, align 8
  %btime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 15
  %8 = ptrtoint ptr %btime to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %btime, align 8
  %tv_nsec = getelementptr i8, ptr %3, i32 792
  %9 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec, align 8
  %tv_nsec5 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 15, i32 1
  %11 = ptrtoint ptr %tv_nsec5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tv_nsec5, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %cluster_size = getelementptr inbounds %struct.exfat_sb_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cluster_size, align 4
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %18 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %blksize, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_truncate_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_setattr(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode, align 8
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr, align 8
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %8 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ia_size, align 8
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %call2)
  %cmp = icmp sgt i64 %9, %call2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ia_size, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping.i, align 8
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %5) #8
  %call1.i = tail call fastcc i64 @i_size_read(ptr noundef %5) #8
  %call2.i = tail call i32 @generic_cont_expand_simple(ptr noundef %5, i64 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %5) #8
  %14 = call ptr @memcpy(ptr %i_mtime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #8
  %15 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_mtime.i, i32 16)
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags.i, align 4
  %and4.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.lor.lhs.false_crit_edge, label %lor.lhs.false.i.if.end7.i_crit_edge

lor.lhs.false.i.if.end7.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

lor.lhs.false.i.lor.lhs.false_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end7.i:                                        ; preds = %lor.lhs.false.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %sub.i = add i64 %11, -1
  %add.i = add i64 %sub.i, %call.i
  %sub8.i = sub i64 %add.i, %call1.i
  %call9.i = call i32 @filemap_fdatawrite_range(ptr noundef %13, i64 noundef %call.i, i64 noundef %sub8.i) #8
  %call10.i = call i32 @sync_mapping_buffers(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool11.not.i = icmp eq i32 %call9.i, 0
  %spec.select.i = select i1 %tobool11.not.i, i32 %call10.i, i32 %call9.i
  %call14.i = call i32 @write_inode_now(ptr noundef %5, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool15.not.i = icmp eq i32 %spec.select.i, 0
  %err.1.i = select i1 %tobool15.not.i, i32 %call14.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool18.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool18.not.i, label %exfat_cont_expand.exit, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

exfat_cont_expand.exit:                           ; preds = %if.end7.i
  %call23.i = call i32 @filemap_fdatawait_range(ptr noundef %13, i64 noundef %call.i, i64 noundef %sub8.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool5.not = icmp eq i32 %call23.i, 0
  br i1 %tobool5.not, label %exfat_cont_expand.exit.lor.lhs.false_crit_edge, label %exfat_cont_expand.exit.cleanup_crit_edge

exfat_cont_expand.exit.cleanup_crit_edge:         ; preds = %exfat_cont_expand.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

exfat_cont_expand.exit.lor.lhs.false_crit_edge:   ; preds = %exfat_cont_expand.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %exfat_cont_expand.exit.lor.lhs.false_crit_edge, %lor.lhs.false.i.lor.lhs.false_crit_edge
  %22 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %cmp7 = icmp eq i32 %23, 8
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %and10 = and i32 %23, -9
  %24 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and10, ptr %attr, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %25 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %attr, align 8
  %and13 = and i32 %26, 65920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end20_crit_edge, label %land.lhs.true15

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true15:                                  ; preds = %if.end11
  %27 = call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 99
  %31 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 2
  %34 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload.i, i32 %.unpack.i)
  %cmp.i.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i, %.unpack.i
  br i1 %cmp.i.i, label %land.lhs.true15.if.end20_crit_edge, label %if.then.i

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then.i:                                        ; preds = %land.lhs.true15
  %allow_utime1.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 4
  %35 = ptrtoint ptr %allow_utime1.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %allow_utime1.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 3
  %37 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack15.i = load i32, ptr %i_gid.i, align 8
  %38 = insertvalue [1 x i32] undef, i32 %.unpack15.i, 0
  %call5.i = call i32 @in_group_p([1 x i32] %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i127 = icmp eq i32 %call5.i, 0
  %39 = lshr i16 %36, 3
  %spec.select.i128 = select i1 %tobool.not.i127, i16 %36, i16 %39
  %40 = and i16 %spec.select.i128, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool9.not.i = icmp eq i16 %40, 0
  br i1 %tobool9.not.i, label %if.then.i.if.end20_crit_edge, label %if.then17

if.then.i.if.end20_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %attr, align 8
  %and19 = and i32 %42, -65921
  store i32 %and19, ptr %attr, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then.i.if.end20_crit_edge, %land.lhs.true15.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %call21 = call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #8
  %43 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %26, ptr %attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %and27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.lor.lhs.false32_crit_edge, label %land.lhs.true29

if.end25.lor.lhs.false32_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false32

land.lhs.true29:                                  ; preds = %if.end25
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %options = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23
  %44 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack125 = load i32, ptr %ia_uid, align 8
  %45 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack126 = load i32, ptr %options, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack125, i32 %.unpack126)
  %cmp.i = icmp eq i32 %.unpack125, %.unpack126
  br i1 %cmp.i, label %land.lhs.true29.lor.lhs.false32_crit_edge, label %land.lhs.true29.cleanup_crit_edge

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true29.lor.lhs.false32_crit_edge:        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %land.lhs.true29.lor.lhs.false32_crit_edge, %if.end25.lor.lhs.false32_crit_edge
  %and34 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %lor.lhs.false32.lor.lhs.false41_crit_edge, label %land.lhs.true36

lor.lhs.false32.lor.lhs.false41_crit_edge:        ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false41

land.lhs.true36:                                  ; preds = %lor.lhs.false32
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %fs_gid = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 1
  %46 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack = load i32, ptr %ia_gid, align 4
  %47 = ptrtoint ptr %fs_gid to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack124 = load i32, ptr %fs_gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack124)
  %cmp.i130 = icmp eq i32 %.unpack, %.unpack124
  br i1 %cmp.i130, label %land.lhs.true36.lor.lhs.false41_crit_edge, label %land.lhs.true36.cleanup_crit_edge

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true36.lor.lhs.false41_crit_edge:        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %land.lhs.true36.lor.lhs.false41_crit_edge, %lor.lhs.false32.lor.lhs.false41_crit_edge
  %and43 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %lor.lhs.false41.if.end62_crit_edge, label %land.lhs.true45

lor.lhs.false41.if.end62_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true45:                                  ; preds = %lor.lhs.false41
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %48 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ia_mode, align 4
  %50 = and i16 %49, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool47.not = icmp eq i16 %50, 0
  br i1 %tobool47.not, label %if.then53, label %land.lhs.true45.cleanup_crit_edge

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %land.lhs.true45
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %5, align 8
  %53 = and i16 %52, -4096
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %53, label %cond.false.i [
    i16 -32768, label %if.then53.cond.true.i_crit_edge
    i16 -24576, label %if.then53.cond.true.i_crit_edge144
  ]

if.then53.cond.true.i_crit_edge144:               ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true.i

if.then53.cond.true.i_crit_edge:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true.i

cond.true.i:                                      ; preds = %if.then53.cond.true.i_crit_edge, %if.then53.cond.true.i_crit_edge144
  %fs_fmask.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 2
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %fs_dmask.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 23, i32 3
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.in.i = phi ptr [ %fs_fmask.i, %cond.true.i ], [ %fs_dmask.i, %cond.false.i ]
  %55 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %cond.in62.i = load i16, ptr %cond.in.in.i, align 2
  %56 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ia_mode, align 2
  %conv12.i = zext i16 %cond.in62.i to i32
  %58 = and i16 %cond.in62.i, 4095
  %neg.i = xor i16 %58, 4095
  %and13.i = and i16 %neg.i, %57
  %conv15.i = zext i16 %and13.i to i32
  %59 = xor i16 %and13.i, %52
  %60 = and i16 %59, 365
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp19.not.i = icmp eq i16 %60, 0
  br i1 %cmp19.not.i, label %if.end.i132, label %cond.end.i.if.then58_crit_edge

cond.end.i.if.then58_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

if.end.i132:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %53)
  %cmp.i.i131 = icmp eq i16 %53, 16384
  br i1 %cmp.i.i131, label %if.end.i132.if.else.i_crit_edge, label %exfat_mode_can_hold_ro.exit.i

if.end.i132.if.else.i_crit_edge:                  ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

exfat_mode_can_hold_ro.exit.i:                    ; preds = %if.end.i132
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %61 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %fs_fmask.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %64, i32 0, i32 23, i32 2
  %65 = ptrtoint ptr %fs_fmask.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %fs_fmask.i.i, align 8
  %67 = and i16 %66, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 146, i16 %67)
  %tobool.not.i.not.i = icmp eq i16 %67, 146
  br i1 %tobool.not.i.not.i, label %exfat_mode_can_hold_ro.exit.i.if.else.i_crit_edge, label %if.then21.i

exfat_mode_can_hold_ro.exit.i.if.else.i_crit_edge: ; preds = %exfat_mode_can_hold_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then21.i:                                      ; preds = %exfat_mode_can_hold_ro.exit.i
  %and23.i = and i32 %conv15.i, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then21.i.exfat_sanitize_mode.exit_crit_edge, label %land.lhs.true.i

if.then21.i.exfat_sanitize_mode.exit_crit_edge:   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_sanitize_mode.exit

land.lhs.true.i:                                  ; preds = %if.then21.i
  %neg28.i = and i32 %conv12.i, 146
  %and29.i = xor i32 %neg28.i, 146
  call void @__sanitizer_cov_trace_cmp4(i32 %and23.i, i32 %and29.i)
  %cmp30.not.i = icmp eq i32 %and23.i, %and29.i
  br i1 %cmp30.not.i, label %land.lhs.true.i.exfat_sanitize_mode.exit_crit_edge, label %land.lhs.true.i.if.then58_crit_edge

land.lhs.true.i.if.then58_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

land.lhs.true.i.exfat_sanitize_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_sanitize_mode.exit

if.else.i:                                        ; preds = %exfat_mode_can_hold_ro.exit.i.if.else.i_crit_edge, %if.end.i132.if.else.i_crit_edge
  %and35.i = and i32 %conv15.i, 146
  %neg37.i = and i32 %conv12.i, 146
  %and38.i = xor i32 %neg37.i, 146
  call void @__sanitizer_cov_trace_cmp4(i32 %and35.i, i32 %and38.i)
  %cmp39.not.i = icmp eq i32 %and35.i, %and38.i
  br i1 %cmp39.not.i, label %if.else.i.exfat_sanitize_mode.exit_crit_edge, label %if.else.i.if.then58_crit_edge

if.else.i.if.then58_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then58

if.else.i.exfat_sanitize_mode.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_sanitize_mode.exit

exfat_sanitize_mode.exit:                         ; preds = %if.else.i.exfat_sanitize_mode.exit_crit_edge, %land.lhs.true.i.exfat_sanitize_mode.exit_crit_edge, %if.then21.i.exfat_sanitize_mode.exit_crit_edge
  %or45.i = or i16 %and13.i, -4096
  %and47.i = and i16 %or45.i, %57
  %68 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %and47.i, ptr %ia_mode, align 2
  br label %if.end62

if.then58:                                        ; preds = %if.else.i.if.then58_crit_edge, %land.lhs.true.i.if.then58_crit_edge, %cond.end.i.if.then58_crit_edge
  %and60 = and i32 %26, -2
  %69 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and60, ptr %attr, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %exfat_sanitize_mode.exit, %lor.lhs.false41.if.end62_crit_edge
  %70 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %attr, align 8
  %and64 = and i32 %71, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.if.end77_crit_edge, label %if.then66

if.end62.if.end77_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then66:                                        ; preds = %if.end62
  %ia_size67 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %72 = ptrtoint ptr %ia_size67 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ia_size67, align 8
  %call68 = call i32 @exfat_block_truncate_page(ptr noundef %5, i64 noundef %73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.then66.cleanup_crit_edge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %truncate_lock = getelementptr i8, ptr %5, i32 -96
  call void @down_write(ptr noundef %truncate_lock) #8
  %74 = ptrtoint ptr %ia_size67 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %ia_size67, align 8
  call void @truncate_setsize(ptr noundef %5, i64 noundef %75) #8
  call void @exfat_truncate(ptr noundef %5, i64 undef)
  call void @up_write(ptr noundef %truncate_lock) #8
  br label %if.end77

if.end77:                                         ; preds = %if.end71, %if.end62.if.end77_crit_edge
  call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %5, ptr noundef %attr) #8
  %i_atime = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 15
  call void @exfat_truncate_atime(ptr noundef %i_atime) #8
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then66.cleanup_crit_edge, %land.lhs.true45.cleanup_crit_edge, %land.lhs.true36.cleanup_crit_edge, %land.lhs.true29.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %exfat_cont_expand.exit.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call23.i, %exfat_cont_expand.exit.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call68, %if.then66.cleanup_crit_edge ], [ 0, %if.end77 ], [ -1, %land.lhs.true45.cleanup_crit_edge ], [ -1, %land.lhs.true36.cleanup_crit_edge ], [ -1, %land.lhs.true29.cleanup_crit_edge ], [ %err.1.i, %if.end7.i.cleanup_crit_edge ], [ %call2.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_block_truncate_page(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %range.i = alloca %struct.fstrim_range, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072146311, i32 %cmd)
  %cond = icmp eq i32 %cmd, -1072146311
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_queue.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %range.i) #8
  %8 = getelementptr inbounds %struct.fstrim_range, ptr %range.i, i32 0, i32 2
  %9 = call ptr @memset(ptr %range.i, i32 255, i32 24)
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call1.i, label %if.end.i, label %sw.bb.exfat_ioctl_fitrim.exit_crit_edge

sw.bb.exfat_ioctl_fitrim.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_ioctl_fitrim.exit

if.end.i:                                         ; preds = %sw.bb
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %queue_flags.i, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i.exfat_ioctl_fitrim.exit_crit_edge, label %if.end4.i

if.end.i.exfat_ioctl_fitrim.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_ioctl_fitrim.exit

if.end4.i:                                        ; preds = %if.end.i
  %13 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end4.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end4.i.if.then11.i.i.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end4.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 24, i32 -1226833920) #12
  %asmresult.i.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !35

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range.i, i32 noundef 24) #8
  %15 = call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !47
  %and.i.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %range.i, ptr noundef %13, i32 noundef 24) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #8, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end8.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !35

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end4.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 24, %if.end4.i.if.then11.i.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 24, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %range.i, i32 %sub.i.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %exfat_ioctl_fitrim.exit

if.end8.i:                                        ; preds = %if.end.i.i.i
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %8, align 8
  %conv.i = trunc i64 %20 to i32
  %discard_granularity.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 18
  %21 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %discard_granularity.i, align 4
  %23 = call i32 @llvm.umax.i32(i32 %22, i32 %conv.i) #8
  %conv10.i = zext i32 %23 to i64
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv10.i, ptr %8, align 8
  %call12.i = call i32 @exfat_trim_fs(ptr noundef %1, ptr noundef nonnull %range.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end8.i.exfat_ioctl_fitrim.exit_crit_edge, label %if.then.i32.i

if.end8.i.exfat_ioctl_fitrim.exit_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_ioctl_fitrim.exit

if.then.i32.i:                                    ; preds = %if.end8.i
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #8
  %call.i.i31.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i31.i, label %if.then.i32.i.exfat_ioctl_fitrim.exit_crit_edge, label %copy_to_user.exit.i

if.then.i32.i.exfat_ioctl_fitrim.exit_crit_edge:  ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_ioctl_fitrim.exit

copy_to_user.exit.i:                              ; preds = %if.then.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i36.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %range.i, i32 noundef 24) #8
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %range.i, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool18.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool18.not.i, i32 0, i32 -14
  br label %exfat_ioctl_fitrim.exit

exfat_ioctl_fitrim.exit:                          ; preds = %copy_to_user.exit.i, %if.then.i32.i.exfat_ioctl_fitrim.exit_crit_edge, %if.end8.i.exfat_ioctl_fitrim.exit_crit_edge, %if.then11.i.i.i, %if.end.i.exfat_ioctl_fitrim.exit_crit_edge, %sw.bb.exfat_ioctl_fitrim.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %sw.bb.exfat_ioctl_fitrim.exit_crit_edge ], [ -95, %if.end.i.exfat_ioctl_fitrim.exit_crit_edge ], [ %call12.i, %if.end8.i.exfat_ioctl_fitrim.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i32.i.exfat_ioctl_fitrim.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %range.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exfat_ioctl_fitrim.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %exfat_ioctl_fitrim.exit ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_file_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @__generic_file_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev, align 4
  %call1 = tail call i32 @sync_blockdev(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_bdev6 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev6, align 4
  %call7 = tail call i32 @blkdev_issue_flush(ptr noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_cont_expand_simple(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_mapping_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_trim_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/exfat/file.c", i32 185, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/exfat/file.c", i32 240, i32 3}
!4 = !{ptr @exfat_file_operations, !5, !"exfat_file_operations", i1 false, i1 false}
!5 = !{!"../fs/exfat/file.c", i32 418, i32 30}
!6 = !{ptr @exfat_file_inode_operations, !7, !"exfat_file_inode_operations", i1 false, i1 false}
!7 = !{!"../fs/exfat/file.c", i32 432, i32 31}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../fs/exfat/file.c", i32 48, i32 14}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!15 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2153009512}
!31 = !{i64 2149661228}
!32 = !{i64 2149666160}
!33 = !{i64 2149687872}
!34 = !{i64 2149692764}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2149769221}
!37 = !{i64 2149769546}
!38 = !{i64 2153021374}
!39 = !{i64 994177, i64 994238}
!40 = !{i64 996909}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 997194}
!43 = !{i64 2153007581}
!44 = !{i64 2153007423}
!45 = !{i64 2153007751}
!46 = !{i64 2149768896}
!47 = !{i64 5168723}
!48 = !{i64 5168920}
!49 = !{i64 2152654153}
