; ModuleID = '/llk/IR_all_yes/fs/ext4/file.c_pt.bc'
source_filename = "../fs/ext4/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iomap_ops = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.iomap_dio_ops = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
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
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.67, %union.anon.68 }
%union.anon.67 = type { ptr }
%union.anon.68 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.27, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ext4_iomap_report_ops = external dso_local constant %struct.iomap_ops, align 4
@ext4_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @ext4_llseek, ptr null, ptr null, ptr @ext4_file_read_iter, ptr @ext4_file_write_iter, ptr @iocb_bio_iopoll, ptr null, ptr null, ptr null, ptr @ext4_ioctl, ptr null, ptr @ext4_file_mmap, i32 524288, ptr @ext4_file_open, ptr null, ptr @ext4_release_file, ptr @ext4_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @ext4_fallocate, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ext4_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr @ext4_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ext4_setattr, ptr @ext4_file_getattr, ptr @ext4_listxattr, ptr @ext4_fiemap, ptr null, ptr null, ptr null, ptr @ext4_set_acl, ptr @ext4_fileattr_set, ptr @ext4_fileattr_get, [36 x i8] undef }, align 128
@ext4_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@__func__.ext4_dio_write_iter = private unnamed_addr constant [20 x i8] c"ext4_dio_write_iter\00", align 1
@ext4_iomap_overwrite_ops = external dso_local constant %struct.iomap_ops, align 4
@ext4_dio_write_ops = internal constant { %struct.iomap_dio_ops, [24 x i8] } { %struct.iomap_dio_ops { ptr @ext4_dio_write_end_io, ptr null }, [24 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ext4_handle_inode_extension.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/file.c\00", [17 x i8] zeroinitializer }, align 32
@__func__.ext4_handle_inode_extension = private unnamed_addr constant [28 x i8] c"ext4_handle_inode_extension\00", align 1
@ext4_update_i_disksize.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@ext4_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @ext4_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__func__.ext4_sample_last_mounted = private unnamed_addr constant [25 x i8] c"ext4_sample_last_mounted\00", align 1
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"ext4_file_operations\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 911, i32 30 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"ext4_dio_write_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 402, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 271, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 298, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 3414, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"ext4_file_vm_ops\00", align 1
@___asan_gen_.22 = private constant [18 x i8] c"../fs/ext4/file.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 756, i32 42 }
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 34, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 366, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @ext4_file_operations, ptr @ext4_dio_write_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ext4_file_vm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_dio_write_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ext4_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_flags.i = getelementptr i8, ptr %3, i32 -380
  %4 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_flags.i, align 4
  %6 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_bitmap_maxbytes = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %maxbytes.0.in = phi ptr [ %s_maxbytes, %if.else ], [ %s_bitmap_maxbytes, %if.then ]
  %11 = ptrtoint ptr %maxbytes.0.in to i32
  call void @__asan_load8_noabort(i32 %11)
  %maxbytes.0 = load i64, ptr %maxbytes.0.in, align 8
  %12 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %whence, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb6
  ]

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %call4 = tail call i64 @generic_file_llseek_size(ptr noundef %file, i64 noundef %offset, i32 noundef %whence, i64 noundef %maxbytes.0, i64 noundef %call3) #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem.i) #8
  %call5 = tail call i64 @iomap_seek_hole(ptr noundef %3, i64 noundef %offset, ptr noundef nonnull @ext4_iomap_report_ops) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %i_rwsem.i31 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem.i31) #8
  %call7 = tail call i64 @iomap_seek_data(ptr noundef %3, i64 noundef %offset, ptr noundef nonnull @ext4_iomap_report_ops) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %i_rwsem.i31.sink = phi ptr [ %i_rwsem.i31, %sw.bb6 ], [ %i_rwsem.i, %sw.bb ]
  %offset.addr.0 = phi i64 [ %call7, %sw.bb6 ], [ %call5, %sw.bb ]
  tail call void @up_read(ptr noundef %i_rwsem.i31.sink) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset.addr.0)
  %cmp = icmp slt i64 %offset.addr.0, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i64 @vfs_setpos(ptr noundef %file, i64 noundef %offset.addr.0, i64 noundef %maxbytes.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sw.epilog.cleanup_crit_edge, %sw.default
  %retval.0 = phi i64 [ %call4, %sw.default ], [ %call10, %if.end9 ], [ %offset.addr.0, %sw.epilog.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek_size(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

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
declare dso_local i64 @iomap_seek_hole(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iomap_seek_data(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_file_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_ext4_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %s_ext4_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_ext4_flags.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !47

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %13 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ki_flags, align 8
  %and = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  %and.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %i_rwsem.i24.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then10
  %call.i.i = tail call i32 @down_read_trylock(ptr noundef %i_rwsem.i24.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @down_read(ptr noundef %i_rwsem.i24.i) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.then.i.if.end4.i_crit_edge
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end4.i.if.then6.i_crit_edge

if.end4.i.if.then6.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.end.i.i:                                       ; preds = %if.end4.i
  %i_verity_info.i.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 53
  %17 = ptrtoint ptr %i_verity_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %i_verity_info.i.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  %cmp.i.not.i.i = icmp eq ptr %18, null
  br i1 %cmp.i.not.i.i, label %if.end2.i.i, label %if.end.i.i.if.then6.i_crit_edge

if.end.i.i.if.then6.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i = tail call i32 @ext4_inode_journal_mode(ptr noundef %3) #8
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end2.i.i.if.then6.i_crit_edge

if.end2.i.i.if.then6.i_crit_edge:                 ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  %i_flags.i.i.i.i = getelementptr i8, ptr %3, i32 -380
  %19 = ptrtoint ptr %i_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_flags.i.i.i.i, align 4
  %21 = and i32 %20, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.if.end10.i_crit_edge, label %ext4_dio_supported.exit.i

if.end6.i.i.if.end10.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

ext4_dio_supported.exit.i:                        ; preds = %if.end6.i.i
  %i_inline_off.i.i.i = getelementptr i8, ptr %3, i32 990
  %22 = ptrtoint ptr %i_inline_off.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %i_inline_off.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool2.i.not.i.i = icmp eq i16 %23, 0
  br i1 %tobool2.i.not.i.i, label %ext4_dio_supported.exit.i.if.end10.i_crit_edge, label %ext4_dio_supported.exit.i.if.then6.i_crit_edge

ext4_dio_supported.exit.i.if.then6.i_crit_edge:   ; preds = %ext4_dio_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

ext4_dio_supported.exit.i.if.end10.i_crit_edge:   ; preds = %ext4_dio_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then6.i:                                       ; preds = %ext4_dio_supported.exit.i.if.then6.i_crit_edge, %if.end2.i.i.if.then6.i_crit_edge, %if.end.i.i.if.then6.i_crit_edge, %if.end4.i.if.then6.i_crit_edge
  tail call void @up_read(ptr noundef %i_rwsem.i24.i) #8
  %24 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ki_flags, align 8
  %and8.i = and i32 %25, -131073
  store i32 %and8.i, ptr %ki_flags, align 8
  %call9.i = tail call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %to) #8
  br label %cleanup

if.end10.i:                                       ; preds = %ext4_dio_supported.exit.i.if.end10.i_crit_edge, %if.end6.i.i.if.end10.i_crit_edge
  %call11.i = tail call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %to, ptr noundef nonnull @ext4_iomap_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  tail call void @up_read(ptr noundef %i_rwsem.i24.i) #8
  %26 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iocb, align 8
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_flags.i.i, align 4
  %and.i27.i = and i32 %29, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i)
  %tobool.not.i28.i = icmp eq i32 %and.i27.i, 0
  br i1 %tobool.not.i28.i, label %if.then.i.i, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i.i) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %to) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then.i.i, %if.end10.i.cleanup_crit_edge, %if.then6.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call9.i, %if.then6.i ], [ -11, %if.then.i.cleanup_crit_edge ], [ %call11.i, %if.end10.i.cleanup_crit_edge ], [ %call11.i, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  %map.i.i.i = alloca %struct.ext4_map_blocks, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_ext4_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %s_ext4_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_ext4_flags.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !47

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %11 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ki_flags, align 8
  %and = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %13 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ki_pos.i, align 8
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %15 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i.i, align 8
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %18, -1
  %call.i.i = tail call i32 @iov_iter_alignment(ptr noundef %from) #8
  %conv.i.i = zext i32 %call.i.i to i64
  %or.i.i = or i64 %14, %conv.i.i
  %conv1.i.i = zext i32 %sub.i.i to i64
  %and.i.i = and i64 %or.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.not293.i = icmp eq i64 %and.i.i, 0
  %conv.i = zext i32 %16 to i64
  %add.i = add i64 %14, %conv.i
  %call3.i = tail call fastcc i64 @i_size_read(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call3.i)
  %cmp.i = icmp sgt i64 %add.i, %call3.i
  %19 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ki_flags, align 8
  %and230.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230.i)
  %tobool.not231.i = icmp eq i32 %and230.i, 0
  br i1 %cmp.i, label %if.end6.thread.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.then6
  br i1 %tobool.not231.i, label %if.else19.i, label %if.then7.i

if.end6.thread.i:                                 ; preds = %if.then6
  br i1 %tobool.not231.i, label %if.end6.thread.i.if.else22.i_crit_edge, label %if.end6.thread.i.if.else.i_crit_edge

if.end6.thread.i.if.else.i_crit_edge:             ; preds = %if.end6.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end6.thread.i.if.else22.i_crit_edge:           ; preds = %if.end6.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else22.i

if.then7.i:                                       ; preds = %if.end6.i
  br i1 %tobool.not.i.not293.i, label %if.then9.i, label %if.then7.i.if.else.i_crit_edge

if.then7.i.if.else.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then9.i:                                       ; preds = %if.then7.i
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  %call.i181.i = tail call i32 @down_read_trylock(ptr noundef %i_rwsem.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i)
  %tobool11.not.i = icmp eq i32 %call.i181.i, 0
  br i1 %tobool11.not.i, label %if.then9.i.cleanup_crit_edge, label %if.then9.i.if.end24.i_crit_edge

if.then9.i.if.end24.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.then7.i.if.else.i_crit_edge, %if.end6.thread.i.if.else.i_crit_edge
  %i_rwsem.i182.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  %call.i183.i = tail call i32 @down_write_trylock(ptr noundef %i_rwsem.i182.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183.i)
  %tobool15.not.i = icmp eq i32 %call.i183.i, 0
  br i1 %tobool15.not.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.if.end24.i_crit_edge

if.else.i.if.end24.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else19.i:                                      ; preds = %if.end6.i
  br i1 %tobool.not.i.not293.i, label %if.then21.i, label %if.else19.i.if.else22.i_crit_edge

if.else19.i.if.else22.i_crit_edge:                ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else22.i

if.then21.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_rwsem.i184.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem.i184.i) #8
  br label %if.end24.i

if.else22.i:                                      ; preds = %if.else19.i.if.else22.i_crit_edge, %if.end6.thread.i.if.else22.i_crit_edge
  %i_rwsem.i185.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i185.i) #8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else22.i, %if.then21.i, %if.else.i.if.end24.i_crit_edge, %if.then9.i.if.end24.i_crit_edge
  %tobool27.not.i = phi i1 [ false, %if.then21.i ], [ true, %if.else22.i ], [ false, %if.then9.i.if.end24.i_crit_edge ], [ true, %if.else.i.if.end24.i_crit_edge ]
  %ilock_shared.1233.i = phi i8 [ 1, %if.then21.i ], [ 0, %if.else22.i ], [ 1, %if.then9.i.if.end24.i_crit_edge ], [ 0, %if.else.i.if.end24.i_crit_edge ]
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_flags.i.i, align 4
  %and.i186.i = and i32 %22, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186.i)
  %tobool.not.i187.i = icmp eq i32 %and.i186.i, 0
  br i1 %tobool.not.i187.i, label %if.end.i.i, label %if.end24.i.if.then26.i_crit_edge

if.end24.i.if.then26.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.i

if.end.i.i:                                       ; preds = %if.end24.i
  %i_verity_info.i.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 53
  %23 = ptrtoint ptr %i_verity_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %i_verity_info.i.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  %cmp.i.not.i.i = icmp eq ptr %24, null
  br i1 %cmp.i.not.i.i, label %if.end2.i.i, label %if.end.i.i.if.then26.i_crit_edge

if.end.i.i.if.then26.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i = tail call i32 @ext4_inode_journal_mode(ptr noundef %3) #8
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end2.i.i.if.then26.i_crit_edge

if.end2.i.i.if.then26.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  %i_flags.i.i.i.i = getelementptr i8, ptr %3, i32 -380
  %25 = ptrtoint ptr %i_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_flags.i.i.i.i, align 4
  %27 = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.if.end32.i_crit_edge, label %ext4_dio_supported.exit.i

if.end6.i.i.if.end32.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

ext4_dio_supported.exit.i:                        ; preds = %if.end6.i.i
  %i_inline_off.i.i.i = getelementptr i8, ptr %3, i32 990
  %28 = ptrtoint ptr %i_inline_off.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %i_inline_off.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool2.i.not.i.i = icmp eq i16 %29, 0
  br i1 %tobool2.i.not.i.i, label %ext4_dio_supported.exit.i.if.end32.i_crit_edge, label %ext4_dio_supported.exit.i.if.then26.i_crit_edge

ext4_dio_supported.exit.i.if.then26.i_crit_edge:  ; preds = %ext4_dio_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.i

ext4_dio_supported.exit.i.if.end32.i_crit_edge:   ; preds = %ext4_dio_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then26.i:                                      ; preds = %ext4_dio_supported.exit.i.if.then26.i_crit_edge, %if.end2.i.i.if.then26.i_crit_edge, %if.end.i.i.if.then26.i_crit_edge, %if.end24.i.if.then26.i_crit_edge
  %i_rwsem.i189.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  br i1 %tobool27.not.i, label %if.else29.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %i_rwsem.i189.i) #8
  br label %if.end30.i

if.else29.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_write(ptr noundef %i_rwsem.i189.i) #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else29.i, %if.then28.i
  %call31.i = tail call fastcc i32 @ext4_buffered_write_iter(ptr noundef %iocb, ptr noundef %from) #8
  br label %cleanup

if.end32.i:                                       ; preds = %ext4_dio_supported.exit.i.if.end32.i_crit_edge, %if.end6.i.i.if.end32.i_crit_edge
  %30 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iocb, align 8
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_flags.i63.i.i = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %i_flags.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_flags.i63.i.i, align 4
  %and.i64.i.i = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64.i.i)
  %tobool.not.i65.i.i = icmp eq i32 %and.i64.i.i, 0
  br i1 %tobool.not.i65.i.i, label %if.end.i.lr.ph.i.i, label %if.end32.i.out.i.i_crit_edge, !prof !47

if.end32.i.out.i.i_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.end.i.lr.ph.i.i:                               ; preds = %if.end32.i
  %i_disksize.i.i.i = getelementptr i8, ptr %33, i32 -104
  %i_blkbits.i.i.i = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 20
  %m_lblk.i.i.i = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i.i.i, i32 0, i32 1
  %m_len.i.i.i = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i.i.i, i32 0, i32 2
  %m_flags.i.i.i = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i.i.i, i32 0, i32 3
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 25
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end13.i.i.if.end.i.i.i_crit_edge, %if.end.i.lr.ph.i.i
  %extend.0.i = phi i8 [ 0, %if.end.i.lr.ph.i.i ], [ %extend.1.i, %if.end13.i.i.if.end.i.i.i_crit_edge ]
  %ilock_shared.2.i = phi i8 [ %ilock_shared.1233.i, %if.end.i.lr.ph.i.i ], [ 0, %if.end13.i.i.if.end.i.i.i_crit_edge ]
  %36 = phi ptr [ %33, %if.end.i.lr.ph.i.i ], [ %71, %if.end13.i.i.if.end.i.i.i_crit_edge ]
  %call3.i.i.i = call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call3.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end.i.i.i.out.i.i_crit_edge, label %if.end5.i.i.i

if.end.i.i.i.out.i.i_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %i_flags.i.i.i190.i = getelementptr i8, ptr %36, i32 -380
  %37 = ptrtoint ptr %i_flags.i.i.i190.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %i_flags.i.i.i190.i, align 4
  %39 = and i32 %38, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool7.not.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool7.not.i.i.i, label %if.then8.i.i.i, label %ext4_generic_write_checks.exitthread-pre-split.i.i

if.then8.i.i.i:                                   ; preds = %if.end5.i.i.i
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 8
  %40 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %44 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ki_pos.i, align 8
  %s_bitmap_maxbytes.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %43, i32 0, i32 13
  %46 = ptrtoint ptr %s_bitmap_maxbytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %s_bitmap_maxbytes.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %45)
  %cmp10.not.i.i.i = icmp sgt i64 %47, %45
  br i1 %cmp10.not.i.i.i, label %if.end12.i.i.i, label %if.then8.i.i.i.out.i.i_crit_edge

if.then8.i.i.i.out.i.i_crit_edge:                 ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.end12.i.i.i:                                   ; preds = %if.then8.i.i.i
  %sub.i.i.i = sub i64 %47, %45
  %48 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count.i.i, align 8
  %conv.i.i.i.i = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i.i, i64 %conv.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i64 %sub.i.i.i, %conv.i.i.i.i
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end12.i.i.i.ext4_generic_write_checks.exit.i.i_crit_edge

if.end12.i.i.i.ext4_generic_write_checks.exit.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_generic_write_checks.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i.i.i.i = trunc i64 %sub.i.i.i to i32
  %50 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv3.i.i.i.i, ptr %count.i.i, align 8
  br label %ext4_generic_write_checks.exit.i.i

ext4_generic_write_checks.exitthread-pre-split.i.i: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr.i.i = load i32, ptr %count.i.i, align 8
  br label %ext4_generic_write_checks.exit.i.i

ext4_generic_write_checks.exit.i.i:               ; preds = %ext4_generic_write_checks.exitthread-pre-split.i.i, %if.then.i.i.i.i, %if.end12.i.i.i.ext4_generic_write_checks.exit.i.i_crit_edge
  %52 = phi i32 [ %.pr.i.i, %ext4_generic_write_checks.exitthread-pre-split.i.i ], [ %49, %if.end12.i.i.i.ext4_generic_write_checks.exit.i.i_crit_edge ], [ %conv3.i.i.i.i, %if.then.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i.i = icmp slt i32 %52, 1
  br i1 %cmp.i.i, label %ext4_generic_write_checks.exit.i.i.out.i.i_crit_edge, label %if.end.i192.i

ext4_generic_write_checks.exit.i.i.out.i.i_crit_edge: ; preds = %ext4_generic_write_checks.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.end.i192.i:                                    ; preds = %ext4_generic_write_checks.exit.i.i
  %53 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ki_pos.i, align 8
  %conv.i.i.i = zext i32 %52 to i64
  %add.i.i.i = add i64 %54, %conv.i.i.i
  %call.i.i191.i = call fastcc i64 @i_size_read(ptr noundef %33) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %call.i.i191.i)
  %cmp.i46.i.i = icmp sgt i64 %add.i.i.i, %call.i.i191.i
  br i1 %cmp.i46.i.i, label %if.end.i192.i.if.then3.i.i_crit_edge, label %ext4_extending_io.exit.i.i

if.end.i192.i.if.then3.i.i_crit_edge:             ; preds = %if.end.i192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i.i

ext4_extending_io.exit.i.i:                       ; preds = %if.end.i192.i
  %55 = ptrtoint ptr %i_disksize.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %i_disksize.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %56)
  %cmp5.i.i.i = icmp sgt i64 %add.i.i.i, %56
  br i1 %cmp5.i.i.i, label %ext4_extending_io.exit.i.i.if.then3.i.i_crit_edge, label %ext4_extending_io.exit.i.i.if.end4.i.i_crit_edge

ext4_extending_io.exit.i.i.if.end4.i.i_crit_edge: ; preds = %ext4_extending_io.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

ext4_extending_io.exit.i.i.if.then3.i.i_crit_edge: ; preds = %ext4_extending_io.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %ext4_extending_io.exit.i.i.if.then3.i.i_crit_edge, %if.end.i192.i.if.then3.i.i_crit_edge
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %ext4_extending_io.exit.i.i.if.end4.i.i_crit_edge
  %extend.1.i = phi i8 [ 1, %if.then3.i.i ], [ %extend.0.i, %ext4_extending_io.exit.i.i.if.end4.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ilock_shared.2.i)
  %tobool.not.i193.i = icmp eq i8 %ilock_shared.2.i, 0
  br i1 %tobool.not.i193.i, label %if.end4.i.i.if.end14.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i.i
  %57 = ptrtoint ptr %i_flags.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_flags.i63.i.i, align 4
  %and.i194.i = and i32 %58, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194.i)
  %tobool5.not.i.i = icmp ne i32 %and.i194.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %extend.1.i)
  %tobool6.not.i.i = icmp eq i8 %extend.1.i, 0
  %or.cond.i = select i1 %tobool5.not.i.i, i1 %tobool6.not.i.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false7.i.i, label %land.lhs.true.i.i.if.then9.i.i_crit_edge

land.lhs.true.i.i.if.then9.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i.i

lor.lhs.false7.i.i:                               ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map.i.i.i) #8
  %59 = call ptr @memset(ptr %map.i.i.i, i32 255, i32 24)
  %60 = ptrtoint ptr %i_blkbits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %i_blkbits.i.i.i, align 2
  %call.i48.i.i = call fastcc i64 @i_size_read(ptr noundef %33) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %call.i48.i.i)
  %cmp.i49.i.i = icmp sgt i64 %add.i.i.i, %call.i48.i.i
  br i1 %cmp.i49.i.i, label %lor.lhs.false7.i.i.ext4_overwrite_io.exit.thread.i.i_crit_edge, label %if.end.i53.i.i

lor.lhs.false7.i.i.ext4_overwrite_io.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_overwrite_io.exit.thread.i.i

if.end.i53.i.i:                                   ; preds = %lor.lhs.false7.i.i
  %conv.i50.i.i = zext i8 %61 to i32
  %sh_prom.i.i.i = zext i8 %61 to i64
  %shr.i.i.i = ashr i64 %54, %sh_prom.i.i.i
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %62 = ptrtoint ptr %m_lblk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv2.i.i.i, ptr %m_lblk.i.i.i, align 8
  %shl.i.i.i = shl nuw i32 1, %conv.i50.i.i
  %conv4.i.i.i = sext i32 %shl.i.i.i to i64
  %sub.i51.i.i = add i64 %add.i.i.i, -1
  %add5.i.i.i = add i64 %sub.i51.i.i, %conv4.i.i.i
  %neg.i.i.i = sub nsw i64 0, %conv4.i.i.i
  %and.i52.i.i = and i64 %add5.i.i.i, %neg.i.i.i
  %shr10.i.i.i = ashr i64 %and.i52.i.i, %sh_prom.i.i.i
  %sub13.i.i.i = sub i64 %shr10.i.i.i, %shr.i.i.i
  %conv14.i.i.i = trunc i64 %sub13.i.i.i to i32
  %63 = ptrtoint ptr %m_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv14.i.i.i, ptr %m_len.i.i.i, align 4
  %call16.i.i.i = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %33, ptr noundef nonnull %map.i.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i.i.i, i32 %conv14.i.i.i)
  %cmp17.i.i.i = icmp eq i32 %call16.i.i.i, %conv14.i.i.i
  br i1 %cmp17.i.i.i, label %ext4_overwrite_io.exit.i.i, label %if.end.i53.i.i.ext4_overwrite_io.exit.thread.i.i_crit_edge

if.end.i53.i.i.ext4_overwrite_io.exit.thread.i.i_crit_edge: ; preds = %if.end.i53.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_overwrite_io.exit.thread.i.i

ext4_overwrite_io.exit.thread.i.i:                ; preds = %if.end.i53.i.i.ext4_overwrite_io.exit.thread.i.i_crit_edge, %lor.lhs.false7.i.i.ext4_overwrite_io.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map.i.i.i) #8
  br label %if.then9.i.i

ext4_overwrite_io.exit.i.i:                       ; preds = %if.end.i53.i.i
  %64 = ptrtoint ptr %m_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %m_flags.i.i.i, align 8
  %and19.i.i.i = and i32 %65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and19.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map.i.i.i) #8
  br i1 %tobool.i.not.i.i, label %ext4_overwrite_io.exit.i.i.if.then9.i.i_crit_edge, label %ext4_overwrite_io.exit.i.i.if.end14.i.i_crit_edge

ext4_overwrite_io.exit.i.i.if.end14.i.i_crit_edge: ; preds = %ext4_overwrite_io.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

ext4_overwrite_io.exit.i.i.if.then9.i.i_crit_edge: ; preds = %ext4_overwrite_io.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %ext4_overwrite_io.exit.i.i.if.then9.i.i_crit_edge, %ext4_overwrite_io.exit.thread.i.i, %land.lhs.true.i.i.if.then9.i.i_crit_edge
  %66 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ki_flags, align 8
  %and10.i.i = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.then9.i.i.if.then21.i.i_crit_edge

if.then9.i.i.if.then21.i.i_crit_edge:             ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @up_read(ptr noundef %i_rwsem.i.i.i) #8
  call void @down_write(ptr noundef %i_rwsem.i.i.i) #8
  %68 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iocb, align 8
  %f_inode.i.i.i.i = getelementptr inbounds %struct.file, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %f_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %f_inode.i.i.i.i, align 8
  %i_flags.i.i.i = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_flags.i.i.i, align 4
  %and.i.i195.i = and i32 %73, 8
  %tobool.not.i.i196.i = icmp eq i32 %and.i.i195.i, 0
  br i1 %tobool.not.i.i196.i, label %if.end13.i.i.if.end.i.i.i_crit_edge, label %if.end13.i.i.if.else.i.i_crit_edge, !prof !47

if.end13.i.i.if.else.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.end13.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end14.i.i:                                     ; preds = %ext4_overwrite_io.exit.i.i.if.end14.i.i_crit_edge, %if.end4.i.i.if.end14.i.i_crit_edge
  %extend.1.lcssa.i = phi i8 [ 0, %ext4_overwrite_io.exit.i.i.if.end14.i.i_crit_edge ], [ %extend.1.i, %if.end4.i.i.if.end14.i.i_crit_edge ]
  %ilock_shared.2.lcssa302.i = phi i8 [ 1, %ext4_overwrite_io.exit.i.i.if.end14.i.i_crit_edge ], [ 0, %if.end4.i.i.if.end14.i.i_crit_edge ]
  %call15.i.i = call i32 @file_modified(ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %if.end14.i.i.out.i.i_crit_edge, label %if.end37.i

if.end14.i.i.out.i.i_crit_edge:                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

out.i.i:                                          ; preds = %if.end14.i.i.out.i.i_crit_edge, %ext4_generic_write_checks.exit.i.i.out.i.i_crit_edge, %if.then8.i.i.i.out.i.i_crit_edge, %if.end.i.i.i.out.i.i_crit_edge, %if.end32.i.out.i.i_crit_edge
  %ilock_shared.3.i = phi i8 [ %ilock_shared.2.lcssa302.i, %if.end14.i.i.out.i.i_crit_edge ], [ %ilock_shared.1233.i, %if.end32.i.out.i.i_crit_edge ], [ %ilock_shared.2.i, %if.end.i.i.i.out.i.i_crit_edge ], [ %ilock_shared.2.i, %if.then8.i.i.i.out.i.i_crit_edge ], [ %ilock_shared.2.i, %ext4_generic_write_checks.exit.i.i.out.i.i_crit_edge ]
  %ret.0.i.i = phi i32 [ %call15.i.i, %if.end14.i.i.out.i.i_crit_edge ], [ -1, %if.end32.i.out.i.i_crit_edge ], [ %52, %ext4_generic_write_checks.exit.i.i.out.i.i_crit_edge ], [ -27, %if.then8.i.i.i.out.i.i_crit_edge ], [ %call3.i.i.i, %if.end.i.i.i.out.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ilock_shared.3.i)
  %tobool20.not.i.i = icmp eq i8 %ilock_shared.3.i, 0
  %i_rwsem.i57.i.i = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 25
  br i1 %tobool20.not.i.i, label %out.i.i.if.else.i.i_crit_edge, label %out.i.i.if.then21.i.i_crit_edge

out.i.i.if.then21.i.i_crit_edge:                  ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i.i

out.i.i.if.else.i.i_crit_edge:                    ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then21.i.i:                                    ; preds = %out.i.i.if.then21.i.i_crit_edge, %if.then9.i.i.if.then21.i.i_crit_edge
  %i_rwsem.i57.i269.i = phi ptr [ %i_rwsem.i57.i.i, %out.i.i.if.then21.i.i_crit_edge ], [ %i_rwsem.i.i.i, %if.then9.i.i.if.then21.i.i_crit_edge ]
  %ret.0.i268.i = phi i32 [ %ret.0.i.i, %out.i.i.if.then21.i.i_crit_edge ], [ -11, %if.then9.i.i.if.then21.i.i_crit_edge ]
  call void @up_read(ptr noundef %i_rwsem.i57.i269.i) #8
  br label %cleanup

if.else.i.i:                                      ; preds = %out.i.i.if.else.i.i_crit_edge, %if.end13.i.i.if.else.i.i_crit_edge
  %i_rwsem.i57.i259.i = phi ptr [ %i_rwsem.i57.i.i, %out.i.i.if.else.i.i_crit_edge ], [ %i_rwsem.i.i.i, %if.end13.i.i.if.else.i.i_crit_edge ]
  %ret.0.i258.i = phi i32 [ %ret.0.i.i, %out.i.i.if.else.i.i_crit_edge ], [ -1, %if.end13.i.i.if.else.i.i_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i57.i259.i) #8
  br label %cleanup

if.end37.i:                                       ; preds = %if.end14.i.i
  %74 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ki_flags, align 8
  %and39.i = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end46.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %extend.1.lcssa.i)
  %tobool43.not.i = icmp eq i8 %extend.1.lcssa.i, 0
  %or.cond292.i = select i1 %tobool.not.i.not293.i, i1 %tobool43.not.i, i1 false
  br i1 %or.cond292.i, label %if.end65.thread.i, label %land.lhs.true.i.out.i_crit_edge

land.lhs.true.i.out.i_crit_edge:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end65.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %ki_pos.i, align 8
  %spec.select279.i = select i1 %tobool.not.i193.i, ptr @ext4_iomap_ops, ptr @ext4_iomap_overwrite_ops
  br label %lor.rhs.i

if.end46.i:                                       ; preds = %if.end37.i
  %78 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %ki_pos.i, align 8
  br i1 %tobool.not.i.not293.i, label %if.end46.i.if.end50.i_crit_edge, label %if.then49.i

if.end46.i.if.end50.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @inode_dio_wait(ptr noundef %3) #8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then49.i, %if.end46.i.if.end50.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %extend.1.lcssa.i)
  %tobool51.not.i = icmp eq i8 %extend.1.lcssa.i, 0
  br i1 %tobool51.not.i, label %if.end50.i.if.end65.i_crit_edge, label %if.then52.i

if.end50.i.if.end65.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.then52.i:                                      ; preds = %if.end50.i
  %80 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i198.i = getelementptr inbounds %struct.super_block, ptr %81, i32 0, i32 33
  %82 = ptrtoint ptr %s_fs_info.i.i.i198.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_fs_info.i.i.i198.i, align 16
  %s_cluster_ratio.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %s_cluster_ratio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_cluster_ratio.i.i.i, align 4
  %mul.i.i.i = shl i32 %85, 3
  %call.i200.i = call ptr @__ext4_journal_start_sb(ptr noundef %81, i32 noundef 547, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef %mul.i.i.i) #8
  %cmp.i201.i = icmp ugt ptr %call.i200.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201.i, label %if.then56.i, label %if.end58.i

if.then56.i:                                      ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %call.i200.i to i32
  br label %out.i

if.end58.i:                                       ; preds = %if.then52.i
  %call59.i = call i32 @ext4_orphan_add(ptr noundef %call.i200.i, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end63.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %call62.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_dio_write_iter, i32 noundef 555, ptr noundef %call.i200.i) #8
  br label %out.i

if.end63.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %call64.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_dio_write_iter, i32 noundef 559, ptr noundef %call.i200.i) #8
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end63.i, %if.end50.i.if.end65.i_crit_edge
  %spec.select.i = select i1 %tobool.not.i193.i, ptr @ext4_iomap_ops, ptr @ext4_iomap_overwrite_ops
  br i1 %tobool.not.i.not293.i, label %if.end65.i.lor.rhs.i_crit_edge, label %lor.end.i

if.end65.i.lor.rhs.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %if.end65.i.lor.rhs.i_crit_edge, %if.end65.thread.i
  %spec.select282.i = phi ptr [ %spec.select279.i, %if.end65.thread.i ], [ %spec.select.i, %if.end65.i.lor.rhs.i_crit_edge ]
  %87 = phi i64 [ %77, %if.end65.thread.i ], [ %79, %if.end65.i.lor.rhs.i_crit_edge ]
  %tobool51.not276280.i = phi i1 [ true, %if.end65.thread.i ], [ %tobool51.not.i, %if.end65.i.lor.rhs.i_crit_edge ]
  %88 = zext i8 %extend.1.lcssa.i to i32
  %call73284.i = call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull %spec.select282.i, ptr noundef nonnull @ext4_dio_write_ops, i32 noundef %88, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %call73284.i)
  %cmp74285.i = icmp eq i32 %call73284.i, -15
  %spec.store.select286.i = select i1 %cmp74285.i, i32 0, i32 %call73284.i
  br i1 %tobool51.not276280.i, label %lor.rhs.i.out.i_crit_edge, label %lor.rhs.i.if.then79.i_crit_edge

lor.rhs.i.if.then79.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then79.i

lor.rhs.i.out.i_crit_edge:                        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

lor.end.i:                                        ; preds = %if.end65.i
  %call73.i = call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %from, ptr noundef nonnull %spec.select.i, ptr noundef nonnull @ext4_dio_write_ops, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %call73.i)
  %cmp74.i = icmp eq i32 %call73.i, -15
  %spec.store.select.i = select i1 %cmp74.i, i32 0, i32 %call73.i
  br i1 %tobool51.not.i, label %lor.end.i.out.i_crit_edge, label %lor.end.i.if.then79.i_crit_edge

lor.end.i.if.then79.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then79.i

lor.end.i.out.i_crit_edge:                        ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then79.i:                                      ; preds = %lor.end.i.if.then79.i_crit_edge, %lor.rhs.i.if.then79.i_crit_edge
  %spec.store.select287.i = phi i32 [ %spec.store.select286.i, %lor.rhs.i.if.then79.i_crit_edge ], [ %spec.store.select.i, %lor.end.i.if.then79.i_crit_edge ]
  %89 = phi i64 [ %87, %lor.rhs.i.if.then79.i_crit_edge ], [ %79, %lor.end.i.if.then79.i_crit_edge ]
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %90 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %i_blkbits.i.i, align 2
  %call.i202.i = call fastcc i64 @i_size_read(ptr noundef %3) #8
  %i_disksize.i.i = getelementptr i8, ptr %3, i32 -104
  %92 = ptrtoint ptr %i_disksize.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %i_disksize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i202.i, i64 %93)
  %cmp.i203.i = icmp slt i64 %call.i202.i, %93
  br i1 %cmp.i203.i, label %land.rhs.i.i, label %if.then79.i.if.end28.i.i_crit_edge

if.then79.i.if.end28.i.i_crit_edge:               ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i

land.rhs.i.i:                                     ; preds = %if.then79.i
  %.b179.i.i = load i1, ptr @ext4_handle_inode_extension.__already_done, align 1
  br i1 %.b179.i.i, label %land.rhs.i.i.if.end28.i.i_crit_edge, label %if.then.i.i, !prof !47

land.rhs.i.i.if.end28.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ext4_handle_inode_extension.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 298, i32 noundef 9, ptr noundef null) #8
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end28.i.i_crit_edge, %if.then79.i.if.end28.i.i_crit_edge
  %add.i.i = add i64 %89, %conv.i.i.i
  %94 = ptrtoint ptr %i_disksize.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %i_disksize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %95)
  %cmp38.not.i.i = icmp sgt i64 %add.i.i, %95
  br i1 %cmp38.not.i.i, label %if.end56.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.end28.i.i
  %96 = getelementptr i8, ptr %3, i32 -280
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %96, align 4
  %cmp.i.not.i205.i = icmp eq ptr %98, %96
  br i1 %cmp.i.not.i205.i, label %if.then40.i.i.out.i_crit_edge, label %land.lhs.true.i206.i

if.then40.i.i.out.i_crit_edge:                    ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

land.lhs.true.i206.i:                             ; preds = %if.then40.i.i
  %99 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 12
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool44.not.i.i = icmp eq i32 %101, 0
  br i1 %tobool44.not.i.i, label %land.lhs.true.i206.i.out.i_crit_edge, label %if.then45.i.i

land.lhs.true.i206.i.out.i_crit_edge:             ; preds = %land.lhs.true.i206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then45.i.i:                                    ; preds = %land.lhs.true.i206.i
  %102 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %103, i32 0, i32 33
  %104 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %s_cluster_ratio.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %105, i32 0, i32 11
  %106 = ptrtoint ptr %s_cluster_ratio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_cluster_ratio.i.i.i.i, align 4
  %mul.i.i.i.i = shl i32 %107, 3
  %call.i.i208.i = call ptr @__ext4_journal_start_sb(ptr noundef %103, i32 noundef 306, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef %mul.i.i.i.i) #8
  %cmp.i185.i.i = icmp ugt ptr %call.i.i208.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185.i.i, label %if.then49.i.i, label %if.end52.i.i

if.then49.i.i:                                    ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call50.i.i = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %3) #8
  %108 = ptrtoint ptr %call.i.i208.i to i32
  br label %out.i

if.end52.i.i:                                     ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call53.i.i = call i32 @ext4_orphan_del(ptr noundef %call.i.i208.i, ptr noundef %3) #8
  %call54.i.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 314, ptr noundef %call.i.i208.i) #8
  br label %out.i

if.end56.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select287.i)
  %cmp57.i.i = icmp slt i32 %spec.store.select287.i, 0
  br i1 %cmp57.i.i, label %if.end56.i.i.truncate125.i.i_crit_edge, label %if.end60.i.i

if.end56.i.i.truncate125.i.i_crit_edge:           ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %truncate125.i.i

if.end60.i.i:                                     ; preds = %if.end56.i.i
  %109 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i186.i.i = getelementptr inbounds %struct.super_block, ptr %110, i32 0, i32 33
  %111 = ptrtoint ptr %s_fs_info.i.i.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %s_fs_info.i.i.i186.i.i, align 16
  %s_cluster_ratio.i.i187.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %112, i32 0, i32 11
  %113 = ptrtoint ptr %s_cluster_ratio.i.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %s_cluster_ratio.i.i187.i.i, align 4
  %mul.i.i188.i.i = shl i32 %114, 3
  %call.i190.i.i = call ptr @__ext4_journal_start_sb(ptr noundef %110, i32 noundef 323, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef %mul.i.i188.i.i) #8
  %cmp.i191.i.i = icmp ugt ptr %call.i190.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191.i.i, label %if.then65.i.i, label %if.end67.i.i

if.then65.i.i:                                    ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %call.i190.i.i to i32
  br label %truncate125.i.i

if.end67.i.i:                                     ; preds = %if.end60.i.i
  %conv68197.i.i = zext i32 %spec.store.select287.i to i64
  %add69.i.i = add i64 %89, %conv68197.i.i
  %i_size.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %116 = ptrtoint ptr %i_size.i.i.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %i_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %117, i64 %add69.i.i)
  %cmp.i192.i.i = icmp slt i64 %117, %add69.i.i
  br i1 %cmp.i192.i.i, label %if.end.i.i209.i, label %if.end.i.thread.i.i

if.end.i.i209.i:                                  ; preds = %if.end67.i.i
  call fastcc void @i_size_write(ptr noundef %3, i64 noundef %add69.i.i) #8
  %118 = ptrtoint ptr %i_disksize.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %i_disksize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %119, i64 %add69.i.i)
  %cmp1.i.i.i = icmp slt i64 %119, %add69.i.i
  br i1 %cmp1.i.i.i, label %if.end.i.i209.i.if.then2.i.i.i_crit_edge, label %if.end.i.i209.i.if.then72.i.i_crit_edge

if.end.i.i209.i.if.then72.i.i_crit_edge:          ; preds = %if.end.i.i209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72.i.i

if.end.i.i209.i.if.then2.i.i.i_crit_edge:         ; preds = %if.end.i.i209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i.i.i

if.end.i.thread.i.i:                              ; preds = %if.end67.i.i
  %120 = ptrtoint ptr %i_disksize.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %i_disksize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %add69.i.i)
  %cmp1.i199.i.i = icmp slt i64 %121, %add69.i.i
  br i1 %cmp1.i199.i.i, label %if.end.i.thread.i.i.if.then2.i.i.i_crit_edge, label %if.end.i.thread.i.i.if.end84.i.i_crit_edge

if.end.i.thread.i.i.if.end84.i.i_crit_edge:       ; preds = %if.end.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84.i.i

if.end.i.thread.i.i.if.then2.i.i.i_crit_edge:     ; preds = %if.end.i.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.thread.i.i.if.then2.i.i.i_crit_edge, %if.end.i.i209.i.if.then2.i.i.i_crit_edge
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %3, align 8
  %124 = and i16 %123, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %124)
  %cmp.i.i.i210.i = icmp eq i16 %124, -32768
  br i1 %cmp.i.i.i210.i, label %land.rhs.i.i.i.i, label %if.then2.i.i.i.if.end33.i.i.i.i_crit_edge

if.then2.i.i.i.if.end33.i.i.i.i_crit_edge:        ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.then2.i.i.i
  %i_rwsem.i.i.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i.i.i.i.i, i32 noundef 4) #8
  %125 = ptrtoint ptr %i_rwsem.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %i_rwsem.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i.i.not.i.i.i.i = icmp eq i32 %126, 0
  br i1 %cmp.i.i.not.i.i.i.i, label %land.rhs6.i.i.i.i, label %land.rhs.i.i.i.i.if.end33.i.i.i.i_crit_edge

land.rhs.i.i.i.i.if.end33.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i.i.i.i

land.rhs6.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  %.b68.i.i.i.i = load i1, ptr @ext4_update_i_disksize.__already_done, align 1
  br i1 %.b68.i.i.i.i, label %land.rhs6.i.i.i.i.if.end33.i.i.i.i_crit_edge, label %if.then.i.i.i211.i, !prof !47

land.rhs6.i.i.i.i.if.end33.i.i.i.i_crit_edge:     ; preds = %land.rhs6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i.i.i.i

if.then.i.i.i211.i:                               ; preds = %land.rhs6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ext4_update_i_disksize.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3415, i32 noundef 9, ptr noundef null) #8
  br label %if.end33.i.i.i.i

if.end33.i.i.i.i:                                 ; preds = %if.then.i.i.i211.i, %land.rhs6.i.i.i.i.if.end33.i.i.i.i_crit_edge, %land.rhs.i.i.i.i.if.end33.i.i.i.i_crit_edge, %if.then2.i.i.i.if.end33.i.i.i.i_crit_edge
  %i_data_sem.i.i.i.i = getelementptr i8, ptr %3, i32 -96
  call void @down_write(ptr noundef %i_data_sem.i.i.i.i) #8
  %127 = ptrtoint ptr %i_disksize.i.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %i_disksize.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %128, i64 %add69.i.i)
  %cmp43.i.i.i.i = icmp slt i64 %128, %add69.i.i
  br i1 %cmp43.i.i.i.i, label %do.body50.i.i.i.i, label %if.end33.i.i.i.i.ext4_update_inode_size.exit.thread.i.i_crit_edge

if.end33.i.i.i.i.ext4_update_inode_size.exit.thread.i.i_crit_edge: ; preds = %if.end33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_update_inode_size.exit.thread.i.i

do.body50.i.i.i.i:                                ; preds = %if.end33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %i_disksize.i.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store volatile i64 %add69.i.i, ptr %i_disksize.i.i, align 8
  br label %ext4_update_inode_size.exit.thread.i.i

ext4_update_inode_size.exit.thread.i.i:           ; preds = %do.body50.i.i.i.i, %if.end33.i.i.i.i.ext4_update_inode_size.exit.thread.i.i_crit_edge
  call void @up_write(ptr noundef %i_data_sem.i.i.i.i) #8
  br label %if.then72.i.i

if.then72.i.i:                                    ; preds = %ext4_update_inode_size.exit.thread.i.i, %if.end.i.i209.i.if.then72.i.i_crit_edge
  %call73.i.i = call i32 @__ext4_mark_inode_dirty(ptr noundef %call.i190.i.i, ptr noundef %3, ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 330) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i.i)
  %tobool74.not.i.i = icmp eq i32 %call73.i.i, 0
  br i1 %tobool74.not.i.i, label %if.then72.i.i.if.end84.i.i_crit_edge, label %if.then81.i.i, !prof !47

if.then72.i.i.if.end84.i.i_crit_edge:             ; preds = %if.then72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84.i.i

if.then81.i.i:                                    ; preds = %if.then72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call82.i.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 333, ptr noundef %call.i190.i.i) #8
  br label %truncate125.i.i

if.end84.i.i:                                     ; preds = %if.then72.i.i.if.end84.i.i_crit_edge, %if.end.i.thread.i.i.if.end84.i.i_crit_edge
  %conv87.i.i = zext i8 %91 to i32
  %shl.i.i = shl nuw i32 1, %conv87.i.i
  %conv88198.i.i = zext i32 %shl.i.i to i64
  %sub.i212.i = add nsw i64 %conv88198.i.i, -1
  %add89.i.i = add i64 %sub.i212.i, %add69.i.i
  %neg.i.i = sub nsw i64 0, %conv88198.i.i
  %and.i213.i = and i64 %add89.i.i, %neg.i.i
  %conv94.i.i = trunc i64 %and.i213.i to i32
  %add101.i.i = add i64 %sub.i212.i, %add.i.i
  %and107.i.i = and i64 %add101.i.i, %neg.i.i
  %conv108.i.i = trunc i64 %and107.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv94.i.i, i32 %conv108.i.i)
  %cmp109.i.i = icmp ult i32 %conv94.i.i, %conv108.i.i
  br i1 %cmp109.i.i, label %land.lhs.true111.i.i, label %if.end84.i.i.land.lhs.true117.i.i_crit_edge

if.end84.i.i.land.lhs.true117.i.i_crit_edge:      ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true117.i.i

land.lhs.true111.i.i:                             ; preds = %if.end84.i.i
  %call112.i.i = call i32 @ext4_can_truncate(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i.i)
  %tobool113.not.not.i.i = icmp eq i32 %call112.i.i, 0
  br i1 %tobool113.not.not.i.i, label %land.lhs.true111.i.i.land.lhs.true117.i.i_crit_edge, label %truncate125.critedge.i.i

land.lhs.true111.i.i.land.lhs.true117.i.i_crit_edge: ; preds = %land.lhs.true111.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true117.i.i

land.lhs.true117.i.i:                             ; preds = %land.lhs.true111.i.i.land.lhs.true117.i.i_crit_edge, %if.end84.i.i.land.lhs.true117.i.i_crit_edge
  %130 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 12
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool118.not.i.i = icmp eq i32 %132, 0
  br i1 %tobool118.not.i.i, label %if.end130.critedge180.i.i, label %if.then119.i.i

if.then119.i.i:                                   ; preds = %land.lhs.true117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call120.i.i = call i32 @ext4_orphan_del(ptr noundef %call.i190.i.i, ptr noundef %3) #8
  %call122.c.i.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 352, ptr noundef %call.i190.i.i) #8
  br label %out.i

truncate125.critedge.i.i:                         ; preds = %land.lhs.true111.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call122.c182.i.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 352, ptr noundef %call.i190.i.i) #8
  br label %truncate125.i.i

truncate125.i.i:                                  ; preds = %truncate125.critedge.i.i, %if.then81.i.i, %if.then65.i.i, %if.end56.i.i.truncate125.i.i_crit_edge
  %written.addr.0.i.i = phi i32 [ %spec.store.select287.i, %if.end56.i.i.truncate125.i.i_crit_edge ], [ %115, %if.then65.i.i ], [ %call73.i.i, %if.then81.i.i ], [ %spec.store.select287.i, %truncate125.critedge.i.i ]
  %i_mapping.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %133 = ptrtoint ptr %i_mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i_mapping.i.i.i, align 8
  %invalidate_lock.i.i.i.i = getelementptr inbounds %struct.address_space, ptr %134, i32 0, i32 2
  call void @down_write(ptr noundef %invalidate_lock.i.i.i.i) #8
  %i_size.i193.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %135 = ptrtoint ptr %i_size.i193.i.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %i_size.i193.i.i, align 8
  call void @truncate_inode_pages(ptr noundef %134, i64 noundef %136) #8
  %call.i194.i.i = call i32 @ext4_truncate(ptr noundef %3) #8
  call void @up_write(ptr noundef %invalidate_lock.i.i.i.i) #8
  %137 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 12
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool126.not.i.i = icmp eq i32 %139, 0
  br i1 %tobool126.not.i.i, label %truncate125.i.i.out.i_crit_edge, label %if.then127.i.i

truncate125.i.i.out.i_crit_edge:                  ; preds = %truncate125.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.then127.i.i:                                   ; preds = %truncate125.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call128.i.i = call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %3) #8
  br label %out.i

if.end130.critedge180.i.i:                        ; preds = %land.lhs.true117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call122.c181.i.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_handle_inode_extension, i32 noundef 352, ptr noundef %call.i190.i.i) #8
  br label %out.i

out.i:                                            ; preds = %if.end130.critedge180.i.i, %if.then127.i.i, %truncate125.i.i.out.i_crit_edge, %if.then119.i.i, %if.end52.i.i, %if.then49.i.i, %land.lhs.true.i206.i.out.i_crit_edge, %if.then40.i.i.out.i_crit_edge, %lor.end.i.out.i_crit_edge, %lor.rhs.i.out.i_crit_edge, %if.then61.i, %if.then56.i, %land.lhs.true.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %86, %if.then56.i ], [ %call59.i, %if.then61.i ], [ %spec.store.select.i, %lor.end.i.out.i_crit_edge ], [ -11, %land.lhs.true.i.out.i_crit_edge ], [ %spec.store.select286.i, %lor.rhs.i.out.i_crit_edge ], [ %108, %if.then49.i.i ], [ %spec.store.select287.i, %if.end52.i.i ], [ %spec.store.select287.i, %land.lhs.true.i206.i.out.i_crit_edge ], [ %spec.store.select287.i, %if.then40.i.i.out.i_crit_edge ], [ %written.addr.0.i.i, %if.then127.i.i ], [ %written.addr.0.i.i, %truncate125.i.i.out.i_crit_edge ], [ %spec.store.select287.i, %if.then119.i.i ], [ %spec.store.select287.i, %if.end130.critedge180.i.i ]
  %i_rwsem.i216.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  br i1 %tobool.not.i193.i, label %if.else84.i, label %if.then83.i

if.then83.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef %i_rwsem.i216.i) #8
  br label %if.end85.i

if.else84.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_write(ptr noundef %i_rwsem.i216.i) #8
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.else84.i, %if.then83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp86.i = icmp sgt i32 %ret.0.i, -1
  br i1 %cmp86.i, label %land.lhs.true88.i, label %if.end85.i.cleanup_crit_edge

if.end85.i.cleanup_crit_edge:                     ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true88.i:                                ; preds = %if.end85.i
  %140 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool90.not.i = icmp eq i32 %141, 0
  br i1 %tobool90.not.i, label %land.lhs.true88.i.cleanup_crit_edge, label %if.then91.i

land.lhs.true88.i.cleanup_crit_edge:              ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then91.i:                                      ; preds = %land.lhs.true88.i
  %142 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %ki_pos.i, align 8
  %call93.i = call fastcc i32 @ext4_buffered_write_iter(ptr noundef %iocb, ptr noundef %from) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %cmp94.i = icmp slt i32 %call93.i, 0
  br i1 %cmp94.i, label %if.then91.i.cleanup_crit_edge, label %if.end97.i

if.then91.i.cleanup_crit_edge:                    ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97.i:                                       ; preds = %if.then91.i
  %add98.i = add nuw i32 %call93.i, %ret.0.i
  %conv99290.i = zext i32 %call93.i to i64
  %add100.i = add i64 %143, -1
  %sub.i = add i64 %add100.i, %conv99290.i
  %144 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %iocb, align 8
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %145, i32 0, i32 18
  %146 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %f_mapping.i, align 4
  %call102.i = call i32 @filemap_write_and_wait_range(ptr noundef %147, i64 noundef %143, i64 noundef %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.then104.i, label %if.end97.i.cleanup_crit_edge

if.end97.i.cleanup_crit_edge:                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then104.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %iocb, align 8
  %f_mapping106.i = getelementptr inbounds %struct.file, ptr %149, i32 0, i32 18
  %150 = ptrtoint ptr %f_mapping106.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %f_mapping106.i, align 4
  %152 = lshr i64 %143, 12
  %conv107.i = trunc i64 %152 to i32
  %153 = lshr i64 %sub.i, 12
  %conv109.i = trunc i64 %153 to i32
  %call110.i = call i32 @invalidate_mapping_pages(ptr noundef %151, i32 noundef %conv107.i, i32 noundef %conv109.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call fastcc i32 @ext4_buffered_write_iter(ptr noundef %iocb, ptr noundef %from)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then104.i, %if.end97.i.cleanup_crit_edge, %if.then91.i.cleanup_crit_edge, %land.lhs.true88.i.cleanup_crit_edge, %if.end85.i.cleanup_crit_edge, %if.else.i.i, %if.then21.i.i, %if.end30.i, %if.else.i.cleanup_crit_edge, %if.then9.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.else ], [ -5, %entry.cleanup_crit_edge ], [ %call31.i, %if.end30.i ], [ -11, %if.then9.i.cleanup_crit_edge ], [ -11, %if.else.i.cleanup_crit_edge ], [ %call93.i, %if.then91.i.cleanup_crit_edge ], [ %ret.0.i, %land.lhs.true88.i.cleanup_crit_edge ], [ %ret.0.i, %if.end85.i.cleanup_crit_edge ], [ %ret.0.i268.i, %if.then21.i.i ], [ %ret.0.i258.i, %if.else.i.i ], [ %add98.i, %if.end97.i.cleanup_crit_edge ], [ %add98.i, %if.then104.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iocb_bio_iopoll(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_file_mmap(ptr noundef %file, ptr nocapture noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_ext4_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %s_ext4_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_ext4_flags.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !47

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %11 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %12, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %13 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_flags.i, align 4
  %and.i20 = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20)
  %tobool.not.i21 = icmp eq i32 %and.i20, 0
  br i1 %tobool.not.i21, label %if.then.i, label %if.end6.file_accessed.exit_crit_edge

if.end6.file_accessed.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %file_accessed.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #8
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %if.end6.file_accessed.exit_crit_edge
  %vm_ops10 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %15 = ptrtoint ptr %vm_ops10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ext4_file_vm_ops, ptr %vm_ops10, align 4
  br label %cleanup

cleanup:                                          ; preds = %file_accessed.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %file_accessed.exit ], [ -5, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_file_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  %buf.i = alloca [64 x i8], align 1
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
  %s_ext4_flags.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %s_ext4_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %s_ext4_flags.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !47

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %7 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #8
  %9 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #8
  %s_mount_flags.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %s_mount_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %s_mount_flags.i.i, align 4
  %and1.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ext4_sample_last_mounted.exit.thread_crit_edge, !prof !41

if.end.ext4_sample_last_mounted.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_sample_last_mounted.exit.thread

if.end.i:                                         ; preds = %if.end
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end.i.ext4_sample_last_mounted.exit.thread_crit_edge

if.end.i.ext4_sample_last_mounted.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_sample_last_mounted.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call5.i = tail call fastcc zeroext i1 @sb_start_intwrite_trylock(ptr noundef %1) #8
  br i1 %call5.i, label %if.end7.i, label %lor.lhs.false.i.ext4_sample_last_mounted.exit.thread_crit_edge

lor.lhs.false.i.ext4_sample_last_mounted.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_sample_last_mounted.exit.thread

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_flags.i57.i = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 0, ptr noundef %s_mount_flags.i57.i) #8
  %16 = call ptr @memset(ptr %buf.i, i32 0, i32 64)
  %17 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %path.i, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %8, align 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %9, align 4
  %call10.i = call ptr @d_path(ptr noundef nonnull %path.i, ptr noundef nonnull %buf.i, i32 noundef 64) #8
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ext4_sample_last_mounted.exit.thread44, label %if.end13.i

ext4_sample_last_mounted.exit.thread44:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @sb_end_intwrite(ptr noundef %1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #8
  br label %if.end8

if.end13.i:                                       ; preds = %if.end7.i
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  %s_cluster_ratio.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %s_cluster_ratio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_cluster_ratio.i.i.i, align 4
  %mul.i.i.i = shl i32 %24, 3
  %call15.i = call ptr @__ext4_journal_start_sb(ptr noundef %1, i32 noundef 818, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %mul.i.i.i) #8
  %25 = ptrtoint ptr %call15.i to i32
  %cmp.i58.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58.i, label %if.end13.i.ext4_sample_last_mounted.exit_crit_edge, label %do.end.i

if.end13.i.ext4_sample_last_mounted.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_sample_last_mounted.exit

do.end.i:                                         ; preds = %if.end13.i
  %s_sbh.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 14
  %26 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_sbh.i, align 64
  %call20.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_sample_last_mounted, i32 noundef 824, ptr noundef %call15.i, ptr noundef %1, ptr noundef %27, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %do.end.i.out_journal.i_crit_edge

do.end.i.out_journal.i_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_journal.i

if.end23.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_sbh.i, align 64
  call fastcc void @lock_buffer(ptr noundef %29) #8
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %30 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_es.i, align 4
  %s_last_mounted.i = getelementptr inbounds %struct.ext4_super_block, ptr %31, i32 0, i32 33
  %call26.i = call ptr @strncpy(ptr noundef %s_last_mounted.i, ptr noundef %call10.i, i32 noundef 64) #8
  call void @ext4_superblock_csum_set(ptr noundef %1) #8
  %32 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_sbh.i, align 64
  call void @unlock_buffer(ptr noundef %33) #8
  %34 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_sbh.i, align 64
  %call29.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_sample_last_mounted, i32 noundef 832, ptr noundef %call15.i, ptr noundef null, ptr noundef %35) #8
  br label %out_journal.i

out_journal.i:                                    ; preds = %if.end23.i, %do.end.i.out_journal.i_crit_edge
  %call30.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_sample_last_mounted, i32 noundef 834, ptr noundef %call15.i) #8
  br label %ext4_sample_last_mounted.exit

ext4_sample_last_mounted.exit.thread:             ; preds = %lor.lhs.false.i.ext4_sample_last_mounted.exit.thread_crit_edge, %if.end.i.ext4_sample_last_mounted.exit.thread_crit_edge, %if.end.ext4_sample_last_mounted.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #8
  br label %if.end8

ext4_sample_last_mounted.exit:                    ; preds = %out_journal.i, %if.end13.i.ext4_sample_last_mounted.exit_crit_edge
  %err.0.i = phi i32 [ %25, %if.end13.i.ext4_sample_last_mounted.exit_crit_edge ], [ %call20.i, %out_journal.i ]
  call fastcc void @sb_end_intwrite(ptr noundef %1) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool6.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool6.not, label %ext4_sample_last_mounted.exit.if.end8_crit_edge, label %ext4_sample_last_mounted.exit.cleanup_crit_edge

ext4_sample_last_mounted.exit.cleanup_crit_edge:  ; preds = %ext4_sample_last_mounted.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ext4_sample_last_mounted.exit.if.end8_crit_edge:  ; preds = %ext4_sample_last_mounted.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %ext4_sample_last_mounted.exit.if.end8_crit_edge, %ext4_sample_last_mounted.exit.thread, %ext4_sample_last_mounted.exit.thread44
  %call9 = call i32 @fscrypt_file_open(ptr noundef %inode, ptr noundef %filp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @fsverity_file_open(ptr noundef %inode, ptr noundef %filp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %36 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %f_mode, align 8
  %and = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end16.if.end22_crit_edge, label %if.then18

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.end16
  %call19 = call i32 @ext4_inode_attach_jinode(ptr noundef %inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.then18.cleanup_crit_edge, label %if.then18.if.end22_crit_edge

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.then18.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  %38 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %f_mode, align 8
  %or = or i32 %39, 1207959552
  store i32 %or, ptr %f_mode, align 8
  %call24 = call i32 @dquot_file_open(ptr noundef %inode, ptr noundef %filp) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then18.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %ext4_sample_last_mounted.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end22 ], [ -5, %entry.cleanup_crit_edge ], [ %err.0.i, %ext4_sample_last_mounted.exit.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call19, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_release_file(ptr noundef %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  %0 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_state_flags.i, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @ext4_alloc_da_blocks(ptr noundef %inode) #8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %i_state_flags.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode, align 8
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %i_writecount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_writecount, i32 noundef 4) #8
  %5 = ptrtoint ptr %i_writecount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %i_writecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true4:                                   ; preds = %land.lhs.true
  %i_reserved_data_blocks = getelementptr i8, ptr %inode, i32 980
  %7 = ptrtoint ptr %i_reserved_data_blocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_reserved_data_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true4.if.end11_crit_edge

land.lhs.true4.if.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  %i_data_sem = getelementptr i8, ptr %inode, i32 -96
  tail call void @down_write(ptr noundef %i_data_sem) #8
  tail call void @ext4_discard_preallocations(ptr noundef %inode, i32 noundef 0) #8
  tail call void @up_write(ptr noundef %i_data_sem) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true4.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_es.i, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %14, i32 0, i32 28
  %15 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_feature_compat.i, align 4
  %and.i = and i32 %16, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end11.if.end20_crit_edge, label %land.lhs.true13

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true13:                                  ; preds = %if.end11
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  %17 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %i_flags.i, align 4
  %19 = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end20_crit_edge, label %land.lhs.true16

land.lhs.true13.if.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %land.lhs.true16.if.end20_crit_edge, label %if.then18

land.lhs.true16.if.end20_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ext4_htree_free_dir_info(ptr noundef nonnull %21) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true16.if.end20_crit_edge, %land.lhs.true13.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_sync_file(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_file_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_dio_rw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_journal_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_buffered_write_iter(ptr noundef %iocb, ptr noundef %from) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %4 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ki_flags, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  %6 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iocb, align 8
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.out.thread_crit_edge, !prof !47

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end.i.i:                                       ; preds = %if.end
  %call3.i.i = tail call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.out.thread_crit_edge, label %if.end5.i.i

if.end.i.i.out.thread_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end5.i.i:                                      ; preds = %if.end.i.i
  %i_flags.i.i.i = getelementptr i8, ptr %9, i32 -380
  %12 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_flags.i.i.i, align 4
  %14 = and i32 %13, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.end5.i.i.ext4_generic_write_checks.exit.i_crit_edge

if.end5.i.i.ext4_generic_write_checks.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_generic_write_checks.exit.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %ki_pos.i.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %19 = ptrtoint ptr %ki_pos.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ki_pos.i.i, align 8
  %s_bitmap_maxbytes.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 13
  %21 = ptrtoint ptr %s_bitmap_maxbytes.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %s_bitmap_maxbytes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %20)
  %cmp10.not.i.i = icmp sgt i64 %22, %20
  br i1 %cmp10.not.i.i, label %if.end12.i.i, label %if.then8.i.i.out.thread_crit_edge

if.then8.i.i.out.thread_crit_edge:                ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end12.i.i:                                     ; preds = %if.then8.i.i
  %sub.i.i = sub i64 %22, %20
  %count1.i.i.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %23 = ptrtoint ptr %count1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count1.i.i.i, align 8
  %conv.i.i.i = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %conv.i.i.i)
  %cmp.i.i.i = icmp ult i64 %sub.i.i, %conv.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end12.i.i.ext4_generic_write_checks.exit.i_crit_edge

if.end12.i.i.ext4_generic_write_checks.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_generic_write_checks.exit.i

if.then.i.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i.i.i = trunc i64 %sub.i.i to i32
  %25 = ptrtoint ptr %count1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv3.i.i.i, ptr %count1.i.i.i, align 8
  br label %ext4_generic_write_checks.exit.i

ext4_generic_write_checks.exit.i:                 ; preds = %if.then.i.i.i, %if.end12.i.i.ext4_generic_write_checks.exit.i_crit_edge, %if.end5.i.i.ext4_generic_write_checks.exit.i_crit_edge
  %count.i.i.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %26 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i = icmp slt i32 %27, 1
  br i1 %cmp.i, label %ext4_generic_write_checks.exit.i.out.thread_crit_edge, label %if.end.i

ext4_generic_write_checks.exit.i.out.thread_crit_edge: ; preds = %ext4_generic_write_checks.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end.i:                                         ; preds = %ext4_generic_write_checks.exit.i
  %28 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iocb, align 8
  %call1.i = tail call i32 @file_modified(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %30 = icmp slt i32 %call1.i, 0
  br i1 %30, label %if.end.i.out.thread_crit_edge, label %out

if.end.i.out.thread_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

out.thread:                                       ; preds = %if.end.i.out.thread_crit_edge, %ext4_generic_write_checks.exit.i.out.thread_crit_edge, %if.then8.i.i.out.thread_crit_edge, %if.end.i.i.out.thread_crit_edge, %if.end.out.thread_crit_edge
  %ret.0.ph = phi i32 [ -1, %if.end.out.thread_crit_edge ], [ %call3.i.i, %if.end.i.i.out.thread_crit_edge ], [ -27, %if.then8.i.i.out.thread_crit_edge ], [ %27, %ext4_generic_write_checks.exit.i.out.thread_crit_edge ], [ %call1.i, %if.end.i.out.thread_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  br label %cleanup

out:                                              ; preds = %if.end.i
  %call4 = tail call ptr @inode_to_bdi(ptr noundef %3) #8
  %31 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %backing_dev_info = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 150
  %35 = ptrtoint ptr %backing_dev_info to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call4, ptr %backing_dev_info, align 4
  %36 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iocb, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %38 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ki_pos, align 8
  %call7 = tail call i32 @generic_perform_write(ptr noundef %37, ptr noundef %from, i64 noundef %39) #8
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %backing_dev_info10 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 150
  %42 = ptrtoint ptr %backing_dev_info10 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %backing_dev_info10, align 4
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp11 = icmp sgt i32 %call7, 0
  br i1 %cmp11, label %if.then14, label %out.cleanup_crit_edge, !prof !47

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %out
  %conv42 = zext i32 %call7 to i64
  %43 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ki_pos, align 8
  %add = add i64 %44, %conv42
  store i64 %add, ptr %ki_pos, align 8
  %45 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ki_flags, align 8
  %and.i33 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i34 = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i34, label %if.then14.if.end8.i_crit_edge, label %if.then.i

if.then14.if.end8.i_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then14
  %47 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iocb, align 8
  %sub2.i = add i64 %add, -1
  %and4.i = lshr i32 %46, 2
  %and4.lobit.i = and i32 %and4.i, 1
  %49 = xor i32 %and4.lobit.i, 1
  %call.i = tail call i32 @vfs_fsync_range(ptr noundef %48, i64 noundef %44, i64 noundef %sub2.i, i32 noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %if.then14.if.end8.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %if.then.i.cleanup_crit_edge, %out.cleanup_crit_edge, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call7, %out.cleanup_crit_edge ], [ %ret.0.ph, %out.thread ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call7, %if.end8.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_modified(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext4_dio_write_end_io(ptr nocapture noundef readonly %iocb, i32 noundef %size, i32 noundef %error, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %0 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ki_pos, align 8
  %2 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool1.not = icmp eq i32 %size, 0
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool2.not
  br i1 %or.cond, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @ext4_convert_unwritten_extents(ptr noundef null, ptr noundef %5, i64 noundef %1, i32 noundef %size) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %conv = sext i32 %size to i64
  %add = add i64 %1, %conv
  %call8 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call8)
  %cmp9 = icmp sgt i64 %add, %call8
  br i1 %cmp9, label %if.then11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @i_size_write(ptr noundef %5, i64 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_convert_unwritten_extents(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !50
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !51
  %18 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !52
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !53
  %37 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !47

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #8
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #8
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  %48 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_orphan_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_can_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_perform_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_page_mkwrite(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsverity_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_inode_attach_jinode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sb_start_intwrite_trylock(ptr noundef %sb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !57
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 35, ptr noundef nonnull @.str.4) #8
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i_crit_edge
  %4 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %if.else.i.i, !prof !47

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !39
  %read_count.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %7 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_count.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add19.i.i = add i32 %18, 1
  store i32 %add19.i.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %and.i.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool30.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool30.not.i.i, label %if.then39.i.i, label %do.body3.i.i.do.end41.i.i_crit_edge, !prof !41

do.body3.i.i.do.end41.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41.i.i

if.then39.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end41.i.i

do.end41.i.i:                                     ; preds = %if.then39.i.i, %do.body3.i.i.do.end41.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #8, !srcloc !42
  br label %do.body50.i.i

if.else.i.i:                                      ; preds = %rcu_sync_is_idle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call48.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i, i1 noundef zeroext true) #8
  br label %do.body50.i.i

do.body50.i.i:                                    ; preds = %if.else.i.i, %do.end41.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end41.i.i ], [ %call48.i.i, %if.else.i.i ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %20 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i61.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i61.i.i to ptr
  %preempt_count.i.i62.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i62.i.i, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i62.i.i, align 4
  br i1 %ret.0.off0.i.i, label %if.then54.i.i, label %do.body50.i.i.__sb_start_write_trylock.exit_crit_edge

do.body50.i.i.__sb_start_write_trylock.exit_crit_edge: ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sb_start_write_trylock.exit

if.then54.i.i:                                    ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dep_map.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 5
  %24 = tail call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %25) #8
  br label %__sb_start_write_trylock.exit

__sb_start_write_trylock.exit:                    ; preds = %if.then54.i.i, %do.body50.i.i.__sb_start_write_trylock.exit_crit_edge
  ret i1 %ret.0.off0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %bh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 366) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #8
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and.i.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

trylock_buffer.exit:                              ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #8, !srcloc !59
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  %3 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not = icmp eq i32 %3, 0
  br i1 %tobool.not.not, label %trylock_buffer.exit.if.end_crit_edge, label %trylock_buffer.exit.if.then_crit_edge

trylock_buffer.exit.if.then_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

trylock_buffer.exit.if.end_crit_edge:             ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %trylock_buffer.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %trylock_buffer.exit.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sb_end_intwrite(ptr noundef %sb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2
  %dep_map.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0) #8
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %1) #8
  %2 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 35, ptr noundef nonnull @.str.4) #8
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i_crit_edge
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %do.end49.i.i, !prof !47

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !39
  %read_count.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %9 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add17.i.i = add i32 %20, -1
  store i32 %add17.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then37.i.i, label %do.body3.i.i.do.end39.i.i_crit_edge, !prof !41

do.body3.i.i.do.end39.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i

if.then37.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then37.i.i, %do.body3.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #8, !srcloc !42
  br label %__sb_end_write.exit

do.end49.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !39
  %read_count75.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %23 = ptrtoint ptr %read_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_count75.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i122.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i122.i.i to ptr
  %cpu78.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu78.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu78.i.i, align 4
  %arrayidx79.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx79.i.i, align 4
  %add80.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add80.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add81.i.i = add i32 %34, -1
  store i32 %add81.i.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %and.i.i123.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i)
  %tobool92.not.i.i = icmp eq i32 %and.i.i123.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then101.i.i, label %do.end49.i.i.do.end104.i.i_crit_edge, !prof !41

do.end49.i.i.do.end104.i.i_crit_edge:             ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.end49.i.i.do.end104.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #8, !srcloc !42
  %writer.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 2
  %call111.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i) #8
  br label %__sb_end_write.exit

__sb_end_write.exit:                              ; preds = %do.end104.i.i, %do.end39.i.i
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !63
  %36 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i120.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i120.i.i to ptr
  %preempt_count.i.i121.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i121.i.i, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i121.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_alloc_da_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_discard_preallocations(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_htree_free_dir_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !19, !21, !23, !25, !26, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @ext4_file_operations, !1, !"ext4_file_operations", i1 false, i1 false}
!1 = !{!"../fs/ext4/file.c", i32 911, i32 30}
!2 = !{ptr @ext4_file_inode_operations, !3, !"ext4_file_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/ext4/file.c", i32 931, i32 31}
!4 = !{ptr @__func__.ext4_dio_write_iter, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext4/file.c", i32 555, i32 4}
!6 = !{ptr @ext4_dio_write_ops, !7, !"ext4_dio_write_ops", i1 false, i1 false}
!7 = !{!"../fs/ext4/file.c", i32 402, i32 35}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/ext4/file.c", i32 298, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__func__.ext4_handle_inode_extension, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ext4/file.c", i32 314, i32 4}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../fs/ext4/ext4.h", i32 3414, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ext4_file_vm_ops, !20, !"ext4_file_vm_ops", i1 false, i1 false}
!20 = !{!"../fs/ext4/file.c", i32 756, i32 42}
!21 = !{ptr @__func__.ext4_sample_last_mounted, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ext4/file.c", i32 823, i32 8}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 615739, i64 615800}
!40 = !{i64 618471}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 618756}
!43 = !{i64 2152517542}
!44 = !{i64 2152517384}
!45 = !{i64 2152517712}
!46 = !{i64 2150127177}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2155359461}
!49 = !{i64 2152519473}
!50 = !{i64 2150019429}
!51 = !{i64 2150024363}
!52 = !{i64 2150046081}
!53 = !{i64 2150050975}
!54 = !{i64 2150127502}
!55 = !{i64 2150127827}
!56 = !{i64 2152531335}
!57 = !{i64 2152367065}
!58 = !{i64 2152375915}
!59 = !{i64 2148231319, i64 2148231351, i64 2148231380, i64 2148231414, i64 2148231445, i64 2148231468}
!60 = !{i64 2148320400}
!61 = !{i64 2152376657}
!62 = !{i64 2152386152}
!63 = !{i64 2152395629}
