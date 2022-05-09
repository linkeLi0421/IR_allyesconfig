; ModuleID = '/llk/IR_all_yes/fs/f2fs/dir.c_pt.bc'
source_filename = "../fs/f2fs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.f2fs_dir_entry = type <{ i32, i32, i16, i8 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
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
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.f2fs_filename = type { ptr, %struct.fscrypt_str, i32, %struct.fscrypt_str, %struct.fscrypt_str }
%struct.fscrypt_str = type { ptr, i32 }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.f2fs_dentry_ptr = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.anon.4 = type { i32, i32 }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.kprojid_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.f2fs_dentry_block = type { [27 x i8], [3 x i8], [214 x %struct.f2fs_dir_entry], [214 x [8 x i8]] }
%struct.page = type { i32, %union.anon.7, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.f2fs_inode = type { i16, i8, i8, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %union.anon.84, i32, i32, i32, i32, [255 x i8], i8, %struct.f2fs_extent, %union.anon.85, [5 x i32] }
%union.anon.84 = type { i32 }
%struct.f2fs_extent = type { i32, i32, i32 }
%union.anon.85 = type { [923 x i32] }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.dir_context = type { ptr, i64 }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.81 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }

@f2fs_filetype_table = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\08\04\02\06\01\0C\0A", [24 x i8] zeroinitializer }, align 32
@f2fs_cf_name_slab = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014Corrupted max_depth of %lu: %u\00", [63 x i8] zeroinitializer }, align 32
@dotdot_name = external dso_local constant %struct.qstr, align 8
@f2fs_add_regular_entry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_add_regular_entry = private unnamed_addr constant [23 x i8] c"f2fs_add_regular_entry\00", align 1
@f2fs_add_regular_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.f2fs_add_regular_entry, ptr @.str.5, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/f2fs/dir.c\00", [18 x i8] zeroinitializer }, align 32
@f2fs_add_regular_entry._entry_ptr = internal global ptr @f2fs_add_regular_entry._entry, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@f2fs_fill_dentries._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_fill_dentries = private unnamed_addr constant [19 x i8] c"f2fs_fill_dentries\00", align 1
@f2fs_fill_dentries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.f2fs_fill_dentries, ptr @.str.5, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%sF2FS-fs (%s): invalid namelen(0), ino:%u, run fsck to fix.\00", [35 x i8] zeroinitializer }, align 32
@f2fs_fill_dentries._entry_ptr = internal global ptr @f2fs_fill_dentries._entry, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: corrupted namelen=%d, run fsck to fix.\00", [51 x i8] zeroinitializer }, align 32
@f2fs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f2fs_readdir, ptr null, ptr @f2fs_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @f2fs_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@f2fs_kmem_cache_alloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmem_cache_alloc = private unnamed_addr constant [22 x i8] c"f2fs_kmem_cache_alloc\00", align 1
@f2fs_kmem_cache_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.f2fs_kmem_cache_alloc, ptr @.str.10, i32 2650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_kmem_cache_alloc._entry_ptr = internal global ptr @f2fs_kmem_cache_alloc._entry, section ".printk_index", align 4
@f2fs_match_ci_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@f2fs_type_by_mode = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\00\05\03\00\02\00\04\00\01\00\07\00\06\00\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_readdir = external dso_local global %struct.tracepoint, align 4
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/f2fs.h\00", [36 x i8] zeroinitializer }, align 32
@trace_f2fs_readdir.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"f2fs_filetype_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 45, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 409, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 731, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1019, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1039, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"f2fs_dir_operations\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1150, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 2650, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 414, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 788, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 260, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"f2fs_type_by_mode\00", align 1
@___asan_gen_.87 = private constant [17 x i8] c"../fs/f2fs/dir.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 56, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1160, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 717, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 271, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 678, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 452, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [31 x i8] c"../include/trace/events/f2fs.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 868, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 108, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @f2fs_add_regular_entry._entry, ptr @f2fs_add_regular_entry._entry_ptr, ptr @f2fs_fill_dentries._entry, ptr @f2fs_fill_dentries._entry_ptr, ptr @f2fs_kmem_cache_alloc._entry, ptr @f2fs_kmem_cache_alloc._entry_ptr, ptr @f2fs_filetype_table, ptr @.str, ptr @f2fs_add_regular_entry._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @f2fs_fill_dentries._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @f2fs_dir_operations, ptr @f2fs_kmem_cache_alloc._rs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @f2fs_type_by_mode, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_filetype_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_add_regular_entry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_add_regular_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_fill_dentries._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_fill_dentries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmem_cache_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_type_by_mode to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @f2fs_get_de_type(ptr nocapture noundef readonly %de) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %file_type = getelementptr inbounds %struct.f2fs_dir_entry, ptr %de, i32 0, i32 3
  %0 = ptrtoint ptr %file_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %file_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ult i8 %1, 8
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr [8 x i8], ptr @f2fs_filetype_table, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i8 [ %3, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_init_casefolded_name(ptr nocapture noundef readonly %dir, ptr nocapture noundef %fname) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_cf_name_slab to i32))
  %4 = load ptr, ptr @f2fs_cf_name_slab, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %fault_info.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %6, i32 0, i32 73, i32 7
  %inject_rate.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %6, i32 0, i32 73, i32 7, i32 1
  %7 = ptrtoint ptr %inject_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inject_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.then.f2fs_kmem_cache_alloc.exit_crit_edge, label %if.end.i.i

if.then.f2fs_kmem_cache_alloc.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_kmem_cache_alloc.exit

if.end.i.i:                                       ; preds = %if.then
  %inject_type.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %6, i32 0, i32 73, i32 7, i32 2
  %9 = ptrtoint ptr %inject_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inject_type.i.i, align 4
  %and.i.i = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.f2fs_kmem_cache_alloc.exit_crit_edge, label %if.end3.i.i

if.end.i.i.f2fs_kmem_cache_alloc.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_kmem_cache_alloc.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i, ptr %fault_info.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i) #13, !srcloc !75
  %call.i.i14.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i, i32 noundef 4) #13
  %12 = ptrtoint ptr %fault_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %fault_info.i.i, align 4
  %14 = ptrtoint ptr %inject_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inject_rate.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i.i = icmp ult i32 %13, %15
  br i1 %cmp.not.i.i, label %if.end3.i.i.f2fs_kmem_cache_alloc.exit_crit_edge, label %if.then2.i

if.end3.i.i.f2fs_kmem_cache_alloc.exit_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_kmem_cache_alloc.exit

if.then2.i:                                       ; preds = %if.end3.i.i
  %call.i.i15.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i, i32 noundef 4) #13
  %16 = ptrtoint ptr %fault_info.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %fault_info.i.i, align 4
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmem_cache_alloc._rs, ptr noundef nonnull @__func__.f2fs_kmem_cache_alloc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.f2fs_kmem_cache_alloc.exit.thread_crit_edge, label %do.end.i

if.then2.i.f2fs_kmem_cache_alloc.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_kmem_cache_alloc.exit.thread

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 8
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 15) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 15), align 4
  %20 = tail call ptr @llvm.returnaddress(i32 0) #13
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef %s_id.i, ptr noundef %19, ptr noundef nonnull @__func__.f2fs_kmem_cache_alloc, ptr noundef %20) #16
  br label %f2fs_kmem_cache_alloc.exit.thread

f2fs_kmem_cache_alloc.exit.thread:                ; preds = %do.end.i, %if.then2.i.f2fs_kmem_cache_alloc.exit.thread_crit_edge
  %cf_name34 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4
  %21 = ptrtoint ptr %cf_name34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cf_name34, align 4
  br label %cleanup

f2fs_kmem_cache_alloc.exit:                       ; preds = %if.end3.i.i.f2fs_kmem_cache_alloc.exit_crit_edge, %if.end.i.i.f2fs_kmem_cache_alloc.exit_crit_edge, %if.then.f2fs_kmem_cache_alloc.exit_crit_edge
  %call9.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3136) #13
  %cf_name = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4
  %22 = ptrtoint ptr %cf_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i, ptr %cf_name, align 4
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %f2fs_kmem_cache_alloc.exit.cleanup_crit_edge, label %if.end

f2fs_kmem_cache_alloc.exit.cleanup_crit_edge:     ; preds = %f2fs_kmem_cache_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %f2fs_kmem_cache_alloc.exit
  %s_encoding = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 22
  %23 = ptrtoint ptr %s_encoding to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_encoding, align 64
  %25 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fname, align 4
  %call8 = tail call i32 @utf8_casefold(ptr noundef %24, ptr noundef %26, ptr noundef nonnull %call9.i, i32 noundef 255) #13
  %len = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call8, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp = icmp slt i32 %call8, 1
  br i1 %cmp, label %if.then12, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then12:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_cf_name_slab to i32))
  %28 = load ptr, ptr @f2fs_cf_name_slab, align 4
  %29 = ptrtoint ptr %cf_name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cf_name, align 4
  tail call void @kmem_cache_free(ptr noundef %28, ptr noundef %30) #13
  %31 = ptrtoint ptr %cf_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cf_name, align 4
  %s_encoding_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 23
  %32 = ptrtoint ptr %s_encoding_flags to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %s_encoding_flags, align 4
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool18.not = icmp eq i16 %34, 0
  br i1 %tobool18.not, label %if.then12.if.end22_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end22:                                         ; preds = %if.then12.if.end22_crit_edge, %if.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then12.cleanup_crit_edge, %f2fs_kmem_cache_alloc.exit.cleanup_crit_edge, %f2fs_kmem_cache_alloc.exit.thread
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -12, %f2fs_kmem_cache_alloc.exit.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ], [ -12, %f2fs_kmem_cache_alloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_casefold(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_setup_filename(ptr noundef %dir, ptr noundef %iname, i32 noundef %lookup, ptr noundef %fname) local_unnamed_addr #1 align 64 {
entry:
  %crypt_name = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %crypt_name) #13
  %0 = call ptr @memset(ptr %crypt_name, i32 255, i32 32)
  %call = call i32 @fscrypt_setup_filename(ptr noundef %dir, ptr noundef %iname, i32 noundef %lookup, ptr noundef nonnull %crypt_name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %fname, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 20)
  %3 = ptrtoint ptr %crypt_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crypt_name, align 4
  %5 = ptrtoint ptr %fname to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %fname, align 4
  %disk_name.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1
  %disk_name2.i = getelementptr inbounds %struct.fscrypt_name, ptr %crypt_name, i32 0, i32 1
  %6 = ptrtoint ptr %disk_name2.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %disk_name2.i, align 4
  %8 = ptrtoint ptr %disk_name.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %disk_name.i, align 4
  %crypto_buf.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 3
  %crypto_buf3.i = getelementptr inbounds %struct.fscrypt_name, ptr %crypt_name, i32 0, i32 4
  %9 = ptrtoint ptr %crypto_buf3.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %crypto_buf3.i, align 4
  %11 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %crypto_buf.i, align 4
  %is_nokey_name.i = getelementptr inbounds %struct.fscrypt_name, ptr %crypt_name, i32 0, i32 5
  %12 = ptrtoint ptr %is_nokey_name.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_nokey_name.i, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %hash.i = getelementptr inbounds %struct.fscrypt_name, ptr %crypt_name, i32 0, i32 2
  %14 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hash.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #13
  %hash4.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %17 = ptrtoint ptr %hash4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hash4.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  %call.i = call i32 @f2fs_init_casefolded_name(ptr noundef %dir, ptr noundef %fname) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  %18 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crypto_buf.i, align 4
  call void @kfree(ptr noundef %19) #13
  %20 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %crypto_buf.i, align 4
  %cf_name.i.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4
  %21 = ptrtoint ptr %cf_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cf_name.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then6.i.cleanup_crit_edge, label %if.then.i.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_cf_name_slab to i32))
  %23 = load ptr, ptr @f2fs_cf_name_slab, align 4
  call void @kmem_cache_free(ptr noundef %23, ptr noundef nonnull %22) #13
  %24 = ptrtoint ptr %cf_name.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %cf_name.i.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @f2fs_hash_filename(ptr noundef %dir, ptr noundef %fname) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i.i, %if.then6.i.cleanup_crit_edge, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %if.then.i ], [ %call.i, %if.then6.i.cleanup_crit_edge ], [ %call.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %crypt_name) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_setup_filename(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_prepare_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef %fname) local_unnamed_addr #1 align 64 {
entry:
  %crypt_name = alloca %struct.fscrypt_name, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %crypt_name) #13
  %0 = call ptr @memset(ptr %crypt_name, i32 255, i32 32)
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %1 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %fscrypt_prepare_lookup.exit.thread, label %fscrypt_prepare_lookup.exit

fscrypt_prepare_lookup.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = getelementptr inbounds i8, ptr %crypt_name, i32 4
  %4 = getelementptr inbounds i8, ptr %crypt_name, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %6 = ptrtoint ptr %crypt_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %d_name.i, ptr %crypt_name, align 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %3, align 4
  %10 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d_name.i, align 8
  %len5.i = getelementptr inbounds %struct.fscrypt_name, ptr %crypt_name, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %len5.i, align 4
  br label %if.end

fscrypt_prepare_lookup.exit:                      ; preds = %entry
  %call.i = call i32 @__fscrypt_prepare_lookup(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull %crypt_name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %fscrypt_prepare_lookup.exit.if.end_crit_edge, label %fscrypt_prepare_lookup.exit.cleanup_crit_edge

fscrypt_prepare_lookup.exit.cleanup_crit_edge:    ; preds = %fscrypt_prepare_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

fscrypt_prepare_lookup.exit.if.end_crit_edge:     ; preds = %fscrypt_prepare_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %fscrypt_prepare_lookup.exit.if.end_crit_edge, %fscrypt_prepare_lookup.exit.thread
  %13 = getelementptr inbounds i8, ptr %fname, i32 12
  %14 = call ptr @memset(ptr %13, i32 0, i32 20)
  %15 = ptrtoint ptr %crypt_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crypt_name, align 4
  %17 = ptrtoint ptr %fname to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %fname, align 4
  %disk_name.i5 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1
  %disk_name2.i = getelementptr inbounds %struct.fscrypt_name, ptr %crypt_name, i32 0, i32 1
  %18 = ptrtoint ptr %disk_name2.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %disk_name2.i, align 4
  %20 = ptrtoint ptr %disk_name.i5 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %disk_name.i5, align 4
  %crypto_buf.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 3
  %crypto_buf3.i = getelementptr inbounds %struct.fscrypt_name, ptr %crypt_name, i32 0, i32 4
  %21 = ptrtoint ptr %crypto_buf3.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %crypto_buf3.i, align 4
  %23 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %crypto_buf.i, align 4
  %is_nokey_name.i = getelementptr inbounds %struct.fscrypt_name, ptr %crypt_name, i32 0, i32 5
  %24 = ptrtoint ptr %is_nokey_name.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_nokey_name.i, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i6 = icmp eq i8 %25, 0
  br i1 %tobool.not.i6, label %if.else.i, label %if.then.i7

if.then.i7:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %hash.i = getelementptr inbounds %struct.fscrypt_name, ptr %crypt_name, i32 0, i32 2
  %26 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hash.i, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #13
  %hash4.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %29 = ptrtoint ptr %hash4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %hash4.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  %call.i8 = call i32 @f2fs_init_casefolded_name(ptr noundef %dir, ptr noundef %fname) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool5.not.i = icmp eq i32 %call.i8, 0
  br i1 %tobool5.not.i, label %if.end.i9, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  %30 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crypto_buf.i, align 4
  call void @kfree(ptr noundef %31) #13
  %32 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %crypto_buf.i, align 4
  %cf_name.i.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4
  %33 = ptrtoint ptr %cf_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cf_name.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.then6.i.cleanup_crit_edge, label %if.then.i.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_cf_name_slab to i32))
  %35 = load ptr, ptr @f2fs_cf_name_slab, align 4
  call void @kmem_cache_free(ptr noundef %35, ptr noundef nonnull %34) #13
  %36 = ptrtoint ptr %cf_name.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %cf_name.i.i, align 4
  br label %cleanup

if.end.i9:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @f2fs_hash_filename(ptr noundef %dir, ptr noundef %fname) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i9, %if.then.i.i, %if.then6.i.cleanup_crit_edge, %if.then.i7, %fscrypt_prepare_lookup.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %fscrypt_prepare_lookup.exit.cleanup_crit_edge ], [ 0, %if.end.i9 ], [ 0, %if.then.i7 ], [ %call.i8, %if.then6.i.cleanup_crit_edge ], [ %call.i8, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %crypt_name) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_free_filename(ptr nocapture noundef %fname) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %crypto_buf = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 3
  %0 = ptrtoint ptr %crypto_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_buf, align 4
  tail call void @kfree(ptr noundef %1) #13
  %2 = ptrtoint ptr %crypto_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %crypto_buf, align 4
  %cf_name = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4
  %3 = ptrtoint ptr %cf_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cf_name, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_cf_name_slab to i32))
  %5 = load ptr, ptr @f2fs_cf_name_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef nonnull %4) #13
  %6 = ptrtoint ptr %cf_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cf_name, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_find_target_dentry(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fname, ptr noundef %max_slots) local_unnamed_addr #1 align 64 {
entry:
  %decrypted_name.i.i = alloca %struct.fscrypt_str, align 4
  %entry2.i.i = alloca %struct.qstr, align 8
  %encrypted_name.i.i = alloca %struct.fscrypt_str, align 4
  %f.i = alloca %struct.fscrypt_name, align 4
  %cf.i = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %max_slots, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %max_slots to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max_slots, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 4
  %1 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp85.not = icmp eq i32 %2, 0
  br i1 %cmp85.not, label %if.end.found_crit_edge, label %while.body.lr.ph

if.end.found_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %found

while.body.lr.ph:                                 ; preds = %if.end
  %bitmap = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 1
  %dentry = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 2
  %hash = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %filename = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %f.i, i32 12
  %cf_name.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4
  %4 = getelementptr inbounds i8, ptr %cf.i, i32 8
  %len2.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4, i32 1
  %hash.i = getelementptr inbounds %struct.anon.4, ptr %cf.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fscrypt_str, ptr %decrypted_name.i.i, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %entry2.i.i, i32 8
  %hash.i.i = getelementptr inbounds %struct.anon.4, ptr %entry2.i.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fscrypt_str, ptr %encrypted_name.i.i, i32 0, i32 1
  %disk_name.i = getelementptr inbounds %struct.fscrypt_name, ptr %f.i, i32 0, i32 1
  %disk_name7.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1
  %crypto_buf.i = getelementptr inbounds %struct.fscrypt_name, ptr %f.i, i32 0, i32 4
  %crypto_buf8.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %max_len.088 = phi i32 [ 0, %while.body.lr.ph ], [ %max_len.0.be, %while.cond.backedge.while.body_crit_edge ]
  %bit_pos.086 = phi i32 [ 0, %while.body.lr.ph ], [ %bit_pos.0.be, %while.cond.backedge.while.body_crit_edge ]
  %8 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmap, align 4
  %div3.i.i = lshr i32 %bit_pos.086, 5
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 %div3.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i, align 4
  %xor.i = and i32 %bit_pos.086, 31
  %and.i.i = xor i32 %xor.i, 24
  %12 = shl nuw i32 1, %and.i.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not = icmp eq i32 %13, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nuw i32 %bit_pos.086, 1
  %inc3 = add i32 %max_len.088, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end30, %if.then9, %if.then2
  %bit_pos.0.be = phi i32 [ %inc10, %if.then9 ], [ %add33, %if.end30 ], [ %inc, %if.then2 ]
  %max_len.0.be = phi i32 [ %max_len.088, %if.then9 ], [ 0, %if.end30 ], [ %inc3, %if.then2 ]
  %14 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max, align 4
  %cmp = icmp ult i32 %bit_pos.0.be, %15
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.found_crit_edge

while.cond.backedge.found_crit_edge:              ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %found

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end4:                                          ; preds = %while.body
  %16 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry, align 4
  %arrayidx = getelementptr %struct.f2fs_dir_entry, ptr %17, i32 %bit_pos.086
  %name_len = getelementptr %struct.f2fs_dir_entry, ptr %17, i32 %bit_pos.086, i32 2
  %18 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %name_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool5.not = icmp eq i16 %19, 0
  br i1 %tobool5.not, label %if.then9, label %if.end11, !prof !77

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %inc10 = add nuw i32 %bit_pos.086, 1
  br label %while.cond.backedge

if.end11:                                         ; preds = %if.end4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx, align 1
  %22 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp12 = icmp eq i32 %21, %23
  br i1 %cmp12, label %if.then13, label %if.end11.if.end25_crit_edge

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then13:                                        ; preds = %if.end11
  %24 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d, align 4
  %26 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %filename, align 4
  %arrayidx14 = getelementptr [8 x i8], ptr %27, i32 %bit_pos.086
  %28 = call i16 @llvm.bswap.i16(i16 %19)
  %conv = zext i16 %28 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %f.i) #13
  %29 = call ptr @memset(ptr %3, i32 255, i32 20)
  %30 = ptrtoint ptr %cf_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cf_name.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %f2fs_match_name.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cf.i) #13
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -1, ptr %4, align 8
  %33 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len2.i, align 4
  %35 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cf.i, align 8
  %36 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %hash.i, align 4
  store ptr %31, ptr %4, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 8
  %37 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb.i.i, align 4
  %s_encoding.i.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %s_encoding.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_encoding.i.i, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %decrypted_name.i.i) #13
  %41 = ptrtoint ptr %decrypted_name.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %decrypted_name.i.i, align 4
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %entry2.i.i) #13
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -1, ptr %6, align 8
  %44 = ptrtoint ptr %entry2.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv, ptr %entry2.i.i, align 8
  %45 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %hash.i.i, align 4
  store ptr %arrayidx14, ptr %6, align 8
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 4
  %46 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i71 = and i32 %47, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %tobool.not.i.i = icmp eq i32 %and.i.i71, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end60.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end60.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %encrypted_name.i.i) #13
  %48 = ptrtoint ptr %encrypted_name.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx14, ptr %encrypted_name.i.i, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %7, align 4
  %i_crypt_info.i.i.i.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 52
  %50 = ptrtoint ptr %i_crypt_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %i_crypt_info.i.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !78
  %cmp.i105.not.i.i = icmp eq ptr %51, null
  br i1 %cmp.i105.not.i.i, label %land.rhs.i.i, label %if.end8.i.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b103.i.i = load i1, ptr @f2fs_match_ci_name.__already_done, align 1
  br i1 %.b103.i.i, label %land.rhs.i.i.f2fs_match_name.exit.thread75_crit_edge, label %if.then15.i.i, !prof !79

land.rhs.i.i.f2fs_match_name.exit.thread75_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_match_name.exit.thread75

if.then15.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @f2fs_match_ci_name.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 231, i32 noundef 9, ptr noundef null) #13
  br label %f2fs_match_name.exit.thread75

if.end8.i.i.i:                                    ; preds = %if.then.i.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3264) #17
  %52 = ptrtoint ptr %decrypted_name.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call9.i.i.i, ptr %decrypted_name.i.i, align 4
  %tobool50.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool50.not.i.i, label %if.end8.i.i.i.f2fs_match_name.exit.thread75_crit_edge, label %if.end52.i.i

if.end8.i.i.i.f2fs_match_name.exit.thread75_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_match_name.exit.thread75

if.end52.i.i:                                     ; preds = %if.end8.i.i.i
  %call53.i.i = call i32 @fscrypt_fname_disk_to_usr(ptr noundef %25, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %encrypted_name.i.i, ptr noundef nonnull %decrypted_name.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %cmp.i.i = icmp slt i32 %call53.i.i, 0
  br i1 %cmp.i.i, label %f2fs_match_name.exit, label %cleanup.thread111.i.i

cleanup.thread111.i.i:                            ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %decrypted_name.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %decrypted_name.i.i, align 4
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %6, align 8
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %5, align 4
  %58 = ptrtoint ptr %entry2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %entry2.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %encrypted_name.i.i) #13
  br label %if.end60.i.i

f2fs_match_name.exit.thread75:                    ; preds = %if.end8.i.i.i.f2fs_match_name.exit.thread75_crit_edge, %if.then15.i.i, %land.rhs.i.i.f2fs_match_name.exit.thread75_crit_edge
  %retval.0.ph.i.i = phi i32 [ -22, %land.rhs.i.i.f2fs_match_name.exit.thread75_crit_edge ], [ -22, %if.then15.i.i ], [ -12, %if.end8.i.i.i.f2fs_match_name.exit.thread75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %encrypted_name.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %entry2.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %decrypted_name.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cf.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f.i) #13
  br label %if.then19

if.end60.i.i:                                     ; preds = %cleanup.thread111.i.i, %if.then.i.if.end60.i.i_crit_edge
  %call61.i.i = call i32 @utf8_strncasecmp_folded(ptr noundef %40, ptr noundef nonnull %cf.i, ptr noundef nonnull %entry2.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i)
  %cmp62.i.i = icmp slt i32 %call61.i.i, 0
  br i1 %cmp62.i.i, label %land.lhs.true.i.i, label %if.end21

land.lhs.true.i.i:                                ; preds = %if.end60.i.i
  %s_encoding_flags.i.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 23
  %59 = ptrtoint ptr %s_encoding_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %s_encoding_flags.i.i, align 4
  %61 = and i16 %60, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool64.not.i.i = icmp eq i16 %61, 0
  br i1 %tobool64.not.i.i, label %if.then65.i.i, label %if.end21.thread94

if.end21.thread94:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %decrypted_name.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %decrypted_name.i.i, align 4
  call void @kfree(ptr noundef %63) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %entry2.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %decrypted_name.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cf.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f.i) #13
  br label %if.end25

if.then65.i.i:                                    ; preds = %land.lhs.true.i.i
  %64 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cf.i, align 8
  %66 = ptrtoint ptr %entry2.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %entry2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp68.i.i = icmp eq i32 %65, %67
  br i1 %cmp68.i.i, label %land.rhs70.i.i, label %if.end21.thread

if.end21.thread:                                  ; preds = %if.then65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %decrypted_name.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %decrypted_name.i.i, align 4
  call void @kfree(ptr noundef %69) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %entry2.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %decrypted_name.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cf.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f.i) #13
  br label %if.end25

land.rhs70.i.i:                                   ; preds = %if.then65.i.i
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %4, align 8
  %72 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %6, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %71, ptr %73, i32 %65) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp75.i.i = icmp eq i32 %bcmp.i.i, 0
  %74 = ptrtoint ptr %decrypted_name.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %decrypted_name.i.i, align 4
  call void @kfree(ptr noundef %75) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %entry2.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %decrypted_name.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cf.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f.i) #13
  br i1 %cmp75.i.i, label %land.rhs70.i.i.found_crit_edge, label %land.rhs70.i.i.if.end25_crit_edge

land.rhs70.i.i.if.end25_crit_edge:                ; preds = %land.rhs70.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.rhs70.i.i.found_crit_edge:                   ; preds = %land.rhs70.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %found

f2fs_match_name.exit.thread:                      ; preds = %if.then13
  %76 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fname, align 4
  %78 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %f.i, align 4
  %79 = ptrtoint ptr %disk_name7.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %80 = load i64, ptr %disk_name7.i, align 4
  %81 = ptrtoint ptr %disk_name.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 8)
  store i64 %80, ptr %disk_name.i, align 4
  %82 = ptrtoint ptr %crypto_buf8.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %83 = load i64, ptr %crypto_buf8.i, align 4
  %84 = ptrtoint ptr %crypto_buf.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 %83, ptr %crypto_buf.i, align 4
  %call9.i = call zeroext i1 @fscrypt_match_name(ptr noundef nonnull %f.i, ptr noundef %arrayidx14, i32 noundef %conv) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f.i) #13
  br i1 %call9.i, label %f2fs_match_name.exit.thread.found_crit_edge, label %f2fs_match_name.exit.thread.if.end25_crit_edge

f2fs_match_name.exit.thread.if.end25_crit_edge:   ; preds = %f2fs_match_name.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

f2fs_match_name.exit.thread.found_crit_edge:      ; preds = %f2fs_match_name.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %found

f2fs_match_name.exit:                             ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %encrypted_name.i.i) #13
  %85 = ptrtoint ptr %decrypted_name.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %decrypted_name.i.i, align 4
  call void @kfree(ptr noundef %86) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %entry2.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %decrypted_name.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cf.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f.i) #13
  br label %if.then19

if.then19:                                        ; preds = %f2fs_match_name.exit, %f2fs_match_name.exit.thread75
  %retval.1.i.i78 = phi i32 [ %retval.0.ph.i.i, %f2fs_match_name.exit.thread75 ], [ %call53.i.i, %f2fs_match_name.exit ]
  %87 = inttoptr i32 %retval.1.i.i78 to ptr
  br label %cleanup

if.end21:                                         ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i)
  %cmp78.i.i = icmp eq i32 %call61.i.i, 0
  %88 = ptrtoint ptr %decrypted_name.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %decrypted_name.i.i, align 4
  call void @kfree(ptr noundef %89) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %entry2.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %decrypted_name.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cf.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %f.i) #13
  br i1 %cmp78.i.i, label %if.end21.found_crit_edge, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end21.found_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %found

if.end25:                                         ; preds = %if.end21.if.end25_crit_edge, %f2fs_match_name.exit.thread.if.end25_crit_edge, %land.rhs70.i.i.if.end25_crit_edge, %if.end21.thread, %if.end21.thread94, %if.end11.if.end25_crit_edge
  br i1 %tobool.not, label %if.end25.if.end30_crit_edge, label %land.lhs.true

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end25
  %90 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_len.088, i32 %91)
  %cmp27 = icmp sgt i32 %max_len.088, %91
  br i1 %cmp27, label %if.then29, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %max_slots to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %max_len.088, ptr %max_slots, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true.if.end30_crit_edge, %if.end25.if.end30_crit_edge
  %93 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %name_len, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94)
  %conv32 = zext i16 %95 to i32
  %sub = add nuw nsw i32 %conv32, 7
  %96 = lshr i32 %sub, 3
  %add33 = add i32 %96, %bit_pos.086
  br label %while.cond.backedge

found:                                            ; preds = %if.end21.found_crit_edge, %f2fs_match_name.exit.thread.found_crit_edge, %land.rhs70.i.i.found_crit_edge, %while.cond.backedge.found_crit_edge, %if.end.found_crit_edge
  %max_len.0.lcssa = phi i32 [ 0, %if.end.found_crit_edge ], [ %max_len.088, %land.rhs70.i.i.found_crit_edge ], [ %max_len.088, %f2fs_match_name.exit.thread.found_crit_edge ], [ %max_len.0.be, %while.cond.backedge.found_crit_edge ], [ %max_len.088, %if.end21.found_crit_edge ]
  %de.0 = phi ptr [ null, %if.end.found_crit_edge ], [ %arrayidx, %land.rhs70.i.i.found_crit_edge ], [ %arrayidx, %f2fs_match_name.exit.thread.found_crit_edge ], [ null, %while.cond.backedge.found_crit_edge ], [ %arrayidx, %if.end21.found_crit_edge ]
  br i1 %tobool.not, label %found.cleanup_crit_edge, label %land.lhs.true35

found.cleanup_crit_edge:                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true35:                                  ; preds = %found
  %97 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_len.0.lcssa, i32 %98)
  %cmp36 = icmp sgt i32 %max_len.0.lcssa, %98
  br i1 %cmp36, label %if.then38, label %land.lhs.true35.cleanup_crit_edge

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then38:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %max_slots to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %max_len.0.lcssa, ptr %max_slots, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %land.lhs.true35.cleanup_crit_edge, %found.cleanup_crit_edge, %if.then19
  %retval.0 = phi ptr [ %87, %if.then19 ], [ %de.0, %if.then38 ], [ %de.0, %land.lhs.true35.cleanup_crit_edge ], [ %de.0, %found.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__f2fs_find_entry(ptr noundef %dir, ptr noundef %fname, ptr noundef %res_page) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %dir) #13
  %0 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %res_page, align 4
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i.i, align 4
  %3 = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %sub.i = add i64 %call.i, 4095
  %shr.i = lshr i64 %sub.i, 12
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp = icmp eq i32 %conv.i, 0
  br i1 %cmp, label %if.end.if.then19_crit_edge, label %if.end4

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.end4:                                          ; preds = %if.end
  %i_current_depth = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 4
  %4 = ptrtoint ptr %i_current_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_current_depth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %5)
  %cmp6 = icmp ugt i32 %5, 63
  br i1 %cmp6, label %if.end11.thread, label %if.end11, !prof !77

if.end11.thread:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %11, i32 noundef %5) #13
  %12 = ptrtoint ptr %i_current_depth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 63, ptr %i_current_depth, align 8
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext true) #13
  br label %for.body.preheader

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1250.not = icmp eq i32 %5, 0
  br i1 %cmp1250.not, label %if.end11.if.then19_crit_edge, label %if.end11.for.body.preheader_crit_edge

if.end11.for.body.preheader_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

if.end11.if.then19_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

for.body.preheader:                               ; preds = %if.end11.for.body.preheader_crit_edge, %if.end11.thread
  %max_depth.055 = phi i32 [ 63, %if.end11.thread ], [ %5, %if.end11.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %lor.lhs.false.for.body_crit_edge, %for.body.preheader
  %level.051 = phi i32 [ 0, %for.body.preheader ], [ %inc, %lor.lhs.false.for.body_crit_edge ]
  %call13 = tail call fastcc ptr @find_in_level(ptr noundef %dir, i32 noundef %level.051, ptr noundef %fname, ptr noundef %res_page)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %lor.lhs.false, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

lor.lhs.false:                                    ; preds = %for.body
  %13 = ptrtoint ptr %res_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %res_page, align 4
  %cmp.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %inc = add nuw nsw i32 %level.051, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %max_depth.055)
  %exitcond.not = icmp eq i32 %inc, %max_depth.055
  %or.cond = select i1 %cmp.i, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %lor.lhs.false.if.then19_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

out:                                              ; preds = %entry
  %call2 = tail call ptr @f2fs_find_in_inline_dir(ptr noundef %dir, ptr noundef %fname, ptr noundef %res_page) #13
  %tobool18.not = icmp eq ptr %call2, null
  br i1 %tobool18.not, label %out.if.then19_crit_edge, label %out.if.end23_crit_edge

out.if.end23_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

out.if.then19_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19

if.then19:                                        ; preds = %out.if.then19_crit_edge, %lor.lhs.false.if.then19_crit_edge, %if.end11.if.then19_crit_edge, %if.end.if.then19_crit_edge
  %15 = tail call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %task22 = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 13
  %19 = ptrtoint ptr %task22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %task22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %out.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %de.145 = phi ptr [ null, %if.then19 ], [ %call2, %out.if.end23_crit_edge ], [ %call13, %for.body.if.end23_crit_edge ]
  ret ptr %de.145
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_find_in_inline_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_in_level(ptr noundef %dir, i32 noundef %level, ptr nocapture noundef readonly %fname, ptr nocapture noundef writeonly %res_page) unnamed_addr #1 align 64 {
entry:
  %d.i = alloca %struct.f2fs_dentry_ptr, align 4
  %max_slots = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %sub = add i32 %1, 7
  %shr = lshr i32 %sub, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_slots) #13
  %2 = ptrtoint ptr %max_slots to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %max_slots, align 4, !annotation !80
  %i_dir_level = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 3
  %3 = ptrtoint ptr %i_dir_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i_dir_level, align 1
  %conv = zext i8 %4 to i32
  %add.i = add i32 %conv, %level
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %level)
  %cmp.i70 = icmp ult i32 %level, 31
  %..i = select i1 %cmp.i70, i32 2, i32 4
  %hash = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %notmask = shl nsw i32 -1, %add.i
  %shl.i.op = xor i32 %notmask, -1
  %8 = select i1 %cmp.i, i32 %shl.i.op, i32 1073741823
  %rem = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp14.not.i = icmp eq i32 %level, 0
  br i1 %cmp14.not.i, label %entry.dir_block_index.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dir_block_index.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dir_block_index.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %bidx.016.i = phi i32 [ %add.i71, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.i.i = add i32 %i.015.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 31
  %shl.i.i = shl nuw i32 1, %add.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i32 %shl.i.i, i32 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.015.i)
  %cmp.i11.i = icmp ult i32 %i.015.i, 31
  %..i.i = select i1 %cmp.i11.i, i32 2, i32 4
  %mul.i = mul i32 %retval.0.i.i, %..i.i
  %add.i71 = add i32 %mul.i, %bidx.016.i
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %level
  br i1 %exitcond.not.i, label %for.body.i.dir_block_index.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.dir_block_index.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dir_block_index.exit

dir_block_index.exit:                             ; preds = %for.body.i.dir_block_index.exit_crit_edge, %entry.dir_block_index.exit_crit_edge
  %bidx.0.lcssa.i = phi i32 [ 0, %entry.dir_block_index.exit_crit_edge ], [ %add.i71, %for.body.i.dir_block_index.exit_crit_edge ]
  %mul3.i = mul i32 %rem, %..i
  %add4.i = add i32 %bidx.0.lcssa.i, %mul3.i
  %add7 = add i32 %add4.i, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %add7)
  %cmp90 = icmp ult i32 %add4.i, %add7
  br i1 %cmp90, label %for.body.lr.ph, label %dir_block_index.exit.if.end40_crit_edge

dir_block_index.exit.if.end40_crit_edge:          ; preds = %dir_block_index.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

for.body.lr.ph:                                   ; preds = %dir_block_index.exit
  %9 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d.i, i32 0, i32 4
  %13 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %room.0.off092 = phi i1 [ false, %for.body.lr.ph ], [ %room.2.off0, %for.inc.for.body_crit_edge ]
  %bidx.091 = phi i32 [ %add4.i, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call9 = call ptr @f2fs_find_data_page(ptr noundef %dir, i32 noundef %bidx.091) #13
  %cmp.i72 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %cmp12 = icmp eq ptr %call9, inttoptr (i32 -2 to ptr)
  br i1 %cmp12, label %if.then.for.inc_crit_edge, label %if.else

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.else:                                          ; preds = %if.then
  %14 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9, ptr %res_page, align 4
  br i1 %room.0.off092, label %if.else.land.lhs.true30_crit_edge, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.else.land.lhs.true30_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true30

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %d.i) #13
  %call.i = call ptr @page_address(ptr noundef %call9) #13
  %15 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dir, ptr %d.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 214, ptr %12, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 27, ptr %13, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %9, align 4
  %dentry.i.i = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dentry.i.i, ptr %10, align 4
  %filename.i.i = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %filename.i.i, ptr %11, align 4
  %call1.i = call ptr @f2fs_find_target_dentry(ptr noundef nonnull %d.i, ptr noundef %fname, ptr noundef nonnull %max_slots) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %d.i) #13
  %cmp.i73 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.end
  %21 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1.i, ptr %res_page, align 4
  br i1 %room.0.off092, label %if.then17.land.lhs.true30_crit_edge, label %if.then17.if.end40_crit_edge

if.then17.if.end40_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then17.land.lhs.true30_crit_edge:              ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true30

if.else19:                                        ; preds = %if.end
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %if.end22, label %for.end.thread

for.end.thread:                                   ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9, ptr %res_page, align 4
  br label %if.end40

if.end22:                                         ; preds = %if.else19
  %23 = ptrtoint ptr %max_slots to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %shr)
  %cmp23.not = icmp sge i32 %24, %shr
  %spec.select = select i1 %cmp23.not, i1 true, i1 %room.0.off092
  %tobool.not.i = icmp eq ptr %call9, null
  br i1 %tobool.not.i, label %if.end22.for.inc_crit_edge, label %if.end.i

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %if.end22
  %25 = getelementptr inbounds %struct.page, ptr %call9, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i17.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !79

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i19.i = add i32 %27, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %call9 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %28, %if.end.i.i21.i ]
  %29 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !77

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = inttoptr i32 %retval.0.i.i22.i to ptr
  call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.16) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #13, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@find_in_level, %if.then.i.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !85

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %29, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.i.for.inc_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %29) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.for.inc_crit_edge, %if.end22.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %room.2.off0 = phi i1 [ true, %if.then.for.inc_crit_edge ], [ %spec.select, %if.end22.for.inc_crit_edge ], [ %spec.select, %folio_put_testzero.exit.i.i.i.for.inc_crit_edge ], [ %spec.select, %if.then.i4.i.i ]
  %inc = add i32 %bidx.091, 1
  %exitcond.not = icmp eq i32 %inc, %add7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %room.2.off0, label %for.end.land.lhs.true30_crit_edge, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

for.end.land.lhs.true30_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %for.end.land.lhs.true30_crit_edge, %if.then17.land.lhs.true30_crit_edge, %if.else.land.lhs.true30_crit_edge
  %chash = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 11
  %34 = ptrtoint ptr %chash to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chash, align 8
  %36 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp33.not = icmp eq i32 %35, %37
  br i1 %cmp33.not, label %land.lhs.true30.if.end40_crit_edge, label %if.then35

land.lhs.true30.if.end40_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then35:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %chash to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %chash, align 8
  %clevel = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 12
  %39 = ptrtoint ptr %clevel to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %level, ptr %clevel, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %land.lhs.true30.if.end40_crit_edge, %for.end.if.end40_crit_edge, %for.end.thread, %if.then17.if.end40_crit_edge, %if.else.if.end40_crit_edge, %dir_block_index.exit.if.end40_crit_edge
  %de.279 = phi ptr [ %call1.i, %for.end.thread ], [ null, %for.end.if.end40_crit_edge ], [ null, %if.then35 ], [ null, %land.lhs.true30.if.end40_crit_edge ], [ null, %dir_block_index.exit.if.end40_crit_edge ], [ null, %if.then17.if.end40_crit_edge ], [ null, %if.else.if.end40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_slots) #13
  ret ptr %de.279
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_find_entry(ptr noundef %dir, ptr noundef %child, ptr noundef %res_page) local_unnamed_addr #1 align 64 {
entry:
  %fname = alloca %struct.f2fs_filename, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fname) #13
  %0 = call ptr @memset(ptr %fname, i32 255, i32 32)
  %call = call i32 @f2fs_setup_filename(ptr noundef %dir, ptr noundef %child, i32 noundef 1, ptr noundef nonnull %fname)
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.else [
    i32 0, label %if.end3
    i32 -2, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = inttoptr i32 %call to ptr
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi ptr [ %2, %if.else ], [ null, %entry.if.end_crit_edge ]
  %3 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %storemerge, ptr %res_page, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4
  %5 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 3
  %call4 = call ptr @__f2fs_find_entry(ptr noundef %dir, ptr noundef nonnull %fname, ptr noundef %res_page)
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %5, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %if.then.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_cf_name_slab to i32))
  %11 = load ptr, ptr @f2fs_cf_name_slab, align 4
  call void @kmem_cache_free(ptr noundef %11, ptr noundef nonnull %10) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end3.cleanup_crit_edge, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call4, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_parent_dir(ptr noundef %dir, ptr noundef %p) local_unnamed_addr #1 align 64 {
entry:
  %fname.i = alloca %struct.f2fs_filename, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fname.i) #13
  %0 = call ptr @memset(ptr %fname.i, i32 255, i32 32)
  %call.i = call i32 @f2fs_setup_filename(ptr noundef %dir, ptr noundef nonnull @dotdot_name, i32 noundef 1, ptr noundef nonnull %fname.i) #13
  %1 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call.i, label %if.else.i [
    i32 0, label %if.end3.i
    i32 -2, label %entry.if.end.i_crit_edge
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = inttoptr i32 %call.i to ptr
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %entry.if.end.i_crit_edge
  %storemerge.i = phi ptr [ %2, %if.else.i ], [ null, %entry.if.end.i_crit_edge ]
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %storemerge.i, ptr %p, align 4
  br label %f2fs_find_entry.exit

if.end3.i:                                        ; preds = %entry
  %4 = getelementptr inbounds %struct.f2fs_filename, ptr %fname.i, i32 0, i32 4
  %5 = getelementptr inbounds %struct.f2fs_filename, ptr %fname.i, i32 0, i32 3
  %call4.i = call ptr @__f2fs_find_entry(ptr noundef %dir, ptr noundef nonnull %fname.i, ptr noundef %p) #13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %5, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end3.i.f2fs_find_entry.exit_crit_edge, label %if.then.i.i

if.end3.i.f2fs_find_entry.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_find_entry.exit

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_cf_name_slab to i32))
  %11 = load ptr, ptr @f2fs_cf_name_slab, align 4
  call void @kmem_cache_free(ptr noundef %11, ptr noundef nonnull %10) #13
  br label %f2fs_find_entry.exit

f2fs_find_entry.exit:                             ; preds = %if.then.i.i, %if.end3.i.f2fs_find_entry.exit_crit_edge, %if.end.i
  %retval.0.i = phi ptr [ null, %if.end.i ], [ %call4.i, %if.end3.i.f2fs_find_entry.exit_crit_edge ], [ %call4.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname.i) #13
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_inode_by_name(ptr noundef %dir, ptr noundef %qstr, ptr noundef %page) local_unnamed_addr #1 align 64 {
entry:
  %fname.i = alloca %struct.f2fs_filename, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fname.i) #13
  %0 = call ptr @memset(ptr %fname.i, i32 255, i32 32)
  %call.i = call i32 @f2fs_setup_filename(ptr noundef %dir, ptr noundef %qstr, i32 noundef 1, ptr noundef nonnull %fname.i) #13
  %1 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call.i, label %if.else.i [
    i32 0, label %if.end3.i
    i32 -2, label %entry.f2fs_find_entry.exit.thread_crit_edge
  ]

entry.f2fs_find_entry.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_find_entry.exit.thread

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = inttoptr i32 %call.i to ptr
  br label %f2fs_find_entry.exit.thread

f2fs_find_entry.exit.thread:                      ; preds = %if.else.i, %entry.f2fs_find_entry.exit.thread_crit_edge
  %storemerge.i = phi ptr [ %2, %if.else.i ], [ null, %entry.f2fs_find_entry.exit.thread_crit_edge ]
  %3 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %storemerge.i, ptr %page, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname.i) #13
  br label %if.end

if.end3.i:                                        ; preds = %entry
  %4 = getelementptr inbounds %struct.f2fs_filename, ptr %fname.i, i32 0, i32 4
  %5 = getelementptr inbounds %struct.f2fs_filename, ptr %fname.i, i32 0, i32 3
  %call4.i = call ptr @__f2fs_find_entry(ptr noundef %dir, ptr noundef nonnull %fname.i, ptr noundef %page) #13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %5, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end3.i.f2fs_find_entry.exit_crit_edge, label %if.then.i.i

if.end3.i.f2fs_find_entry.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_find_entry.exit

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_cf_name_slab to i32))
  %11 = load ptr, ptr @f2fs_cf_name_slab, align 4
  call void @kmem_cache_free(ptr noundef %11, ptr noundef nonnull %10) #13
  br label %f2fs_find_entry.exit

f2fs_find_entry.exit:                             ; preds = %if.then.i.i, %if.end3.i.f2fs_find_entry.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname.i) #13
  %tobool.not = icmp eq ptr %call4.i, null
  br i1 %tobool.not, label %f2fs_find_entry.exit.if.end_crit_edge, label %if.then

f2fs_find_entry.exit.if.end_crit_edge:            ; preds = %f2fs_find_entry.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %f2fs_find_entry.exit
  %ino = getelementptr inbounds %struct.f2fs_dir_entry, ptr %call4.i, i32 0, i32 1
  %12 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %ino, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i3:                                        ; preds = %if.then
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i17.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !79

if.then.i.i20.i:                                  ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i19.i = add i32 %19, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %16 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %20, %if.end.i.i21.i ]
  %21 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  %22 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i.i.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !77

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.16) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #13, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_inode_by_name, %if.then.i.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !85

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %21, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.i.if.end_crit_edge:   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %21) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %f2fs_find_entry.exit.if.end_crit_edge, %f2fs_find_entry.exit.thread
  %res.0 = phi i32 [ 0, %f2fs_find_entry.exit.if.end_crit_edge ], [ 0, %f2fs_find_entry.exit.thread ], [ %14, %if.then.if.end_crit_edge ], [ %14, %folio_put_testzero.exit.i.i.i.if.end_crit_edge ], [ %14, %if.then.i4.i.i ]
  ret i32 %res.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_page(ptr noundef %page, i32 noundef %unlock) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unlock)
  %tobool1.not = icmp eq i32 %unlock, 0
  br i1 %tobool1.not, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

do.body:                                          ; preds = %if.end
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !77

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !79

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #13, !srcloc !86
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !79

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not, label %do.body8, label %do.end12, !prof !77

do.body8:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2610, 0\0A.popsection", ""() #13, !srcloc !87
  unreachable

do.end12:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unlock_page(ptr noundef nonnull %page) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %if.end.if.end13_crit_edge
  %15 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i17 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.not.i.i18 = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.not.i.i18, label %if.end.i.i21, label %if.then.i.i20, !prof !79

if.then.i.i20:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i19 = add i32 %17, -1
  br label %_compound_head.exit.i23

if.end.i.i21:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i23

_compound_head.exit.i23:                          ; preds = %if.end.i.i21, %if.then.i.i20
  %retval.0.i.i22 = phi i32 [ %sub.i.i19, %if.then.i.i20 ], [ %18, %if.end.i.i21 ]
  %19 = inttoptr i32 %retval.0.i.i22 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !77

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.16) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_page, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !85

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %19) #13
  br label %return

return:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_set_link(ptr noundef %dir, ptr nocapture noundef writeonly %de, ptr noundef %page, ptr nocapture noundef readonly %inode) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 788) #13
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !79

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.13) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #13
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %and.i.i4.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #13, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !90
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %6) #13
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %13 = lshr i32 %1, 11
  %.lobit = and i32 %13, 1
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %page, i32 noundef %.lobit, i1 noundef zeroext true, i1 noundef zeroext true) #13
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %ino = getelementptr inbounds %struct.f2fs_dir_entry, ptr %de, i32 0, i32 1
  %17 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %ino, align 1
  %18 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %inode, align 8
  %20 = lshr i16 %19, 12
  %21 = zext i16 %20 to i32
  %arrayidx.i = getelementptr [15 x i8], ptr @f2fs_type_by_mode, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %file_type.i = getelementptr inbounds %struct.f2fs_dir_entry, ptr %de, i32 0, i32 3
  %24 = ptrtoint ptr %file_type.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %file_type.i, align 1
  %call1 = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #13
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #13
  %25 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #13
  %26 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext false) #13
  call fastcc void @f2fs_put_page(ptr noundef %page, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_page_writeback(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_mark_inode_dirty_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_do_make_empty_dir(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %parent, ptr nocapture noundef readonly %d) local_unnamed_addr #6 align 64 {
f2fs_update_dentry.exit33:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %dentry.i = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %5, align 1
  %name_len.i = getelementptr %struct.f2fs_dir_entry, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %name_len.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 256, ptr %name_len.i, align 1
  %filename.i = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 3
  %8 = ptrtoint ptr %filename.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filename.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 46, ptr %9, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %1) #13
  %ino5.i = getelementptr %struct.f2fs_dir_entry, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %ino5.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %ino5.i, align 1
  %13 = lshr i16 %3, 12
  %14 = zext i16 %13 to i32
  %arrayidx.i.i = getelementptr [15 x i8], ptr @f2fs_type_by_mode, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %file_type.i.i = getelementptr %struct.f2fs_dir_entry, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %file_type.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %file_type.i.i, align 1
  %bitmap.i = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 1
  %18 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitmap.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %or.i.i.peel.i = or i32 %21, 16777216
  store i32 %or.i.i.peel.i, ptr %19, align 4
  %i_ino1 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino1, align 8
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %parent, align 8
  %26 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dentry.i, align 4
  %arrayidx.i = getelementptr %struct.f2fs_dir_entry, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %arrayidx.i, align 1
  %name_len.i10 = getelementptr %struct.f2fs_dir_entry, ptr %27, i32 1, i32 2
  %29 = ptrtoint ptr %name_len.i10 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 512, ptr %name_len.i10, align 1
  %30 = ptrtoint ptr %filename.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %filename.i, align 4
  %arrayidx2.i = getelementptr [8 x i8], ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 11822, ptr %arrayidx2.i, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %23) #13
  %ino5.i12 = getelementptr %struct.f2fs_dir_entry, ptr %27, i32 1, i32 1
  %34 = ptrtoint ptr %ino5.i12 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %ino5.i12, align 1
  %35 = lshr i16 %25, 12
  %36 = zext i16 %35 to i32
  %arrayidx.i.i13 = getelementptr [15 x i8], ptr @f2fs_type_by_mode, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i.i13 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i13, align 1
  %file_type.i.i14 = getelementptr %struct.f2fs_dir_entry, ptr %27, i32 1, i32 3
  %39 = ptrtoint ptr %file_type.i.i14 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %file_type.i.i14, align 1
  %40 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bitmap.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %or.i.i.peel.i18 = or i32 %43, 33554432
  store i32 %or.i.i.peel.i18, ptr %41, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_update_dentry(i32 noundef %ino, i16 noundef zeroext %mode, ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %name, i32 noundef %name_hash, i32 noundef %bit_pos) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.fscrypt_str, ptr %name, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %sub = add i32 %1, 7
  %dentry = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %arrayidx = getelementptr %struct.f2fs_dir_entry, ptr %3, i32 %bit_pos
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %name_hash, ptr %arrayidx, align 1
  %5 = load i32, ptr %len, align 4
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %name_len = getelementptr %struct.f2fs_dir_entry, ptr %3, i32 %bit_pos, i32 2
  %7 = ptrtoint ptr %name_len to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %name_len, align 1
  %filename = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 3
  %8 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filename, align 4
  %arrayidx2 = getelementptr [8 x i8], ptr %9, i32 %bit_pos
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = call ptr @memcpy(ptr %arrayidx2, ptr %11, i32 %13)
  %15 = tail call i32 @llvm.bswap.i32(i32 %ino)
  %ino5 = getelementptr %struct.f2fs_dir_entry, ptr %3, i32 %bit_pos, i32 1
  %16 = ptrtoint ptr %ino5 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %ino5, align 1
  %17 = lshr i16 %mode, 12
  %18 = zext i16 %17 to i32
  %arrayidx.i = getelementptr [15 x i8], ptr @f2fs_type_by_mode, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %file_type.i = getelementptr %struct.f2fs_dir_entry, ptr %3, i32 %bit_pos, i32 3
  %21 = ptrtoint ptr %file_type.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %file_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp24.not = icmp ult i32 %sub, 8
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %for.inc.peel

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.peel:                                     ; preds = %entry
  %shr = lshr i32 %sub, 3
  %bitmap = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 1
  %22 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bitmap, align 4
  %xor.i.peel = and i32 %bit_pos, 31
  %rem.i.i.peel = xor i32 %xor.i.peel, 24
  %shl.i.i.peel = shl nuw i32 1, %rem.i.i.peel
  %div2.i.i.peel = lshr i32 %bit_pos, 5
  %add.ptr.i.i.peel = getelementptr i32, ptr %23, i32 %div2.i.i.peel
  %24 = ptrtoint ptr %add.ptr.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i.peel, align 4
  %or.i.i.peel = or i32 %25, %shl.i.i.peel
  store i32 %or.i.i.peel, ptr %add.ptr.i.i.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %exitcond.peel.not = icmp ult i32 %sub, 16
  br i1 %exitcond.peel.not, label %for.inc.peel.for.end_crit_edge, label %for.inc.peel.for.inc_crit_edge

for.inc.peel.for.inc_crit_edge:                   ; preds = %for.inc.peel
  br label %for.inc

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.peel.for.inc_crit_edge
  %i.025 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 1, %for.inc.peel.for.inc_crit_edge ]
  %add7 = add i32 %i.025, %bit_pos
  %26 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bitmap, align 4
  %xor.i = and i32 %add7, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %add7, 5
  %add.ptr.i.i = getelementptr i32, ptr %27, i32 %div2.i.i
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %29, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %add.ptr = getelementptr %struct.f2fs_dir_entry, ptr %arrayidx, i32 %i.025
  %name_len8 = getelementptr inbounds %struct.f2fs_dir_entry, ptr %add.ptr, i32 0, i32 2
  %30 = ptrtoint ptr %name_len8 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 0, ptr %name_len8, align 1
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.inc_crit_edge, !llvm.loop !91

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_init_inode_metadata(ptr noundef %inode, ptr noundef %dir, ptr noundef readonly %fname, ptr noundef %dpage) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @f2fs_new_inode_page(ptr noundef %inode) #13
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %5 = getelementptr inbounds %struct.page, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %10 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %11, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !77

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.15) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #13, !srcloc !93
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@f2fs_init_inode_metadata, %if.then.i.i.i.i)) #13
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !85

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %9, i32 noundef 1) #13
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %15 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call i32 @f2fs_make_empty_inline_dir(ptr noundef %inode, ptr noundef %dir, ptr noundef %call1) #13
  br label %make_empty_dir.exit

if.end.i:                                         ; preds = %get_page.exit
  %call2.i = tail call ptr @f2fs_get_new_data_page(ptr noundef %inode, ptr noundef %call1, i32 noundef 0, i1 noundef zeroext true) #13
  %cmp.i.i95 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i95, label %if.then4.i, label %make_empty_dir.exit.thread

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call2.i to i32
  br label %make_empty_dir.exit

make_empty_dir.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call7.i = tail call ptr @page_address(ptr noundef %call2.i) #13
  %dentry.i.i = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call7.i, i32 0, i32 2
  %filename.i.i = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call7.i, i32 0, i32 3
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino.i.i, align 8
  %19 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inode, align 8
  %21 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %dentry.i.i, align 1
  %name_len.i.i.i = getelementptr %struct.f2fs_dentry_block, ptr %call7.i, i32 0, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %name_len.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 256, ptr %name_len.i.i.i, align 1
  %23 = ptrtoint ptr %filename.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 46, ptr %filename.i.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  %ino5.i.i.i = getelementptr %struct.f2fs_dentry_block, ptr %call7.i, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %ino5.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %ino5.i.i.i, align 1
  %26 = lshr i16 %20, 12
  %27 = zext i16 %26 to i32
  %arrayidx.i.i.i.i = getelementptr [15 x i8], ptr @f2fs_type_by_mode, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %file_type.i.i.i.i = getelementptr %struct.f2fs_dentry_block, ptr %call7.i, i32 0, i32 2, i32 0, i32 3
  %30 = ptrtoint ptr %file_type.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %file_type.i.i.i.i, align 1
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call7.i, align 4
  %or.i.i.peel.i.i.i = or i32 %32, 16777216
  store i32 %or.i.i.peel.i.i.i, ptr %call7.i, align 4
  %i_ino1.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %33 = ptrtoint ptr %i_ino1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_ino1.i.i, align 8
  %35 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dir, align 8
  %arrayidx.i.i.i = getelementptr %struct.f2fs_dentry_block, ptr %call7.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 0, ptr %arrayidx.i.i.i, align 1
  %name_len.i10.i.i = getelementptr %struct.f2fs_dentry_block, ptr %call7.i, i32 0, i32 2, i32 1, i32 2
  %38 = ptrtoint ptr %name_len.i10.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 512, ptr %name_len.i10.i.i, align 1
  %arrayidx2.i.i.i = getelementptr %struct.f2fs_dentry_block, ptr %call7.i, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 11822, ptr %arrayidx2.i.i.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %34) #13
  %ino5.i12.i.i = getelementptr %struct.f2fs_dentry_block, ptr %call7.i, i32 0, i32 2, i32 1, i32 1
  %41 = ptrtoint ptr %ino5.i12.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %ino5.i12.i.i, align 1
  %42 = lshr i16 %36, 12
  %43 = zext i16 %42 to i32
  %arrayidx.i.i13.i.i = getelementptr [15 x i8], ptr @f2fs_type_by_mode, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i13.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i13.i.i, align 1
  %file_type.i.i14.i.i = getelementptr %struct.f2fs_dentry_block, ptr %call7.i, i32 0, i32 2, i32 1, i32 3
  %46 = ptrtoint ptr %file_type.i.i14.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %file_type.i.i14.i.i, align 1
  %or.i.i.peel.i18.i.i = or i32 %32, 50331648
  %47 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i.i.peel.i18.i.i, ptr %call7.i, align 4
  %call8.i = tail call zeroext i1 @set_page_dirty(ptr noundef %call2.i) #13
  tail call fastcc void @f2fs_put_page(ptr noundef %call2.i, i32 noundef 1) #13
  br label %if.end9

make_empty_dir.exit:                              ; preds = %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ %16, %if.then4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %make_empty_dir.exit.if.end9_crit_edge, label %if.then8

make_empty_dir.exit.if.end9_crit_edge:            ; preds = %make_empty_dir.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %make_empty_dir.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 788) #13
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %5, align 4
  %and.i.i96 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i96)
  %tobool.not.i.i97 = icmp eq i32 %and.i.i96, 0
  br i1 %tobool.not.i.i97, label %if.end.i.i100, label %if.then.i.i99, !prof !79

if.then.i.i99:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i98 = add i32 %49, -1
  br label %_compound_head.exit.i102

if.end.i.i100:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %call1 to i32
  br label %_compound_head.exit.i102

_compound_head.exit.i102:                         ; preds = %if.end.i.i100, %if.then.i.i99
  %retval.0.i.i101 = phi i32 [ %sub.i.i98, %if.then.i.i99 ], [ %50, %if.end.i.i100 ]
  %51 = inttoptr i32 %retval.0.i.i101 to ptr
  %52 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %and.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !79

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i102
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str.13) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i102
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %51, i32 noundef 4) #13
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %51, align 4
  %and.i.i4.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i103_crit_edge

folio_flags.exit.i.i.if.then.i103_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i103

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %51, i32 1, i32 3, i32 1) #13
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #13, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !90
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.put_error_crit_edge, label %folio_trylock.exit.i.if.then.i103_crit_edge

folio_trylock.exit.i.if.then.i103_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i103

folio_trylock.exit.i.put_error_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_error

if.then.i103:                                     ; preds = %folio_trylock.exit.i.if.then.i103_crit_edge, %folio_flags.exit.i.i.if.then.i103_crit_edge
  tail call void @__folio_lock(ptr noundef %51) #13
  br label %put_error

if.end9:                                          ; preds = %make_empty_dir.exit.if.end9_crit_edge, %make_empty_dir.exit.thread
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %5, align 4
  %and.i.i105 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i105)
  %tobool.not.i.i106 = icmp eq i32 %and.i.i105, 0
  br i1 %tobool.not.i.i106, label %if.end.i.i109, label %if.then.i.i108, !prof !79

if.then.i.i108:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i107 = add i32 %59, -1
  br label %_compound_head.exit.i111

if.end.i.i109:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %call1 to i32
  br label %_compound_head.exit.i111

_compound_head.exit.i111:                         ; preds = %if.end.i.i109, %if.then.i.i108
  %retval.0.i.i110 = phi i32 [ %sub.i.i107, %if.then.i.i108 ], [ %60, %if.end.i.i109 ]
  %61 = inttoptr i32 %retval.0.i.i110 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %62 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i.i.i = icmp eq i32 %63, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i112, label %do.end5.i.i.i.i, !prof !77

if.then.i.i.i.i112:                               ; preds = %_compound_head.exit.i111
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %61, ptr noundef nonnull @.str.16) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i111
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_init_inode_metadata, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !85

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %61, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end10_crit_edge

folio_put_testzero.exit.i.i.if.end10_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %61) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @f2fs_init_acl(ptr noundef %inode, ptr noundef %dir, ptr noundef %call1, ptr noundef %dpage) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.put_error_crit_edge

if.end10.put_error_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_error

if.end14:                                         ; preds = %if.end10
  %tobool15.not = icmp eq ptr %fname, null
  br i1 %tobool15.not, label %if.end14.cond.end_crit_edge, label %cond.true

if.end14.cond.end_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fname, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end14.cond.end_crit_edge
  %cond = phi ptr [ %66, %cond.true ], [ null, %if.end14.cond.end_crit_edge ]
  %call16 = tail call i32 @f2fs_init_security(ptr noundef %inode, ptr noundef %dir, ptr noundef %cond, ptr noundef %call1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cond.end.put_error_crit_edge

cond.end.put_error_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_error

if.end19:                                         ; preds = %cond.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %67 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_flags, align 4
  %and20 = and i32 %68, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end33_crit_edge, label %if.then22

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then22:                                        ; preds = %if.end19
  %call23 = tail call i32 @fscrypt_set_context(ptr noundef %inode, ptr noundef %call1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end33_crit_edge, label %if.then22.put_error_crit_edge

if.then22.put_error_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_error

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.else:                                          ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %69 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %70, i32 0, i32 33
  %71 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %73 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_ino, align 8
  %call29 = tail call ptr @f2fs_get_node_page(ptr noundef %72, i32 noundef %74) #13
  %cmp.i113 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.else.cleanup_crit_edge, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.else.if.end33_crit_edge, %if.then22.if.end33_crit_edge, %if.end19.if.end33_crit_edge
  %page.0 = phi ptr [ %call1, %if.then22.if.end33_crit_edge ], [ %call1, %if.end19.if.end33_crit_edge ], [ %call29, %if.else.if.end33_crit_edge ]
  %tobool.not.i114 = icmp eq ptr %fname, null
  br i1 %tobool.not.i114, label %if.end33.init_dent_inode.exit_crit_edge, label %if.end.i115

if.end33.init_dent_inode.exit_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_dent_inode.exit

if.end.i115:                                      ; preds = %if.end33
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %page.0, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #13
  %call.i.i = tail call ptr @page_address(ptr noundef %page.0) #13
  %disk_name.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len.i, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #13
  %i_namelen.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 19
  %78 = ptrtoint ptr %i_namelen.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %i_namelen.i, align 1
  %i_name.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 20
  %79 = ptrtoint ptr %disk_name.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %disk_name.i, align 4
  %81 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len.i, align 4
  %83 = call ptr @memcpy(ptr %i_name.i, ptr %80, i32 %82)
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %84 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %85, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i115.if.end18.i_crit_edge, label %if.then5.i

if.end.i115.if.end18.i_crit_edge:                 ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then5.i:                                       ; preds = %if.end.i115
  %i_advise.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 2
  %86 = ptrtoint ptr %i_advise.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %i_advise.i.i.i, align 4
  %88 = and i8 %87, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i.i116 = icmp eq i8 %88, 0
  br i1 %tobool.not.i.i116, label %if.end.i.i117, label %if.then5.i.set_file.exit.i_crit_edge

if.then5.i.set_file.exit.i_crit_edge:             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_file.exit.i

if.end.i.i117:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv2.i.i = or i8 %87, 8
  %89 = ptrtoint ptr %i_advise.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv2.i.i, ptr %i_advise.i.i.i, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #13
  br label %set_file.exit.i

set_file.exit.i:                                  ; preds = %if.end.i.i117, %if.then5.i.set_file.exit.i_crit_edge
  %90 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %i_flags.i, align 4
  %and7.i = and i32 %91, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %set_file.exit.i.if.end18.i_crit_edge, label %if.then9.i

set_file.exit.i.if.end18.i_crit_edge:             ; preds = %set_file.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then9.i:                                       ; preds = %set_file.exit.i
  %92 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len.i, align 4
  %add.i = add i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %cmp.i118 = icmp ult i32 %add.i, 256
  br i1 %cmp.i118, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 20, i32 %93
  %hash.i = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %94 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hash.i, align 4
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %95, ptr %arrayidx.i, align 1
  br label %if.end18.i

if.else.i:                                        ; preds = %if.then9.i
  %97 = ptrtoint ptr %i_advise.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %i_advise.i.i.i, align 4
  %99 = and i8 %98, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i35.i = icmp eq i8 %99, 0
  br i1 %tobool.not.i35.i, label %if.end.i37.i, label %if.else.i.if.end18.i_crit_edge

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.end.i37.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv2.i36.i = or i8 %98, 2
  %100 = ptrtoint ptr %i_advise.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv2.i36.i, ptr %i_advise.i.i.i, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #13
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i37.i, %if.else.i.if.end18.i_crit_edge, %do.body.i, %set_file.exit.i.if.end18.i_crit_edge, %if.end.i115.if.end18.i_crit_edge
  %call19.i = tail call zeroext i1 @set_page_dirty(ptr noundef %page.0) #13
  br label %init_dent_inode.exit

init_dent_inode.exit:                             ; preds = %if.end18.i, %if.end33.init_dent_inode.exit_crit_edge
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %flags.i, align 4
  %103 = and i32 %102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool35.not = icmp eq i32 %103, 0
  br i1 %tobool35.not, label %init_dent_inode.exit.cleanup_crit_edge, label %if.then36

init_dent_inode.exit.cleanup_crit_edge:           ; preds = %init_dent_inode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then36:                                        ; preds = %init_dent_inode.exit
  %104 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %inode, align 8
  %106 = and i16 %105, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %106)
  %cmp40 = icmp eq i16 %106, 16384
  br i1 %cmp40, label %if.then36.if.end43_crit_edge, label %if.then42

if.then36.if.end43_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then42:                                        ; preds = %if.then36
  %i_advise.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 2
  %107 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %i_advise.i.i, align 4
  %109 = and i8 %108, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i122 = icmp eq i8 %109, 0
  br i1 %tobool.not.i122, label %if.end.i123, label %if.then42.if.end43_crit_edge

if.then42.if.end43_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.end.i123:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %conv2.i = or i8 %108, 2
  %110 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv2.i, ptr %i_advise.i.i, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #13
  br label %if.end43

if.end43:                                         ; preds = %if.end.i123, %if.then42.if.end43_crit_edge, %if.then36.if.end43_crit_edge
  %111 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp44 = icmp eq i32 %113, 0
  br i1 %cmp44, label %if.then46, label %if.end43.if.end49_crit_edge

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %i_sb.i124 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %114 = ptrtoint ptr %i_sb.i124 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %i_sb.i124, align 4
  %s_fs_info.i.i125 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 33
  %116 = ptrtoint ptr %s_fs_info.i.i125 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_fs_info.i.i125, align 16
  %i_ino48 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %118 = ptrtoint ptr %i_ino48 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %i_ino48, align 8
  tail call void @f2fs_remove_orphan_inode(ptr noundef %117, i32 noundef %119) #13
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end43.if.end49_crit_edge
  tail call void @inc_nlink(ptr noundef %inode) #13
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #13
  br label %cleanup

put_error:                                        ; preds = %if.then22.put_error_crit_edge, %cond.end.put_error_crit_edge, %if.end10.put_error_crit_edge, %if.then.i103, %folio_trylock.exit.i.put_error_crit_edge
  %err.0 = phi i32 [ %call11, %if.end10.put_error_crit_edge ], [ %call16, %cond.end.put_error_crit_edge ], [ %call23, %if.then22.put_error_crit_edge ], [ %retval.0.i, %folio_trylock.exit.i.put_error_crit_edge ], [ %retval.0.i, %if.then.i103 ]
  tail call void @clear_nlink(ptr noundef %inode) #13
  tail call void @f2fs_update_inode(ptr noundef %inode, ptr noundef %call1) #13
  tail call fastcc void @f2fs_put_page(ptr noundef %call1, i32 noundef 1)
  %120 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %put_error, %if.end49, %init_dent_inode.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %120, %put_error ], [ %call1, %if.then.cleanup_crit_edge ], [ %call29, %if.else.cleanup_crit_edge ], [ %page.0, %if.end49 ], [ %page.0, %init_dent_inode.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_new_inode_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_init_acl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_init_security(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_set_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_node_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_remove_orphan_inode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_update_parent_metadata(ptr noundef %dir, ptr noundef %inode, i32 noundef %current_depth) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool1.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end4_crit_edge, label %if.then

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @inc_nlink(ptr noundef %dir) #13
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext true) #13
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #13
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef nonnull %inode, i1 noundef zeroext true) #13
  br label %if.end4

if.end4:                                          ; preds = %if.end, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #13
  %5 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #13
  %6 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext false) #13
  %i_current_depth = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 4
  %7 = ptrtoint ptr %i_current_depth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_current_depth, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %current_depth)
  %cmp6.not = icmp eq i32 %8, %current_depth
  br i1 %cmp6.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %i_current_depth to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %current_depth, ptr %i_current_depth, align 8
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext true) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  br i1 %tobool.not, label %if.end9.if.end15_crit_edge, label %land.lhs.true11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.end9
  %flags.i30 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %flags.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i30, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then14

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i30) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true11.if.end15_crit_edge, %if.end9.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_room_for_filename(ptr noundef %bitmap, i32 noundef %slots, i32 noundef %max_slots) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %next

next:                                             ; preds = %if.end4.next_crit_edge, %entry
  %bit_start.0 = phi i32 [ 0, %entry ], [ %add, %if.end4.next_crit_edge ]
  %call.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %bitmap, i32 noundef %max_slots, i32 noundef %bit_start.0) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %max_slots)
  %cmp.not = icmp slt i32 %call.i, %max_slots
  br i1 %cmp.not, label %if.end, label %next.cleanup_crit_edge

next.cleanup_crit_edge:                           ; preds = %next
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %next
  %call.i22 = tail call i32 @_find_next_bit_le(ptr noundef %bitmap, i32 noundef %max_slots, i32 noundef %call.i) #13
  %sub = sub i32 %call.i22, %call.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %slots)
  %cmp2.not = icmp slt i32 %sub, %slots
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add = add i32 %call.i22, 1
  %cmp6.not = icmp slt i32 %add, %max_slots
  br i1 %cmp6.not, label %if.end4.next_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.next_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %next

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %next.cleanup_crit_edge
  %retval.0 = phi i32 [ %max_slots, %next.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %max_slots, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_has_enough_room(ptr noundef %dir, ptr noundef %ipage, ptr nocapture noundef readonly %fname) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %sub = add i32 %1, 7
  %shr = lshr i32 %sub, 3
  %call.i.i = tail call ptr @page_address(ptr noundef %ipage) #13
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 29
  %2 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %3, 2
  %4 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %4, i32 0, i32 %add.i
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 31
  %5 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %7 = add i32 %div1.i.i, %6
  %mul.i = mul i32 %7, -32
  %mul4.i = add i32 %mul.i, 29504
  %div.i = udiv i32 %mul4.i, 153
  br label %next.i

next.i:                                           ; preds = %if.end4.i.next.i_crit_edge, %entry
  %bit_start.0.i = phi i32 [ 0, %entry ], [ %add.i7, %if.end4.i.next.i_crit_edge ]
  %call.i.i6 = tail call i32 @_find_next_zero_bit_le(ptr noundef %arrayidx.i, i32 noundef %div.i, i32 noundef %bit_start.0.i) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i6, i32 %div.i)
  %cmp.not.i = icmp slt i32 %call.i.i6, %div.i
  br i1 %cmp.not.i, label %if.end.i, label %next.i.f2fs_room_for_filename.exit_crit_edge

next.i.f2fs_room_for_filename.exit_crit_edge:     ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_room_for_filename.exit

if.end.i:                                         ; preds = %next.i
  %call.i22.i = tail call i32 @_find_next_bit_le(ptr noundef %arrayidx.i, i32 noundef %div.i, i32 noundef %call.i.i6) #13
  %sub.i = sub i32 %call.i22.i, %call.i.i6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %shr)
  %cmp2.not.i = icmp slt i32 %sub.i, %shr
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.f2fs_room_for_filename.exit_crit_edge

if.end.i.f2fs_room_for_filename.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_room_for_filename.exit

if.end4.i:                                        ; preds = %if.end.i
  %add.i7 = add i32 %call.i22.i, 1
  %cmp6.not.i = icmp slt i32 %add.i7, %div.i
  br i1 %cmp6.not.i, label %if.end4.i.next.i_crit_edge, label %if.end4.i.f2fs_room_for_filename.exit_crit_edge

if.end4.i.f2fs_room_for_filename.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_room_for_filename.exit

if.end4.i.next.i_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next.i

f2fs_room_for_filename.exit:                      ; preds = %if.end4.i.f2fs_room_for_filename.exit_crit_edge, %if.end.i.f2fs_room_for_filename.exit_crit_edge, %next.i.f2fs_room_for_filename.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i, %next.i.f2fs_room_for_filename.exit_crit_edge ], [ %call.i.i6, %if.end.i.f2fs_room_for_filename.exit_crit_edge ], [ %div.i, %if.end4.i.f2fs_room_for_filename.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %div.i)
  %cmp = icmp ult i32 %retval.0.i, %div.i
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_add_regular_entry(ptr noundef %dir, ptr noundef %fname, ptr noundef %inode, i32 noundef %ino, i16 noundef zeroext %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %disk_name = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1
  %len = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %sub = add i32 %1, 7
  %shr = lshr i32 %sub, 3
  %i_current_depth = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 4
  %2 = ptrtoint ptr %i_current_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_current_depth, align 8
  %chash = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 11
  %4 = ptrtoint ptr %chash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chash, align 8
  %hash = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %6 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %clevel = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 12
  %8 = ptrtoint ptr %clevel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clevel, align 4
  %10 = ptrtoint ptr %chash to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %chash, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %level.0 = phi i32 [ %9, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %i_dir_level = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 3
  br label %start

start:                                            ; preds = %for.end, %if.end
  %level.1 = phi i32 [ %level.0, %if.end ], [ %inc46, %for.end ]
  %current_depth.0 = phi i32 [ %3, %if.end ], [ %spec.select, %for.end ]
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %14, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %14, i32 0, i32 73, i32 7, i32 1
  %15 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %start.if.end13_crit_edge, label %if.end.i

start.if.end13_crit_edge:                         ; preds = %start
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end.i:                                         ; preds = %start
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %14, i32 0, i32 73, i32 7, i32 2
  %17 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end13_crit_edge, label %if.end3.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #13, !srcloc !75
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #13
  %20 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %fault_info.i, align 4
  %22 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not.i = icmp ult i32 %21, %23
  br i1 %cmp.not.i, label %if.end3.i.if.end13_crit_edge, label %if.then7

if.end3.i.if.end13_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then7:                                         ; preds = %if.end3.i
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #13
  %24 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_add_regular_entry._rs, ptr noundef nonnull @__func__.f2fs_add_regular_entry) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then7.cleanup_crit_edge, label %do.end

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i130 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i130 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i130, align 16
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 8) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 8), align 4
  %32 = tail call ptr @llvm.returnaddress(i32 0)
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef %s_id, ptr noundef %31, ptr noundef nonnull @__func__.f2fs_add_regular_entry, ptr noundef %32) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end3.i.if.end13_crit_edge, %if.end.i.if.end13_crit_edge, %start.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %current_depth.0)
  %cmp14 = icmp eq i32 %current_depth.0, 63
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end18, !prof !77

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %level.1, i32 %current_depth.0)
  %cmp19 = icmp eq i32 %level.1, %current_depth.0
  %inc = zext i1 %cmp19 to i32
  %spec.select = add i32 %current_depth.0, %inc
  %33 = ptrtoint ptr %i_dir_level to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i_dir_level, align 1
  %conv = zext i8 %34 to i32
  %add.i = add i32 %level.1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %level.1)
  %cmp.i132 = icmp ult i32 %level.1, 31
  %..i = select i1 %cmp.i132, i32 2, i32 4
  %35 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hash, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %notmask = shl nsw i32 -1, %add.i
  %shl.i.op = xor i32 %notmask, -1
  %38 = select i1 %cmp.i, i32 %shl.i.op, i32 1073741823
  %rem = and i32 %38, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.1)
  %cmp14.not.i = icmp eq i32 %level.1, 0
  br i1 %cmp14.not.i, label %if.end18.dir_block_index.exit_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.dir_block_index.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %dir_block_index.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %bidx.016.i = phi i32 [ %add.i133, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %add.i.i = add i32 %i.015.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 31
  %shl.i.i = shl nuw i32 1, %add.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i32 %shl.i.i, i32 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.015.i)
  %cmp.i11.i = icmp ult i32 %i.015.i, 31
  %..i.i = select i1 %cmp.i11.i, i32 2, i32 4
  %mul.i = mul i32 %retval.0.i.i, %..i.i
  %add.i133 = add i32 %mul.i, %bidx.016.i
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %level.1
  br i1 %exitcond.not.i, label %for.body.i.dir_block_index.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.dir_block_index.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dir_block_index.exit

dir_block_index.exit:                             ; preds = %for.body.i.dir_block_index.exit_crit_edge, %if.end18.dir_block_index.exit_crit_edge
  %bidx.0.lcssa.i = phi i32 [ 0, %if.end18.dir_block_index.exit_crit_edge ], [ %add.i133, %for.body.i.dir_block_index.exit_crit_edge ]
  %mul3.i = mul i32 %rem, %..i
  %add4.i = add i32 %bidx.0.lcssa.i, %mul3.i
  %add30 = add nsw i32 %..i, -1
  %sub31 = add i32 %add30, %add4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %sub31)
  %cmp32.not165 = icmp ugt i32 %add4.i, %sub31
  br i1 %cmp32.not165, label %dir_block_index.exit.for.end_crit_edge, label %dir_block_index.exit.for.body_crit_edge

dir_block_index.exit.for.body_crit_edge:          ; preds = %dir_block_index.exit
  br label %for.body

dir_block_index.exit.for.end_crit_edge:           ; preds = %dir_block_index.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %dir_block_index.exit.for.body_crit_edge
  %block.0166 = phi i32 [ %inc45, %if.end44.for.body_crit_edge ], [ %add4.i, %dir_block_index.exit.for.body_crit_edge ]
  %call34 = tail call ptr @f2fs_get_new_data_page(ptr noundef %dir, ptr noundef null, i32 noundef %block.0166, i1 noundef zeroext true) #13
  %cmp.i134 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then36, label %if.end38

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end38:                                         ; preds = %for.body
  %call39 = tail call ptr @page_address(ptr noundef %call34) #13
  br label %next.i

next.i:                                           ; preds = %if.end4.i.next.i_crit_edge, %if.end38
  %bit_start.0.i = phi i32 [ 0, %if.end38 ], [ %add.i137, %if.end4.i.next.i_crit_edge ]
  %call.i.i = tail call i32 @_find_next_zero_bit_le(ptr noundef %call39, i32 noundef 214, i32 noundef %bit_start.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 214, i32 %call.i.i)
  %cmp.not.i135 = icmp slt i32 %call.i.i, 214
  br i1 %cmp.not.i135, label %if.end.i136, label %next.i.if.end44_crit_edge

next.i.if.end44_crit_edge:                        ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.end.i136:                                      ; preds = %next.i
  %call.i22.i = tail call i32 @_find_next_bit_le(ptr noundef %call39, i32 noundef 214, i32 noundef %call.i.i) #13
  %sub.i = sub i32 %call.i22.i, %call.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %shr)
  %cmp2.not.i = icmp slt i32 %sub.i, %shr
  br i1 %cmp2.not.i, label %if.end4.i, label %f2fs_room_for_filename.exit

if.end4.i:                                        ; preds = %if.end.i136
  %add.i137 = add i32 %call.i22.i, 1
  %cmp6.not.i = icmp slt i32 %add.i137, 214
  br i1 %cmp6.not.i, label %if.end4.i.next.i_crit_edge, label %if.end4.i.if.end44_crit_edge

if.end4.i.if.end44_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.end4.i.next.i_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next.i

f2fs_room_for_filename.exit:                      ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_const_cmp4(i32 214, i32 %call.i.i)
  %cmp41 = icmp ult i32 %call.i.i, 214
  br i1 %cmp41, label %add_dentry, label %f2fs_room_for_filename.exit.if.end44_crit_edge

f2fs_room_for_filename.exit.if.end44_crit_edge:   ; preds = %f2fs_room_for_filename.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.end44:                                         ; preds = %f2fs_room_for_filename.exit.if.end44_crit_edge, %if.end4.i.if.end44_crit_edge, %next.i.if.end44_crit_edge
  tail call fastcc void @f2fs_put_page(ptr noundef %call34, i32 noundef 1)
  %inc45 = add i32 %block.0166, 1
  %cmp32.not = icmp ugt i32 %inc45, %sub31
  br i1 %cmp32.not, label %if.end44.for.end_crit_edge, label %if.end44.for.body_crit_edge

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end44.for.end_crit_edge, %dir_block_index.exit.for.end_crit_edge
  %inc46 = add i32 %level.1, 1
  br label %start

add_dentry:                                       ; preds = %f2fs_room_for_filename.exit
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %call34, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #13
  %tobool47.not = icmp eq ptr %inode, null
  br i1 %tobool47.not, label %add_dentry.if.end55_crit_edge, label %if.then48

add_dentry.if.end55_crit_edge:                    ; preds = %add_dentry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then48:                                        ; preds = %add_dentry
  %i_sem = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 9
  tail call void @down_write(ptr noundef %i_sem) #13
  %call50 = tail call ptr @f2fs_init_inode_metadata(ptr noundef nonnull %inode, ptr noundef %dir, ptr noundef %fname, ptr noundef null)
  %cmp.i139 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %fail.thread, label %if.then48.if.end55_crit_edge

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

fail.thread:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %call50 to i32
  br label %if.then67

if.end55:                                         ; preds = %if.then48.if.end55_crit_edge, %add_dentry.if.end55_crit_edge
  %page.0 = phi ptr [ %call50, %if.then48.if.end55_crit_edge ], [ null, %add_dentry.if.end55_crit_edge ]
  %dentry.i = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call39, i32 0, i32 2
  %filename.i = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call39, i32 0, i32 3
  %41 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hash, align 4
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %sub.i140 = add i32 %44, 7
  %arrayidx.i = getelementptr %struct.f2fs_dir_entry, ptr %dentry.i, i32 %call.i.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %42, ptr %arrayidx.i, align 1
  %46 = load i32, ptr %len, align 4
  %conv.i = trunc i32 %46 to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #13
  %name_len.i = getelementptr %struct.f2fs_dir_entry, ptr %dentry.i, i32 %call.i.i, i32 2
  %48 = ptrtoint ptr %name_len.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %name_len.i, align 1
  %arrayidx2.i = getelementptr [8 x i8], ptr %filename.i, i32 %call.i.i
  %49 = ptrtoint ptr %disk_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %disk_name, align 4
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  %53 = call ptr @memcpy(ptr %arrayidx2.i, ptr %50, i32 %52)
  %54 = tail call i32 @llvm.bswap.i32(i32 %ino) #13
  %ino5.i = getelementptr %struct.f2fs_dir_entry, ptr %dentry.i, i32 %call.i.i, i32 1
  %55 = ptrtoint ptr %ino5.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %ino5.i, align 1
  %56 = lshr i16 %mode, 12
  %57 = zext i16 %56 to i32
  %arrayidx.i.i = getelementptr [15 x i8], ptr @f2fs_type_by_mode, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i, align 1
  %file_type.i.i = getelementptr %struct.f2fs_dir_entry, ptr %dentry.i, i32 %call.i.i, i32 3
  %60 = ptrtoint ptr %file_type.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %file_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i140)
  %cmp24.not.i = icmp ult i32 %sub.i140, 8
  br i1 %cmp24.not.i, label %if.end55.f2fs_update_dentry.exit_crit_edge, label %for.inc.peel.i

if.end55.f2fs_update_dentry.exit_crit_edge:       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_update_dentry.exit

for.inc.peel.i:                                   ; preds = %if.end55
  %shr.i = lshr i32 %sub.i140, 3
  %xor.i.peel.i = and i32 %call.i.i, 31
  %rem.i.i.peel.i = xor i32 %xor.i.peel.i, 24
  %shl.i.i.peel.i = shl nuw i32 1, %rem.i.i.peel.i
  %div2.i.i.peel.i = lshr i32 %call.i.i, 5
  %add.ptr.i.i.peel.i = getelementptr i32, ptr %call39, i32 %div2.i.i.peel.i
  %61 = ptrtoint ptr %add.ptr.i.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i.peel.i, align 4
  %or.i.i.peel.i = or i32 %62, %shl.i.i.peel.i
  store i32 %or.i.i.peel.i, ptr %add.ptr.i.i.peel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i140)
  %exitcond.peel.not.i = icmp ult i32 %sub.i140, 16
  br i1 %exitcond.peel.not.i, label %for.inc.peel.i.f2fs_update_dentry.exit_crit_edge, label %for.inc.peel.i.for.inc.i_crit_edge

for.inc.peel.i.for.inc.i_crit_edge:               ; preds = %for.inc.peel.i
  br label %for.inc.i

for.inc.peel.i.f2fs_update_dentry.exit_crit_edge: ; preds = %for.inc.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_update_dentry.exit

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %for.inc.peel.i.for.inc.i_crit_edge
  %i.025.i = phi i32 [ %inc.i144, %for.inc.i.for.inc.i_crit_edge ], [ 1, %for.inc.peel.i.for.inc.i_crit_edge ]
  %add7.i = add i32 %i.025.i, %call.i.i
  %xor.i.i = and i32 %add7.i, 31
  %rem.i.i.i = xor i32 %xor.i.i, 24
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %add7.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %call39, i32 %div2.i.i.i
  %63 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %64
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.f2fs_dir_entry, ptr %arrayidx.i, i32 %i.025.i
  %name_len8.i = getelementptr inbounds %struct.f2fs_dir_entry, ptr %add.ptr.i, i32 0, i32 2
  %65 = ptrtoint ptr %name_len8.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 0, ptr %name_len8.i, align 1
  %inc.i144 = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i145 = icmp eq i32 %inc.i144, %shr.i
  br i1 %exitcond.not.i145, label %for.inc.i.f2fs_update_dentry.exit_crit_edge, label %for.inc.i.for.inc.i_crit_edge, !llvm.loop !91

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i.f2fs_update_dentry.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_update_dentry.exit

f2fs_update_dentry.exit:                          ; preds = %for.inc.i.f2fs_update_dentry.exit_crit_edge, %for.inc.peel.i.f2fs_update_dentry.exit_crit_edge, %if.end55.f2fs_update_dentry.exit_crit_edge
  %call58 = tail call zeroext i1 @set_page_dirty(ptr noundef %call34) #13
  br i1 %tobool47.not, label %fail.thread153, label %if.then60

fail.thread153:                                   ; preds = %f2fs_update_dentry.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @f2fs_update_parent_metadata(ptr noundef %dir, ptr noundef null, i32 noundef %spec.select)
  br label %if.end70

if.then60:                                        ; preds = %f2fs_update_dentry.exit
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %66 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_ino, align 8
  %i_pino.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 6
  %68 = ptrtoint ptr %i_pino.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %i_pino.i, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef nonnull %inode, i1 noundef zeroext true) #13
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool62.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool62.not, label %if.then60.fail_crit_edge, label %if.then63

if.then60.fail_crit_edge:                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @f2fs_update_inode(ptr noundef nonnull %inode, ptr noundef %page.0) #13
  br label %fail

fail:                                             ; preds = %if.then63, %if.then60.fail_crit_edge
  tail call fastcc void @f2fs_put_page(ptr noundef %page.0, i32 noundef 1)
  tail call void @f2fs_update_parent_metadata(ptr noundef %dir, ptr noundef nonnull %inode, i32 noundef %spec.select)
  br label %if.then67

if.then67:                                        ; preds = %fail, %fail.thread
  %err.0151 = phi i32 [ %40, %fail.thread ], [ 0, %fail ]
  %i_sem69 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 9
  tail call void @up_write(ptr noundef %i_sem69) #13
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %fail.thread153
  %err.0152 = phi i32 [ %err.0151, %if.then67 ], [ 0, %fail.thread153 ]
  tail call fastcc void @f2fs_put_page(ptr noundef %call34, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then36, %if.end13.cleanup_crit_edge, %do.end, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %if.then36 ], [ %err.0152, %if.end70 ], [ -28, %do.end ], [ -28, %if.then7.cleanup_crit_edge ], [ -28, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_new_data_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_add_dentry(ptr noundef %dir, ptr noundef %fname, ptr noundef %inode, i32 noundef %ino, i16 noundef zeroext %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i.i, align 4
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.then2_crit_edge, label %if.end

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @f2fs_add_inline_entry(ptr noundef %dir, ptr noundef %fname, ptr noundef %inode, i32 noundef %ino, i16 noundef zeroext %mode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call1)
  %cmp = icmp eq i32 %call1, -11
  br i1 %cmp, label %if.end.if.then2_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %entry.if.then2_crit_edge
  %call3 = tail call i32 @f2fs_add_regular_entry(ptr noundef %dir, ptr noundef %fname, ptr noundef %inode, i32 noundef %ino, i16 noundef zeroext %mode)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %err.1 = phi i32 [ %call3, %if.then2 ], [ %call1, %if.end.if.end4_crit_edge ]
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %6, i32 0, i32 24, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.f2fs_sb_info, ptr %6, i32 0, i32 24, i32 2
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %arrayidx2.i, align 8
  %arrayidx4.i = getelementptr %struct.f2fs_sb_info, ptr %6, i32 0, i32 24, i32 3
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx4.i, align 4
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_add_inline_entry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_do_add_link(ptr noundef %dir, ptr noundef %name, ptr noundef %inode, i32 noundef %ino, i16 noundef zeroext %mode) local_unnamed_addr #1 align 64 {
entry:
  %fname = alloca %struct.f2fs_filename, align 4
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fname) #13
  %0 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 3
  %1 = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 4
  %2 = call ptr @memset(ptr %fname, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #13
  %3 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %page, align 4
  %call = call i32 @f2fs_setup_filename(ptr noundef %dir, ptr noundef %name, i32 noundef 0, ptr noundef nonnull %fname)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task3 = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 13
  %8 = ptrtoint ptr %task3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task3, align 8
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %if.end.if.else_crit_edge, label %if.then4

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then4:                                         ; preds = %if.end
  %call5 = call ptr @__f2fs_find_entry(ptr noundef %dir, ptr noundef nonnull %fname, ptr noundef nonnull %page)
  %10 = ptrtoint ptr %task3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %task3, align 8
  %phi.cmp = icmp eq ptr %call5, null
  br i1 %phi.cmp, label %if.then4.if.else_crit_edge, label %if.then10

if.then4.if.else_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then10:                                        ; preds = %if.then4
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then10.if.end17_crit_edge, label %if.end.i

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end.i:                                         ; preds = %if.then10
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i17.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !79

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i19.i = add i32 %15, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %12 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %16, %if.end.i.i21.i ]
  %17 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  %18 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !77

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.16) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #13, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_do_add_link, %if.then.i.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !85

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %17, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.if.end17_crit_edge

folio_put_testzero.exit.i.i.i.if.end17_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %17) #13
  br label %if.end17

if.else:                                          ; preds = %if.then4.if.else_crit_edge, %if.end.if.else_crit_edge
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %page, align 4
  %cmp.i = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %22 to i32
  br label %if.end17

if.else14:                                        ; preds = %if.else
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %24 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i.i.i, align 4
  %26 = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i27 = icmp eq i32 %26, 0
  br i1 %tobool.not.i27, label %if.else14.if.then2.i_crit_edge, label %if.end.i29

if.else14.if.then2.i_crit_edge:                   ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2.i

if.end.i29:                                       ; preds = %if.else14
  %call1.i = call i32 @f2fs_add_inline_entry(ptr noundef %dir, ptr noundef nonnull %fname, ptr noundef %inode, i32 noundef %ino, i16 noundef zeroext %mode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call1.i)
  %cmp.i28 = icmp eq i32 %call1.i, -11
  br i1 %cmp.i28, label %if.end.i29.if.then2.i_crit_edge, label %if.end.i29.f2fs_add_dentry.exit_crit_edge

if.end.i29.f2fs_add_dentry.exit_crit_edge:        ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_add_dentry.exit

if.end.i29.if.then2.i_crit_edge:                  ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i29.if.then2.i_crit_edge, %if.else14.if.then2.i_crit_edge
  %call3.i = call i32 @f2fs_add_regular_entry(ptr noundef %dir, ptr noundef nonnull %fname, ptr noundef %inode, i32 noundef %ino, i16 noundef zeroext %mode) #13
  br label %f2fs_add_dentry.exit

f2fs_add_dentry.exit:                             ; preds = %if.then2.i, %if.end.i29.f2fs_add_dentry.exit_crit_edge
  %err.1.i = phi i32 [ %call3.i, %if.then2.i ], [ %call1.i, %if.end.i29.f2fs_add_dentry.exit_crit_edge ]
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %30, i32 0, i32 24, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.f2fs_sb_info, ptr %30, i32 0, i32 24, i32 2
  %33 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %arrayidx2.i.i, align 8
  %arrayidx4.i.i = getelementptr %struct.f2fs_sb_info, ptr %30, i32 0, i32 24, i32 3
  %34 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %arrayidx4.i.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %f2fs_add_dentry.exit, %if.then12, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.if.end17_crit_edge, %if.then10.if.end17_crit_edge
  %err.0 = phi i32 [ %23, %if.then12 ], [ %err.1.i, %f2fs_add_dentry.exit ], [ -17, %if.then10.if.end17_crit_edge ], [ -17, %folio_put_testzero.exit.i.i.i.if.end17_crit_edge ], [ -17, %if.then.i4.i.i ]
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %36) #13
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %0, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %tobool.not.i30 = icmp eq ptr %39, null
  br i1 %tobool.not.i30, label %if.end17.cleanup_crit_edge, label %if.then.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_cf_name_slab to i32))
  %40 = load ptr, ptr @f2fs_cf_name_slab, align 4
  call void @kmem_cache_free(ptr noundef %40, ptr noundef nonnull %39) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.0, %if.end17.cleanup_crit_edge ], [ %err.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_do_tmpfile(ptr noundef %inode, ptr noundef %dir) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sem = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 9
  tail call void @down_write(ptr noundef %i_sem) #13
  %call1 = tail call ptr @f2fs_init_inode_metadata(ptr noundef %inode, ptr noundef %dir, ptr noundef null, ptr noundef null)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %call1 to i32
  br label %fail

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @f2fs_put_page(ptr noundef %call1, i32 noundef 1)
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #13
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #13
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %4, i32 0, i32 24, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.f2fs_sb_info, ptr %4, i32 0, i32 24, i32 2
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %arrayidx2.i, align 8
  %arrayidx4.i = getelementptr %struct.f2fs_sb_info, ptr %4, i32 0, i32 24, i32 3
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx4.i, align 4
  br label %fail

fail:                                             ; preds = %if.end, %if.then
  %err.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  tail call void @up_write(ptr noundef %i_sem) #13
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_drop_nlink(ptr noundef %dir, ptr noundef %inode) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_sem = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 9
  tail call void @down_write(ptr noundef %i_sem) #13
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @drop_nlink(ptr noundef %dir) #13
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext true) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #13
  %7 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #13
  call void @drop_nlink(ptr noundef %inode) #13
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #13
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %inode, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %10)
  %cmp6 = icmp eq i16 %10, 16384
  br i1 %cmp6, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @drop_nlink(ptr noundef %inode) #13
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #13
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i.i, align 4
  %13 = load volatile i32, ptr %flags.i.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp ne i32 %14, 0
  %call4.i = call fastcc i64 @i_size_read(ptr noundef %inode) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call4.i)
  %cmp.i = icmp eq i64 %call4.i, 0
  br i1 %cmp.i, label %if.then8.if.end9_crit_edge, label %if.end.i

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end.i:                                         ; preds = %if.then8
  %15 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %16 = call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i_size_write.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i_size_write.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %21 = call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !95
  %25 = call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i3.i.i = add i32 %30, ptrtoint (ptr @lockdep_recursion to i32)
  %31 = inttoptr i32 %add.i3.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !96
  %34 = call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i7.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool20.not.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge

land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %38 = call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i4.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i4.i.i to ptr
  %preempt_count.i.i5.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.i_size_write.exit.i_crit_edge

land.rhs.i.i.i.i_size_write.exit.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %42 = call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i9.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %45, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !97
  %46 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %49, ptrtoint (ptr @hardirqs_enabled to i32)
  %50 = inttoptr i32 %add47.i.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !98
  %53 = call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i12.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool54.not.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.i_size_write.exit.i_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.i_size_write.exit.i_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.i_size_write.exit.i_crit_edge, label %if.then.i.i.i, !prof !79

land.rhs58.i.i.i.i_size_write.exit.i_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_size_write.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %i_size_write.exit.i

i_size_write.exit.i:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.i_size_write.exit.i_crit_edge, %land.rhs22.i.i.i.i_size_write.exit.i_crit_edge, %land.rhs.i.i.i.i_size_write.exit.i_crit_edge, %land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge, %if.end.i.i_size_write.exit.i_crit_edge
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %57 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !99
  %dep_map.i.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %59 = call ptr @llvm.returnaddress(i32 0) #13
  %60 = ptrtoint ptr %59 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %60) #13
  %i_size8.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %61 = ptrtoint ptr %i_size8.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %i_size8.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %60) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !100
  %62 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i = add i32 %63, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !101
  %64 = call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i1.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #13
  %brmerge.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %brmerge.i, label %if.then7.i, label %i_size_write.exit.i.if.end9_crit_edge

i_size_write.exit.i.if.end9_crit_edge:            ; preds = %i_size_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7.i:                                       ; preds = %i_size_write.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 2, ptr noundef %flags.i.i) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then7.i, %i_size_write.exit.i.if.end9_crit_edge, %if.then8.if.end9_crit_edge, %if.end.if.end9_crit_edge
  call void @up_write(ptr noundef %i_sem) #13
  %68 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp12 = icmp eq i32 %70, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @f2fs_add_orphan_inode(ptr noundef %inode) #13
  br label %if.end15

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  call void @f2fs_release_orphan_inode(ptr noundef %3) #13
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_add_orphan_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_release_orphan_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_delete_entry(ptr noundef %dentry, ptr noundef %page, ptr noundef %dir, ptr noundef %inode) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %name_len = getelementptr inbounds %struct.f2fs_dir_entry, ptr %dentry, i32 0, i32 2
  %0 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %name_len, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %sub = add nuw nsw i32 %conv, 7
  %3 = lshr i32 %sub, 3
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i = getelementptr %struct.f2fs_sb_info, ptr %7, i32 0, i32 24, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.f2fs_sb_info, ptr %7, i32 0, i32 24, i32 2
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %arrayidx2.i, align 8
  %arrayidx4.i = getelementptr %struct.f2fs_sb_info, ptr %7, i32 0, i32 24, i32 3
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %arrayidx4.i, align 4
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i67 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i67, align 16
  %fsync_mode = getelementptr inbounds %struct.f2fs_sb_info, ptr %14, i32 0, i32 73, i32 12
  %15 = ptrtoint ptr %fsync_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fsync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  tail call void @f2fs_add_ino_entry(ptr noundef %14, i32 noundef %18, i32 noundef 3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i.i, align 4
  %21 = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @f2fs_delete_inline_entry(ptr noundef %dentry, ptr noundef %page, ptr noundef %dir, ptr noundef %inode) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 788) #13
  %22 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i70 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i70)
  %tobool.not.i.i71 = icmp eq i32 %and.i.i70, 0
  br i1 %tobool.not.i.i71, label %if.end.i.i74, label %if.then.i.i73, !prof !79

if.then.i.i73:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i72 = add i32 %24, -1
  br label %_compound_head.exit.i76

if.end.i.i74:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i76

_compound_head.exit.i76:                          ; preds = %if.end.i.i74, %if.then.i.i73
  %retval.0.i.i75 = phi i32 [ %sub.i.i72, %if.then.i.i73 ], [ %25, %if.end.i.i74 ]
  %26 = inttoptr i32 %retval.0.i.i75 to ptr
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !79

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.13) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i76
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %26, i32 noundef 4) #13
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %and.i.i4.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i77_crit_edge

folio_flags.exit.i.i.if.then.i77_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i77

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %26, i32 1, i32 3, i32 1) #13
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #13, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !90
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i77_crit_edge

folio_trylock.exit.i.if.then.i77_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i77

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_page.exit

if.then.i77:                                      ; preds = %folio_trylock.exit.i.if.then.i77_crit_edge, %folio_flags.exit.i.i.if.then.i77_crit_edge
  tail call void @__folio_lock(ptr noundef %26) #13
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i77, %folio_trylock.exit.i.lock_page.exit_crit_edge
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %page, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #13
  %call7 = tail call ptr @page_address(ptr noundef %page) #13
  %dentry8 = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call7, i32 0, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %dentry to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %dentry8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp988.not = icmp eq i16 %1, 0
  br i1 %cmp988.not, label %lock_page.exit.for.end_crit_edge, label %for.body.preheader

lock_page.exit.for.end_crit_edge:                 ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %lock_page.exit
  %umax = call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.089 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add11 = add nsw i32 %i.089, %sub.ptr.div
  %xor.i = and i32 %add11, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %add11, 5
  %add.ptr.i.i = getelementptr i32, ptr %call7, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i78 = and i32 %34, %neg.i.i
  store i32 %and.i.i78, ptr %add.ptr.i.i, align 4
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %lock_page.exit.for.end_crit_edge
  %call.i = tail call i32 @_find_next_bit_le(ptr noundef %call7, i32 noundef 214, i32 noundef 0) #13
  %call14 = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 214, i32 %call.i)
  %cmp15 = icmp eq i32 %call.i, 214
  br i1 %cmp15, label %land.lhs.true, label %for.end.if.end24_crit_edge

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true:                                    ; preds = %for.end
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index, align 4
  %add18 = add i32 %36, 1
  %call19 = tail call i32 @f2fs_truncate_hole(ptr noundef %dir, i32 noundef %36, i32 noundef %add18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then21:                                        ; preds = %land.lhs.true
  tail call void @f2fs_clear_page_cache_dirty_tag(ptr noundef %page) #13
  %call22 = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #13
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !79

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.18) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #13, !srcloc !102
  unreachable

do.body7.i:                                       ; preds = %if.then21
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %22, align 4
  %and.i31.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %40, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %41, %if.end.i.i ]
  %42 = inttoptr i32 %retval.0.i.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp.i.not.i = icmp eq i32 %44, -1
  %45 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %22, align 4
  %and.i32.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !77

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !79

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i34.i = add i32 %46, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %47, %if.end.i36.i ]
  %48 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.11) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #13, !srcloc !103
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !79

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i41.i = add i32 %46, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %49, %if.end.i43.i ]
  %50 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %50) #13
  tail call fastcc void @clear_page_private_gcing(ptr noundef %page)
  %51 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %dir, align 8
  %53 = and i16 %52, -4096
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %53, label %ClearPageUptodate.exit.inode_dec_dirty_pages.exit_crit_edge [
    i16 16384, label %ClearPageUptodate.exit.if.end.i_crit_edge
    i16 -32768, label %ClearPageUptodate.exit.if.end.i_crit_edge90
    i16 -24576, label %ClearPageUptodate.exit.if.end.i_crit_edge91
  ]

ClearPageUptodate.exit.if.end.i_crit_edge91:      ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

ClearPageUptodate.exit.if.end.i_crit_edge90:      ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

ClearPageUptodate.exit.if.end.i_crit_edge:        ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

ClearPageUptodate.exit.inode_dec_dirty_pages.exit_crit_edge: ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %inode_dec_dirty_pages.exit

if.end.i:                                         ; preds = %ClearPageUptodate.exit.if.end.i_crit_edge, %ClearPageUptodate.exit.if.end.i_crit_edge90, %ClearPageUptodate.exit.if.end.i_crit_edge91
  %dirty_pages.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty_pages.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %dirty_pages.i, i32 1, i32 3, i32 1) #13
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_pages.i, ptr %dirty_pages.i, i32 1, ptr elementtype(i32) %dirty_pages.i) #13, !srcloc !104
  %56 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 33
  %58 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %60 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %dir, align 8
  %62 = and i16 %61, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %62)
  %cmp17.i = icmp ne i16 %62, 16384
  %cond.i = zext i1 %cmp17.i to i32
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %59, i32 0, i32 69, i32 %cond.i
  %call.i.i.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #13
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i) #13, !srcloc !104
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %64 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i_flags.i, align 4
  %and19.i = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not.i80 = icmp eq i32 %and19.i, 0
  br i1 %tobool.not.i80, label %if.end.i.inode_dec_dirty_pages.exit_crit_edge, label %if.then20.i

if.end.i.inode_dec_dirty_pages.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %inode_dec_dirty_pages.exit

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i31.i = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 33
  %68 = ptrtoint ptr %s_fs_info.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i.i31.i, align 16
  %arrayidx.i32.i = getelementptr %struct.f2fs_sb_info, ptr %69, i32 0, i32 69, i32 2
  %call.i.i.i33.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i32.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i32.i, i32 1, i32 3, i32 1) #13
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i32.i, ptr %arrayidx.i32.i, i32 1, ptr elementtype(i32) %arrayidx.i32.i) #13, !srcloc !104
  br label %inode_dec_dirty_pages.exit

inode_dec_dirty_pages.exit:                       ; preds = %if.then20.i, %if.end.i.inode_dec_dirty_pages.exit_crit_edge, %ClearPageUptodate.exit.inode_dec_dirty_pages.exit_crit_edge
  tail call void @f2fs_remove_dirty_inode(ptr noundef %dir) #13
  %71 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %22, align 4
  %and.i.i81 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.not.i.i82 = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.not.i.i82, label %if.end.i.i85, label %if.then.i.i84, !prof !79

if.then.i.i84:                                    ; preds = %inode_dec_dirty_pages.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i83 = add i32 %72, -1
  br label %detach_page_private.exit

if.end.i.i85:                                     ; preds = %inode_dec_dirty_pages.exit
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %page to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i85, %if.then.i.i84
  %retval.0.i.i86 = phi i32 [ %sub.i.i83, %if.then.i.i84 ], [ %73, %if.end.i.i85 ]
  %74 = inttoptr i32 %retval.0.i.i86 to ptr
  tail call fastcc void @folio_detach_private(ptr noundef %74) #13
  %private1.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %75 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %private1.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %detach_page_private.exit, %land.lhs.true.if.end24_crit_edge, %for.end.if.end24_crit_edge
  tail call fastcc void @f2fs_put_page(ptr noundef %page, i32 noundef 1)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #13
  %76 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #13
  %77 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext false) #13
  %tobool25.not = icmp eq ptr %inode, null
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  call void @f2fs_drop_nlink(ptr noundef %dir, ptr noundef nonnull %inode)
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_add_ino_entry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_delete_inline_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_truncate_hole(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_clear_page_cache_dirty_tag(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_page_private_gcing(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %private) #13
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %private, align 4
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i.not.i = icmp eq i32 %4, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !77

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !105
  unreachable

PagePrivate.exit:                                 ; preds = %if.then
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %PagePrivate.exit.if.end3_crit_edge, label %if.then2

PagePrivate.exit.if.end3_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %PagePrivate.exit
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i9 = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i9, label %if.then.i10, label %ClearPagePrivate.exit, !prof !77

if.then.i10:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #13, !srcloc !106
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.then2
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #13
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !77

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.16) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@clear_page_private_gcing, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !85

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end3_crit_edge

folio_put_testzero.exit.i.i.if.end3_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %14) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end3_crit_edge, %PagePrivate.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_remove_dirty_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_empty_dir(ptr noundef %dir) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %dir) #13
  %sub.i = add i64 %call.i, 4095
  %shr.i = lshr i64 %sub.i, 12
  %conv.i = trunc i64 %shr.i to i32
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i.i, align 4
  %2 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp34.not = icmp eq i32 %conv.i, 0
  br i1 %cmp34.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call zeroext i1 @f2fs_empty_inline_dir(ptr noundef %dir) #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %bidx.035 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call3 = tail call ptr @f2fs_get_lock_data_page(ptr noundef %dir, i32 noundef %bidx.035, i1 noundef zeroext false) #13
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.body
  %cmp7 = icmp eq ptr %call3, inttoptr (i32 -2 to ptr)
  br i1 %cmp7, label %if.then5.for.inc_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %call10 = tail call ptr @page_address(ptr noundef %call3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bidx.035)
  %cmp11 = icmp eq i32 %bidx.035, 0
  %. = select i1 %cmp11, i32 2, i32 0
  %call.i33 = tail call i32 @_find_next_bit_le(ptr noundef %call10, i32 noundef 214, i32 noundef %.) #13
  tail call fastcc void @f2fs_put_page(ptr noundef %call3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 214, i32 %call.i33)
  %cmp16 = icmp ult i32 %call.i33, 214
  br i1 %cmp16, label %if.end9.cleanup_crit_edge, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %if.end9.for.inc_crit_edge, %if.then5.for.inc_crit_edge
  %inc = add nuw i32 %bidx.035, 1
  %exitcond.not = icmp eq i32 %inc, %conv.i
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i1 [ %call2, %if.then ], [ true, %for.cond.preheader.cleanup_crit_edge ], [ false, %if.then5.cleanup_crit_edge ], [ false, %if.end9.cleanup_crit_edge ], [ true, %for.inc.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_empty_inline_dir(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_lock_data_page(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_fill_dentries(ptr noundef %ctx, ptr nocapture noundef readonly %d, i32 noundef %start_pos, ptr noundef %fstr) local_unnamed_addr #1 align 64 {
entry:
  %de_name = alloca %struct.fscrypt_str, align 8
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %de_name) #13
  %0 = ptrtoint ptr %de_name to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %de_name, align 8
  %1 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #13
  %7 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %readdir_ra1 = getelementptr inbounds %struct.f2fs_sb_info, ptr %6, i32 0, i32 58
  %8 = ptrtoint ptr %readdir_ra1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %readdir_ra1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %conv = trunc i64 %11 to i32
  %max = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 4
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max, align 4
  %rem = urem i32 %conv, %13
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @blk_start_plug(ptr noundef nonnull %plug) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %15)
  %cmp3142144 = icmp ult i32 %rem, %15
  br i1 %cmp3142144, label %while.body.lr.ph.lr.ph, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.body.lr.ph.lr.ph:                           ; preds = %if.end
  %bitmap = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 1
  %dentry = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 2
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %6, i32 0, i32 5
  %filename = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 3
  %len = getelementptr inbounds %struct.fscrypt_str, ptr %de_name, i32 0, i32 1
  %len54 = getelementptr inbounds %struct.fscrypt_str, ptr %fstr, i32 0, i32 1
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end73.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %16 = phi i32 [ %15, %while.body.lr.ph.lr.ph ], [ %78, %if.end73.while.body.lr.ph_crit_edge ]
  %found_valid_dirent.0.off0.ph146 = phi i1 [ false, %while.body.lr.ph.lr.ph ], [ true, %if.end73.while.body.lr.ph_crit_edge ]
  %bit_pos.0.ph145 = phi i32 [ %rem, %while.body.lr.ph.lr.ph ], [ %add37, %if.end73.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %while.body.lr.ph
  %17 = phi i32 [ %16, %while.body.lr.ph ], [ %33, %if.end25.while.body_crit_edge ]
  %bit_pos.0143 = phi i32 [ %bit_pos.0.ph145, %while.body.lr.ph ], [ %inc, %if.end25.while.body_crit_edge ]
  %18 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bitmap, align 4
  %call.i = call i32 @_find_next_bit_le(ptr noundef %19, i32 noundef %17, i32 noundef %bit_pos.0143) #13
  %20 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %21)
  %cmp8.not = icmp ult i32 %call.i, %21
  br i1 %cmp8.not, label %if.end11, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end11:                                         ; preds = %while.body
  %22 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry, align 4
  %name_len = getelementptr %struct.f2fs_dir_entry, ptr %23, i32 %call.i, i32 2
  %24 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %name_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp13 = icmp eq i16 %25, 0
  br i1 %cmp13, label %if.then15, label %if.end28

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  %or.cond = select i1 %found_valid_dirent.0.off0.ph146, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.then19, label %if.then15.if.end25_crit_edge

if.then15.if.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then19:                                        ; preds = %if.then15
  %call20 = call i32 @___ratelimit(ptr noundef nonnull @f2fs_fill_dentries._rs, ptr noundef nonnull @__func__.f2fs_fill_dentries) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %do.end

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %6, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 39
  %ino = getelementptr %struct.f2fs_dir_entry, ptr %23, i32 %call.i, i32 1
  %28 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %ino, align 1
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %s_id, i32 noundef %30) #16
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.then19.if.end24_crit_edge
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #13
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then15.if.end25_crit_edge
  %inc = add nuw i32 %call.i, 1
  %add = add i32 %inc, %start_pos
  %conv26 = zext i32 %add to i64
  %31 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv26, ptr %pos, align 8
  %32 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max, align 4
  %cmp3 = icmp ult i32 %inc, %33
  br i1 %cmp3, label %if.end25.while.body_crit_edge, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end28:                                         ; preds = %if.end11
  %arrayidx.le = getelementptr %struct.f2fs_dir_entry, ptr %23, i32 %call.i
  %file_type.i = getelementptr %struct.f2fs_dir_entry, ptr %23, i32 %call.i, i32 3
  %34 = ptrtoint ptr %file_type.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %file_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %35)
  %cmp.i = icmp ult i8 %35, 8
  br i1 %cmp.i, label %if.then.i, label %if.end28.f2fs_get_de_type.exit_crit_edge

if.end28.f2fs_get_de_type.exit_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %f2fs_get_de_type.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %35 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @f2fs_filetype_table, i32 0, i32 %conv.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  br label %f2fs_get_de_type.exit

f2fs_get_de_type.exit:                            ; preds = %if.then.i, %if.end28.f2fs_get_de_type.exit_crit_edge
  %retval.0.i = phi i8 [ %37, %if.then.i ], [ 0, %if.end28.f2fs_get_de_type.exit_crit_edge ]
  %38 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %filename, align 4
  %arrayidx30 = getelementptr [8 x i8], ptr %39, i32 %call.i
  %40 = ptrtoint ptr %de_name to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx30, ptr %de_name, align 8
  %41 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %name_len, align 1
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %conv33 = zext i16 %43 to i32
  %44 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv33, ptr %len, align 4
  %45 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %name_len, align 1
  %47 = call i16 @llvm.bswap.i16(i16 %46)
  %conv35 = zext i16 %47 to i32
  %sub = add nuw nsw i32 %conv35, 7
  %48 = lshr i32 %sub, 3
  %add37 = add i32 %48, %call.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %21)
  %cmp39 = icmp ugt i32 %add37, %21
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %47)
  %cmp43 = icmp ugt i16 %47, 255
  %spec.select = select i1 %cmp39, i1 true, i1 %cmp43, !prof !77
  br i1 %spec.select, label %if.then47, label %if.end50, !prof !77

if.then47:                                        ; preds = %f2fs_get_de_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.f2fs_fill_dentries, i32 noundef %conv35) #13
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #13
  br label %out

if.end50:                                         ; preds = %f2fs_get_de_type.exit
  %49 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d, align 4
  %i_flags = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_flags, align 4
  %and = and i32 %52, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.end50.if.end61_crit_edge, label %if.then53

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then53:                                        ; preds = %if.end50
  %53 = ptrtoint ptr %len54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len54, align 4
  %55 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %arrayidx.le, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %call56 = call i32 @fscrypt_fname_disk_to_usr(ptr noundef %50, i32 noundef %57, i32 noundef 0, ptr noundef nonnull %de_name, ptr noundef %fstr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup.thread, label %if.then53.out_crit_edge

if.then53.out_crit_edge:                          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

cleanup.thread:                                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %fstr to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %fstr, align 4
  %60 = ptrtoint ptr %de_name to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %de_name, align 8
  %61 = ptrtoint ptr %len54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %54, ptr %len54, align 4
  br label %if.end61

if.end61:                                         ; preds = %cleanup.thread, %if.end50.if.end61_crit_edge
  %62 = ptrtoint ptr %de_name to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %de_name, align 8
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %ino64 = getelementptr %struct.f2fs_dir_entry, ptr %23, i32 %call.i, i32 1
  %66 = ptrtoint ptr %ino64 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %ino64, align 1
  %68 = call i32 @llvm.bswap.i32(i32 %67)
  %conv65 = zext i32 %68 to i64
  %conv66 = zext i8 %retval.0.i to i32
  %69 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctx, align 8
  %71 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %pos, align 8
  %call.i134 = call i32 %70(ptr noundef %ctx, ptr noundef %63, i32 noundef %65, i64 noundef %72, i64 noundef %conv65, i32 noundef %conv66) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %cmp.i135 = icmp eq i32 %call.i134, 0
  br i1 %cmp.i135, label %if.end69, label %if.end61.out_crit_edge

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end69:                                         ; preds = %if.end61
  br i1 %cmp, label %if.then71, label %if.end69.if.end73_crit_edge

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %ino64 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %ino64, align 1
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  call void @f2fs_ra_node_page(ptr noundef %6, i32 noundef %75) #13
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end69.if.end73_crit_edge
  %add74 = add i32 %add37, %start_pos
  %conv75 = zext i32 %add74 to i64
  %76 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv75, ptr %pos, align 8
  %77 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max, align 4
  %cmp3142 = icmp ult i32 %add37, %78
  br i1 %cmp3142, label %if.end73.while.body.lr.ph_crit_edge, label %if.end73.out_crit_edge

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end73.while.body.lr.ph_crit_edge:              ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

out:                                              ; preds = %if.end73.out_crit_edge, %if.end61.out_crit_edge, %if.then53.out_crit_edge, %if.then47, %if.end25.out_crit_edge, %while.body.out_crit_edge, %if.end.out_crit_edge
  %err.2 = phi i32 [ -117, %if.then47 ], [ 0, %if.end.out_crit_edge ], [ 0, %if.end25.out_crit_edge ], [ 0, %while.body.out_crit_edge ], [ 0, %if.end73.out_crit_edge ], [ 1, %if.end61.out_crit_edge ], [ %call56, %if.then53.out_crit_edge ]
  br i1 %cmp, label %if.then78, label %out.cleanup80_crit_edge

out.cleanup80_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.then78:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void @blk_finish_plug(ptr noundef nonnull %plug) #13
  br label %cleanup80

cleanup80:                                        ; preds = %if.then78, %out.cleanup80_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %de_name) #13
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_fname_disk_to_usr(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_ra_node_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f2fs_readdir(ptr noundef %file, ptr noundef %ctx) #1 align 64 {
entry:
  %ractl.i = alloca %struct.readahead_control, align 4
  %d = alloca %struct.f2fs_dentry_ptr, align 4
  %fstr = alloca %struct.fscrypt_str, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %1) #13
  %sub.i = add i64 %call.i, 4095
  %shr.i = lshr i64 %sub.i, 12
  %conv.i = trunc i64 %shr.i to i32
  %f_ra = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 13
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %conv = trunc i64 %3 to i32
  %div = udiv i32 %conv, 214
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %d) #13
  %4 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 1
  %5 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 2
  %6 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 3
  %7 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 4
  %8 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 5
  %9 = call ptr @memset(ptr %d, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fstr) #13
  %10 = ptrtoint ptr %fstr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %fstr, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags, align 4
  %and = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %fscrypt_prepare_readdir.exit

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

fscrypt_prepare_readdir.exit:                     ; preds = %entry
  %call.i95 = tail call i32 @__fscrypt_prepare_readdir(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool4.not = icmp eq i32 %call.i95, 0
  br i1 %tobool4.not, label %if.end, label %fscrypt_prepare_readdir.exit.out_crit_edge

fscrypt_prepare_readdir.exit.out_crit_edge:       ; preds = %fscrypt_prepare_readdir.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %fscrypt_prepare_readdir.exit
  %call6 = call i32 @fscrypt_fname_alloc_buffer(i32 noundef 255, ptr noundef nonnull %fstr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %err.0 = phi i32 [ %call6, %if.end.if.end10_crit_edge ], [ 0, %entry.if.end10_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i.i, align 4
  %15 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %for.cond.preheader, label %if.then13

for.cond.preheader:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv.i)
  %cmp16132 = icmp ult i32 %div, %conv.i
  br i1 %cmp16132, label %for.body.lr.ph, label %for.cond.preheader.out_free_crit_edge

for.cond.preheader.out_free_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %size.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 13, i32 1
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %16 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 2
  %18 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 3
  %19 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 4
  %20 = getelementptr inbounds %struct.readahead_control, ptr %ractl.i, i32 0, i32 5
  br label %for.body

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = call i32 @f2fs_read_inline_dir(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull %fstr) #13
  br label %out_free

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0133 = phi i32 [ %div, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %21 = call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i96 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i96 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stack.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and1.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i97 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i97, label %for.body.if.end22_crit_edge, label %fatal_signal_pending.exit

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

fatal_signal_pending.exit:                        ; preds = %for.body
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 116, i32 1
  %29 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %signal.i.i, align 4
  %31 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool20.not = icmp eq i32 %31, 0
  br i1 %tobool20.not, label %fatal_signal_pending.exit.if.end22_crit_edge, label %fatal_signal_pending.exit.out_free_crit_edge

fatal_signal_pending.exit.out_free_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

fatal_signal_pending.exit.if.end22_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end22:                                         ; preds = %fatal_signal_pending.exit.if.end22_crit_edge, %for.body.if.end22_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 1112, i32 noundef 0) #13
  %call.i98 = call i32 @__cond_resched() #13
  %sub = sub i32 %conv.i, %n.0133
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp24 = icmp ugt i32 %sub, 1
  br i1 %cmp24, label %land.lhs.true, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end22
  %32 = ptrtoint ptr %f_ra to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_ra, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %n.0133)
  %cmp.not.i = icmp ugt i32 %33, %n.0133
  br i1 %cmp.not.i, label %land.lhs.true.if.then28_crit_edge, label %ra_has_index.exit

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

ra_has_index.exit:                                ; preds = %land.lhs.true
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i, align 4
  %add.i = add i32 %35, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %n.0133)
  %cmp2.i.not = icmp ugt i32 %add.i, %n.0133
  br i1 %cmp2.i.not, label %ra_has_index.exit.if.end33_crit_edge, label %ra_has_index.exit.if.then28_crit_edge

ra_has_index.exit.if.then28_crit_edge:            ; preds = %ra_has_index.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

ra_has_index.exit.if.end33_crit_edge:             ; preds = %ra_has_index.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then28:                                        ; preds = %ra_has_index.exit.if.then28_crit_edge, %land.lhs.true.if.then28_crit_edge
  %36 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_mapping, align 8
  %38 = call i32 @llvm.umin.i32(i32 %sub, i32 4)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ractl.i) #13
  %39 = ptrtoint ptr %ractl.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %file, ptr %ractl.i, align 4
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %16, align 4
  %41 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %f_ra, ptr %17, align 4
  %42 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %n.0133, ptr %18, align 4
  %43 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %19, align 4
  %44 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %20, align 4
  call void @page_cache_sync_ra(ptr noundef nonnull %ractl.i, i32 noundef %38) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ractl.i) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %ra_has_index.exit.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %call34 = call ptr @f2fs_find_data_page(ptr noundef %1, i32 noundef %n.0133) #13
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.end33
  %cmp38 = icmp eq ptr %call34, inttoptr (i32 -2 to ptr)
  br i1 %cmp38, label %if.then36.for.inc_crit_edge, label %out_free.loopexit.split.loop.exit

if.then36.for.inc_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end41:                                         ; preds = %if.end33
  %call42 = call ptr @page_address(ptr noundef %call34) #13
  %45 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %1, ptr %d, align 4
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 214, ptr %7, align 4
  %47 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 27, ptr %8, align 4
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call42, ptr %4, align 4
  %dentry.i = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call42, i32 0, i32 2
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dentry.i, ptr %5, align 4
  %filename.i = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call42, i32 0, i32 3
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %filename.i, ptr %6, align 4
  %mul = mul i32 %n.0133, 214
  %call43 = call i32 @f2fs_fill_dentries(ptr noundef %ctx, ptr noundef nonnull %d, i32 noundef %mul, ptr noundef nonnull %fstr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %tobool.not.i101 = icmp eq ptr %call34, null
  br i1 %tobool44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end41
  br i1 %tobool.not.i101, label %if.then45.out_free_crit_edge, label %if.end.i

if.then45.out_free_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i:                                         ; preds = %if.then45
  %51 = getelementptr inbounds %struct.page, ptr %call34, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i17.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !79

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i19.i = add i32 %53, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %call34 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %54, %if.end.i.i21.i ]
  %55 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  %56 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !77

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %55, ptr noundef nonnull @.str.16) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %58 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #13, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %58, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_readdir, %if.then.i.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !85

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %55, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.out_free_crit_edge

folio_put_testzero.exit.i.i.i.out_free_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %55) #13
  br label %out_free

if.end46:                                         ; preds = %if.end41
  br i1 %tobool.not.i101, label %if.end46.for.inc_crit_edge, label %if.end.i102

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i102:                                      ; preds = %if.end46
  %59 = getelementptr inbounds %struct.page, ptr %call34, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and.i.i17.i103 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i103)
  %tobool.not.i.i18.i104 = icmp eq i32 %and.i.i17.i103, 0
  br i1 %tobool.not.i.i18.i104, label %if.end.i.i21.i107, label %if.then.i.i20.i106, !prof !79

if.then.i.i20.i106:                               ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i19.i105 = add i32 %61, -1
  br label %_compound_head.exit.i23.i112

if.end.i.i21.i107:                                ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %call34 to i32
  br label %_compound_head.exit.i23.i112

_compound_head.exit.i23.i112:                     ; preds = %if.end.i.i21.i107, %if.then.i.i20.i106
  %retval.0.i.i22.i108 = phi i32 [ %sub.i.i19.i105, %if.then.i.i20.i106 ], [ %62, %if.end.i.i21.i107 ]
  %63 = inttoptr i32 %retval.0.i.i22.i108 to ptr
  %_refcount.i.i.i.i.i.i109 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i110 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i109, i32 noundef 4) #13
  %64 = ptrtoint ptr %_refcount.i.i.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %_refcount.i.i.i.i.i.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i.i.i.i111 = icmp eq i32 %65, 0
  br i1 %cmp.i.i.i.i.i111, label %if.then.i.i.i.i.i113, label %do.end5.i.i.i.i.i117, !prof !77

if.then.i.i.i.i.i113:                             ; preds = %_compound_head.exit.i23.i112
  call void @__sanitizer_cov_trace_pc() #15
  %66 = inttoptr i32 %retval.0.i.i22.i108 to ptr
  call void @dump_page(ptr noundef %66, ptr noundef nonnull @.str.16) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

do.end5.i.i.i.i.i117:                             ; preds = %_compound_head.exit.i23.i112
  %call.i.i.i10.i.i.i.i.i114 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i109, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i109, i32 1, i32 3, i32 1) #13
  %67 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i109, ptr %_refcount.i.i.i.i.i.i109, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i109) #13, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i.i.i115 = extractvalue { i32, i32 } %67, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i115)
  %cmp.i.i.i.i.i.i.i.i116 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i115, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_readdir, %if.then.i.i.i.i.i.i119)) #13
          to label %folio_put_testzero.exit.i.i.i120 [label %if.then.i.i.i.i.i.i119], !srcloc !85

if.then.i.i.i.i.i.i119:                           ; preds = %do.end5.i.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i.i118 = zext i1 %cmp.i.i.i.i.i.i.i.i116 to i32
  call void @__page_ref_mod_and_test(ptr noundef %63, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i118) #13
  br label %folio_put_testzero.exit.i.i.i120

folio_put_testzero.exit.i.i.i120:                 ; preds = %if.then.i.i.i.i.i.i119, %do.end5.i.i.i.i.i117
  br i1 %cmp.i.i.i.i.i.i.i.i116, label %if.then.i4.i.i121, label %folio_put_testzero.exit.i.i.i120.for.inc_crit_edge

folio_put_testzero.exit.i.i.i120.for.inc_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i120
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i4.i.i121:                                ; preds = %folio_put_testzero.exit.i.i.i120
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %63) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i.i121, %folio_put_testzero.exit.i.i.i120.for.inc_crit_edge, %if.end46.for.inc_crit_edge, %if.then36.for.inc_crit_edge
  %inc = add nuw i32 %n.0133, 1
  %mul47 = mul i32 %inc, 214
  %conv48 = zext i32 %mul47 to i64
  %68 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv48, ptr %pos, align 8
  %exitcond.not = icmp eq i32 %inc, %conv.i
  br i1 %exitcond.not, label %for.inc.out_free_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.out_free_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

out_free.loopexit.split.loop.exit:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %call34 to i32
  br label %out_free

out_free:                                         ; preds = %out_free.loopexit.split.loop.exit, %for.inc.out_free_crit_edge, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.out_free_crit_edge, %if.then45.out_free_crit_edge, %fatal_signal_pending.exit.out_free_crit_edge, %if.then13, %for.cond.preheader.out_free_crit_edge
  %err.3 = phi i32 [ %call14, %if.then13 ], [ %call43, %if.then45.out_free_crit_edge ], [ %call43, %folio_put_testzero.exit.i.i.i.out_free_crit_edge ], [ %call43, %if.then.i4.i.i ], [ %69, %out_free.loopexit.split.loop.exit ], [ %err.0, %for.cond.preheader.out_free_crit_edge ], [ 0, %for.inc.out_free_crit_edge ], [ -512, %fatal_signal_pending.exit.out_free_crit_edge ]
  call void @fscrypt_fname_free_buffer(ptr noundef nonnull %fstr) #13
  br label %out

out:                                              ; preds = %out_free, %if.end.out_crit_edge, %fscrypt_prepare_readdir.exit.out_crit_edge
  %err.4 = phi i32 [ %call.i95, %fscrypt_prepare_readdir.exit.out_crit_edge ], [ %call6, %if.end.out_crit_edge ], [ %err.3, %out_free ]
  %70 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %pos, align 8
  call fastcc void @trace_f2fs_readdir(ptr noundef %1, i64 noundef %3, i64 noundef %71, i32 noundef %err.4)
  %72 = call i32 @llvm.smin.i32(i32 %err.4, i32 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fstr) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %d) #13
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_sync_file(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_hash_filename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_prepare_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fscrypt_match_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_strncasecmp_folded(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !107
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %1 = tail call ptr @llvm.returnaddress(i32 0) #13
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #13
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !108
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !77

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !109
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !110
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !111
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !112
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !113
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_find_data_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_make_empty_inline_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_detach_private(ptr noundef %folio) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %private.i = getelementptr inbounds %struct.anon.81, ptr %folio, i32 0, i32 4
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !79

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.13) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

folio_test_private.exit:                          ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.cleanup_crit_edge, label %if.end

folio_test_private.exit.cleanup_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i.i1, 0
  br i1 %tobool.not.i.i2, label %folio_clear_private.exit, label %if.then.i.i3, !prof !79

if.then.i.i3:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.13) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #13
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %9 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !77

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.16) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !85

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #13
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %folio) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_fname_alloc_buffer(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_read_inline_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_fname_free_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_readdir(ptr noundef %dir, i64 noundef %start_pos, i64 noundef %end_pos, i32 noundef %err) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_readdir, i32 0, i32 1), ptr blockaddress(@trace_f2fs_readdir, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !85

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !79

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !114
  %call42 = tail call i32 @__traceiter_f2fs_readdir(ptr noundef null, ptr noundef %dir, i64 noundef %start_pos, i64 noundef %end_pos, i32 noundef %err) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !115
  %13 = tail call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !79

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_readdir, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_readdir, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_readdir.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_f2fs_readdir.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 895, ptr noundef nonnull @.str.21) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !117
  %31 = tail call i32 @llvm.read_register.i32(metadata !65) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_prepare_readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_sync_ra(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_readdir(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !60, !61, !62, !64}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/dir.c", i32 409, i32 3}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/dir.c", i32 530, i32 27}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/f2fs/dir.c", i32 531, i32 30}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/f2fs/dir.c", i32 731, i32 3}
!8 = !{ptr @f2fs_add_regular_entry._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.f2fs_add_regular_entry, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @f2fs_add_regular_entry._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @f2fs_add_regular_entry._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @f2fs_fill_dentries._rs, !16, !"_rs", i1 false, i1 false}
!16 = !{!"../fs/f2fs/dir.c", i32 1019, i32 5}
!17 = !{ptr @__func__.f2fs_fill_dentries, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @f2fs_fill_dentries._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @f2fs_fill_dentries._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/f2fs/dir.c", i32 1039, i32 4}
!24 = !{ptr @f2fs_dir_operations, !25, !"f2fs_dir_operations", i1 false, i1 false}
!25 = !{!"../fs/f2fs/dir.c", i32 1150, i32 30}
!26 = !{ptr @f2fs_filetype_table, !27, !"f2fs_filetype_table", i1 false, i1 false}
!27 = !{!"../fs/f2fs/dir.c", i32 45, i32 22}
!28 = !{ptr @f2fs_kmem_cache_alloc._rs, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../fs/f2fs/f2fs.h", i32 2650, i32 3}
!30 = !{ptr @__func__.f2fs_kmem_cache_alloc, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @f2fs_kmem_cache_alloc._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @f2fs_kmem_cache_alloc._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../fs/f2fs/dir.c", i32 231, i32 7}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!44 = !{ptr @f2fs_type_by_mode, !45, !"f2fs_type_by_mode", i1 false, i1 false}
!45 = !{!"../fs/f2fs/dir.c", i32 56, i32 22}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/mm.h", i32 717, i32 2}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/trace/events/f2fs.h", i32 868, i32 1}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!61 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2148709018, i64 2148709044, i64 2148709073, i64 2148709107, i64 2148709138, i64 2148709161}
!76 = !{i8 0, i8 2}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2154726191}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{!"auto-init"}
!81 = !{i64 2153196743, i64 2153197226, i64 2153196780, i64 2153196836, i64 2153196870, i64 2153196894, i64 2153196935, i64 2153196956, i64 2153196984, i64 2153197018}
!82 = !{i64 2148797494}
!83 = !{i64 2148712203, i64 2148712235, i64 2148712264, i64 2148712298, i64 2148712329, i64 2148712352}
!84 = !{i64 2148797723}
!85 = !{i64 2148533616, i64 2148533621, i64 2148533634, i64 2148533678, i64 2148533712, i64 2148533733}
!86 = !{i64 2150608152, i64 2150608643, i64 2150608189, i64 2150608245, i64 2150608279, i64 2150608303, i64 2150608344, i64 2150608365, i64 2150608393, i64 2150608427}
!87 = !{i64 2154819384, i64 2154819864, i64 2154819421, i64 2154819477, i64 2154819511, i64 2154819535, i64 2154819576, i64 2154819597, i64 2154819625, i64 2154819659}
!88 = !{i64 2150600719, i64 2150601210, i64 2150600756, i64 2150600812, i64 2150600846, i64 2150600870, i64 2150600911, i64 2150600932, i64 2150600960, i64 2150600994}
!89 = !{i64 2148717876, i64 2148717908, i64 2148717937, i64 2148717971, i64 2148718002, i64 2148718025}
!90 = !{i64 2148806981}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.peeled.count", i32 1}
!93 = !{i64 2153220716, i64 2153221200, i64 2153220753, i64 2153220809, i64 2153220843, i64 2153220867, i64 2153220908, i64 2153220929, i64 2153220957, i64 2153220991}
!94 = !{i64 2152524228}
!95 = !{i64 2150013041}
!96 = !{i64 2150017975}
!97 = !{i64 2150039693}
!98 = !{i64 2150044587}
!99 = !{i64 2150121114}
!100 = !{i64 2150121439}
!101 = !{i64 2152536090}
!102 = !{i64 2151359595, i64 2151359768, i64 2151359783, i64 2151359835, i64 2151359894, i64 2151359918, i64 2151359959, i64 2151359980, i64 2151360008, i64 2151360040}
!103 = !{i64 2151360470, i64 2151360643, i64 2151360658, i64 2151360710, i64 2151360769, i64 2151360793, i64 2151360834, i64 2151360855, i64 2151360883, i64 2151360915}
!104 = !{i64 2148711483, i64 2148711509, i64 2148711538, i64 2148711572, i64 2148711603, i64 2148711626}
!105 = !{i64 2151059425, i64 2151059916, i64 2151059462, i64 2151059518, i64 2151059552, i64 2151059576, i64 2151059617, i64 2151059638, i64 2151059666, i64 2151059700}
!106 = !{i64 2151069255, i64 2151069428, i64 2151069443, i64 2151069495, i64 2151069554, i64 2151069578, i64 2151069619, i64 2151069640, i64 2151069668, i64 2151069700}
!107 = !{i64 1113698, i64 1113759}
!108 = !{i64 1116430}
!109 = !{i64 1116715}
!110 = !{i64 2152522297}
!111 = !{i64 2152522139}
!112 = !{i64 2152522467}
!113 = !{i64 2150120789}
!114 = !{i64 2155588771}
!115 = !{i64 2155589014}
!116 = !{i64 2149512979}
!117 = !{i64 2149514015}
