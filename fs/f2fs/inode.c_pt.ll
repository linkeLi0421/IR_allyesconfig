; ModuleID = '/llk/IR_all_yes/fs/f2fs/inode.c_pt.bc'
source_filename = "../fs/f2fs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kprojid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.f2fs_super_block = type <{ i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [512 x i16], i32, [64 x [8 x i8]], i32, [256 x i8], [256 x i8], i32, i8, [16 x i8], [8 x %struct.f2fs_device], [3 x i32], i8, i16, i16, [306 x i8], i32 }>
%struct.f2fs_device = type { [64 x i8], i32 }
%struct.f2fs_node = type { %union.anon.91, %struct.node_footer }
%union.anon.91 = type { %struct.f2fs_inode }
%struct.f2fs_inode = type { i16, i8, i8, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %union.anon.88, i32, i32, i32, i32, [255 x i8], i8, %struct.f2fs_extent, %union.anon.89, [5 x i32] }
%union.anon.88 = type { i32 }
%struct.f2fs_extent = type { i32, i32, i32 }
%union.anon.89 = type { [923 x i32] }
%struct.node_footer = type <{ i32, i32, i32, i64, i32 }>
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.anon.92 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
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
%struct.f2fs_nm_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.xarray, %struct.xarray, %struct.rw_semaphore, %struct.list_head, %struct.spinlock, [3 x i32], i32, %struct.xarray, %struct.list_head, [2 x i32], %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }
%struct.anon.90 = type <{ i16, i16, i32, i32, i64, i32, i64, i8, i8, i16, [0 x i32] }>
%struct.extent_tree = type { i32, %struct.rb_root_cached, ptr, %struct.extent_info, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, i8 }
%struct.extent_info = type { i32, i32, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.f2fs_checkpoint = type { i64, i64, i64, i32, i32, i32, [8 x i32], [8 x i16], [8 x i32], [8 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [16 x i8], [0 x i8] }
%struct.node_info = type { i32, i32, i32, i8, i8 }
%struct.f2fs_sm_info = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.free_segmap_info = type { i32, i32, i32, %struct.spinlock, ptr, ptr }
%struct.curseg_info = type { %struct.mutex, ptr, %struct.rw_semaphore, ptr, i8, i16, i32, i16, i32, i32, i32, i8 }
%struct.sit_info = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.rw_semaphore, ptr, ptr, i64, i64, i64, i64, i64, i64, [5 x i32] }
%struct.seg_entry = type { i32, ptr, ptr, ptr, ptr, i64 }

@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014checksum invalid, nid = %lu, ino_of_node = %x, %x vs. %x\00", [37 x i8] zeroinitializer }, align 32
@f2fs_node_aops = external dso_local constant %struct.address_space_operations, align 4
@f2fs_meta_aops = external dso_local constant %struct.address_space_operations, align 4
@f2fs_compress_aops = external dso_local constant %struct.address_space_operations, align 4
@f2fs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@f2fs_file_operations = external dso_local constant %struct.file_operations, align 4
@f2fs_dblock_aops = external dso_local constant %struct.address_space_operations, align 4
@f2fs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@f2fs_dir_operations = external dso_local constant %struct.file_operations, align 4
@f2fs_encrypted_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@f2fs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@f2fs_special_inode_operations = external dso_local constant %struct.inode_operations, align 128
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/f2fs/inode.c\00", [16 x i8] zeroinitializer }, align 32
@f2fs_evict_inode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_evict_inode = private unnamed_addr constant [17 x i8] c"f2fs_evict_inode\00", align 1
@f2fs_evict_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.f2fs_evict_inode, ptr @.str.1, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@f2fs_evict_inode._entry_ptr = internal global ptr @f2fs_evict_inode._entry, section ".printk_index", align 4
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014May loss orphan inode, run fsck to fix.\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Too many orphan inodes, run fsck to fix.\00", [53 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_iget = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/f2fs.h\00", [36 x i8] zeroinitializer }, align 32
@trace_f2fs_iget.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014%s: corrupted inode i_blocks i_ino=%lx iblocks=%llu, run fsck to fix.\00", [56 x i8] zeroinitializer }, align 32
@__func__.sanity_check_inode = private unnamed_addr constant [19 x i8] c"sanity_check_inode\00", align 1
@.str.11 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014%s: corrupted inode footer i_ino=%lx, ino,nid: [%u, %u] run fsck to fix.\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s: corrupted inode ino=%lx, run fsck to fix.\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014%s: inode (ino=%lx) is with extra_attr, but extra_attr feature is off\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014%s: inode (ino=%lx) has corrupted i_extra_isize: %d, max: %zu\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014%s: inode (ino=%lx) has corrupted i_inline_xattr_size: %d, max: %zu\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014%s: inode (ino=%lx) extent info [%u, %u, %u] is incorrect, run fsck to fix\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014%s: inode (ino=%lx, mode=%u) should not have inline_data, run fsck to fix\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014%s: inode (ino=%lx, mode=%u) should not have inline_dentry, run fsck to fix\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014%s: inode (ino=%lx) has casefold flag, but casefold feature is off\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014%s: inode (ino=%lx) has unsupported compress algorithm: %u, run fsck to fix\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\014%s: inode (ino=%lx) has inconsistent i_compr_blocks:%llu, i_blocks:%llu, run fsck to fix\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014%s: inode (ino=%lx) has unsupported log cluster size: %u, run fsck to fix\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_iget_exit = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_iget_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_evict_inode = external dso_local global %struct.tracepoint, align 4
@trace_f2fs_evict_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 16, i64 4096, i64 8192, i64 24576, i64 32768, i64 49152]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.34 = internal global [9 x i64] [i64 7, i64 4, i64 0, i64 2, i64 4, i64 9, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 4294967284, i64 4294967294]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 187, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 699, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 789, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 888, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 896, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"../include/trace/events/f2fs.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 294, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 108, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 213, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 220, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 229, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 237, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 245, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 257, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 272, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 282, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 289, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 296, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 307, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 316, i32 4 }
@___asan_gen_.112 = private constant [19 x i8] c"../fs/f2fs/inode.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 326, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 452, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 717, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 414, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 49, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 34, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 271, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @f2fs_evict_inode._entry, ptr @f2fs_evict_inode._entry_ptr, ptr @.str, ptr @.str.1, ptr @f2fs_evict_inode._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_evict_inode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_evict_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext %sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @f2fs_inode_dirtied(ptr noundef %inode, i1 noundef zeroext %sync) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #9
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_inode_dirtied(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_set_inode_flags(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 1
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 8
  %and = lshr i32 %1, 3
  %2 = and i32 %and, 5
  %and6 = lshr i32 %1, 1
  %3 = and i32 %and6, 8
  %4 = or i32 %2, %3
  %and11 = lshr i32 %1, 6
  %5 = and i32 %and11, 2
  %6 = or i32 %4, %5
  %and16 = lshr i32 %1, 10
  %7 = and i32 %and16, 64
  %8 = or i32 %6, %7
  %i_advise.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 2
  %9 = ptrtoint ptr %i_advise.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_advise.i, align 4
  %conv.i = zext i8 %10 to i32
  %and.i = shl nuw nsw i32 %conv.i, 12
  %11 = and i32 %and.i, 16384
  %and.i54 = shl nuw nsw i32 %conv.i, 10
  %12 = and i32 %and.i54, 65536
  %and31 = lshr i32 %1, 15
  %13 = and i32 %and31, 32768
  %14 = or i32 %8, %13
  %15 = or i32 %14, %11
  %16 = or i32 %15, %12
  tail call void @inode_set_flags(ptr noundef %inode, i32 noundef %16, i32 noundef 114767) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_inode_chksum_verify(ptr noundef %sbi, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %0 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %s_flag.i, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !85

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @page_address(ptr noundef %page) #9
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %3 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %4, i32 0, i32 34
  %5 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %feature.i.i, align 1
  %7 = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i.i.i = tail call ptr @page_address(ptr noundef %page) #9
  %footer.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %footer.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %footer.i.i, align 1
  %ino.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %ino.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i.i = icmp eq i32 %9, %11
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %i_inline.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i_inline.i, align 1
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i = icmp eq i8 %14, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %f2fs_enable_inode_chksum.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

f2fs_enable_inode_chksum.exit:                    ; preds = %lor.lhs.false.i
  %15 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %15, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %18)
  %cmp.i = icmp ugt i16 %18, 11
  br i1 %cmp.i, label %if.end4, label %f2fs_enable_inode_chksum.exit.cleanup_crit_edge

f2fs_enable_inode_chksum.exit.cleanup_crit_edge:  ; preds = %f2fs_enable_inode_chksum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %f2fs_enable_inode_chksum.exit
  %call.i = tail call ptr @page_address(ptr noundef %page) #9
  %i_inode_checksum = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23, i32 0, i32 2
  %19 = ptrtoint ptr %i_inode_checksum to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %i_inode_checksum, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %call6 = tail call fastcc i32 @f2fs_inode_chksum(ptr noundef %sbi, ptr noundef %page)
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %call6)
  %cmp.not = icmp eq i32 %21, %call6
  br i1 %cmp.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 4
  %call.i.i24 = tail call ptr @page_address(ptr noundef %page) #9
  %ino.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i24, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %ino.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %ino.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %sbi, ptr noundef nonnull @.str, i32 noundef %23, i32 noundef %26, i32 noundef %21, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %f2fs_enable_inode_chksum.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %f2fs_enable_inode_chksum.exit.cleanup_crit_edge ], [ false, %if.then7 ], [ true, %if.end4.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %lor.lhs.false.i.cleanup_crit_edge ], [ true, %if.end.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f2fs_inode_chksum(ptr nocapture noundef readonly %sbi, ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  %desc.i.i49 = alloca %struct.anon.92, align 8
  %desc.i.i40 = alloca %struct.anon.92, align 8
  %desc.i.i31 = alloca %struct.anon.92, align 8
  %desc.i.i22 = alloca %struct.anon.92, align 8
  %desc.i.i = alloca %struct.anon.92, align 8
  %ino = alloca i32, align 4
  %gen = alloca i32, align 4
  %dummy_cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @page_address(ptr noundef %page) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #9
  %ino1 = getelementptr inbounds %struct.f2fs_node, ptr %call.i, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ino1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %ino1, align 1
  %2 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %ino, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gen) #9
  %i_generation = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 14
  %3 = ptrtoint ptr %i_generation to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %i_generation, align 1
  %5 = ptrtoint ptr %gen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %gen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy_cs) #9
  %6 = ptrtoint ptr %dummy_cs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dummy_cs, align 4
  %s_chksum_seed = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 130
  %7 = ptrtoint ptr %s_chksum_seed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_chksum_seed, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i) #9
  %9 = getelementptr inbounds %struct.anon.92, ptr %desc.i.i, i32 0, i32 1
  %s_chksum_driver.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 129
  %10 = call ptr @memset(ptr %desc.i.i, i32 255, i32 16)
  %11 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_chksum_driver.i.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.not.i.i = icmp eq i32 %14, 4
  br i1 %cmp.not.i.i, label %do.end7.i.i, label %do.body2.i.i, !prof !85

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1905, 0\0A.popsection", ""() #9, !srcloc !86
  unreachable

do.end7.i.i:                                      ; preds = %entry
  %15 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %desc.i.i, align 8
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %9, align 8
  %call10.i.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i, ptr noundef nonnull %ino, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool12.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool12.not.i.i, label %f2fs_chksum.exit, label %do.body20.i.i, !prof !85

do.body20.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1911, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

f2fs_chksum.exit:                                 ; preds = %do.end7.i.i
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %9, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i22) #9
  %19 = getelementptr inbounds %struct.anon.92, ptr %desc.i.i22, i32 0, i32 1
  %20 = call ptr @memset(ptr %desc.i.i22, i32 255, i32 16)
  %21 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_chksum_driver.i.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp.not.i.i24 = icmp eq i32 %24, 4
  br i1 %cmp.not.i.i24, label %do.end7.i.i28, label %do.body2.i.i25, !prof !85

do.body2.i.i25:                                   ; preds = %f2fs_chksum.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1905, 0\0A.popsection", ""() #9, !srcloc !86
  unreachable

do.end7.i.i28:                                    ; preds = %f2fs_chksum.exit
  %25 = ptrtoint ptr %desc.i.i22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %desc.i.i22, align 8
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %18, ptr %19, align 8
  %call10.i.i26 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i22, ptr noundef nonnull %gen, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i26)
  %tobool12.not.i.i27 = icmp eq i32 %call10.i.i26, 0
  br i1 %tobool12.not.i.i27, label %f2fs_chksum.exit30, label %do.body20.i.i29, !prof !85

do.body20.i.i29:                                  ; preds = %do.end7.i.i28
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1911, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

f2fs_chksum.exit30:                               ; preds = %do.end7.i.i28
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %19, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i22) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i31) #9
  %29 = getelementptr inbounds %struct.anon.92, ptr %desc.i.i31, i32 0, i32 1
  %30 = call ptr @memset(ptr %desc.i.i31, i32 255, i32 16)
  %31 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_chksum_driver.i.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp.not.i.i33 = icmp eq i32 %34, 4
  br i1 %cmp.not.i.i33, label %do.end7.i.i37, label %do.body2.i.i34, !prof !85

do.body2.i.i34:                                   ; preds = %f2fs_chksum.exit30
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1905, 0\0A.popsection", ""() #9, !srcloc !86
  unreachable

do.end7.i.i37:                                    ; preds = %f2fs_chksum.exit30
  %35 = ptrtoint ptr %desc.i.i31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %desc.i.i31, align 8
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %28, ptr %29, align 8
  %call10.i.i35 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i31, ptr noundef %call.i, i32 noundef 368) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i35)
  %tobool12.not.i.i36 = icmp eq i32 %call10.i.i35, 0
  br i1 %tobool12.not.i.i36, label %f2fs_chksum.exit39, label %do.body20.i.i38, !prof !85

do.body20.i.i38:                                  ; preds = %do.end7.i.i37
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1911, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

f2fs_chksum.exit39:                               ; preds = %do.end7.i.i37
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %29, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i31) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i40) #9
  %39 = getelementptr inbounds %struct.anon.92, ptr %desc.i.i40, i32 0, i32 1
  %40 = call ptr @memset(ptr %desc.i.i40, i32 255, i32 16)
  %41 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_chksum_driver.i.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp.not.i.i42 = icmp eq i32 %44, 4
  br i1 %cmp.not.i.i42, label %do.end7.i.i46, label %do.body2.i.i43, !prof !85

do.body2.i.i43:                                   ; preds = %f2fs_chksum.exit39
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1905, 0\0A.popsection", ""() #9, !srcloc !86
  unreachable

do.end7.i.i46:                                    ; preds = %f2fs_chksum.exit39
  %45 = ptrtoint ptr %desc.i.i40 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %desc.i.i40, align 8
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %38, ptr %39, align 8
  %call10.i.i44 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i40, ptr noundef nonnull %dummy_cs, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i44)
  %tobool12.not.i.i45 = icmp eq i32 %call10.i.i44, 0
  br i1 %tobool12.not.i.i45, label %f2fs_chksum.exit48, label %do.body20.i.i47, !prof !85

do.body20.i.i47:                                  ; preds = %do.end7.i.i46
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1911, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

f2fs_chksum.exit48:                               ; preds = %do.end7.i.i46
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %39, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i40) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i.i49) #9
  %49 = getelementptr inbounds %struct.anon.92, ptr %desc.i.i49, i32 0, i32 1
  %50 = call ptr @memset(ptr %desc.i.i49, i32 255, i32 16)
  %51 = ptrtoint ptr %s_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_chksum_driver.i.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp.not.i.i51 = icmp eq i32 %54, 4
  br i1 %cmp.not.i.i51, label %do.end7.i.i55, label %do.body2.i.i52, !prof !85

do.body2.i.i52:                                   ; preds = %f2fs_chksum.exit48
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1905, 0\0A.popsection", ""() #9, !srcloc !86
  unreachable

do.end7.i.i55:                                    ; preds = %f2fs_chksum.exit48
  %add.ptr = getelementptr i8, ptr %call.i, i32 372
  %55 = ptrtoint ptr %desc.i.i49 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %desc.i.i49, align 8
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %48, ptr %49, align 8
  %call10.i.i53 = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i.i49, ptr noundef %add.ptr, i32 noundef 3724) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i53)
  %tobool12.not.i.i54 = icmp eq i32 %call10.i.i53, 0
  br i1 %tobool12.not.i.i54, label %f2fs_chksum.exit57, label %do.body20.i.i56, !prof !85

do.body20.i.i56:                                  ; preds = %do.end7.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1911, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

f2fs_chksum.exit57:                               ; preds = %do.end7.i.i55
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i.i49) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_cs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #9
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_inode_chksum_set(ptr nocapture noundef readonly %sbi, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @page_address(ptr noundef %page) #9
  %call.i.i = tail call ptr @page_address(ptr noundef %page) #9
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 2
  %0 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %feature.i.i, align 1
  %4 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call ptr @page_address(ptr noundef %page) #9
  %footer.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %footer.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %footer.i.i, align 1
  %ino.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %ino.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %ino.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i.i = icmp eq i32 %6, %8
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %i_inline.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_inline.i, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %f2fs_enable_inode_chksum.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

f2fs_enable_inode_chksum.exit:                    ; preds = %lor.lhs.false.i
  %12 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %12, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %15)
  %cmp.i = icmp ugt i16 %15, 11
  br i1 %cmp.i, label %if.end, label %f2fs_enable_inode_chksum.exit.cleanup_crit_edge

f2fs_enable_inode_chksum.exit.cleanup_crit_edge:  ; preds = %f2fs_enable_inode_chksum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %f2fs_enable_inode_chksum.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc i32 @f2fs_inode_chksum(ptr noundef %sbi, ptr noundef %page)
  %16 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %i_inode_checksum = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23, i32 0, i32 2
  %17 = ptrtoint ptr %i_inode_checksum to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %i_inode_checksum, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %f2fs_enable_inode_chksum.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_f2fs_iget(ptr noundef nonnull %call1)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %node_ino_num = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %node_ino_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node_ino_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %ino)
  %cmp = icmp eq i32 %5, %ino
  br i1 %cmp, label %if.end5.make_now_crit_edge, label %lor.lhs.false

if.end5.make_now_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %make_now

lor.lhs.false:                                    ; preds = %if.end5
  %meta_ino_num = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 49
  %6 = ptrtoint ptr %meta_ino_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %meta_ino_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %ino)
  %cmp6 = icmp eq i32 %7, %ino
  br i1 %cmp6, label %lor.lhs.false.make_now_crit_edge, label %if.end8

lor.lhs.false.make_now_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %make_now

if.end8:                                          ; preds = %lor.lhs.false
  %nm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %nm_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nm_info.i, align 8
  %max_nid = getelementptr inbounds %struct.f2fs_nm_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %max_nid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_nid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %ino)
  %cmp10 = icmp eq i32 %11, %ino
  br i1 %cmp10, label %if.end8.make_now_crit_edge, label %if.end12

if.end8.make_now_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %make_now

if.end12:                                         ; preds = %if.end8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino.i, align 8
  %call2.i = tail call i32 @f2fs_check_nid_range(ptr noundef %15, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.bad_inode_crit_edge

if.end12.bad_inode_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_inode

if.end.i:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino.i, align 8
  %call4.i = tail call ptr @f2fs_get_node_page(ptr noundef %15, i32 noundef %19) #9
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do_read_inode.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  %call.i.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %call.i.i, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #9
  %23 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %call1, align 8
  %i_uid.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %i_uid.i, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %27 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 53
  %29 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %call1.i.i = tail call i32 @make_kuid(ptr noundef %30, i32 noundef %26) #9
  %31 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call1.i.i, ptr %i_uid.i.i, align 4
  %i_gid.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %i_gid.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %35 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i368.i = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 53
  %37 = ptrtoint ptr %s_user_ns.i.i368.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_user_ns.i.i368.i, align 8
  %call1.i369.i = tail call i32 @make_kgid(ptr noundef %38, i32 noundef %34) #9
  %39 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call1.i369.i, ptr %i_gid.i.i, align 8
  %i_links.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %i_links.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %i_links.i, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void @set_nlink(ptr noundef nonnull %call1, i32 noundef %42) #9
  %i_size.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %i_size.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %i_size.i, align 1
  %45 = tail call i64 @llvm.bswap.i64(i64 %44) #9
  %i_size11.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %46 = ptrtoint ptr %i_size11.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %i_size11.i, align 8
  %i_blocks.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %i_blocks.i, align 1
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #9
  %sub.i = shl i64 %49, 3
  %shl.i = add i64 %sub.i, -8
  %i_blocks12.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %50 = ptrtoint ptr %i_blocks12.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %shl.i, ptr %i_blocks12.i, align 8
  %i_atime.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %i_atime.i, align 1
  %53 = tail call i64 @llvm.bswap.i64(i64 %52) #9
  %i_atime13.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %54 = ptrtoint ptr %i_atime13.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %i_atime13.i, align 8
  %i_ctime.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %i_ctime.i, align 1
  %57 = tail call i64 @llvm.bswap.i64(i64 %56) #9
  %i_ctime14.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  %58 = ptrtoint ptr %i_ctime14.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %i_ctime14.i, align 8
  %i_mtime.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 10
  %59 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %i_mtime.i, align 1
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #9
  %i_mtime16.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %62 = ptrtoint ptr %i_mtime16.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %i_mtime16.i, align 8
  %i_atime_nsec.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 11
  %63 = ptrtoint ptr %i_atime_nsec.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %i_atime_nsec.i, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15, i32 1
  %66 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %tv_nsec.i, align 8
  %i_ctime_nsec.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 12
  %67 = ptrtoint ptr %i_ctime_nsec.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %i_ctime_nsec.i, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %tv_nsec20.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17, i32 1
  %70 = ptrtoint ptr %tv_nsec20.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %tv_nsec20.i, align 8
  %i_mtime_nsec.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 13
  %71 = ptrtoint ptr %i_mtime_nsec.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %i_mtime_nsec.i, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #9
  %tv_nsec22.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16, i32 1
  %74 = ptrtoint ptr %tv_nsec22.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %tv_nsec22.i, align 8
  %i_generation.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 14
  %75 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %i_generation.i, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #9
  %i_generation23.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 49
  %78 = ptrtoint ptr %i_generation23.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %i_generation23.i, align 8
  %79 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %call1, align 8
  %81 = and i16 %80, -4096
  %82 = zext i16 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values)
  switch i16 %81, label %if.end8.i.if.end35.i_crit_edge [
    i16 16384, label %if.then26.i
    i16 -32768, label %if.then32.i
  ]

if.end8.i.if.end35.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then26.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 15
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %83, align 1
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #9
  %i_current_depth.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 4
  %87 = ptrtoint ptr %i_current_depth.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %i_current_depth.i, align 8
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 15
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %88, align 1
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #9
  %conv33.i = zext i16 %91 to i32
  %i_gc_failures.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 5
  %92 = ptrtoint ptr %i_gc_failures.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv33.i, ptr %i_gc_failures.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.then26.i, %if.end8.i.if.end35.i_crit_edge
  %i_xattr_nid.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 16
  %93 = ptrtoint ptr %i_xattr_nid.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %i_xattr_nid.i, align 1
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #9
  %i_xattr_nid36.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 15
  %96 = ptrtoint ptr %i_xattr_nid36.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %i_xattr_nid36.i, align 8
  %i_flags.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 17
  %97 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %i_flags.i, align 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  %i_flags37.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %81)
  %cmp41.i = icmp eq i16 %81, -32768
  %and45.i = and i32 %99, -536870913
  %spec.select.i = select i1 %cmp41.i, i32 %and45.i, i32 %99
  %100 = ptrtoint ptr %i_flags37.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %spec.select.i, ptr %i_flags37.i, align 8
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 8
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 0, ptr %flags.i, align 4
  %i_advise.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %i_advise.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %i_advise.i, align 1
  %i_advise47.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 2
  %104 = ptrtoint ptr %i_advise47.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %i_advise47.i, align 4
  %i_pino.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 18
  %105 = ptrtoint ptr %i_pino.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %i_pino.i, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #9
  %i_pino48.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 6
  %108 = ptrtoint ptr %i_pino48.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %i_pino48.i, align 4
  %i_dir_level.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 21
  %109 = ptrtoint ptr %i_dir_level.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %i_dir_level.i, align 1
  %i_dir_level49.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 3
  %111 = ptrtoint ptr %i_dir_level49.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %i_dir_level49.i, align 1
  tail call void @f2fs_init_extent_tree(ptr noundef nonnull %call1, ptr noundef %call4.i) #9
  %i_inline.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %i_inline.i.i, align 1
  %114 = and i8 %113, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i.i = icmp eq i8 %114, 0
  br i1 %tobool.not.i.i, label %if.end35.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end35.i.if.end.i.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags.i) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end35.i.if.end.i.i_crit_edge
  %115 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %i_inline.i.i, align 1
  %117 = and i8 %116, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool4.not.i.i = icmp eq i8 %117, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i) #9
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %118 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %i_inline.i.i, align 1
  %120 = and i8 %119, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool12.not.i.i = icmp eq i8 %120, 0
  br i1 %tobool12.not.i.i, label %if.end8.i.i.if.end16.i.i_crit_edge, label %if.then13.i.i

if.end8.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.then13.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags.i) #9
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then13.i.i, %if.end8.i.i.if.end16.i.i_crit_edge
  %121 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %i_inline.i.i, align 1
  %123 = and i8 %122, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool20.not.i.i = icmp eq i8 %123, 0
  br i1 %tobool20.not.i.i, label %if.end16.i.i.if.end24.i.i_crit_edge, label %if.then21.i.i

if.end16.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.then21.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 20, ptr noundef %flags.i) #9
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then21.i.i, %if.end16.i.i.if.end24.i.i_crit_edge
  %124 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %i_inline.i.i, align 1
  %126 = and i8 %125, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool28.not.i.i = icmp eq i8 %126, 0
  br i1 %tobool28.not.i.i, label %if.end24.i.i.if.end32.i.i_crit_edge, label %if.then29.i.i

if.end24.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i.i

if.then29.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 21, ptr noundef %flags.i) #9
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then29.i.i, %if.end24.i.i.if.end32.i.i_crit_edge
  %127 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %i_inline.i.i, align 1
  %129 = and i8 %128, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool36.not.i.i = icmp eq i8 %129, 0
  br i1 %tobool36.not.i.i, label %if.end32.i.i.if.end40.i.i_crit_edge, label %if.then37.i.i

if.end32.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.then37.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 26, ptr noundef %flags.i) #9
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then37.i.i, %if.end32.i.i.if.end40.i.i_crit_edge
  %130 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %i_inline.i.i, align 1
  %132 = and i8 %131, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool44.not.i.i = icmp eq i8 %132, 0
  br i1 %tobool44.not.i.i, label %if.end40.i.i.if.end48.i.i_crit_edge, label %if.then45.i.i

if.end40.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 28, ptr noundef %flags.i) #9
  %133 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %.pr.i.i = load i8, ptr %i_inline.i.i, align 1
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.end40.i.i.if.end48.i.i_crit_edge
  %134 = phi i8 [ %.pr.i.i, %if.then45.i.i ], [ %131, %if.end40.i.i.if.end48.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %134)
  %tobool52.not.i.i = icmp sgt i8 %134, -1
  br i1 %tobool52.not.i.i, label %if.end48.i.i.get_inline_info.exit.i_crit_edge, label %if.then53.i.i

if.end48.i.i.get_inline_info.exit.i_crit_edge:    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_inline_info.exit.i

if.then53.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 35, ptr noundef %flags.i) #9
  br label %get_inline_info.exit.i

get_inline_info.exit.i:                           ; preds = %if.then53.i.i, %if.end48.i.i.get_inline_info.exit.i_crit_edge
  %135 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %flags.i, align 4
  %137 = and i32 %136, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool51.not.i = icmp eq i32 %137, 0
  br i1 %tobool51.not.i, label %get_inline_info.exit.i.cond.end.i_crit_edge, label %cond.true.i

get_inline_info.exit.i.cond.end.i_crit_edge:      ; preds = %get_inline_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %get_inline_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %138 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %138, align 1
  %141 = tail call i16 @llvm.bswap.i16(i16 %140) #9
  %conv52.i = zext i16 %141 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %get_inline_info.exit.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv52.i, %cond.true.i ], [ 0, %get_inline_info.exit.i.cond.end.i_crit_edge ]
  %i_extra_isize53.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 29
  %142 = ptrtoint ptr %i_extra_isize53.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %cond.i, ptr %i_extra_isize53.i, align 4
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %15, i32 0, i32 2
  %143 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %144, i32 0, i32 34
  %145 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %feature.i.i, align 1
  %147 = and i32 %146, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool55.not.i = icmp eq i32 %147, 0
  br i1 %tobool55.not.i, label %if.else59.i, label %if.then56.i

if.then56.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %148 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %i_inline_xattr_size.i = getelementptr inbounds %struct.anon.90, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %i_inline_xattr_size.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %i_inline_xattr_size.i, align 1
  %151 = tail call i16 @llvm.bswap.i16(i16 %150) #9
  %conv57.i = zext i16 %151 to i32
  br label %if.end69.i

if.else59.i:                                      ; preds = %cond.end.i
  %152 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %flags.i, align 4
  %154 = and i32 %153, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool61.not.i = icmp eq i32 %154, 0
  br i1 %tobool61.not.i, label %lor.lhs.false.i, label %if.else59.i.if.end69.i_crit_edge

if.else59.i.if.end69.i_crit_edge:                 ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

lor.lhs.false.i:                                  ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %flags.i, align 4
  %157 = and i32 %156, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool63.not.i = icmp eq i32 %157, 0
  %spec.select460.i = select i1 %tobool63.not.i, i32 0, i32 50
  br label %if.end69.i

if.end69.i:                                       ; preds = %lor.lhs.false.i, %if.else59.i.if.end69.i_crit_edge, %if.then56.i
  %.sink.i = phi i32 [ %conv57.i, %if.then56.i ], [ 50, %if.else59.i.if.end69.i_crit_edge ], [ %spec.select460.i, %lor.lhs.false.i ]
  %i_inline_xattr_size65.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 31
  %158 = ptrtoint ptr %i_inline_xattr_size65.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %.sink.i, ptr %i_inline_xattr_size65.i, align 4
  %159 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %160, i32 0, i32 33
  %161 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %call.i.i377.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %call.i247.i.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %i_blocks.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i247.i.i, i32 0, i32 7
  %163 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 8)
  %164 = load i64, ptr %i_blocks.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %164)
  %tobool.not.i378.i = icmp eq i64 %164, 0
  br i1 %tobool.not.i378.i, label %if.then.i379.i, label %if.end.i380.i

if.then.i379.i:                                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i.i.i) #9
  %165 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %166, i64 noundef 0) #9
  br label %bad_inode.sink.split

if.end.i380.i:                                    ; preds = %if.end69.i
  %call.i.i.i.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %ino.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %167 = ptrtoint ptr %ino.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %ino.i.i.i, align 1
  %call.i.i248.i.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %footer.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i248.i.i, i32 0, i32 1
  %169 = ptrtoint ptr %footer.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %footer.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %170)
  %cmp.not.i.i = icmp eq i32 %168, %170
  br i1 %cmp.not.i.i, label %if.end10.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i380.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i249.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i249.i.i) #9
  %171 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %i_ino.i, align 8
  %call.i.i250.i.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %ino.i251.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i250.i.i, i32 0, i32 1, i32 1
  %173 = ptrtoint ptr %ino.i251.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %ino.i251.i.i, align 1
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #9
  %call.i.i252.i.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %footer.i253.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i252.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %footer.i253.i.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %footer.i253.i.i, align 1
  %178 = tail call i32 @llvm.bswap.i32(i32 %177) #9
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %172, i32 noundef %175, i32 noundef %178) #9
  br label %bad_inode.sink.split

if.end10.i.i:                                     ; preds = %if.end.i380.i
  %raw_super.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 2
  %179 = ptrtoint ptr %raw_super.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %raw_super.i.i.i, align 8
  %feature.i.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %180, i32 0, i32 34
  %181 = ptrtoint ptr %feature.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %feature.i.i.i, align 1
  %183 = and i32 %182, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool12.not.i381.i = icmp eq i32 %183, 0
  br i1 %tobool12.not.i381.i, label %if.end10.i.i.if.end17.i.i_crit_edge, label %land.lhs.true.i.i

if.end10.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

land.lhs.true.i.i:                                ; preds = %if.end10.i.i
  %184 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %flags.i, align 4
  %186 = and i32 %185, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool14.not.i.i = icmp eq i32 %186, 0
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %land.lhs.true.i.i.if.end17.i.i_crit_edge

land.lhs.true.i.i.if.end17.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i254.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i254.i.i) #9
  %187 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %188) #9
  br label %bad_inode.sink.split

if.end17.i.i:                                     ; preds = %land.lhs.true.i.i.if.end17.i.i_crit_edge, %if.end10.i.i.if.end17.i.i_crit_edge
  %189 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %flags.i, align 4
  %191 = and i32 %190, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool19.not.i.i = icmp ne i32 %191, 0
  %192 = and i32 %182, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool22.not.i.i = icmp eq i32 %192, 0
  %or.cond299.i.i = select i1 %tobool19.not.i.i, i1 %tobool22.not.i.i, i1 false
  br i1 %or.cond299.i.i, label %if.then23.i.i, label %if.end25.i.i

if.then23.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i262.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i262.i.i) #9
  %193 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %194) #9
  br label %bad_inode.sink.split

if.end25.i.i:                                     ; preds = %if.end17.i.i
  %195 = ptrtoint ptr %i_extra_isize53.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %i_extra_isize53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %196)
  %cmp26.i.i = icmp ult i32 %196, 37
  %rem.i.i = and i32 %196, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool28.not.i382.i = icmp eq i32 %rem.i.i, 0
  %or.cond.i.i = and i1 %cmp26.i.i, %tobool28.not.i382.i
  br i1 %or.cond.i.i, label %if.end32.i384.i, label %if.then29.i383.i

if.then29.i383.i:                                 ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i263.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i263.i.i) #9
  %197 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %i_ino.i, align 8
  %199 = ptrtoint ptr %i_extra_isize53.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %i_extra_isize53.i, align 4
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %198, i32 noundef %200, i32 noundef 36) #9
  br label %bad_inode.sink.split

if.end32.i384.i:                                  ; preds = %if.end25.i.i
  %201 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %flags.i, align 4
  %203 = and i32 %202, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool34.not.i.i = icmp eq i32 %203, 0
  %brmerge.i.i = select i1 %tobool34.not.i.i, i1 true, i1 %tobool12.not.i381.i
  br i1 %brmerge.i.i, label %if.end32.i384.i.if.end49.i.i_crit_edge, label %land.lhs.true38.i.i

if.end32.i384.i.if.end49.i.i_crit_edge:           ; preds = %if.end32.i384.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i.i

land.lhs.true38.i.i:                              ; preds = %if.end32.i384.i
  %204 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %flags.i, align 4
  %206 = and i32 %205, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool40.not.i.i = icmp eq i32 %206, 0
  br i1 %tobool40.not.i.i, label %land.lhs.true38.i.i.if.end49.i.i_crit_edge, label %land.lhs.true41.i.i

land.lhs.true38.i.i.if.end49.i.i_crit_edge:       ; preds = %land.lhs.true38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i.i

land.lhs.true41.i.i:                              ; preds = %land.lhs.true38.i.i
  %207 = ptrtoint ptr %i_inline_xattr_size65.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %i_inline_xattr_size65.i, align 4
  %209 = add i32 %208, -904
  call void @__sanitizer_cov_trace_const_cmp4(i32 -903, i32 %209)
  %210 = icmp ult i32 %209, -903
  br i1 %210, label %if.then46.i.i, label %land.lhs.true41.i.i.if.end49.i.i_crit_edge

land.lhs.true41.i.i.if.end49.i.i_crit_edge:       ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i.i

if.then46.i.i:                                    ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i274.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i274.i.i) #9
  %211 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %i_ino.i, align 8
  %213 = ptrtoint ptr %i_inline_xattr_size65.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %i_inline_xattr_size65.i, align 4
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %212, i32 noundef %214, i32 noundef 903) #9
  br label %bad_inode.sink.split

if.end49.i.i:                                     ; preds = %land.lhs.true41.i.i.if.end49.i.i_crit_edge, %land.lhs.true38.i.i.if.end49.i.i_crit_edge, %if.end32.i384.i.if.end49.i.i_crit_edge
  %extent_tree.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 26
  %215 = ptrtoint ptr %extent_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %extent_tree.i.i, align 8
  %tobool51.not.i.i = icmp eq ptr %216, null
  br i1 %tobool51.not.i.i, label %if.end49.i.i.if.end67.i.i_crit_edge, label %if.then52.i.i

if.end49.i.i.if.end67.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

if.then52.i.i:                                    ; preds = %if.end49.i.i
  %largest.i.i = getelementptr inbounds %struct.extent_tree, ptr %216, i32 0, i32 3
  %len.i.i = getelementptr inbounds %struct.extent_tree, ptr %216, i32 0, i32 3, i32 1
  %217 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool55.not.i.i = icmp eq i32 %218, 0
  br i1 %tobool55.not.i.i, label %if.then52.i.i.if.end67.i.i_crit_edge, label %land.lhs.true56.i.i

if.then52.i.i.if.end67.i.i_crit_edge:             ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

land.lhs.true56.i.i:                              ; preds = %if.then52.i.i
  %blk.i.i = getelementptr inbounds %struct.extent_tree, ptr %216, i32 0, i32 3, i32 2
  %219 = ptrtoint ptr %blk.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %blk.i.i, align 4
  %call57.i.i = tail call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %162, i32 noundef %220, i32 noundef 7) #9
  br i1 %call57.i.i, label %lor.lhs.false58.i.i, label %land.lhs.true56.i.i.if.then62.i.i_crit_edge

land.lhs.true56.i.i.if.then62.i.i_crit_edge:      ; preds = %land.lhs.true56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.i.i

lor.lhs.false58.i.i:                              ; preds = %land.lhs.true56.i.i
  %221 = ptrtoint ptr %blk.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %blk.i.i, align 4
  %223 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %len.i.i, align 4
  %add.i.i = add i32 %222, -1
  %sub.i.i = add i32 %add.i.i, %224
  %call61.i.i = tail call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %162, i32 noundef %sub.i.i, i32 noundef 7) #9
  br i1 %call61.i.i, label %lor.lhs.false58.i.i.if.end67.i.i_crit_edge, label %lor.lhs.false58.i.i.if.then62.i.i_crit_edge

lor.lhs.false58.i.i.if.then62.i.i_crit_edge:      ; preds = %lor.lhs.false58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.i.i

lor.lhs.false58.i.i.if.end67.i.i_crit_edge:       ; preds = %lor.lhs.false58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67.i.i

if.then62.i.i:                                    ; preds = %lor.lhs.false58.i.i.if.then62.i.i_crit_edge, %land.lhs.true56.i.i.if.then62.i.i_crit_edge
  %s_flag.i275.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i275.i.i) #9
  %225 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %i_ino.i, align 8
  %227 = ptrtoint ptr %blk.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %blk.i.i, align 4
  %229 = ptrtoint ptr %largest.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %largest.i.i, align 4
  %231 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %len.i.i, align 4
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %226, i32 noundef %228, i32 noundef %230, i32 noundef %232) #9
  br label %bad_inode.sink.split

if.end67.i.i:                                     ; preds = %lor.lhs.false58.i.i.if.end67.i.i_crit_edge, %if.then52.i.i.if.end67.i.i_crit_edge, %if.end49.i.i.if.end67.i.i_crit_edge
  %233 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile i32, ptr %flags.i, align 4
  %235 = and i32 %234, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool69.not.i.i = icmp eq i32 %235, 0
  br i1 %tobool69.not.i.i, label %if.end67.i.i.if.end83.i.i_crit_edge, label %land.lhs.true70.i.i

if.end67.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i.i

land.lhs.true70.i.i:                              ; preds = %if.end67.i.i
  %236 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %call1, align 8
  %238 = and i16 %237, -4096
  %239 = zext i16 %238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %238, label %if.then79.i.i [
    i16 -32768, label %land.lhs.true70.i.i.if.end83.i.i_crit_edge
    i16 -24576, label %land.lhs.true70.i.i.if.end83.i.i_crit_edge198
  ]

land.lhs.true70.i.i.if.end83.i.i_crit_edge198:    ; preds = %land.lhs.true70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i.i

land.lhs.true70.i.i.if.end83.i.i_crit_edge:       ; preds = %land.lhs.true70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i.i

if.then79.i.i:                                    ; preds = %land.lhs.true70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i279.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i279.i.i) #9
  %240 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %i_ino.i, align 8
  %242 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %call1, align 8
  %conv82.i.i = zext i16 %243 to i32
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %241, i32 noundef %conv82.i.i) #9
  br label %bad_inode.sink.split

if.end83.i.i:                                     ; preds = %land.lhs.true70.i.i.if.end83.i.i_crit_edge, %land.lhs.true70.i.i.if.end83.i.i_crit_edge198, %if.end67.i.i.if.end83.i.i_crit_edge
  %244 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load volatile i32, ptr %flags.i, align 4
  %246 = and i32 %245, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool85.not.i.i = icmp eq i32 %246, 0
  br i1 %tobool85.not.i.i, label %if.end83.i.i.if.end96.i.i_crit_edge, label %land.lhs.true86.i.i

if.end83.i.i.if.end96.i.i_crit_edge:              ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i.i

land.lhs.true86.i.i:                              ; preds = %if.end83.i.i
  %247 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %call1, align 8
  %249 = and i16 %248, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %249)
  %cmp90.i.i = icmp eq i16 %249, 16384
  br i1 %cmp90.i.i, label %land.lhs.true86.i.i.if.end96.i.i_crit_edge, label %if.then92.i.i

land.lhs.true86.i.i.if.end96.i.i_crit_edge:       ; preds = %land.lhs.true86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i.i

if.then92.i.i:                                    ; preds = %land.lhs.true86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i283.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i283.i.i) #9
  %250 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %i_ino.i, align 8
  %252 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %call1, align 8
  %conv95.i.i = zext i16 %253 to i32
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %251, i32 noundef %conv95.i.i) #9
  br label %bad_inode.sink.split

if.end96.i.i:                                     ; preds = %land.lhs.true86.i.i.if.end96.i.i_crit_edge, %if.end83.i.i.if.end96.i.i_crit_edge
  %254 = ptrtoint ptr %i_flags37.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %i_flags37.i, align 8
  %and97.i.i = and i32 %255, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i.i)
  %tobool98.not.i.i = icmp eq i32 %and97.i.i, 0
  br i1 %tobool98.not.i.i, label %if.end96.i.i.if.end104.i.i_crit_edge, label %land.lhs.true99.i.i

if.end96.i.i.if.end104.i.i_crit_edge:             ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i.i

land.lhs.true99.i.i:                              ; preds = %if.end96.i.i
  %256 = ptrtoint ptr %raw_super.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %raw_super.i.i.i, align 8
  %feature.i285.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %257, i32 0, i32 34
  %258 = ptrtoint ptr %feature.i285.i.i to i32
  call void @__asan_loadN_noabort(i32 %258, i32 4)
  %259 = load i32, ptr %feature.i285.i.i, align 1
  %260 = and i32 %259, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool101.not.i.i = icmp eq i32 %260, 0
  br i1 %tobool101.not.i.i, label %if.then102.i.i, label %land.lhs.true99.i.i.if.end104.i.i_crit_edge

land.lhs.true99.i.i.if.end104.i.i_crit_edge:      ; preds = %land.lhs.true99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i.i

if.then102.i.i:                                   ; preds = %land.lhs.true99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i288.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i288.i.i) #9
  %261 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %i_ino.i, align 8
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %262) #9
  br label %bad_inode.sink.split

if.end104.i.i:                                    ; preds = %land.lhs.true99.i.i.if.end104.i.i_crit_edge, %if.end96.i.i.if.end104.i.i_crit_edge
  %263 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile i32, ptr %flags.i, align 4
  %265 = and i32 %264, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool106.not.i.i = icmp eq i32 %265, 0
  br i1 %tobool106.not.i.i, label %if.end104.i.i.if.end72.i_crit_edge, label %land.lhs.true107.i.i

if.end104.i.i.if.end72.i_crit_edge:               ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

land.lhs.true107.i.i:                             ; preds = %if.end104.i.i
  %266 = ptrtoint ptr %raw_super.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %raw_super.i.i.i, align 8
  %feature.i293.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %267, i32 0, i32 34
  %268 = ptrtoint ptr %feature.i293.i.i to i32
  call void @__asan_loadN_noabort(i32 %268, i32 4)
  %269 = load i32, ptr %feature.i293.i.i, align 1
  %270 = and i32 %269, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool109.not.i.i = icmp eq i32 %270, 0
  %and112.i.i = and i32 %255, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i.i)
  %tobool113.not.i.i = icmp eq i32 %and112.i.i, 0
  %or.cond300.i.i = select i1 %tobool109.not.i.i, i1 true, i1 %tobool113.not.i.i
  br i1 %or.cond300.i.i, label %land.lhs.true107.i.i.if.end72.i_crit_edge, label %land.lhs.true114.i.i

land.lhs.true107.i.i.if.end72.i_crit_edge:        ; preds = %land.lhs.true107.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

land.lhs.true114.i.i:                             ; preds = %land.lhs.true107.i.i
  %271 = ptrtoint ptr %i_extra_isize53.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %i_extra_isize53.i, align 4
  %273 = add i32 %272, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -394, i32 %273)
  %cmp117.i.i = icmp ult i32 %273, -394
  br i1 %cmp117.i.i, label %if.then119.i.i, label %land.lhs.true114.i.i.if.end72.i_crit_edge

land.lhs.true114.i.i.if.end72.i_crit_edge:        ; preds = %land.lhs.true114.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.then119.i.i:                                   ; preds = %land.lhs.true114.i.i
  %274 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i377.i, i32 0, i32 23
  %i_compress_algorithm.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i377.i, i32 0, i32 23, i32 0, i32 8
  %275 = ptrtoint ptr %i_compress_algorithm.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %i_compress_algorithm.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %276)
  %cmp121.i.i = icmp ugt i8 %276, 3
  br i1 %cmp121.i.i, label %if.then123.i.i, label %if.end127.i.i

if.then123.i.i:                                   ; preds = %if.then119.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i296.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i296.i.i) #9
  %277 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %i_ino.i, align 8
  %279 = ptrtoint ptr %i_compress_algorithm.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %i_compress_algorithm.i.i, align 1
  %conv126.i.i = zext i8 %280 to i32
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %278, i32 noundef %conv126.i.i) #9
  br label %bad_inode.sink.split

if.end127.i.i:                                    ; preds = %if.then119.i.i
  %i_compr_blocks.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i377.i, i32 0, i32 23, i32 0, i32 6
  %281 = ptrtoint ptr %i_compr_blocks.i.i to i32
  call void @__asan_loadN_noabort(i32 %281, i32 8)
  %282 = load i64, ptr %i_compr_blocks.i.i, align 1
  %283 = tail call i64 @llvm.bswap.i64(i64 %282) #9
  %284 = ptrtoint ptr %i_blocks12.i to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %i_blocks12.i, align 8
  %shr.i.i = lshr i64 %285, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %283, i64 %shr.i.i)
  %cmp129.i.i = icmp ugt i64 %283, %shr.i.i
  br i1 %cmp129.i.i, label %if.then131.i.i, label %if.end136.i.i

if.then131.i.i:                                   ; preds = %if.end127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i297.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i297.i.i) #9
  %286 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %i_ino.i, align 8
  %288 = ptrtoint ptr %i_compr_blocks.i.i to i32
  call void @__asan_loadN_noabort(i32 %288, i32 8)
  %289 = load i64, ptr %i_compr_blocks.i.i, align 1
  %290 = tail call i64 @llvm.bswap.i64(i64 %289) #9
  %291 = ptrtoint ptr %i_blocks12.i to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %i_blocks12.i, align 8
  %shr135.i.i = lshr i64 %292, 3
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %287, i64 noundef %290, i64 noundef %shr135.i.i) #9
  br label %bad_inode.sink.split

if.end136.i.i:                                    ; preds = %if.end127.i.i
  %i_log_cluster_size.i.i = getelementptr inbounds %struct.anon.90, ptr %274, i32 0, i32 8
  %293 = ptrtoint ptr %i_log_cluster_size.i.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %i_log_cluster_size.i.i, align 1
  %295 = add i8 %294, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %295)
  %296 = icmp ult i8 %295, -7
  br i1 %296, label %if.then145.i.i, label %if.end136.i.i.if.end72.i_crit_edge

if.end136.i.i.if.end72.i_crit_edge:               ; preds = %if.end136.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.then145.i.i:                                   ; preds = %if.end136.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i298.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %162, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i298.i.i) #9
  %297 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %i_ino.i, align 8
  %299 = ptrtoint ptr %i_log_cluster_size.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %i_log_cluster_size.i.i, align 1
  %conv148.i.i = zext i8 %300 to i32
  tail call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %162, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.sanity_check_inode, i32 noundef %298, i32 noundef %conv148.i.i) #9
  br label %bad_inode.sink.split

if.end72.i:                                       ; preds = %if.end136.i.i.if.end72.i_crit_edge, %land.lhs.true114.i.i.if.end72.i_crit_edge, %land.lhs.true107.i.i.if.end72.i_crit_edge, %if.end104.i.i.if.end72.i_crit_edge
  %301 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load volatile i32, ptr %flags.i, align 4
  %303 = and i32 %302, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %tobool74.not.i = icmp eq i32 %303, 0
  br i1 %tobool74.not.i, label %if.end72.i.if.end78.i_crit_edge, label %land.lhs.true.i

if.end72.i.if.end78.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

land.lhs.true.i:                                  ; preds = %if.end72.i
  %304 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load volatile i32, ptr %flags.i, align 4
  %306 = and i32 %305, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool76.not.i = icmp eq i32 %306, 0
  br i1 %tobool76.not.i, label %if.then77.i, label %land.lhs.true.i.if.end78.i_crit_edge

land.lhs.true.i.if.end78.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

if.then77.i:                                      ; preds = %land.lhs.true.i
  %call.i.i.i391.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %307 = ptrtoint ptr %i_extra_isize53.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %i_extra_isize53.i, align 4
  %div1.i.i.i.i = lshr i32 %308, 2
  %309 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i391.i, i32 0, i32 23
  %add.i.i.i = add nuw nsw i32 %div1.i.i.i.i, 1
  %arrayidx.i.i.i = getelementptr [923 x i32], ptr %309, i32 0, i32 %add.i.i.i
  %310 = ptrtoint ptr %i_inline_xattr_size65.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %i_inline_xattr_size65.i, align 4
  %312 = add i32 %div1.i.i.i.i, %311
  %.neg.i.i = mul i32 %312, -4
  %mul.i.i = add i32 %.neg.i.i, 3688
  %div18.i.i = lshr exact i32 %mul.i.i, 2
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 %div18.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then77.i
  %start.0.i.i = phi ptr [ %arrayidx.i.i.i, %if.then77.i ], [ %incdec.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %cmp.i392.i = icmp ult ptr %start.0.i.i, %add.ptr.i.i
  br i1 %cmp.i392.i, label %while.body.i.i, label %while.cond.i.i.if.end78.i_crit_edge

while.cond.i.i.if.end78.i_crit_edge:              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %start.0.i.i, i32 1
  %313 = ptrtoint ptr %start.0.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %start.0.i.i, align 4
  %tobool.not.i393.i = icmp eq i32 %314, 0
  br i1 %tobool.not.i393.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %if.then.i395.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

if.then.i395.i:                                   ; preds = %while.body.i.i
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %call4.i, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #9
  tail call void @_set_bit(i32 noundef 20, ptr noundef %flags.i) #9
  %315 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i.i.i.i.i.i = and i32 %316, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i395.i.set_inode_flag.exit.i.i_crit_edge

if.then.i395.i.set_inode_flag.exit.i.i_crit_edge: ; preds = %if.then.i395.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_inode_flag.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i395.i
  %call2.i.i.i.i.i = tail call i32 @f2fs_inode_dirtied(ptr noundef %call1, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %call2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %if.end5.i.i.i.i.i, label %if.end.i.i.i.i.i.set_inode_flag.exit.i.i_crit_edge

if.end.i.i.i.i.i.set_inode_flag.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_inode_flag.exit.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 1) #9
  br label %set_inode_flag.exit.i.i

set_inode_flag.exit.i.i:                          ; preds = %if.end5.i.i.i.i.i, %if.end.i.i.i.i.i.set_inode_flag.exit.i.i_crit_edge, %if.then.i395.i.set_inode_flag.exit.i.i_crit_edge
  %call.i.i396.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %i_inline.i.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i396.i, i32 0, i32 2
  %317 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 0, ptr %i_inline.i.i.i, align 1
  %318 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load volatile i32, ptr %flags.i, align 4
  %320 = and i32 %319, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %tobool.not.i.i.i = icmp eq i32 %320, 0
  br i1 %tobool.not.i.i.i, label %set_inode_flag.exit.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

set_inode_flag.exit.i.i.if.end.i.i.i_crit_edge:   ; preds = %set_inode_flag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %set_inode_flag.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %321 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 1, ptr %i_inline.i.i.i, align 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %set_inode_flag.exit.i.i.if.end.i.i.i_crit_edge
  %322 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load volatile i32, ptr %flags.i, align 4
  %324 = and i32 %323, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %324)
  %tobool4.not.i.i.i = icmp eq i32 %324, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end10.i.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i.i.if.end10.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %325 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %i_inline.i.i.i, align 1
  %327 = or i8 %326, 2
  store i8 %327, ptr %i_inline.i.i.i, align 1
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then5.i.i.i, %if.end.i.i.i.if.end10.i.i.i_crit_edge
  %328 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load volatile i32, ptr %flags.i, align 4
  %330 = and i32 %329, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool12.not.i.i.i = icmp eq i32 %330, 0
  br i1 %tobool12.not.i.i.i, label %if.end10.i.i.i.if.end18.i.i.i_crit_edge, label %if.then13.i.i.i

if.end10.i.i.i.if.end18.i.i.i_crit_edge:          ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %331 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %i_inline.i.i.i, align 1
  %333 = or i8 %332, 4
  store i8 %333, ptr %i_inline.i.i.i, align 1
  br label %if.end18.i.i.i

if.end18.i.i.i:                                   ; preds = %if.then13.i.i.i, %if.end10.i.i.i.if.end18.i.i.i_crit_edge
  %334 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load volatile i32, ptr %flags.i, align 4
  %336 = and i32 %335, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %tobool20.not.i.i.i = icmp eq i32 %336, 0
  br i1 %tobool20.not.i.i.i, label %if.end18.i.i.i.if.end26.i.i.i_crit_edge, label %if.then21.i.i.i

if.end18.i.i.i.if.end26.i.i.i_crit_edge:          ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i.i

if.then21.i.i.i:                                  ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %337 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %i_inline.i.i.i, align 1
  %339 = or i8 %338, 8
  store i8 %339, ptr %i_inline.i.i.i, align 1
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.then21.i.i.i, %if.end18.i.i.i.if.end26.i.i.i_crit_edge
  %340 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load volatile i32, ptr %flags.i, align 4
  %342 = and i32 %341, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %tobool28.not.i.i.i = icmp eq i32 %342, 0
  br i1 %tobool28.not.i.i.i, label %if.end26.i.i.i.if.end34.i.i.i_crit_edge, label %if.then29.i.i.i

if.end26.i.i.i.if.end34.i.i.i_crit_edge:          ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i.i

if.then29.i.i.i:                                  ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %343 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %i_inline.i.i.i, align 1
  %345 = or i8 %344, 16
  store i8 %345, ptr %i_inline.i.i.i, align 1
  br label %if.end34.i.i.i

if.end34.i.i.i:                                   ; preds = %if.then29.i.i.i, %if.end26.i.i.i.if.end34.i.i.i_crit_edge
  %346 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load volatile i32, ptr %flags.i, align 4
  %348 = and i32 %347, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool36.not.i.i.i = icmp eq i32 %348, 0
  br i1 %tobool36.not.i.i.i, label %if.end34.i.i.i.if.end42.i.i.i_crit_edge, label %if.then37.i.i.i

if.end34.i.i.i.if.end42.i.i.i_crit_edge:          ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i.i

if.then37.i.i.i:                                  ; preds = %if.end34.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %349 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %i_inline.i.i.i, align 1
  %351 = or i8 %350, 32
  store i8 %351, ptr %i_inline.i.i.i, align 1
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %if.then37.i.i.i, %if.end34.i.i.i.if.end42.i.i.i_crit_edge
  %352 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load volatile i32, ptr %flags.i, align 4
  %354 = and i32 %353, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %tobool44.not.i.i.i = icmp eq i32 %354, 0
  br i1 %tobool44.not.i.i.i, label %if.end42.i.i.i.if.end50.i.i.i_crit_edge, label %if.then45.i.i.i

if.end42.i.i.i.if.end50.i.i.i_crit_edge:          ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i.i.i

if.then45.i.i.i:                                  ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %355 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %i_inline.i.i.i, align 1
  %357 = or i8 %356, 64
  store i8 %357, ptr %i_inline.i.i.i, align 1
  br label %if.end50.i.i.i

if.end50.i.i.i:                                   ; preds = %if.then45.i.i.i, %if.end42.i.i.i.if.end50.i.i.i_crit_edge
  %arrayidx.i.i.i.i.i = getelementptr %struct.f2fs_inode_info, ptr %call1, i32 0, i32 8, i32 1
  %358 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %360 = and i32 %359, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool52.not.i.i.i = icmp eq i32 %360, 0
  br i1 %tobool52.not.i.i.i, label %if.end50.i.i.i.set_raw_inline.exit.i.i_crit_edge, label %if.then53.i.i.i

if.end50.i.i.i.set_raw_inline.exit.i.i_crit_edge: ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_raw_inline.exit.i.i

if.then53.i.i.i:                                  ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %361 = ptrtoint ptr %i_inline.i.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %i_inline.i.i.i, align 1
  %363 = or i8 %362, -128
  store i8 %363, ptr %i_inline.i.i.i, align 1
  br label %set_raw_inline.exit.i.i

set_raw_inline.exit.i.i:                          ; preds = %if.then53.i.i.i, %if.end50.i.i.i.set_raw_inline.exit.i.i_crit_edge
  %call6.i.i = tail call zeroext i1 @set_page_dirty(ptr noundef %call4.i) #9
  br label %if.end78.i

if.end78.i:                                       ; preds = %set_raw_inline.exit.i.i, %while.cond.i.i.if.end78.i_crit_edge, %land.lhs.true.i.if.end78.i_crit_edge, %if.end72.i.if.end78.i_crit_edge
  %364 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %call1, align 8
  %366 = and i16 %365, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %366)
  %cmp82.i = icmp eq i16 %366, 16384
  br i1 %cmp82.i, label %if.end78.i.if.end89.i_crit_edge, label %land.lhs.true84.i

if.end78.i.if.end89.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

land.lhs.true84.i:                                ; preds = %if.end78.i
  %call.i.i397.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %flag.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i397.i, i32 0, i32 1, i32 2
  %367 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_loadN_noabort(i32 %367, i32 4)
  %368 = load i32, ptr %flag.i.i, align 1
  %369 = and i32 %368, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool86.not.i = icmp eq i32 %369, 0
  br i1 %tobool86.not.i, label %if.then87.i, label %land.lhs.true84.i.if.end89.i_crit_edge

land.lhs.true84.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

if.then87.i:                                      ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %call4.i, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %call.i.i399.i = tail call ptr @page_address(ptr noundef %call4.i) #9
  %flag1.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i399.i, i32 0, i32 1, i32 2
  %370 = ptrtoint ptr %flag1.i.i to i32
  call void @__asan_loadN_noabort(i32 %370, i32 4)
  %371 = load i32, ptr %flag1.i.i, align 1
  %372 = or i32 %371, 16777216
  store i32 %372, ptr %flag1.i.i, align 1
  %call88.i = tail call zeroext i1 @set_page_dirty(ptr noundef %call4.i) #9
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then87.i, %land.lhs.true84.i.if.end89.i_crit_edge, %if.end78.i.if.end89.i_crit_edge
  %373 = ptrtoint ptr %i_extra_isize53.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %i_extra_isize53.i, align 4
  %div1.i.i.i = lshr i32 %374, 2
  %375 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %call1, align 8
  %377 = and i16 %376, -4096
  %378 = zext i16 %377 to i64
  call void @__sanitizer_cov_trace_switch(i64 %378, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %377, label %if.end89.i.if.end104.i_crit_edge [
    i16 8192, label %if.end89.i.if.then.i401.i_crit_edge
    i16 24576, label %if.end89.i.if.then.i401.i_crit_edge199
    i16 4096, label %if.end89.i.if.then.i401.i_crit_edge200
    i16 -16384, label %if.end89.i.if.then.i401.i_crit_edge201
    i16 -32768, label %if.then95.i
  ]

if.end89.i.if.then.i401.i_crit_edge201:           ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i401.i

if.end89.i.if.then.i401.i_crit_edge200:           ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i401.i

if.end89.i.if.then.i401.i_crit_edge199:           ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i401.i

if.end89.i.if.then.i401.i_crit_edge:              ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i401.i

if.end89.i.if.end104.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

if.then.i401.i:                                   ; preds = %if.end89.i.if.then.i401.i_crit_edge, %if.end89.i.if.then.i401.i_crit_edge199, %if.end89.i.if.then.i401.i_crit_edge200, %if.end89.i.if.then.i401.i_crit_edge201
  %379 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %arrayidx.i.i = getelementptr [923 x i32], ptr %379, i32 0, i32 %div1.i.i.i
  %380 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %380, i32 4)
  %381 = load i32, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %tobool.not.i400.i = icmp eq i32 %381, 0
  br i1 %tobool.not.i400.i, label %if.else.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.then.i401.i
  call void @__sanitizer_cov_trace_pc() #11
  %382 = and i32 %381, -65536
  %383 = tail call i32 @llvm.bswap.i32(i32 %382) #9
  %384 = shl nuw nsw i32 %383, 12
  %shl.i.i.i = and i32 %384, 267386880
  %and2.i.i.i = and i32 %383, 255
  %or.i.i.i = or i32 %shl.i.i.i, %and2.i.i.i
  br label %__get_inode_rdev.exit.thread.i

if.else.i.i:                                      ; preds = %if.then.i401.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i402.i = add nuw nsw i32 %div1.i.i.i, 1
  %arrayidx23.i.i = getelementptr [923 x i32], ptr %379, i32 0, i32 %add.i402.i
  %385 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_loadN_noabort(i32 %385, i32 4)
  %386 = load i32, ptr %arrayidx23.i.i, align 1
  %387 = tail call i32 @llvm.bswap.i32(i32 %386) #9
  %and1.i.i.i = and i32 %387, 255
  %shr2.i.i.i = lshr i32 %387, 12
  %and3.i.i.i = and i32 %shr2.i.i.i, 1048320
  %or.i37.i.i = or i32 %and3.i.i.i, %and1.i.i.i
  %388 = shl i32 %387, 12
  %shl.i38.i.i = and i32 %388, -1048576
  %or4.i.i.i = or i32 %or.i37.i.i, %shl.i38.i.i
  br label %__get_inode_rdev.exit.thread.i

__get_inode_rdev.exit.thread.i:                   ; preds = %if.else.i.i, %if.then19.i.i
  %or.i.sink.i.i = phi i32 [ %or.i.i.i, %if.then19.i.i ], [ %or4.i.i.i, %if.else.i.i ]
  %i_rdev.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 13
  %389 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %or.i.sink.i.i, ptr %i_rdev.i.i, align 8
  br label %if.end104.i

if.then95.i:                                      ; preds = %if.end89.i
  %390 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %391 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %i_inline.i.i, align 1
  %393 = and i8 %392, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %393)
  %tobool.not.i.i404.i = icmp eq i8 %393, 0
  br i1 %tobool.not.i.i404.i, label %if.then95.i.offset_in_addr.exit.i.i_crit_edge, label %cond.true.i.i.i

if.then95.i.offset_in_addr.exit.i.i_crit_edge:    ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %offset_in_addr.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #11
  %394 = ptrtoint ptr %390 to i32
  call void @__asan_loadN_noabort(i32 %394, i32 2)
  %395 = load i16, ptr %390, align 1
  %396 = tail call i16 @llvm.bswap.i16(i16 %395) #9
  %397 = lshr i16 %396, 2
  %div.i.i.i = zext i16 %397 to i32
  br label %offset_in_addr.exit.i.i

offset_in_addr.exit.i.i:                          ; preds = %cond.true.i.i.i, %if.then95.i.offset_in_addr.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %div.i.i.i, %cond.true.i.i.i ], [ 0, %if.then95.i.offset_in_addr.exit.i.i_crit_edge ]
  %arrayidx.i405.i = getelementptr [923 x i32], ptr %390, i32 0, i32 %cond.i.i.i
  %398 = ptrtoint ptr %arrayidx.i405.i to i32
  call void @__asan_loadN_noabort(i32 %398, i32 4)
  %399 = load i32, ptr %arrayidx.i405.i, align 1
  %400 = tail call i32 @llvm.bswap.i32(i32 %399) #9
  %401 = zext i32 %400 to i64
  call void @__sanitizer_cov_trace_switch(i64 %401, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %400, label %if.end.i406.i [
    i32 -1, label %offset_in_addr.exit.i.i.if.end104.i_crit_edge
    i32 0, label %offset_in_addr.exit.i.i.if.end104.i_crit_edge202
    i32 -2, label %offset_in_addr.exit.i.i.if.end104.i_crit_edge203
  ]

offset_in_addr.exit.i.i.if.end104.i_crit_edge203: ; preds = %offset_in_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

offset_in_addr.exit.i.i.if.end104.i_crit_edge202: ; preds = %offset_in_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

offset_in_addr.exit.i.i.if.end104.i_crit_edge:    ; preds = %offset_in_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

if.end.i406.i:                                    ; preds = %offset_in_addr.exit.i.i
  %call2.i.i = tail call zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef %15, i32 noundef %400, i32 noundef 7) #9
  br i1 %call2.i.i, label %if.then102.i, label %if.end.i406.i.bad_inode.sink.split_crit_edge

if.end.i406.i.bad_inode.sink.split_crit_edge:     ; preds = %if.end.i406.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_inode.sink.split

if.then102.i:                                     ; preds = %if.end.i406.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 18, ptr noundef %flags.i) #9
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then102.i, %offset_in_addr.exit.i.i.if.end104.i_crit_edge, %offset_in_addr.exit.i.i.if.end104.i_crit_edge202, %offset_in_addr.exit.i.i.if.end104.i_crit_edge203, %__get_inode_rdev.exit.thread.i, %if.end89.i.if.end104.i_crit_edge
  %402 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %i_ino.i, align 8
  %call106.i = tail call zeroext i1 @f2fs_need_inode_block_update(ptr noundef %15, i32 noundef %403) #9
  br i1 %call106.i, label %if.end104.i.if.end109.i_crit_edge, label %if.then107.i

if.end104.i.if.end109.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109.i

if.then107.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  %404 = ptrtoint ptr %i_size11.i to i32
  call void @__asan_load8_noabort(i32 %404)
  %405 = load i64, ptr %i_size11.i, align 8
  %last_disk_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 16
  %406 = ptrtoint ptr %last_disk_size.i to i32
  call void @__asan_store8_noabort(i32 %406)
  store i64 %405, ptr %last_disk_size.i, align 8
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then107.i, %if.end104.i.if.end109.i_crit_edge
  %407 = ptrtoint ptr %i_flags37.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %i_flags37.i, align 8
  %and111.i = and i32 %408, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %if.end109.i.if.end114.i_crit_edge, label %if.then113.i

if.end109.i.if.end114.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114.i

if.then113.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 27, ptr noundef %flags.i) #9
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then113.i, %if.end109.i.if.end114.i_crit_edge
  %409 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load volatile i32, ptr %flags.i, align 4
  %411 = and i32 %410, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %411)
  %tobool116.not.i = icmp eq i32 %411, 0
  br i1 %tobool116.not.i, label %if.end114.i.if.end127.i_crit_edge, label %land.lhs.true117.i

if.end114.i.if.end127.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127.i

land.lhs.true117.i:                               ; preds = %if.end114.i
  %412 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i413.i = getelementptr inbounds %struct.f2fs_super_block, ptr %413, i32 0, i32 34
  %414 = ptrtoint ptr %feature.i413.i to i32
  call void @__asan_loadN_noabort(i32 %414, i32 4)
  %415 = load i32, ptr %feature.i413.i, align 1
  %416 = and i32 %415, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %416)
  %tobool119.not.i = icmp eq i32 %416, 0
  br i1 %tobool119.not.i, label %land.lhs.true117.i.if.end127.i_crit_edge, label %land.lhs.true120.i

land.lhs.true117.i.if.end127.i_crit_edge:         ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127.i

land.lhs.true120.i:                               ; preds = %land.lhs.true117.i
  %417 = ptrtoint ptr %i_extra_isize53.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %i_extra_isize53.i, align 4
  %419 = add i32 %418, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -368, i32 %419)
  %cmp122.i = icmp ult i32 %419, -368
  br i1 %cmp122.i, label %if.then124.i, label %land.lhs.true120.i.if.end127.i_crit_edge

land.lhs.true120.i.if.end127.i_crit_edge:         ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127.i

if.then124.i:                                     ; preds = %land.lhs.true120.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_projid125.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23, i32 0, i32 1
  %420 = ptrtoint ptr %i_projid125.i to i32
  call void @__asan_loadN_noabort(i32 %420, i32 4)
  %421 = load i32, ptr %i_projid125.i, align 1
  %422 = tail call i32 @llvm.bswap.i32(i32 %421) #9
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then124.i, %land.lhs.true120.i.if.end127.i_crit_edge, %land.lhs.true117.i.if.end127.i_crit_edge, %if.end114.i.if.end127.i_crit_edge
  %i_projid.0.i = phi i32 [ %422, %if.then124.i ], [ 0, %land.lhs.true120.i.if.end127.i_crit_edge ], [ 0, %land.lhs.true117.i.if.end127.i_crit_edge ], [ 0, %if.end114.i.if.end127.i_crit_edge ]
  %i_projid128.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 30
  %call129.i = tail call i32 @make_kprojid(ptr noundef nonnull @init_user_ns, i32 noundef %i_projid.0.i) #9
  %423 = ptrtoint ptr %i_projid128.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %call129.i, ptr %i_projid128.i, align 8
  %424 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load volatile i32, ptr %flags.i, align 4
  %426 = and i32 %425, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %426)
  %tobool131.not.i = icmp eq i32 %426, 0
  br i1 %tobool131.not.i, label %if.end127.i.if.end145.i_crit_edge, label %land.lhs.true132.i

if.end127.i.if.end145.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145.i

land.lhs.true132.i:                               ; preds = %if.end127.i
  %427 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i420.i = getelementptr inbounds %struct.f2fs_super_block, ptr %428, i32 0, i32 34
  %429 = ptrtoint ptr %feature.i420.i to i32
  call void @__asan_loadN_noabort(i32 %429, i32 4)
  %430 = load i32, ptr %feature.i420.i, align 1
  %431 = and i32 %430, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %431)
  %tobool134.not.i = icmp eq i32 %431, 0
  br i1 %tobool134.not.i, label %land.lhs.true132.i.if.end145.i_crit_edge, label %land.lhs.true135.i

land.lhs.true132.i.if.end145.i_crit_edge:         ; preds = %land.lhs.true132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145.i

land.lhs.true135.i:                               ; preds = %land.lhs.true132.i
  %432 = ptrtoint ptr %i_extra_isize53.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %i_extra_isize53.i, align 4
  %434 = add i32 %433, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -380, i32 %434)
  %cmp138.i = icmp ult i32 %434, -380
  br i1 %cmp138.i, label %if.then140.i, label %land.lhs.true135.i.if.end145.i_crit_edge

land.lhs.true135.i.if.end145.i_crit_edge:         ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145.i

if.then140.i:                                     ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_crtime.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23, i32 0, i32 3
  %435 = ptrtoint ptr %i_crtime.i to i32
  call void @__asan_loadN_noabort(i32 %435, i32 8)
  %436 = load i64, ptr %i_crtime.i, align 1
  %437 = tail call i64 @llvm.bswap.i64(i64 %436) #9
  %i_crtime141.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 32
  %438 = ptrtoint ptr %i_crtime141.i to i32
  call void @__asan_store8_noabort(i32 %438)
  store i64 %437, ptr %i_crtime141.i, align 8
  %i_crtime_nsec.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23, i32 0, i32 5
  %439 = ptrtoint ptr %i_crtime_nsec.i to i32
  call void @__asan_loadN_noabort(i32 %439, i32 4)
  %440 = load i32, ptr %i_crtime_nsec.i, align 1
  %441 = tail call i32 @llvm.bswap.i32(i32 %440) #9
  %tv_nsec144.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 32, i32 1
  %442 = ptrtoint ptr %tv_nsec144.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %441, ptr %tv_nsec144.i, align 8
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then140.i, %land.lhs.true135.i.if.end145.i_crit_edge, %land.lhs.true132.i.if.end145.i_crit_edge, %if.end127.i.if.end145.i_crit_edge
  %443 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load volatile i32, ptr %flags.i, align 4
  %445 = and i32 %444, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %445)
  %tobool147.not.i = icmp eq i32 %445, 0
  br i1 %tobool147.not.i, label %if.end145.i.if.end170.i_crit_edge, label %land.lhs.true148.i

if.end145.i.if.end170.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170.i

land.lhs.true148.i:                               ; preds = %if.end145.i
  %446 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i427.i = getelementptr inbounds %struct.f2fs_super_block, ptr %447, i32 0, i32 34
  %448 = ptrtoint ptr %feature.i427.i to i32
  call void @__asan_loadN_noabort(i32 %448, i32 4)
  %449 = load i32, ptr %feature.i427.i, align 1
  %450 = and i32 %449, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %450)
  %tobool150.not.i = icmp eq i32 %450, 0
  br i1 %tobool150.not.i, label %land.lhs.true148.i.if.end170.i_crit_edge, label %land.lhs.true151.i

land.lhs.true148.i.if.end170.i_crit_edge:         ; preds = %land.lhs.true148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170.i

land.lhs.true151.i:                               ; preds = %land.lhs.true148.i
  %451 = ptrtoint ptr %i_flags37.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %i_flags37.i, align 8
  %and153.i = and i32 %452, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153.i)
  %tobool154.not.i = icmp eq i32 %and153.i, 0
  br i1 %tobool154.not.i, label %land.lhs.true151.i.if.end170.i_crit_edge, label %if.then155.i

land.lhs.true151.i.if.end170.i_crit_edge:         ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170.i

if.then155.i:                                     ; preds = %land.lhs.true151.i
  %453 = ptrtoint ptr %i_extra_isize53.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %i_extra_isize53.i, align 4
  %455 = add i32 %454, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -394, i32 %455)
  %cmp158.i = icmp ult i32 %455, -394
  br i1 %cmp158.i, label %if.then160.i, label %if.then155.i.if.end170.i_crit_edge

if.then155.i.if.end170.i_crit_edge:               ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170.i

if.then160.i:                                     ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_compr_blocks.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 34
  %456 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %i_compr_blocks161.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23, i32 0, i32 6
  %457 = ptrtoint ptr %i_compr_blocks161.i to i32
  call void @__asan_loadN_noabort(i32 %457, i32 8)
  %458 = load i64, ptr %i_compr_blocks161.i, align 1
  %459 = tail call i64 @llvm.bswap.i64(i64 %458) #9
  %conv162.i = trunc i64 %459 to i32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_compr_blocks.i, i32 noundef 4) #9
  %460 = ptrtoint ptr %i_compr_blocks.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store volatile i32 %conv162.i, ptr %i_compr_blocks.i, align 4
  %i_compress_algorithm.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23, i32 0, i32 8
  %461 = ptrtoint ptr %i_compress_algorithm.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %i_compress_algorithm.i, align 1
  %i_compress_algorithm163.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 35
  %463 = ptrtoint ptr %i_compress_algorithm163.i to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 %462, ptr %i_compress_algorithm163.i, align 4
  %i_log_cluster_size.i = getelementptr inbounds %struct.anon.90, ptr %456, i32 0, i32 8
  %464 = ptrtoint ptr %i_log_cluster_size.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %i_log_cluster_size.i, align 1
  %i_log_cluster_size164.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 36
  %466 = ptrtoint ptr %i_log_cluster_size164.i to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 %465, ptr %i_log_cluster_size164.i, align 1
  %i_compress_flag.i = getelementptr inbounds %struct.anon.90, ptr %456, i32 0, i32 9
  %467 = ptrtoint ptr %i_compress_flag.i to i32
  call void @__asan_loadN_noabort(i32 %467, i32 2)
  %468 = load i16, ptr %i_compress_flag.i, align 1
  %469 = tail call i16 @llvm.bswap.i16(i16 %468) #9
  %i_compress_flag165.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 38
  %470 = ptrtoint ptr %i_compress_flag165.i to i32
  call void @__asan_store2_noabort(i32 %470)
  store i16 %469, ptr %i_compress_flag165.i, align 8
  %conv167.i = zext i8 %465 to i32
  %shl168.i = shl nuw i32 1, %conv167.i
  %i_cluster_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 39
  %471 = ptrtoint ptr %i_cluster_size.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 %shl168.i, ptr %i_cluster_size.i, align 4
  tail call void @_set_bit(i32 noundef 31, ptr noundef %flags.i) #9
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then160.i, %if.then155.i.if.end170.i_crit_edge, %land.lhs.true151.i.if.end170.i_crit_edge, %land.lhs.true148.i.if.end170.i_crit_edge, %if.end145.i.if.end170.i_crit_edge
  %i_disk_time.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 33
  %472 = call ptr @memcpy(ptr %i_disk_time.i, ptr %i_atime13.i, i32 16)
  %arrayidx176.i = getelementptr %struct.f2fs_inode_info, ptr %call1, i32 0, i32 33, i32 1
  %473 = call ptr @memcpy(ptr %arrayidx176.i, ptr %i_ctime14.i, i32 16)
  %arrayidx180.i = getelementptr %struct.f2fs_inode_info, ptr %call1, i32 0, i32 33, i32 2
  %474 = call ptr @memcpy(ptr %arrayidx180.i, ptr %i_mtime16.i, i32 16)
  %arrayidx184.i = getelementptr %struct.f2fs_inode_info, ptr %call1, i32 0, i32 33, i32 3
  %i_crtime186.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 32
  %475 = call ptr @memcpy(ptr %arrayidx184.i, ptr %i_crtime186.i, i32 16)
  tail call fastcc void @f2fs_put_page(ptr noundef %call4.i) #9
  %476 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load volatile i32, ptr %flags.i, align 4
  %478 = and i32 %477, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %478)
  %tobool188.not.i = icmp eq i32 %478, 0
  br i1 %tobool188.not.i, label %if.end170.i.do.body192.i_crit_edge, label %if.then189.i

if.end170.i.do.body192.i_crit_edge:               ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body192.i

if.then189.i:                                     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #11
  %479 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i435.i = getelementptr inbounds %struct.super_block, ptr %480, i32 0, i32 33
  %481 = ptrtoint ptr %s_fs_info.i.i435.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %s_fs_info.i.i435.i, align 16
  %inline_xattr.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %482, i32 0, i32 99
  %call.i.i361.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_xattr.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %inline_xattr.i, i32 1, i32 3, i32 1) #9
  %483 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_xattr.i, ptr %inline_xattr.i, i32 1, ptr elementtype(i32) %inline_xattr.i) #9, !srcloc !88
  br label %do.body192.i

do.body192.i:                                     ; preds = %if.then189.i, %if.end170.i.do.body192.i_crit_edge
  %484 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load volatile i32, ptr %flags.i, align 4
  %486 = and i32 %485, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %486)
  %tobool194.not.i = icmp eq i32 %486, 0
  br i1 %tobool194.not.i, label %do.body192.i.do.body200.i_crit_edge, label %if.then195.i

do.body192.i.do.body200.i_crit_edge:              ; preds = %do.body192.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body200.i

if.then195.i:                                     ; preds = %do.body192.i
  call void @__sanitizer_cov_trace_pc() #11
  %487 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i440.i = getelementptr inbounds %struct.super_block, ptr %488, i32 0, i32 33
  %489 = ptrtoint ptr %s_fs_info.i.i440.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %s_fs_info.i.i440.i, align 16
  %inline_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %490, i32 0, i32 100
  %call.i.i362.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_inode.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %inline_inode.i, i32 1, i32 3, i32 1) #9
  %491 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_inode.i, ptr %inline_inode.i, i32 1, ptr elementtype(i32) %inline_inode.i) #9, !srcloc !88
  br label %do.body200.i

do.body200.i:                                     ; preds = %if.then195.i, %do.body192.i.do.body200.i_crit_edge
  %492 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load volatile i32, ptr %flags.i, align 4
  %494 = and i32 %493, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %494)
  %tobool202.not.i = icmp eq i32 %494, 0
  br i1 %tobool202.not.i, label %do.body200.i.do.body208.i_crit_edge, label %if.then203.i

do.body200.i.do.body208.i_crit_edge:              ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body208.i

if.then203.i:                                     ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #11
  %495 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i445.i = getelementptr inbounds %struct.super_block, ptr %496, i32 0, i32 33
  %497 = ptrtoint ptr %s_fs_info.i.i445.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %s_fs_info.i.i445.i, align 16
  %inline_dir.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %498, i32 0, i32 101
  %call.i.i363.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_dir.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %inline_dir.i, i32 1, i32 3, i32 1) #9
  %499 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_dir.i, ptr %inline_dir.i, i32 1, ptr elementtype(i32) %inline_dir.i) #9, !srcloc !88
  br label %do.body208.i

do.body208.i:                                     ; preds = %if.then203.i, %do.body200.i.do.body208.i_crit_edge
  %500 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %500)
  %501 = load i16, ptr %call1, align 8
  %502 = and i16 %501, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %502)
  %cmp.i446.i = icmp eq i16 %502, -32768
  br i1 %cmp.i446.i, label %f2fs_compressed_file.exit.i, label %do.body208.i.do_read_inode.exit.thread195_crit_edge

do.body208.i.do_read_inode.exit.thread195_crit_edge: ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_read_inode.exit.thread195

f2fs_compressed_file.exit.i:                      ; preds = %do.body208.i
  %503 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load volatile i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %504)
  %tobool210.not.i = icmp sgt i32 %504, -1
  br i1 %tobool210.not.i, label %f2fs_compressed_file.exit.i.do_read_inode.exit.thread195_crit_edge, label %if.then211.i

f2fs_compressed_file.exit.i.do_read_inode.exit.thread195_crit_edge: ; preds = %f2fs_compressed_file.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_read_inode.exit.thread195

if.then211.i:                                     ; preds = %f2fs_compressed_file.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %505 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i449.i = getelementptr inbounds %struct.super_block, ptr %506, i32 0, i32 33
  %507 = ptrtoint ptr %s_fs_info.i.i449.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %s_fs_info.i.i449.i, align 16
  %compr_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %508, i32 0, i32 102
  %call.i.i364.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %compr_inode.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %compr_inode.i, i32 1, i32 3, i32 1) #9
  %509 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %compr_inode.i, ptr %compr_inode.i, i32 1, ptr elementtype(i32) %compr_inode.i) #9, !srcloc !88
  br label %do_read_inode.exit.thread195

do_read_inode.exit.thread195:                     ; preds = %if.then211.i, %f2fs_compressed_file.exit.i.do_read_inode.exit.thread195_crit_edge, %do.body208.i.do_read_inode.exit.thread195_crit_edge
  %i_compr_blocks216.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 34
  %call.i.i365.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_compr_blocks216.i, i32 noundef 4) #9
  %510 = ptrtoint ptr %i_compr_blocks216.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load volatile i32, ptr %i_compr_blocks216.i, align 4
  %conv218.i = sext i32 %511 to i64
  %512 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i451.i = getelementptr inbounds %struct.super_block, ptr %513, i32 0, i32 33
  %514 = ptrtoint ptr %s_fs_info.i.i451.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %s_fs_info.i.i451.i, align 16
  %compr_blocks.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %515, i32 0, i32 103
  %call.i.i366.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %compr_blocks.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %conv218.i, ptr noundef %compr_blocks.i) #9
  br label %make_now

do_read_inode.exit:                               ; preds = %if.end.i
  %516 = ptrtoint ptr %call4.i to i32
  %tobool14.not = icmp eq ptr %call4.i, null
  br i1 %tobool14.not, label %do_read_inode.exit.make_now_crit_edge, label %do_read_inode.exit.bad_inode_crit_edge

do_read_inode.exit.bad_inode_crit_edge:           ; preds = %do_read_inode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_inode

do_read_inode.exit.make_now_crit_edge:            ; preds = %do_read_inode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %make_now

make_now:                                         ; preds = %do_read_inode.exit.make_now_crit_edge, %do_read_inode.exit.thread195, %if.end8.make_now_crit_edge, %lor.lhs.false.make_now_crit_edge, %if.end5.make_now_crit_edge
  %517 = ptrtoint ptr %node_ino_num to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %node_ino_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %518, i32 %ino)
  %cmp18 = icmp eq i32 %518, %ino
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %make_now
  call void @__sanitizer_cov_trace_pc() #11
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %519 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %520, i32 0, i32 9
  %521 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr @f2fs_node_aops, ptr %a_ops, align 4
  %522 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %522, i32 0, i32 3
  %523 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %523)
  store i32 3136, ptr %gfp_mask.i, align 4
  br label %if.end106

if.else:                                          ; preds = %make_now
  %meta_ino_num21 = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 49
  %524 = ptrtoint ptr %meta_ino_num21 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %meta_ino_num21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %525, i32 %ino)
  %cmp22 = icmp eq i32 %525, %ino
  br i1 %cmp22, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %i_mapping24 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %526 = ptrtoint ptr %i_mapping24 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %i_mapping24, align 8
  %a_ops25 = getelementptr inbounds %struct.address_space, ptr %527, i32 0, i32 9
  %528 = ptrtoint ptr %a_ops25 to i32
  call void @__asan_store4_noabort(i32 %528)
  store ptr @f2fs_meta_aops, ptr %a_ops25, align 4
  %529 = load ptr, ptr %i_mapping24, align 8
  %gfp_mask.i177 = getelementptr inbounds %struct.address_space, ptr %529, i32 0, i32 3
  %530 = ptrtoint ptr %gfp_mask.i177 to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 3136, ptr %gfp_mask.i177, align 4
  br label %if.end106

if.else27:                                        ; preds = %if.else
  %nm_info.i178 = getelementptr inbounds %struct.f2fs_sb_info, ptr %1, i32 0, i32 9
  %531 = ptrtoint ptr %nm_info.i178 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %nm_info.i178, align 8
  %max_nid29 = getelementptr inbounds %struct.f2fs_nm_info, ptr %532, i32 0, i32 1
  %533 = ptrtoint ptr %max_nid29 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %max_nid29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %534, i32 %ino)
  %cmp30 = icmp eq i32 %534, %ino
  br i1 %cmp30, label %if.then31, label %if.else36

if.then31:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  %i_mapping32 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %535 = ptrtoint ptr %i_mapping32 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %i_mapping32, align 8
  %a_ops33 = getelementptr inbounds %struct.address_space, ptr %536, i32 0, i32 9
  %537 = ptrtoint ptr %a_ops33 to i32
  call void @__asan_store4_noabort(i32 %537)
  store ptr @f2fs_compress_aops, ptr %a_ops33, align 4
  %538 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %538)
  %539 = load i16, ptr %call1, align 8
  %540 = or i16 %539, -32768
  store i16 %540, ptr %call1, align 8
  %541 = load ptr, ptr %i_mapping32, align 8
  %gfp_mask.i179 = getelementptr inbounds %struct.address_space, ptr %541, i32 0, i32 3
  %542 = ptrtoint ptr %gfp_mask.i179 to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 3146, ptr %gfp_mask.i179, align 4
  br label %if.end106

if.else36:                                        ; preds = %if.else27
  %543 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %543)
  %544 = load i16, ptr %call1, align 8
  %545 = lshr i16 %544, 12
  %546 = trunc i16 %545 to i4
  %trunc = xor i4 %546, -8
  %547 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %547, ptr @__sancov_gen_cov_switch_values.34)
  switch i4 %trunc, label %if.else36.bad_inode_crit_edge [
    i4 0, label %if.then42
    i4 -4, label %if.then51
    i4 2, label %if.then62
    i4 -6, label %if.else36.if.then96_crit_edge
    i4 -2, label %if.else36.if.then96_crit_edge204
    i4 -7, label %if.else36.if.then96_crit_edge205
    i4 4, label %if.else36.if.then96_crit_edge206
  ]

if.else36.if.then96_crit_edge206:                 ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

if.else36.if.then96_crit_edge205:                 ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

if.else36.if.then96_crit_edge204:                 ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

if.else36.if.then96_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96

if.else36.bad_inode_crit_edge:                    ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_inode

if.then42:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %548 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %548)
  store ptr @f2fs_file_inode_operations, ptr %i_op, align 8
  %549 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_store4_noabort(i32 %550)
  store ptr @f2fs_file_operations, ptr %549, align 8
  %i_mapping43 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %551 = ptrtoint ptr %i_mapping43 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %i_mapping43, align 8
  %a_ops44 = getelementptr inbounds %struct.address_space, ptr %552, i32 0, i32 9
  %553 = ptrtoint ptr %a_ops44 to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr @f2fs_dblock_aops, ptr %a_ops44, align 4
  br label %if.end106

if.then51:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %i_op52 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %554 = ptrtoint ptr %i_op52 to i32
  call void @__asan_store4_noabort(i32 %554)
  store ptr @f2fs_dir_inode_operations, ptr %i_op52, align 8
  %555 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_store4_noabort(i32 %556)
  store ptr @f2fs_dir_operations, ptr %555, align 8
  %i_mapping53 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %557 = ptrtoint ptr %i_mapping53 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %i_mapping53, align 8
  %a_ops54 = getelementptr inbounds %struct.address_space, ptr %558, i32 0, i32 9
  %559 = ptrtoint ptr %a_ops54 to i32
  call void @__asan_store4_noabort(i32 %559)
  store ptr @f2fs_dblock_aops, ptr %a_ops54, align 4
  %560 = load ptr, ptr %i_mapping53, align 8
  %gfp_mask.i180 = getelementptr inbounds %struct.address_space, ptr %560, i32 0, i32 3
  %561 = ptrtoint ptr %gfp_mask.i180 to i32
  call void @__asan_store4_noabort(i32 %561)
  store i32 3136, ptr %gfp_mask.i180, align 4
  br label %if.end106

if.then62:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %i_advise.i181 = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 2
  %562 = ptrtoint ptr %i_advise.i181 to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %i_advise.i181, align 4
  %564 = and i8 %563, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %564)
  %tobool64.not = icmp eq i8 %564, 0
  %spec.select = select i1 %tobool64.not, ptr @f2fs_symlink_inode_operations, ptr @f2fs_encrypted_symlink_inode_operations
  %565 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %566 = ptrtoint ptr %565 to i32
  call void @__asan_store4_noabort(i32 %566)
  store ptr %spec.select, ptr %565, align 8
  tail call void @inode_nohighmem(ptr noundef %call1) #9
  %i_mapping70 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %567 = ptrtoint ptr %i_mapping70 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %i_mapping70, align 8
  %a_ops71 = getelementptr inbounds %struct.address_space, ptr %568, i32 0, i32 9
  %569 = ptrtoint ptr %a_ops71 to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr @f2fs_dblock_aops, ptr %a_ops71, align 4
  br label %if.end106

if.then96:                                        ; preds = %if.else36.if.then96_crit_edge, %if.else36.if.then96_crit_edge204, %if.else36.if.then96_crit_edge205, %if.else36.if.then96_crit_edge206
  %i_op97 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %570 = ptrtoint ptr %i_op97 to i32
  call void @__asan_store4_noabort(i32 %570)
  store ptr @f2fs_special_inode_operations, ptr %i_op97, align 8
  %i_rdev = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 13
  %571 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %i_rdev, align 8
  tail call void @init_special_inode(ptr noundef %call1, i16 noundef zeroext %544, i32 noundef %572) #9
  br label %if.end106

if.end106:                                        ; preds = %if.then96, %if.then62, %if.then51, %if.then42, %if.then31, %if.then23, %if.then19
  %i_flags.i182 = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 1
  %573 = ptrtoint ptr %i_flags.i182 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %i_flags.i182, align 8
  %and.i183 = lshr i32 %574, 3
  %575 = and i32 %and.i183, 5
  %and6.i = lshr i32 %574, 1
  %576 = and i32 %and6.i, 8
  %577 = or i32 %575, %576
  %and11.i = lshr i32 %574, 6
  %578 = and i32 %and11.i, 2
  %579 = or i32 %577, %578
  %and16.i = lshr i32 %574, 10
  %580 = and i32 %and16.i, 64
  %581 = or i32 %579, %580
  %i_advise.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 2
  %582 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %i_advise.i.i, align 4
  %conv.i.i = zext i8 %583 to i32
  %and.i.i = shl nuw nsw i32 %conv.i.i, 12
  %584 = and i32 %and.i.i, 16384
  %and.i54.i = shl nuw nsw i32 %conv.i.i, 10
  %585 = and i32 %and.i54.i, 65536
  %and31.i = lshr i32 %574, 15
  %586 = and i32 %and31.i, 32768
  %587 = or i32 %581, %586
  %588 = or i32 %587, %584
  %589 = or i32 %588, %585
  tail call void @inode_set_flags(ptr noundef %call1, i32 noundef %589, i32 noundef 114767) #9
  %590 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %i_advise.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %591)
  %tobool108.not = icmp sgt i8 %591, -1
  br i1 %tobool108.not, label %if.end106.if.end114_crit_edge, label %if.then109

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then109:                                       ; preds = %if.end106
  %call110 = tail call i32 @f2fs_truncate(ptr noundef %call1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.then109.bad_inode_crit_edge

if.then109.bad_inode_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_inode

if.end113:                                        ; preds = %if.then109
  %592 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %i_advise.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %593)
  %tobool.not.i188 = icmp sgt i8 %593, -1
  br i1 %tobool.not.i188, label %if.end113.if.end114_crit_edge, label %if.end.i190

if.end113.if.end114_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.end.i190:                                      ; preds = %if.end113
  %594 = and i8 %593, 127
  %595 = ptrtoint ptr %i_advise.i.i to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 %594, ptr %i_advise.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %call1, i32 0, i32 8
  %596 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load volatile i32, ptr %flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %597, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i189 = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i189, label %if.end.i.i192, label %if.end.i190.if.end114_crit_edge

if.end.i190.if.end114_crit_edge:                  ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.end.i.i192:                                    ; preds = %if.end.i190
  %call2.i.i191 = tail call i32 @f2fs_inode_dirtied(ptr noundef %call1, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i191)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i191, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i192.if.end114_crit_edge

if.end.i.i192.if.end114_crit_edge:                ; preds = %if.end.i.i192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.end5.i.i:                                      ; preds = %if.end.i.i192
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mark_inode_dirty(ptr noundef %call1, i32 noundef 1) #9
  br label %if.end114

if.end114:                                        ; preds = %if.end5.i.i, %if.end.i.i192.if.end114_crit_edge, %if.end.i190.if.end114_crit_edge, %if.end113.if.end114_crit_edge, %if.end106.if.end114_crit_edge
  tail call void @unlock_new_inode(ptr noundef %call1) #9
  tail call fastcc void @trace_f2fs_iget(ptr noundef %call1)
  br label %cleanup

bad_inode.sink.split:                             ; preds = %if.end.i406.i.bad_inode.sink.split_crit_edge, %if.then145.i.i, %if.then131.i.i, %if.then123.i.i, %if.then102.i.i, %if.then92.i.i, %if.then79.i.i, %if.then62.i.i, %if.then46.i.i, %if.then29.i383.i, %if.then23.i.i, %if.then15.i.i, %if.then6.i.i, %if.then.i379.i
  tail call fastcc void @f2fs_put_page(ptr noundef %call4.i) #9
  br label %bad_inode

bad_inode:                                        ; preds = %bad_inode.sink.split, %if.then109.bad_inode_crit_edge, %if.else36.bad_inode_crit_edge, %do_read_inode.exit.bad_inode_crit_edge, %if.end12.bad_inode_crit_edge
  %ret.0 = phi i32 [ %call110, %if.then109.bad_inode_crit_edge ], [ %516, %do_read_inode.exit.bad_inode_crit_edge ], [ -5, %if.else36.bad_inode_crit_edge ], [ -22, %if.end12.bad_inode_crit_edge ], [ -117, %bad_inode.sink.split ]
  tail call void @f2fs_inode_synced(ptr noundef %call1) #9
  tail call void @iget_failed(ptr noundef %call1) #9
  tail call fastcc void @trace_f2fs_iget_exit(ptr noundef %call1, i32 noundef %ret.0)
  %598 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %bad_inode, %if.end114, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %598, %bad_inode ], [ %call1, %if.end114 ], [ %call1, %if.then4 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_iget(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iget, i32 0, i32 1), ptr blockaddress(@trace_f2fs_iget, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !85

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  %call42 = tail call i32 @__traceiter_f2fs_iget(ptr noundef null, ptr noundef %inode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !85

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iget, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iget, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_iget.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_f2fs_iget.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 299, ptr noundef nonnull @.str.8) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_truncate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_inode_synced(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_iget_exit(ptr noundef %inode, i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iget_exit, i32 0, i32 1), ptr blockaddress(@trace_f2fs_iget_exit, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !85

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !94
  %call42 = tail call i32 @__traceiter_f2fs_iget_exit(ptr noundef null, ptr noundef %inode, i32 noundef %ret) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !85

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iget_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_iget_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_iget_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_f2fs_iget_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 306, ptr noundef nonnull @.str.8) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_iget_retry(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call7 = tail call ptr @f2fs_iget(ptr noundef %sb, i32 noundef %ino)
  %cmp8 = icmp eq ptr %call7, inttoptr (i32 -12 to ptr)
  br i1 %cmp8, label %entry.if.then3_crit_edge, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

entry.if.then3_crit_edge:                         ; preds = %entry
  br label %if.then3

if.then3:                                         ; preds = %if.then3.if.then3_crit_edge, %entry.if.then3_crit_edge
  tail call fastcc void @memalloc_retry_wait(i32 noundef 3136)
  %call = tail call ptr @f2fs_iget(ptr noundef %sb, i32 noundef %ino)
  %cmp = icmp eq ptr %call, inttoptr (i32 -12 to ptr)
  br i1 %cmp, label %if.then3.if.then3_crit_edge, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3.if.then3_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end4:                                          ; preds = %if.then3.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call.lcssa = phi ptr [ %call7, %entry.if.end4_crit_edge ], [ %call, %if.then3.if.end4_crit_edge ]
  ret ptr %call.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memalloc_retry_wait(i32 noundef %gfp_flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@memalloc_retry_wait, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %5, align 128
  %7 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags1.i, align 4
  %call55 = tail call i32 @io_schedule_timeout(i32 noundef 1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_update_inode(ptr noundef %inode, ptr noundef %node_page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extent_tree = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 26
  %0 = ptrtoint ptr %extent_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extent_tree, align 8
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %node_page, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %call1 = tail call zeroext i1 @set_page_dirty(ptr noundef %node_page) #9
  tail call void @f2fs_inode_synced(ptr noundef %inode) #9
  %call.i = tail call ptr @page_address(ptr noundef %node_page) #9
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %call.i, align 1
  %i_advise = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 2
  %6 = ptrtoint ptr %i_advise to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_advise, align 4
  %i_advise5 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %i_advise5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %i_advise5, align 1
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 53
  %11 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %13 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %14 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %12, [1 x i32] %14) #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %call1.i)
  %i_uid = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %i_uid to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %i_uid, align 1
  %17 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i226 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %s_user_ns.i.i226 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_user_ns.i.i226, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %21 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack.i227 = load i32, ptr %i_gid.i, align 8
  %22 = insertvalue [1 x i32] undef, i32 %.unpack.i227, 0
  %call1.i228 = tail call i32 @from_kgid(ptr noundef %20, [1 x i32] %22) #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %call1.i228)
  %i_gid = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %i_gid to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %i_gid, align 1
  %25 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %i_links = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %i_links to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %i_links, align 1
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !96
  %and.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %31 = tail call ptr @llvm.returnaddress(i32 0) #9
  %32 = ptrtoint ptr %31 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %32) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %32) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = tail call ptr @llvm.returnaddress(i32 0) #9
  %34 = ptrtoint ptr %33 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %34) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %34) #9
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !97
  %and.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !98

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #9, !srcloc !99
  %36 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !101
  %38 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %39, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %37, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %39, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  %40 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  %42 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %43, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %44 = tail call i64 @llvm.bswap.i64(i64 %41)
  %i_size = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 6
  %45 = ptrtoint ptr %i_size to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %i_size, align 1
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %46 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_blocks, align 8
  %shr = lshr i64 %47, 3
  %add = add nuw nsw i64 %shr, 1
  %48 = tail call i64 @llvm.bswap.i64(i64 %add)
  %i_blocks9 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 7
  %49 = ptrtoint ptr %i_blocks9 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %48, ptr %i_blocks9, align 1
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.extent_tree, ptr %1, i32 0, i32 5
  tail call void @_raw_read_lock(ptr noundef %lock) #9
  %largest = getelementptr inbounds %struct.extent_tree, ptr %1, i32 0, i32 3
  %i_ext = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 22
  %50 = ptrtoint ptr %largest to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %largest, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #9
  %53 = ptrtoint ptr %i_ext to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %i_ext, align 1
  %blk.i = getelementptr inbounds %struct.extent_tree, ptr %1, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %blk.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %blk.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  %blk2.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 22, i32 1
  %57 = ptrtoint ptr %blk2.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %blk2.i, align 1
  %len.i = getelementptr inbounds %struct.extent_tree, ptr %1, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #9
  %len3.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 22, i32 2
  %61 = ptrtoint ptr %len3.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %len3.i, align 1
  tail call void @_raw_read_unlock(ptr noundef %lock) #9
  br label %if.end

if.else:                                          ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_ext11 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 22
  %62 = call ptr @memset(ptr %i_ext11, i32 0, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i_inline.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 2
  %63 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %i_inline.i, align 1
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %64 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags.i.i, align 4
  %66 = and i32 %65, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i229 = icmp eq i32 %66, 0
  br i1 %tobool.not.i229, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %i_inline.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %68 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags.i.i, align 4
  %70 = and i32 %69, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool4.not.i = icmp eq i32 %70, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then5.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %i_inline.i, align 1
  %73 = or i8 %72, 2
  store i8 %73, ptr %i_inline.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i.if.end10.i_crit_edge
  %74 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %flags.i.i, align 4
  %76 = and i32 %75, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool12.not.i = icmp eq i32 %76, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end18.i_crit_edge, label %if.then13.i

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %i_inline.i, align 1
  %79 = or i8 %78, 4
  store i8 %79, ptr %i_inline.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end18.i_crit_edge
  %80 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flags.i.i, align 4
  %82 = and i32 %81, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool20.not.i = icmp eq i32 %82, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end26.i_crit_edge, label %if.then21.i

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %i_inline.i, align 1
  %85 = or i8 %84, 8
  store i8 %85, ptr %i_inline.i, align 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end26.i_crit_edge
  %86 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %flags.i.i, align 4
  %88 = and i32 %87, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool28.not.i = icmp eq i32 %88, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end34.i_crit_edge, label %if.then29.i

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %i_inline.i, align 1
  %91 = or i8 %90, 16
  store i8 %91, ptr %i_inline.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end34.i_crit_edge
  %92 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %flags.i.i, align 4
  %94 = and i32 %93, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool36.not.i = icmp eq i32 %94, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end42.i_crit_edge, label %if.then37.i

if.end34.i.if.end42.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %i_inline.i, align 1
  %97 = or i8 %96, 32
  store i8 %97, ptr %i_inline.i, align 1
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then37.i, %if.end34.i.if.end42.i_crit_edge
  %98 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %flags.i.i, align 4
  %100 = and i32 %99, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool44.not.i = icmp eq i32 %100, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end50.i_crit_edge, label %if.then45.i

if.end42.i.if.end50.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %i_inline.i, align 1
  %103 = or i8 %102, 64
  store i8 %103, ptr %i_inline.i, align 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i, %if.end42.i.if.end50.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8, i32 1
  %104 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %106 = and i32 %105, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool52.not.i = icmp eq i32 %106, 0
  br i1 %tobool52.not.i, label %if.end50.i.set_raw_inline.exit_crit_edge, label %if.then53.i

if.end50.i.set_raw_inline.exit_crit_edge:         ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_raw_inline.exit

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %i_inline.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %i_inline.i, align 1
  %109 = or i8 %108, -128
  store i8 %109, ptr %i_inline.i, align 1
  br label %set_raw_inline.exit

set_raw_inline.exit:                              ; preds = %if.then53.i, %if.end50.i.set_raw_inline.exit_crit_edge
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %110 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %i_atime, align 8
  %112 = tail call i64 @llvm.bswap.i64(i64 %111)
  %i_atime12 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 8
  %113 = ptrtoint ptr %i_atime12 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 8)
  store i64 %112, ptr %i_atime12, align 1
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %114 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %i_ctime, align 8
  %116 = tail call i64 @llvm.bswap.i64(i64 %115)
  %i_ctime14 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 9
  %117 = ptrtoint ptr %i_ctime14 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 %116, ptr %i_ctime14, align 1
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %118 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %i_mtime, align 8
  %120 = tail call i64 @llvm.bswap.i64(i64 %119)
  %i_mtime16 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 10
  %121 = ptrtoint ptr %i_mtime16 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 %120, ptr %i_mtime16, align 1
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %122 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tv_nsec, align 8
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  %i_atime_nsec = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 11
  %125 = ptrtoint ptr %i_atime_nsec to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %124, ptr %i_atime_nsec, align 1
  %tv_nsec19 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %126 = ptrtoint ptr %tv_nsec19 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tv_nsec19, align 8
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  %i_ctime_nsec = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 12
  %129 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %i_ctime_nsec, align 1
  %tv_nsec21 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %130 = ptrtoint ptr %tv_nsec21 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tv_nsec21, align 8
  %132 = tail call i32 @llvm.bswap.i32(i32 %131)
  %i_mtime_nsec = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 13
  %133 = ptrtoint ptr %i_mtime_nsec to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %132, ptr %i_mtime_nsec, align 1
  %134 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %inode, align 8
  %136 = and i16 %135, -4096
  %137 = zext i16 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %136, label %set_raw_inline.exit.if.end36_crit_edge [
    i16 16384, label %if.then24
    i16 -32768, label %if.then32
  ]

set_raw_inline.exit.if.end36_crit_edge:           ; preds = %set_raw_inline.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then24:                                        ; preds = %set_raw_inline.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_current_depth = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 4
  %138 = ptrtoint ptr %i_current_depth to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %i_current_depth, align 8
  %140 = tail call i32 @llvm.bswap.i32(i32 %139)
  %141 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 15
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %140, ptr %141, align 1
  br label %if.end36

if.then32:                                        ; preds = %set_raw_inline.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_gc_failures = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 5
  %143 = ptrtoint ptr %i_gc_failures to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %i_gc_failures, align 4
  %conv34 = trunc i32 %144 to i16
  %145 = tail call i16 @llvm.bswap.i16(i16 %conv34)
  %146 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 15
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 %145, ptr %146, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then24, %set_raw_inline.exit.if.end36_crit_edge
  %i_xattr_nid = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 15
  %148 = ptrtoint ptr %i_xattr_nid to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %i_xattr_nid, align 8
  %150 = tail call i32 @llvm.bswap.i32(i32 %149)
  %i_xattr_nid38 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 16
  %151 = ptrtoint ptr %i_xattr_nid38 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 4)
  store i32 %150, ptr %i_xattr_nid38, align 1
  %i_flags = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 1
  %152 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %i_flags, align 8
  %154 = tail call i32 @llvm.bswap.i32(i32 %153)
  %i_flags40 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 17
  %155 = ptrtoint ptr %i_flags40 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 4)
  store i32 %154, ptr %i_flags40, align 1
  %i_pino = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 6
  %156 = ptrtoint ptr %i_pino to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %i_pino, align 4
  %158 = tail call i32 @llvm.bswap.i32(i32 %157)
  %i_pino42 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 18
  %159 = ptrtoint ptr %i_pino42 to i32
  call void @__asan_storeN_noabort(i32 %159, i32 4)
  store i32 %158, ptr %i_pino42, align 1
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %160 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %i_generation, align 8
  %162 = tail call i32 @llvm.bswap.i32(i32 %161)
  %i_generation43 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 14
  %163 = ptrtoint ptr %i_generation43 to i32
  call void @__asan_storeN_noabort(i32 %163, i32 4)
  store i32 %162, ptr %i_generation43, align 1
  %i_dir_level = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 3
  %164 = ptrtoint ptr %i_dir_level to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %i_dir_level, align 1
  %i_dir_level45 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 21
  %166 = ptrtoint ptr %i_dir_level45 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %i_dir_level45, align 1
  %167 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %flags.i.i, align 4
  %169 = and i32 %168, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool47.not = icmp eq i32 %169, 0
  br i1 %tobool47.not, label %if.end36.if.end112_crit_edge, label %if.then48

if.end36.if.end112_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then48:                                        ; preds = %if.end36
  %i_extra_isize = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 29
  %170 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %i_extra_isize, align 4
  %conv50 = trunc i32 %171 to i16
  %172 = tail call i16 @llvm.bswap.i16(i16 %conv50)
  %173 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_storeN_noabort(i32 %174, i32 2)
  store i16 %172, ptr %173, align 1
  %175 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %176, i32 0, i32 33
  %177 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %s_fs_info.i.i, align 16
  %raw_super.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %raw_super.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %raw_super.i, align 8
  %feature.i = getelementptr inbounds %struct.f2fs_super_block, ptr %180, i32 0, i32 34
  %181 = ptrtoint ptr %feature.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %feature.i, align 1
  %183 = and i32 %182, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool54.not = icmp eq i32 %183, 0
  br i1 %tobool54.not, label %if.then48.if.end59_crit_edge, label %if.then55

if.then48.if.end59_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then55:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %i_inline_xattr_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %184 = ptrtoint ptr %i_inline_xattr_size to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %i_inline_xattr_size, align 4
  %conv57 = trunc i32 %185 to i16
  %186 = tail call i16 @llvm.bswap.i16(i16 %conv57)
  %i_inline_xattr_size58 = getelementptr inbounds %struct.anon.90, ptr %173, i32 0, i32 1
  %187 = ptrtoint ptr %i_inline_xattr_size58 to i32
  call void @__asan_storeN_noabort(i32 %187, i32 2)
  store i16 %186, ptr %i_inline_xattr_size58, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then48.if.end59_crit_edge
  %188 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i233 = getelementptr inbounds %struct.super_block, ptr %189, i32 0, i32 33
  %190 = ptrtoint ptr %s_fs_info.i.i233 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %s_fs_info.i.i233, align 16
  %raw_super.i234 = getelementptr inbounds %struct.f2fs_sb_info, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %raw_super.i234 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %raw_super.i234, align 8
  %feature.i235 = getelementptr inbounds %struct.f2fs_super_block, ptr %193, i32 0, i32 34
  %194 = ptrtoint ptr %feature.i235 to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %feature.i235, align 1
  %196 = and i32 %195, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool62.not = icmp eq i32 %196, 0
  br i1 %tobool62.not, label %if.end59.if.end73_crit_edge, label %land.lhs.true

if.end59.if.end73_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

land.lhs.true:                                    ; preds = %if.end59
  %197 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %i_extra_isize, align 4
  %199 = add i32 %198, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -368, i32 %199)
  %cmp66 = icmp ult i32 %199, -368
  br i1 %cmp66, label %if.then68, label %land.lhs.true.if.end73_crit_edge

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %i_projid70 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 30
  %200 = ptrtoint ptr %i_projid70 to i32
  call void @__asan_load4_noabort(i32 %200)
  %.unpack = load i32, ptr %i_projid70, align 8
  %201 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call71 = tail call i32 @from_kprojid(ptr noundef nonnull @init_user_ns, [1 x i32] %201) #9
  %202 = tail call i32 @llvm.bswap.i32(i32 %call71)
  %i_projid72 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23, i32 0, i32 1
  %203 = ptrtoint ptr %i_projid72 to i32
  call void @__asan_storeN_noabort(i32 %203, i32 4)
  store i32 %202, ptr %i_projid72, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %land.lhs.true.if.end73_crit_edge, %if.end59.if.end73_crit_edge
  %204 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i239 = getelementptr inbounds %struct.super_block, ptr %205, i32 0, i32 33
  %206 = ptrtoint ptr %s_fs_info.i.i239 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %s_fs_info.i.i239, align 16
  %raw_super.i240 = getelementptr inbounds %struct.f2fs_sb_info, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %raw_super.i240 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %raw_super.i240, align 8
  %feature.i241 = getelementptr inbounds %struct.f2fs_super_block, ptr %209, i32 0, i32 34
  %210 = ptrtoint ptr %feature.i241 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %211 = load i32, ptr %feature.i241, align 1
  %212 = and i32 %211, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool76.not = icmp eq i32 %212, 0
  br i1 %tobool76.not, label %if.end73.if.end90_crit_edge, label %land.lhs.true77

if.end73.if.end90_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

land.lhs.true77:                                  ; preds = %if.end73
  %213 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %i_extra_isize, align 4
  %215 = add i32 %214, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -380, i32 %215)
  %cmp81 = icmp ult i32 %215, -380
  br i1 %cmp81, label %if.then83, label %land.lhs.true77.if.end90_crit_edge

land.lhs.true77.if.end90_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then83:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  %i_crtime = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 32
  %216 = ptrtoint ptr %i_crtime to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %i_crtime, align 8
  %218 = tail call i64 @llvm.bswap.i64(i64 %217)
  %i_crtime86 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23, i32 0, i32 3
  %219 = ptrtoint ptr %i_crtime86 to i32
  call void @__asan_storeN_noabort(i32 %219, i32 8)
  store i64 %218, ptr %i_crtime86, align 1
  %tv_nsec89 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 32, i32 1
  %220 = ptrtoint ptr %tv_nsec89 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %tv_nsec89, align 8
  %222 = tail call i32 @llvm.bswap.i32(i32 %221)
  %i_crtime_nsec = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23, i32 0, i32 5
  %223 = ptrtoint ptr %i_crtime_nsec to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %222, ptr %i_crtime_nsec, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.then83, %land.lhs.true77.if.end90_crit_edge, %if.end73.if.end90_crit_edge
  %224 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i245 = getelementptr inbounds %struct.super_block, ptr %225, i32 0, i32 33
  %226 = ptrtoint ptr %s_fs_info.i.i245 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %s_fs_info.i.i245, align 16
  %raw_super.i246 = getelementptr inbounds %struct.f2fs_sb_info, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %raw_super.i246 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %raw_super.i246, align 8
  %feature.i247 = getelementptr inbounds %struct.f2fs_super_block, ptr %229, i32 0, i32 34
  %230 = ptrtoint ptr %feature.i247 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %feature.i247, align 1
  %232 = and i32 %231, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool93.not = icmp eq i32 %232, 0
  br i1 %tobool93.not, label %if.end90.if.end112_crit_edge, label %land.lhs.true94

if.end90.if.end112_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

land.lhs.true94:                                  ; preds = %if.end90
  %233 = ptrtoint ptr %i_extra_isize to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %i_extra_isize, align 4
  %235 = add i32 %234, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -394, i32 %235)
  %cmp98 = icmp ult i32 %235, -394
  br i1 %cmp98, label %if.then100, label %land.lhs.true94.if.end112_crit_edge

land.lhs.true94.if.end112_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then100:                                       ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #11
  %i_compr_blocks = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_compr_blocks, i32 noundef 4) #9
  %236 = ptrtoint ptr %i_compr_blocks to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %i_compr_blocks, align 4
  %conv103 = sext i32 %237 to i64
  %238 = tail call i64 @llvm.bswap.i64(i64 %conv103)
  %i_compr_blocks104 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23, i32 0, i32 6
  %239 = ptrtoint ptr %i_compr_blocks104 to i32
  call void @__asan_storeN_noabort(i32 %239, i32 8)
  store i64 %238, ptr %i_compr_blocks104, align 1
  %i_compress_algorithm = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 35
  %240 = ptrtoint ptr %i_compress_algorithm to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %i_compress_algorithm, align 4
  %i_compress_algorithm106 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23, i32 0, i32 8
  %242 = ptrtoint ptr %i_compress_algorithm106 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %i_compress_algorithm106, align 1
  %i_compress_flag = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 38
  %243 = ptrtoint ptr %i_compress_flag to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %i_compress_flag, align 8
  %245 = tail call i16 @llvm.bswap.i16(i16 %244)
  %i_compress_flag108 = getelementptr inbounds %struct.anon.90, ptr %173, i32 0, i32 9
  %246 = ptrtoint ptr %i_compress_flag108 to i32
  call void @__asan_storeN_noabort(i32 %246, i32 2)
  store i16 %245, ptr %i_compress_flag108, align 1
  %i_log_cluster_size = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 36
  %247 = ptrtoint ptr %i_log_cluster_size to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %i_log_cluster_size, align 1
  %i_log_cluster_size110 = getelementptr inbounds %struct.anon.90, ptr %173, i32 0, i32 8
  %249 = ptrtoint ptr %i_log_cluster_size110 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %i_log_cluster_size110, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.then100, %land.lhs.true94.if.end112_crit_edge, %if.end90.if.end112_crit_edge, %if.end36.if.end112_crit_edge
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 29
  %250 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %251, 2
  %252 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %inode, align 8
  %254 = and i16 %253, -4096
  %255 = zext i16 %254 to i64
  call void @__sanitizer_cov_trace_switch(i64 %255, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %254, label %if.end112.__set_inode_rdev.exit_crit_edge [
    i16 8192, label %if.end112.if.then.i250_crit_edge
    i16 24576, label %if.end112.if.then.i250_crit_edge262
  ]

if.end112.if.then.i250_crit_edge262:              ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i250

if.end112.if.then.i250_crit_edge:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i250

if.end112.__set_inode_rdev.exit_crit_edge:        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %__set_inode_rdev.exit

if.then.i250:                                     ; preds = %if.end112.if.then.i250_crit_edge, %if.end112.if.then.i250_crit_edge262
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %256 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %i_rdev.i, align 8
  %258 = and i32 %257, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then.i250
  call void @__sanitizer_cov_trace_pc() #11
  %260 = lshr i32 %257, 12
  %shl.i.i = and i32 %260, 65280
  %.masked.i = and i32 %257, 65535
  %conv11.i = or i32 %shl.i.i, %.masked.i
  %261 = tail call i32 @llvm.bswap.i32(i32 %conv11.i) #9
  %262 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23
  %arrayidx.i = getelementptr [923 x i32], ptr %262, i32 0, i32 %div1.i.i
  %263 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %263, i32 4)
  store i32 %261, ptr %arrayidx.i, align 1
  br label %if.end20.sink.split.i

if.else.i:                                        ; preds = %if.then.i250
  call void @__sanitizer_cov_trace_pc() #11
  %264 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23
  %arrayidx13.i = getelementptr [923 x i32], ptr %264, i32 0, i32 %div1.i.i
  %265 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_storeN_noabort(i32 %265, i32 4)
  store i32 0, ptr %arrayidx13.i, align 1
  %266 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %i_rdev.i, align 8
  %and1.i.i = and i32 %267, 255
  %268 = lshr i32 %267, 12
  %shl.i34.i = and i32 %268, 1048320
  %or.i35.i = or i32 %shl.i34.i, %and1.i.i
  %and2.i.i = shl i32 %267, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i35.i, %shl3.i.i
  %269 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #9
  %add16.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx17.i = getelementptr [923 x i32], ptr %264, i32 0, i32 %add16.i
  %270 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_storeN_noabort(i32 %270, i32 4)
  store i32 %269, ptr %arrayidx17.i, align 1
  br label %if.end20.sink.split.i

if.end20.sink.split.i:                            ; preds = %if.else.i, %if.then8.i
  %.sink36.i = phi i32 [ 1, %if.then8.i ], [ 2, %if.else.i ]
  %271 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %.sink36.i, %div1.i.i
  %arrayidx12.i = getelementptr [923 x i32], ptr %271, i32 0, i32 %add.i
  %272 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_storeN_noabort(i32 %272, i32 4)
  store i32 0, ptr %arrayidx12.i, align 1
  br label %__set_inode_rdev.exit

__set_inode_rdev.exit:                            ; preds = %if.end20.sink.split.i, %if.end112.__set_inode_rdev.exit_crit_edge
  %273 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp113 = icmp eq i32 %274, 0
  br i1 %cmp113, label %if.then115, label %__set_inode_rdev.exit.if.end116_crit_edge

__set_inode_rdev.exit.if.end116_crit_edge:        ; preds = %__set_inode_rdev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then115:                                       ; preds = %__set_inode_rdev.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @clear_page_private_inline(ptr noundef %node_page)
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %__set_inode_rdev.exit.if.end116_crit_edge
  %i_disk_time = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33
  %275 = call ptr @memcpy(ptr %i_disk_time, ptr %i_atime, i32 16)
  %arrayidx122 = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33, i32 1
  %276 = call ptr @memcpy(ptr %arrayidx122, ptr %i_ctime, i32 16)
  %arrayidx126 = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33, i32 2
  %277 = call ptr @memcpy(ptr %arrayidx126, ptr %i_mtime, i32 16)
  %arrayidx130 = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33, i32 3
  %i_crtime132 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 32
  %278 = call ptr @memcpy(ptr %arrayidx130, ptr %i_crtime132, i32 16)
  %279 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i252 = getelementptr inbounds %struct.super_block, ptr %280, i32 0, i32 33
  %281 = ptrtoint ptr %s_fs_info.i.i252 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %s_fs_info.i.i252, align 16
  %call.i.i253 = tail call ptr @page_address(ptr noundef %node_page) #9
  %call.i.i.i = tail call ptr @page_address(ptr noundef %node_page) #9
  %raw_super.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %282, i32 0, i32 2
  %283 = ptrtoint ptr %raw_super.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %raw_super.i.i.i, align 8
  %feature.i.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %284, i32 0, i32 34
  %285 = ptrtoint ptr %feature.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %285, i32 4)
  %286 = load i32, ptr %feature.i.i.i, align 1
  %287 = and i32 %286, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool.not.i.i254 = icmp eq i32 %287, 0
  br i1 %tobool.not.i.i254, label %if.end116.f2fs_inode_chksum_set.exit_crit_edge, label %if.end.i.i

if.end116.f2fs_inode_chksum_set.exit_crit_edge:   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_inode_chksum_set.exit

if.end.i.i:                                       ; preds = %if.end116
  %call.i.i.i.i = tail call ptr @page_address(ptr noundef %node_page) #9
  %footer.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i, i32 0, i32 1
  %288 = ptrtoint ptr %footer.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %288, i32 4)
  %289 = load i32, ptr %footer.i.i.i, align 1
  %ino.i.i.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %290 = ptrtoint ptr %ino.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %291 = load i32, ptr %ino.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %289, i32 %291)
  %cmp.i.i.i = icmp eq i32 %289, %291
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.f2fs_inode_chksum_set.exit_crit_edge

if.end.i.i.f2fs_inode_chksum_set.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_inode_chksum_set.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %i_inline.i.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i, i32 0, i32 2
  %292 = ptrtoint ptr %i_inline.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %i_inline.i.i, align 1
  %294 = and i8 %293, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool3.not.i.i = icmp eq i8 %294, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.f2fs_inode_chksum_set.exit_crit_edge, label %f2fs_enable_inode_chksum.exit.i

lor.lhs.false.i.i.f2fs_inode_chksum_set.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_inode_chksum_set.exit

f2fs_enable_inode_chksum.exit.i:                  ; preds = %lor.lhs.false.i.i
  %295 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i.i, i32 0, i32 23
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_loadN_noabort(i32 %296, i32 2)
  %297 = load i16, ptr %295, align 1
  %298 = tail call i16 @llvm.bswap.i16(i16 %297) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %298)
  %cmp.i.i = icmp ugt i16 %298, 11
  br i1 %cmp.i.i, label %if.end.i255, label %f2fs_enable_inode_chksum.exit.i.f2fs_inode_chksum_set.exit_crit_edge

f2fs_enable_inode_chksum.exit.i.f2fs_inode_chksum_set.exit_crit_edge: ; preds = %f2fs_enable_inode_chksum.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %f2fs_inode_chksum_set.exit

if.end.i255:                                      ; preds = %f2fs_enable_inode_chksum.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call fastcc i32 @f2fs_inode_chksum(ptr noundef %282, ptr noundef %node_page) #9
  %299 = tail call i32 @llvm.bswap.i32(i32 %call2.i) #9
  %i_inode_checksum.i = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i253, i32 0, i32 23, i32 0, i32 2
  %300 = ptrtoint ptr %i_inode_checksum.i to i32
  call void @__asan_storeN_noabort(i32 %300, i32 4)
  store i32 %299, ptr %i_inode_checksum.i, align 1
  br label %f2fs_inode_chksum_set.exit

f2fs_inode_chksum_set.exit:                       ; preds = %if.end.i255, %f2fs_enable_inode_chksum.exit.i.f2fs_inode_chksum_set.exit_crit_edge, %lor.lhs.false.i.i.f2fs_inode_chksum_set.exit_crit_edge, %if.end.i.i.f2fs_inode_chksum_set.exit_crit_edge, %if.end116.f2fs_inode_chksum_set.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_page_writeback(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kprojid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_page_private_inline(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private) #9
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !98

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.24) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !104
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %PagePrivate.exit
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i9 = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i9, label %if.then.i10, label %ClearPagePrivate.exit, !prof !98

if.then.i10:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.24) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !105
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.then2
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #9
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !85

if.then.i.i:                                      ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !98

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.25) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !106
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !108
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@clear_page_private_inline, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !89

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end3_crit_edge

folio_put_testzero.exit.i.i.if.end3_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %14) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end3_crit_edge, %PagePrivate.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_update_inode_page(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %call123 = tail call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %5) #9
  %cmp.i24 = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %entry.if.then_crit_edge, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %if.then4.if.then_crit_edge, %entry.if.then_crit_edge
  %call125 = phi ptr [ %call1, %if.then4.if.then_crit_edge ], [ %call123, %entry.if.then_crit_edge ]
  %6 = ptrtoint ptr %call125 to i32
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %6, label %if.then7 [
    i32 -12, label %if.then4
    i32 -2, label %if.then.cleanup10_crit_edge
  ]

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup10

if.then4:                                         ; preds = %if.then
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 699, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %call1 = tail call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %9) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4.if.then_crit_edge, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4.if.then_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @f2fs_stop_checkpoint(ptr noundef %3, i1 noundef zeroext false) #9
  br label %cleanup10

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call1.lcssa = phi ptr [ %call123, %entry.if.end9_crit_edge ], [ %call1, %if.then4.if.end9_crit_edge ]
  tail call void @f2fs_update_inode(ptr noundef %inode, ptr noundef %call1.lcssa)
  tail call fastcc void @f2fs_put_page(ptr noundef %call1.lcssa)
  br label %cleanup10

cleanup10:                                        ; preds = %if.end9, %if.then7, %if.then.cleanup10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_node_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_stop_checkpoint(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !85

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !98

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !85

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.26) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !110
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !85

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool3.not, label %do.body8, label %do.end12, !prof !98

do.body8:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2610, 0\0A.popsection", ""() #9, !srcloc !111
  unreachable

do.end12:                                         ; preds = %PageLocked.exit
  tail call void @unlock_page(ptr noundef nonnull %page) #9
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i.i1 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i1, 0
  br i1 %tobool.not.i.i2, label %if.end.i.i5, label %if.then.i.i4, !prof !85

if.then.i.i4:                                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i3 = add i32 %16, -1
  br label %_compound_head.exit.i7

if.end.i.i5:                                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i7

_compound_head.exit.i7:                           ; preds = %if.end.i.i5, %if.then.i.i4
  %retval.0.i.i6 = phi i32 [ %sub.i.i3, %if.then.i.i4 ], [ %17, %if.end.i.i5 ]
  %18 = inttoptr i32 %retval.0.i.i6 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !98

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.25) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !106
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i7
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !108
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !89

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %18) #9
  br label %return

return:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_write_inode(ptr noundef %inode, ptr noundef readonly %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %node_ino_num = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 48
  %6 = ptrtoint ptr %node_ino_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_ino_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %meta_ino_num = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 49
  %8 = ptrtoint ptr %meta_ino_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %meta_ino_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp2 = icmp eq i32 %5, %9
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i_disk_time.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %10 = ptrtoint ptr %i_disk_time.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_disk_time.i, align 8
  %12 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_atime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp.i.i = icmp eq i64 %11, %13
  br i1 %cmp.i.i, label %timespec64_equal.exit.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

timespec64_equal.exit.i:                          ; preds = %if.end
  %tv_nsec.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i.i, align 8
  %tv_nsec2.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %16 = ptrtoint ptr %tv_nsec2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp3.i.not.i = icmp eq i32 %15, %17
  br i1 %cmp3.i.not.i, label %if.end.i, label %timespec64_equal.exit.i.if.end6_crit_edge

timespec64_equal.exit.i.if.end6_crit_edge:        ; preds = %timespec64_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end.i:                                         ; preds = %timespec64_equal.exit.i
  %add.ptr.i = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33, i32 1
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.i, align 8
  %20 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_ctime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp.i33.i = icmp eq i64 %19, %21
  br i1 %cmp.i33.i, label %timespec64_equal.exit39.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

timespec64_equal.exit39.i:                        ; preds = %if.end.i
  %tv_nsec.i34.i = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33, i32 1, i32 1
  %22 = ptrtoint ptr %tv_nsec.i34.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tv_nsec.i34.i, align 8
  %tv_nsec2.i35.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %24 = ptrtoint ptr %tv_nsec2.i35.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tv_nsec2.i35.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp3.i36.not.i = icmp eq i32 %23, %25
  br i1 %cmp3.i36.not.i, label %if.end8.i, label %timespec64_equal.exit39.i.if.end6_crit_edge

timespec64_equal.exit39.i.if.end6_crit_edge:      ; preds = %timespec64_equal.exit39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end8.i:                                        ; preds = %timespec64_equal.exit39.i
  %add.ptr12.i = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33, i32 2
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %26 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr12.i, align 8
  %28 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_mtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp.i40.i = icmp eq i64 %27, %29
  br i1 %cmp.i40.i, label %timespec64_equal.exit46.i, label %if.end8.i.if.end6_crit_edge

if.end8.i.if.end6_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

timespec64_equal.exit46.i:                        ; preds = %if.end8.i
  %tv_nsec.i41.i = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33, i32 2, i32 1
  %30 = ptrtoint ptr %tv_nsec.i41.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tv_nsec.i41.i, align 8
  %tv_nsec2.i42.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %32 = ptrtoint ptr %tv_nsec2.i42.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec2.i42.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp3.i43.not.i = icmp eq i32 %31, %33
  br i1 %cmp3.i43.not.i, label %if.end16.i, label %timespec64_equal.exit46.i.if.end6_crit_edge

timespec64_equal.exit46.i.if.end6_crit_edge:      ; preds = %timespec64_equal.exit46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end16.i:                                       ; preds = %timespec64_equal.exit46.i
  %add.ptr20.i = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33, i32 3
  %i_crtime.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 32
  %34 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr20.i, align 8
  %36 = ptrtoint ptr %i_crtime.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_crtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp.i47.i = icmp eq i64 %35, %37
  br i1 %cmp.i47.i, label %timespec64_equal.exit53.i, label %if.end16.i.if.end6_crit_edge

if.end16.i.if.end6_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

timespec64_equal.exit53.i:                        ; preds = %if.end16.i
  %tv_nsec.i48.i = getelementptr %struct.f2fs_inode_info, ptr %inode, i32 0, i32 33, i32 3, i32 1
  %38 = ptrtoint ptr %tv_nsec.i48.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tv_nsec.i48.i, align 8
  %tv_nsec2.i49.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 32, i32 1
  %40 = ptrtoint ptr %tv_nsec2.i49.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tv_nsec2.i49.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp3.i50.not.i = icmp eq i32 %39, %41
  br i1 %cmp3.i50.not.i, label %land.lhs.true, label %timespec64_equal.exit53.i.if.end6_crit_edge

timespec64_equal.exit53.i.if.end6_crit_edge:      ; preds = %timespec64_equal.exit53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %timespec64_equal.exit53.i
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not = icmp eq i32 %44, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %timespec64_equal.exit53.i.if.end6_crit_edge, %if.end16.i.if.end6_crit_edge, %timespec64_equal.exit46.i.if.end6_crit_edge, %if.end8.i.if.end6_crit_edge, %timespec64_equal.exit39.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge, %timespec64_equal.exit.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  %45 = ptrtoint ptr %s_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %s_flag.i.i, align 4
  %47 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i, label %if.end6.if.end9_crit_edge, label %f2fs_is_checkpoint_ready.exit, !prof !85

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

f2fs_is_checkpoint_ready.exit:                    ; preds = %if.end6
  %call3.i = tail call fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %3) #9
  br i1 %call3.i, label %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, label %f2fs_is_checkpoint_ready.exit.if.end9_crit_edge

f2fs_is_checkpoint_ready.exit.if.end9_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

f2fs_is_checkpoint_ready.exit.cleanup_crit_edge:  ; preds = %f2fs_is_checkpoint_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %f2fs_is_checkpoint_ready.exit.if.end9_crit_edge, %if.end6.if.end9_crit_edge
  tail call void @f2fs_update_inode_page(ptr noundef %inode)
  %tobool10.not = icmp eq ptr %wbc, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true11:                                  ; preds = %if.end9
  %48 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool12.not = icmp eq i32 %49, 0
  br i1 %tobool12.not, label %land.lhs.true11.cleanup_crit_edge, label %if.then13

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @f2fs_balance_fs(ptr noundef %3, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -28, %f2fs_is_checkpoint_ready.exit.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %land.lhs.true11.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_balance_fs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_xattr_nid = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 15
  %4 = ptrtoint ptr %i_xattr_nid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_xattr_nid, align 8
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i.i, align 4
  %8 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @f2fs_drop_inmem_pages(ptr noundef %inode) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @trace_f2fs_evict_inode(ptr noundef %inode)
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #9
  %9 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #9
  br i1 %call3, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73
  %12 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mount_opt, align 8
  %and = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true5

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %14 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %inode, align 8
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %16)
  %cmp.i = icmp eq i16 %16, -32768
  br i1 %cmp.i, label %f2fs_compressed_file.exit, label %land.lhs.true5.if.end9_crit_edge

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

f2fs_compressed_file.exit:                        ; preds = %land.lhs.true5
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool7.not = icmp sgt i32 %18, -1
  br i1 %tobool7.not, label %f2fs_compressed_file.exit.if.end9_crit_edge, label %if.then8

f2fs_compressed_file.exit.if.end9_crit_edge:      ; preds = %f2fs_compressed_file.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %f2fs_compressed_file.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino, align 8
  tail call void @f2fs_invalidate_compress_pages(ptr noundef %3, i32 noundef %20) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %f2fs_compressed_file.exit.if.end9_crit_edge, %land.lhs.true5.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %lor.lhs.false.if.end9_crit_edge
  %i_ino10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %21 = ptrtoint ptr %i_ino10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_ino10, align 8
  %node_ino_num = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 48
  %23 = ptrtoint ptr %node_ino_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node_ino_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp = icmp eq i32 %22, %24
  br i1 %cmp, label %if.end9.out_clear_crit_edge, label %lor.lhs.false11

if.end9.out_clear_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clear

lor.lhs.false11:                                  ; preds = %if.end9
  %meta_ino_num = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 49
  %25 = ptrtoint ptr %meta_ino_num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %meta_ino_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp13 = icmp eq i32 %22, %26
  br i1 %cmp13, label %lor.lhs.false11.out_clear_crit_edge, label %lor.lhs.false14

lor.lhs.false11.out_clear_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clear

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %nm_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 9
  %27 = ptrtoint ptr %nm_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nm_info.i, align 8
  %max_nid = getelementptr inbounds %struct.f2fs_nm_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %max_nid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_nid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %30)
  %cmp17 = icmp eq i32 %22, %30
  br i1 %cmp17, label %lor.lhs.false14.out_clear_crit_edge, label %do.body

lor.lhs.false14.out_clear_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clear

do.body:                                          ; preds = %lor.lhs.false14
  %dirty_pages.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dirty_pages.i, i32 noundef 4) #9
  %31 = ptrtoint ptr %dirty_pages.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %dirty_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool21.not = icmp eq i32 %32, 0
  br i1 %tobool21.not, label %do.end31, label %do.body25, !prof !85

do.body25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 763, 0\0A.popsection", ""() #9, !srcloc !112
  unreachable

do.end31:                                         ; preds = %do.body
  tail call void @f2fs_remove_dirty_inode(ptr noundef %inode) #9
  tail call void @f2fs_destroy_extent_tree(ptr noundef %inode) #9
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool32.not = icmp eq i32 %34, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %do.end31.no_delete_crit_edge

do.end31.no_delete_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_delete

lor.lhs.false33:                                  ; preds = %do.end31
  %call34 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #9
  br i1 %call34, label %lor.lhs.false33.no_delete_crit_edge, label %if.end36

lor.lhs.false33.no_delete_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_delete

if.end36:                                         ; preds = %lor.lhs.false33
  %call37 = tail call i32 @f2fs_dquot_initialize(ptr noundef %inode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 12, ptr noundef %s_flag.i) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %35 = ptrtoint ptr %i_ino10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino10, align 8
  tail call void @f2fs_remove_ino_entry(ptr noundef %3, i32 noundef %36, i32 noundef 1) #9
  %37 = ptrtoint ptr %i_ino10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino10, align 8
  tail call void @f2fs_remove_ino_entry(ptr noundef %3, i32 noundef %38, i32 noundef 2) #9
  %39 = ptrtoint ptr %i_ino10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino10, align 8
  tail call void @f2fs_remove_ino_entry(ptr noundef %3, i32 noundef %40, i32 noundef 4) #9
  %41 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %42, i32 0, i32 32, i32 2, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.27, i32 noundef 49) #9
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %42, i32 0, i32 32, i32 2, i32 2, i32 5
  %43 = tail call ptr @llvm.returnaddress(i32 0) #9
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %44) #9
  %45 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end40.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end40.rcu_sync_is_idle.exit.i.i.i_crit_edge:   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end40
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 35, ptr noundef nonnull @.str.29) #9
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end40.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %49 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool7.not.i.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !85

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %51 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !96
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %42, i32 0, i32 32, i32 2, i32 2, i32 1
  %52 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read_count.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %60, %54
  %61 = inttoptr i32 %add.i.i.i to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add21.i.i.i = add i32 %63, 1
  store i32 %add21.i.i.i, ptr %61, align 4
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !97
  %and.i.i.i.i.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !98

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #9, !srcloc !99
  br label %sb_start_intwrite.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #9
  br label %sb_start_intwrite.exit

sb_start_intwrite.exit:                           ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
  %65 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i58.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags.i.i) #9
  %69 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i265 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i265 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %72, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %73 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i, label %sb_start_intwrite.exit.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

sb_start_intwrite.exit.i_size_write.exit_crit_edge: ; preds = %sb_start_intwrite.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %sb_start_intwrite.exit
  %74 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i.i266 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i266 to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i267 = add i32 %77, 1
  store volatile i32 %add.i.i.i267, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  %78 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i, align 4
  %add.i3.i = add i32 %83, ptrtoint (ptr @lockdep_recursion to i32)
  %84 = inttoptr i32 %add.i3.i to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  %87 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i7.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %90, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool20.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %91 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i4.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i4.i to ptr
  %preempt_count.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i.i = icmp eq i32 %94, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %95 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i9.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %98, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %99 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %100
  %101 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %102, ptrtoint (ptr @hardirqs_enabled to i32)
  %103 = inttoptr i32 %add47.i.i to ptr
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %103, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !119
  %106 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i12.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %109, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool54.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !85

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %sb_start_intwrite.exit.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %110 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %111, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !120
  %dep_map.i.i.i268 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i268, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #9
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %112 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 0, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i268, i32 noundef %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !121
  %113 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %114, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !122
  %115 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i1.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %118, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 7, i32 1
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73, i32 7, i32 2
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  br label %retry

retry:                                            ; preds = %if.end66.retry_crit_edge, %i_size_write.exit
  %119 = ptrtoint ptr %i_xattr_nid to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %i_xattr_nid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i = icmp ne i32 %120, 0
  %121 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %i_blocks.i, align 8
  %shr.i = lshr i64 %122, 3
  %conv.i = zext i1 %tobool.not.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %conv.i)
  %cmp.i269.not = icmp ugt i64 %shr.i, %conv.i
  br i1 %cmp.i269.not, label %if.then46, label %retry.if.end48_crit_edge

retry.if.end48_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = tail call i32 @f2fs_truncate(ptr noundef %inode) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %retry.if.end48_crit_edge
  %err.2 = phi i32 [ %call47, %if.then46 ], [ 0, %retry.if.end48_crit_edge ]
  %123 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i270 = icmp eq i32 %124, 0
  br i1 %tobool.not.i270, label %if.end48.if.end59_crit_edge, label %if.end.i

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end.i:                                         ; preds = %if.end48
  %125 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %126, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end59_crit_edge, label %if.end3.i

if.end.i.if.end59_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i271 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #9
  %127 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #9, !srcloc !88
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #9
  %128 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %fault_info.i, align 4
  %130 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %131)
  %cmp.not.i = icmp ult i32 %129, %131
  br i1 %cmp.not.i, label %if.end3.i.if.end59_crit_edge, label %if.then50

if.end3.i.if.end59_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then50:                                        ; preds = %if.end3.i
  %call.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #9
  %132 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_evict_inode._rs, ptr noundef nonnull @__func__.f2fs_evict_inode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then50.if.then71_crit_edge, label %do.end56

if.then50.if.then71_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

do.end56:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %3, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %134, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 9) to i32))
  %135 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 9), align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %s_id, ptr noundef %135, ptr noundef nonnull @__func__.f2fs_evict_inode, ptr noundef %43) #12
  br label %if.then71

if.end59:                                         ; preds = %if.end3.i.if.end59_crit_edge, %if.end.i.if.end59_crit_edge, %if.end48.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool60.not = icmp eq i32 %err.2, 0
  br i1 %tobool60.not, label %if.then61, label %if.end59.if.end66_crit_edge

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then61:                                        ; preds = %if.end59
  tail call void @down_read(ptr noundef %cp_rwsem.i) #9
  %call62 = tail call i32 @f2fs_remove_inode_page(ptr noundef %inode) #9
  tail call void @up_read(ptr noundef %cp_rwsem.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call62)
  %cmp63 = icmp eq i32 %call62, -2
  br i1 %cmp63, label %if.then61.if.end75_crit_edge, label %if.then61.if.end66_crit_edge

if.then61.if.end66_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then61.if.end75_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end66:                                         ; preds = %if.then61.if.end66_crit_edge, %if.end59.if.end66_crit_edge
  %err.4 = phi i32 [ %err.2, %if.end59.if.end66_crit_edge ], [ %call62, %if.then61.if.end66_crit_edge ]
  %136 = zext i32 %err.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %err.4, label %if.end66.if.then71_crit_edge [
    i32 -12, label %if.end66.retry_crit_edge
    i32 0, label %if.end66.if.end75_crit_edge
  ]

if.end66.if.end75_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end66.retry_crit_edge:                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry

if.end66.if.then71_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

if.then71:                                        ; preds = %if.end66.if.then71_crit_edge, %do.end56, %if.then50.if.then71_crit_edge
  tail call void @f2fs_update_inode_page(ptr noundef %inode)
  %call72 = tail call zeroext i1 @dquot_initialize_needed(ptr noundef %inode) #9
  br i1 %call72, label %if.then73, label %if.then71.if.end75_crit_edge

if.then71.if.end75_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then73:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i273 = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 12, ptr noundef %s_flag.i273) #9
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.then71.if.end75_crit_edge, %if.end66.if.end75_crit_edge, %if.then61.if.end75_crit_edge
  %137 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i_sb.i, align 4
  %add.ptr1.i.i274 = getelementptr %struct.super_block, ptr %138, i32 0, i32 32, i32 2, i32 2
  %dep_map.i.i.i275 = getelementptr %struct.super_block, ptr %138, i32 0, i32 32, i32 2, i32 2, i32 5
  tail call void @lock_release(ptr noundef %dep_map.i.i.i275, i32 noundef %44) #9
  %139 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i.i.i276 = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i.i276 to ptr
  %preempt_count.i.i.i.i.i277 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i.i.i.i277 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i.i.i.i277, align 4
  %add.i.i.i.i278 = add i32 %142, 1
  store volatile i32 %add.i.i.i.i278, ptr %preempt_count.i.i.i.i.i277, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !123
  %call.i.i.i.i279 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i279)
  %tobool.not.i.i.i.i280 = icmp eq i32 %call.i.i.i.i279, 0
  br i1 %tobool.not.i.i.i.i280, label %land.lhs.true.i.i.i.i283, label %if.end75.rcu_sync_is_idle.exit.i.i.i288_crit_edge

if.end75.rcu_sync_is_idle.exit.i.i.i288_crit_edge: ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i288

land.lhs.true.i.i.i.i283:                         ; preds = %if.end75
  %call1.i.i.i.i281 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i281)
  %tobool2.not.i.i.i.i282 = icmp eq i32 %call1.i.i.i.i281, 0
  br i1 %tobool2.not.i.i.i.i282, label %land.lhs.true.i.i.i.i283.rcu_sync_is_idle.exit.i.i.i288_crit_edge, label %land.lhs.true3.i.i.i.i285

land.lhs.true.i.i.i.i283.rcu_sync_is_idle.exit.i.i.i288_crit_edge: ; preds = %land.lhs.true.i.i.i.i283
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i288

land.lhs.true3.i.i.i.i285:                        ; preds = %land.lhs.true.i.i.i.i283
  %.b8.i.i.i.i284 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i284, label %land.lhs.true3.i.i.i.i285.rcu_sync_is_idle.exit.i.i.i288_crit_edge, label %if.then.i.i.i.i286

land.lhs.true3.i.i.i.i285.rcu_sync_is_idle.exit.i.i.i288_crit_edge: ; preds = %land.lhs.true3.i.i.i.i285
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i288

if.then.i.i.i.i286:                               ; preds = %land.lhs.true3.i.i.i.i285
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 35, ptr noundef nonnull @.str.29) #9
  br label %rcu_sync_is_idle.exit.i.i.i288

rcu_sync_is_idle.exit.i.i.i288:                   ; preds = %if.then.i.i.i.i286, %land.lhs.true3.i.i.i.i285.rcu_sync_is_idle.exit.i.i.i288_crit_edge, %land.lhs.true.i.i.i.i283.rcu_sync_is_idle.exit.i.i.i288_crit_edge, %if.end75.rcu_sync_is_idle.exit.i.i.i288_crit_edge
  %143 = ptrtoint ptr %add.ptr1.i.i274 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %add.ptr1.i.i274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool7.not.i.i.i.i287 = icmp eq i32 %144, 0
  br i1 %tobool7.not.i.i.i.i287, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !85

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i288
  %145 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !96
  %read_count.i.i.i289 = getelementptr %struct.super_block, ptr %138, i32 0, i32 32, i32 2, i32 2, i32 1
  %146 = ptrtoint ptr %read_count.i.i.i289 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read_count.i.i.i289, align 4
  %148 = ptrtoint ptr %147 to i32
  %149 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i290 = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i.i.i290 to ptr
  %cpu.i.i.i291 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %cpu.i.i.i291 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cpu.i.i.i291, align 4
  %arrayidx.i.i.i292 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %152
  %153 = ptrtoint ptr %arrayidx.i.i.i292 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.i.i.i292, align 4
  %add.i.i.i293 = add i32 %154, %148
  %155 = inttoptr i32 %add.i.i.i293 to ptr
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  %add17.i.i.i = add i32 %157, -1
  store i32 %add17.i.i.i, ptr %155, align 4
  %158 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !97
  %and.i.i.i.i.i294 = and i32 %158, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i294)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i294, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !98

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %145) #9, !srcloc !99
  br label %sb_end_intwrite.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !124
  %159 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !96
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %138, i32 0, i32 32, i32 2, i32 2, i32 1
  %160 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read_count75.i.i.i, align 4
  %162 = ptrtoint ptr %161 to i32
  %163 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i122.i.i.i = and i32 %163, -16384
  %164 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %166
  %167 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %168, %162
  %169 = inttoptr i32 %add80.i.i.i to ptr
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %add81.i.i.i = add i32 %171, -1
  store i32 %add81.i.i.i, ptr %169, align 4
  %172 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !97
  %and.i.i123.i.i.i = and i32 %172, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !98

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %159) #9, !srcloc !99
  %writer.i.i.i = getelementptr %struct.super_block, ptr %138, i32 0, i32 32, i32 2, i32 2, i32 2
  %call111.i.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #9
  br label %sb_end_intwrite.exit

sb_end_intwrite.exit:                             ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !125
  %173 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i120.i.i.i = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i295 = add i32 %176, -1
  store volatile i32 %sub.i.i.i.i295, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %no_delete

no_delete:                                        ; preds = %sb_end_intwrite.exit, %lor.lhs.false33.no_delete_crit_edge, %do.end31.no_delete_crit_edge
  tail call void @dquot_drop(ptr noundef %inode) #9
  %177 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %flags.i.i, align 4
  %179 = and i32 %178, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool79.not = icmp eq i32 %179, 0
  br i1 %tobool79.not, label %no_delete.do.body85_crit_edge, label %if.then80

no_delete.do.body85_crit_edge:                    ; preds = %no_delete
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

if.then80:                                        ; preds = %no_delete
  call void @__sanitizer_cov_trace_pc() #11
  %180 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i298 = getelementptr inbounds %struct.super_block, ptr %181, i32 0, i32 33
  %182 = ptrtoint ptr %s_fs_info.i.i298 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %s_fs_info.i.i298, align 16
  %inline_xattr = getelementptr inbounds %struct.f2fs_sb_info, ptr %183, i32 0, i32 99
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_xattr, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %inline_xattr, i32 1, i32 3, i32 1) #9
  %184 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_xattr, ptr %inline_xattr, i32 1, ptr elementtype(i32) %inline_xattr) #9, !srcloc !126
  br label %do.body85

do.body85:                                        ; preds = %if.then80, %no_delete.do.body85_crit_edge
  %185 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %flags.i.i, align 4
  %187 = and i32 %186, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool87.not = icmp eq i32 %187, 0
  br i1 %tobool87.not, label %do.body85.do.body93_crit_edge, label %if.then88

do.body85.do.body93_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body93

if.then88:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %188 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i303 = getelementptr inbounds %struct.super_block, ptr %189, i32 0, i32 33
  %190 = ptrtoint ptr %s_fs_info.i.i303 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %s_fs_info.i.i303, align 16
  %inline_dir = getelementptr inbounds %struct.f2fs_sb_info, ptr %191, i32 0, i32 101
  %call.i.i259 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_dir, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %inline_dir, i32 1, i32 3, i32 1) #9
  %192 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_dir, ptr %inline_dir, i32 1, ptr elementtype(i32) %inline_dir) #9, !srcloc !126
  br label %do.body93

do.body93:                                        ; preds = %if.then88, %do.body85.do.body93_crit_edge
  %193 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %flags.i.i, align 4
  %195 = and i32 %194, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool95.not = icmp eq i32 %195, 0
  br i1 %tobool95.not, label %do.body93.do.body101_crit_edge, label %if.then96

do.body93.do.body101_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body101

if.then96:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  %196 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i308 = getelementptr inbounds %struct.super_block, ptr %197, i32 0, i32 33
  %198 = ptrtoint ptr %s_fs_info.i.i308 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %s_fs_info.i.i308, align 16
  %inline_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %199, i32 0, i32 100
  %call.i.i260 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_inode, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %inline_inode, i32 1, i32 3, i32 1) #9
  %200 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_inode, ptr %inline_inode, i32 1, ptr elementtype(i32) %inline_inode) #9, !srcloc !126
  br label %do.body101

do.body101:                                       ; preds = %if.then96, %do.body93.do.body101_crit_edge
  %201 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %inode, align 8
  %203 = and i16 %202, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %203)
  %cmp.i309 = icmp eq i16 %203, -32768
  br i1 %cmp.i309, label %f2fs_compressed_file.exit313, label %do.body101.do.end108_crit_edge

do.body101.do.end108_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end108

f2fs_compressed_file.exit313:                     ; preds = %do.body101
  %204 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %205)
  %tobool103.not = icmp sgt i32 %205, -1
  br i1 %tobool103.not, label %f2fs_compressed_file.exit313.do.end108_crit_edge, label %if.then104

f2fs_compressed_file.exit313.do.end108_crit_edge: ; preds = %f2fs_compressed_file.exit313
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end108

if.then104:                                       ; preds = %f2fs_compressed_file.exit313
  call void @__sanitizer_cov_trace_pc() #11
  %206 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i315 = getelementptr inbounds %struct.super_block, ptr %207, i32 0, i32 33
  %208 = ptrtoint ptr %s_fs_info.i.i315 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %s_fs_info.i.i315, align 16
  %compr_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %209, i32 0, i32 102
  %call.i.i261 = tail call zeroext i1 @__kasan_check_write(ptr noundef %compr_inode, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %compr_inode, i32 1, i32 3, i32 1) #9
  %210 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %compr_inode, ptr %compr_inode, i32 1, ptr elementtype(i32) %compr_inode) #9, !srcloc !126
  br label %do.end108

do.end108:                                        ; preds = %if.then104, %f2fs_compressed_file.exit313.do.end108_crit_edge, %do.body101.do.end108_crit_edge
  %i_compr_blocks = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 34
  %call.i.i262 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_compr_blocks, i32 noundef 4) #9
  %211 = ptrtoint ptr %i_compr_blocks to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %i_compr_blocks, align 4
  %conv = sext i32 %212 to i64
  %213 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i317 = getelementptr inbounds %struct.super_block, ptr %214, i32 0, i32 33
  %215 = ptrtoint ptr %s_fs_info.i.i317 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %s_fs_info.i.i317, align 16
  %compr_blocks = getelementptr inbounds %struct.f2fs_sb_info, ptr %216, i32 0, i32 103
  %call.i.i263 = tail call zeroext i1 @__kasan_check_write(ptr noundef %compr_blocks, i32 noundef 8) #9
  tail call void @generic_atomic64_sub(i64 noundef %conv, ptr noundef %compr_blocks) #9
  %ckpt.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 15
  %217 = ptrtoint ptr %ckpt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ckpt.i.i.i, align 4
  %ckpt_flags1.i.i.i = getelementptr inbounds %struct.f2fs_checkpoint, ptr %218, i32 0, i32 10
  %219 = ptrtoint ptr %ckpt_flags1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %219, i32 4)
  %220 = load i32, ptr %ckpt_flags1.i.i.i, align 1
  %221 = and i32 %220, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool.i.i.i.not = icmp eq i32 %221, 0
  br i1 %tobool.i.i.i.not, label %land.rhs, label %do.end108.if.else_crit_edge, !prof !85

do.end108.if.else_crit_edge:                      ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.rhs:                                         ; preds = %do.end108
  %s_flag.i318 = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  %222 = ptrtoint ptr %s_flag.i318 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile i32, ptr %s_flag.i318, align 4
  %224 = and i32 %223, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.i319.not = icmp eq i32 %224, 0
  br i1 %tobool.i319.not, label %do.body123, label %land.rhs.if.else_crit_edge, !prof !85

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.body123:                                       ; preds = %land.rhs
  %225 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load volatile i32, ptr %flags.i.i, align 4
  %227 = and i32 %226, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool125.not = icmp eq i32 %227, 0
  br i1 %tobool125.not, label %do.body123.if.end142_crit_edge, label %do.body133, !prof !85

do.body123.if.end142_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

do.body133:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 825, 0\0A.popsection", ""() #9, !srcloc !127
  unreachable

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %do.end108.if.else_crit_edge
  tail call void @f2fs_inode_synced(ptr noundef %inode) #9
  br label %if.end142

if.end142:                                        ; preds = %if.else, %do.body123.if.end142_crit_edge
  %228 = ptrtoint ptr %i_ino10 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %i_ino10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool144.not = icmp eq i32 %229, 0
  br i1 %tobool144.not, label %if.end142.if.end150_crit_edge, label %if.then145

if.end142.if.end150_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  %node_inode.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 10
  %230 = ptrtoint ptr %node_inode.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %node_inode.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %231, i32 0, i32 9
  %232 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %i_mapping.i, align 8
  %call149 = tail call i32 @invalidate_mapping_pages(ptr noundef %233, i32 noundef %229, i32 noundef %229) #9
  br label %if.end150

if.end150:                                        ; preds = %if.then145, %if.end142.if.end150_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool151.not = icmp eq i32 %5, 0
  br i1 %tobool151.not, label %if.end150.if.end155_crit_edge, label %if.then152

if.end150.if.end155_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then152:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  %node_inode.i321 = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 10
  %234 = ptrtoint ptr %node_inode.i321 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %node_inode.i321, align 4
  %i_mapping.i322 = getelementptr inbounds %struct.inode, ptr %235, i32 0, i32 9
  %236 = ptrtoint ptr %i_mapping.i322 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %i_mapping.i322, align 8
  %call154 = tail call i32 @invalidate_mapping_pages(ptr noundef %237, i32 noundef %5, i32 noundef %5) #9
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %if.end150.if.end155_crit_edge
  %238 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool156.not = icmp eq i32 %239, 0
  br i1 %tobool156.not, label %if.end155.if.end168_crit_edge, label %if.then157

if.end155.if.end168_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then157:                                       ; preds = %if.end155
  %240 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile i32, ptr %flags.i.i, align 4
  %242 = and i32 %241, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool159.not = icmp eq i32 %242, 0
  br i1 %tobool159.not, label %if.then157.if.end162_crit_edge, label %if.then160

if.then157.if.end162_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then160:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  %243 = ptrtoint ptr %i_ino10 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %i_ino10, align 8
  tail call void @f2fs_add_ino_entry(ptr noundef %3, i32 noundef %244, i32 noundef 1) #9
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %if.then157.if.end162_crit_edge
  %245 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load volatile i32, ptr %flags.i.i, align 4
  %247 = and i32 %246, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool164.not = icmp eq i32 %247, 0
  br i1 %tobool164.not, label %if.end162.if.end168_crit_edge, label %if.then165

if.end162.if.end168_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then165:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  %248 = ptrtoint ptr %i_ino10 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %i_ino10, align 8
  tail call void @f2fs_add_ino_entry(ptr noundef %3, i32 noundef %249, i32 noundef 2) #9
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %if.end162.if.end168_crit_edge, %if.end155.if.end168_crit_edge
  %250 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %flags.i.i, align 4
  %252 = and i32 %251, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool170.not = icmp eq i32 %252, 0
  br i1 %tobool170.not, label %if.end168.out_clear_crit_edge, label %if.then171

if.end168.out_clear_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clear

if.then171:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  %253 = ptrtoint ptr %i_ino10 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %i_ino10, align 8
  tail call void @f2fs_alloc_nid_failed(ptr noundef %3, i32 noundef %254) #9
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags.i.i) #9
  br label %out_clear

out_clear:                                        ; preds = %if.then171, %if.end168.out_clear_crit_edge, %lor.lhs.false14.out_clear_crit_edge, %lor.lhs.false11.out_clear_crit_edge, %if.end9.out_clear_crit_edge
  tail call void @fscrypt_put_encryption_info(ptr noundef %inode) #9
  tail call void @fsverity_cleanup_inode(ptr noundef %inode) #9
  tail call void @clear_inode(ptr noundef %inode) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_drop_inmem_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_evict_inode(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_evict_inode, i32 0, i32 1), ptr blockaddress(@trace_f2fs_evict_inode, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !89

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !85

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %call42 = tail call i32 @__traceiter_f2fs_evict_inode(ptr noundef null, ptr noundef %inode) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !129
  %13 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !85

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_evict_inode, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_evict_inode, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_f2fs_evict_inode.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_f2fs_evict_inode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 313, ptr noundef nonnull @.str.8) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !75) #9
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
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_invalidate_compress_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_remove_dirty_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_destroy_extent_tree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_dquot_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_remove_ino_entry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_remove_inode_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dquot_initialize_needed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_add_ino_entry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_alloc_nid_failed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_put_encryption_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsverity_cleanup_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_handle_failed_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %ni = alloca %struct.node_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ni) #9
  %4 = call ptr @memset(ptr %ni, i32 255, i32 16)
  tail call void @clear_nlink(ptr noundef %inode) #9
  tail call void @f2fs_update_inode_page(ptr noundef %inode)
  tail call void @f2fs_inode_synced(ptr noundef %inode) #9
  tail call void @unlock_new_inode(ptr noundef %inode) #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %call1 = call i32 @f2fs_get_node_info(ptr noundef %3, i32 noundef %6, ptr noundef nonnull %ni, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #9
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %3, ptr noundef nonnull @.str.5) #9
  br label %out

if.end:                                           ; preds = %entry
  %blk_addr = getelementptr inbounds %struct.node_info, ptr %ni, i32 0, i32 2
  %7 = ptrtoint ptr %blk_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blk_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.else8, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @f2fs_acquire_orphan_inode(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %s_flag.i27 = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i27) #9
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  br label %if.end6

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  call void @f2fs_add_orphan_inode(ptr noundef %inode) #9
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  call void @f2fs_alloc_nid_done(ptr noundef %3, i32 noundef %10) #9
  br label %out

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  call void @_set_bit(i32 noundef 7, ptr noundef %flags.i) #9
  br label %out

out:                                              ; preds = %if.else8, %if.end6, %if.then
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  call void @up_read(ptr noundef %cp_rwsem.i) #9
  call void @iput(ptr noundef %inode) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_node_info(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_acquire_orphan_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_add_orphan_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_alloc_nid_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_iget(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_check_nid_range(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_init_extent_tree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_need_inode_block_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kprojid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_is_valid_blkaddr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_iget_exit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @has_not_enough_free_secs(ptr noundef %sbi) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %segs_per_sec.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 52
  %0 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %segs_per_sec.i, align 8
  %blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 51
  %2 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i = mul i32 %3, %1
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i, align 4
  %conv.i.i = sext i32 %5 to i64
  %conv.i = zext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add nsw i64 %add.i, %conv.i.i
  %log_blocks_per_seg.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 50
  %6 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i = zext i32 %7 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %conv1.i = trunc i64 %shr.i to i32
  %8 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %segs_per_sec.i, align 8
  %div.i = udiv i32 %conv1.i, %9
  %10 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i3 = mul i32 %11, %9
  %arrayidx.i.i4 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 0
  %call.i.i.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #9
  %12 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %conv.i.i6 = sext i32 %13 to i64
  %conv.i7 = zext i32 %mul.i3 to i64
  %add.i8 = add nsw i64 %conv.i7, -1
  %sub.i9 = add nsw i64 %add.i8, %conv.i.i6
  %14 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i11 = zext i32 %15 to i64
  %shr.i12 = ashr i64 %sub.i9, %sh_prom.i11
  %conv1.i13 = trunc i64 %shr.i12 to i32
  %16 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %segs_per_sec.i, align 8
  %div.i14 = udiv i32 %conv1.i13, %17
  %18 = ptrtoint ptr %blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks_per_seg.i, align 4
  %mul.i17 = mul i32 %19, %17
  %arrayidx.i.i18 = getelementptr %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 69, i32 6
  %call.i.i.i.i19 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i18, i32 noundef 4) #9
  %20 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i18, align 4
  %conv.i.i20 = sext i32 %21 to i64
  %conv.i21 = zext i32 %mul.i17 to i64
  %add.i22 = add nsw i64 %conv.i21, -1
  %sub.i23 = add nsw i64 %add.i22, %conv.i.i20
  %22 = ptrtoint ptr %log_blocks_per_seg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %log_blocks_per_seg.i, align 8
  %sh_prom.i25 = zext i32 %23 to i64
  %shr.i26 = ashr i64 %sub.i23, %sh_prom.i25
  %conv1.i27 = trunc i64 %shr.i26 to i32
  %24 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %segs_per_sec.i, align 8
  %div.i28 = udiv i32 %conv1.i27, %25
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 5
  %26 = ptrtoint ptr %s_flag.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %s_flag.i, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge, !prof !85

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sm_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %sbi, i32 0, i32 11
  %29 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %free_info.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %free_info.i.i, align 4
  %free_sections.i = getelementptr inbounds %struct.free_segmap_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %free_sections.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %free_sections.i, align 4
  %reserved_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 10
  %35 = ptrtoint ptr %reserved_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reserved_segments.i.i, align 4
  %additional_reserved_segments.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %30, i32 0, i32 11
  %37 = ptrtoint ptr %additional_reserved_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %additional_reserved_segments.i.i, align 4
  %add.i.i = add i32 %38, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp.i = icmp eq i32 %add.i.i, -1
  br i1 %cmp.i, label %if.end.reserved_sections.exit_crit_edge, label %cond.false.i

if.end.reserved_sections.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %reserved_sections.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div.i31 = udiv i32 %add.i.i, %25
  br label %reserved_sections.exit

reserved_sections.exit:                           ; preds = %cond.false.i, %if.end.reserved_sections.exit_crit_edge
  %cond.i = phi i32 [ %div.i31, %cond.false.i ], [ -1, %if.end.reserved_sections.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %cond.i)
  %cmp = icmp eq i32 %34, %cond.i
  br i1 %cmp, label %land.lhs.true, label %reserved_sections.exit.if.end10_crit_edge

reserved_sections.exit.if.end10_crit_edge:        ; preds = %reserved_sections.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %reserved_sections.exit
  %call.i.i.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #9
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i42.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #9
  %41 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %add.i34 = add i32 %42, %40
  %call.i.i.i45.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i4, i32 noundef 4) #9
  %43 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i.i4, align 4
  %45 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sm_info.i.i.i, align 8
  %curseg_array.i.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %curseg_array.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %curseg_array.i.i, align 4
  %segno6.i = getelementptr %struct.curseg_info, ptr %48, i32 3, i32 6
  %49 = ptrtoint ptr %segno6.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %segno6.i, align 4
  %call7.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %50) #9
  %51 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sm_info.i.i.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %sentries.i.i = getelementptr inbounds %struct.sit_info, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %sentries.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sentries.i.i, align 4
  %arrayidx.i47.i = getelementptr %struct.seg_entry, ptr %56, i32 %50
  %57 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load.i = load i32, ptr %arrayidx.i47.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 6
  %bf.clear.i = and i32 %bf.lshr.i, 1023
  %sub.i36 = sub i32 %call7.i, %bf.clear.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i36, i32 %add.i34)
  %cmp9.i = icmp ult i32 %sub.i36, %add.i34
  br i1 %cmp9.i, label %land.lhs.true.if.end10_crit_edge, label %for.cond.i

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.cond.i:                                       ; preds = %land.lhs.true
  %curseg_array.i.1.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %52, i32 0, i32 3
  %58 = ptrtoint ptr %curseg_array.i.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %curseg_array.i.1.i, align 4
  %segno6.1.i = getelementptr %struct.curseg_info, ptr %59, i32 4, i32 6
  %60 = ptrtoint ptr %segno6.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %segno6.1.i, align 4
  %call7.1.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %61) #9
  %62 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sm_info.i.i.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %sentries.i.1.i = getelementptr inbounds %struct.sit_info, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %sentries.i.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sentries.i.1.i, align 4
  %arrayidx.i47.1.i = getelementptr %struct.seg_entry, ptr %67, i32 %61
  %68 = ptrtoint ptr %arrayidx.i47.1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load.1.i = load i32, ptr %arrayidx.i47.1.i, align 8
  %bf.lshr.1.i = lshr i32 %bf.load.1.i, 6
  %bf.clear.1.i = and i32 %bf.lshr.1.i, 1023
  %sub.1.i = sub i32 %call7.1.i, %bf.clear.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %add.i34)
  %cmp9.1.i = icmp ult i32 %sub.1.i, %add.i34
  br i1 %cmp9.1.i, label %for.cond.i.if.end10_crit_edge, label %for.cond.1.i

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.cond.1.i:                                     ; preds = %for.cond.i
  %curseg_array.i.2.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %63, i32 0, i32 3
  %69 = ptrtoint ptr %curseg_array.i.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %curseg_array.i.2.i, align 4
  %segno6.2.i = getelementptr %struct.curseg_info, ptr %70, i32 5, i32 6
  %71 = ptrtoint ptr %segno6.2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %segno6.2.i, align 4
  %call7.2.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %72) #9
  %73 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sm_info.i.i.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %sentries.i.2.i = getelementptr inbounds %struct.sit_info, ptr %76, i32 0, i32 14
  %77 = ptrtoint ptr %sentries.i.2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sentries.i.2.i, align 4
  %arrayidx.i47.2.i = getelementptr %struct.seg_entry, ptr %78, i32 %72
  %79 = ptrtoint ptr %arrayidx.i47.2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %bf.load.2.i = load i32, ptr %arrayidx.i47.2.i, align 8
  %bf.lshr.2.i = lshr i32 %bf.load.2.i, 6
  %bf.clear.2.i = and i32 %bf.lshr.2.i, 1023
  %sub.2.i = sub i32 %call7.2.i, %bf.clear.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i, i32 %add.i34)
  %cmp9.2.i = icmp ult i32 %sub.2.i, %add.i34
  br i1 %cmp9.2.i, label %for.cond.1.i.if.end10_crit_edge, label %has_curseg_enough_space.exit

for.cond.1.i.if.end10_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

has_curseg_enough_space.exit:                     ; preds = %for.cond.1.i
  %curseg_array.i49.i = getelementptr inbounds %struct.f2fs_sm_info, ptr %74, i32 0, i32 3
  %80 = ptrtoint ptr %curseg_array.i49.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %curseg_array.i49.i, align 4
  %segno12.i = getelementptr inbounds %struct.curseg_info, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %segno12.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %segno12.i, align 4
  %call13.i = tail call i32 @f2fs_usable_blks_in_seg(ptr noundef %sbi, i32 noundef %83) #9
  %84 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sm_info.i.i.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %sentries.i51.i = getelementptr inbounds %struct.sit_info, ptr %87, i32 0, i32 14
  %88 = ptrtoint ptr %sentries.i51.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sentries.i51.i, align 4
  %arrayidx.i52.i = getelementptr %struct.seg_entry, ptr %89, i32 %83
  %90 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load15.i = load i32, ptr %arrayidx.i52.i, align 8
  %bf.lshr16.i = lshr i32 %bf.load15.i, 6
  %bf.clear17.i = and i32 %bf.lshr16.i, 1023
  %sub18.i = sub i32 %call13.i, %bf.clear17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %44)
  %cmp19.i.not = icmp ult i32 %sub18.i, %44
  br i1 %cmp19.i.not, label %has_curseg_enough_space.exit.if.end10_crit_edge, label %has_curseg_enough_space.exit.cleanup_crit_edge

has_curseg_enough_space.exit.cleanup_crit_edge:   ; preds = %has_curseg_enough_space.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

has_curseg_enough_space.exit.if.end10_crit_edge:  ; preds = %has_curseg_enough_space.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %has_curseg_enough_space.exit.if.end10_crit_edge, %for.cond.1.i.if.end10_crit_edge, %for.cond.i.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %reserved_sections.exit.if.end10_crit_edge
  %91 = ptrtoint ptr %sm_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sm_info.i.i.i, align 8
  %free_info.i.i38 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %free_info.i.i38 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %free_info.i.i38, align 4
  %free_sections.i39 = getelementptr inbounds %struct.free_segmap_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %free_sections.i39 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %free_sections.i39, align 4
  %mul = shl i32 %div.i14, 1
  %add13 = add i32 %mul, %div.i
  %add14 = add i32 %add13, %div.i28
  %reserved_segments.i.i41 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 10
  %97 = ptrtoint ptr %reserved_segments.i.i41 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reserved_segments.i.i41, align 4
  %additional_reserved_segments.i.i42 = getelementptr inbounds %struct.f2fs_sm_info, ptr %92, i32 0, i32 11
  %99 = ptrtoint ptr %additional_reserved_segments.i.i42 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %additional_reserved_segments.i.i42, align 4
  %add.i.i43 = add i32 %100, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i43)
  %cmp.i44 = icmp eq i32 %add.i.i43, -1
  br i1 %cmp.i44, label %if.end10.reserved_sections.exit49_crit_edge, label %cond.false.i47

if.end10.reserved_sections.exit49_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %reserved_sections.exit49

cond.false.i47:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %segs_per_sec.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %segs_per_sec.i, align 8
  %div.i46 = udiv i32 %add.i.i43, %102
  br label %reserved_sections.exit49

reserved_sections.exit49:                         ; preds = %cond.false.i47, %if.end10.reserved_sections.exit49_crit_edge
  %cond.i48 = phi i32 [ %div.i46, %cond.false.i47 ], [ -1, %if.end10.reserved_sections.exit49_crit_edge ]
  %add16 = add i32 %add14, %cond.i48
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %add16)
  %cmp18 = icmp ule i32 %96, %add16
  br label %cleanup

cleanup:                                          ; preds = %reserved_sections.exit49, %has_curseg_enough_space.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp18, %reserved_sections.exit49 ], [ false, %entry.cleanup_crit_edge ], [ false, %has_curseg_enough_space.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_usable_blks_in_seg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_evict_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !59, !61, !63, !65, !66, !68, !70, !71, !72, !74}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/inode.c", i32 187, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/f2fs/inode.c", i32 699, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/f2fs/inode.c", i32 789, i32 3}
!6 = !{ptr @f2fs_evict_inode._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.f2fs_evict_inode, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @f2fs_evict_inode._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @f2fs_evict_inode._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/f2fs/inode.c", i32 888, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/f2fs/inode.c", i32 896, i32 4}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/trace/events/f2fs.h", i32 294, i32 1}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!20 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/f2fs/inode.c", i32 213, i32 3}
!26 = !{ptr @__func__.sanity_check_inode, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/f2fs/inode.c", i32 220, i32 3}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/f2fs/inode.c", i32 229, i32 3}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/f2fs/inode.c", i32 237, i32 3}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/f2fs/inode.c", i32 245, i32 3}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/f2fs/inode.c", i32 257, i32 3}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/f2fs/inode.c", i32 272, i32 4}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/f2fs/inode.c", i32 282, i32 3}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/f2fs/inode.c", i32 289, i32 3}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/f2fs/inode.c", i32 296, i32 3}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/f2fs/inode.c", i32 307, i32 4}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/f2fs/inode.c", i32 316, i32 4}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/f2fs/inode.c", i32 326, i32 4}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/f2fs.h", i32 301, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/sched/mm.h", i32 230, i32 2}
!56 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/mm.h", i32 717, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/trace/events/f2fs.h", i32 308, i32 1}
!65 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2155280417, i64 2155280897, i64 2155280454, i64 2155280510, i64 2155280544, i64 2155280568, i64 2155280609, i64 2155280630, i64 2155280658, i64 2155280692}
!87 = !{i64 2155281967, i64 2155282447, i64 2155282004, i64 2155282060, i64 2155282094, i64 2155282118, i64 2155282159, i64 2155282180, i64 2155282208, i64 2155282242}
!88 = !{i64 2148676324, i64 2148676350, i64 2148676379, i64 2148676413, i64 2148676444, i64 2148676467}
!89 = !{i64 2148500922, i64 2148500927, i64 2148500940, i64 2148500984, i64 2148501018, i64 2148501039}
!90 = !{i64 2155693305}
!91 = !{i64 2155693496}
!92 = !{i64 2149497329}
!93 = !{i64 2149498365}
!94 = !{i64 2155709132}
!95 = !{i64 2155709343}
!96 = !{i64 1081004, i64 1081065}
!97 = !{i64 1083736}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i64 1084021}
!100 = !{i64 2152519155}
!101 = !{i64 2152518997}
!102 = !{i64 2152519325}
!103 = !{i64 2150105139}
!104 = !{i64 2151043775, i64 2151044266, i64 2151043812, i64 2151043868, i64 2151043902, i64 2151043926, i64 2151043967, i64 2151043988, i64 2151044016, i64 2151044050}
!105 = !{i64 2151053605, i64 2151053778, i64 2151053793, i64 2151053845, i64 2151053904, i64 2151053928, i64 2151053969, i64 2151053990, i64 2151054018, i64 2151054050}
!106 = !{i64 2153193601, i64 2153194084, i64 2153193638, i64 2153193694, i64 2153193728, i64 2153193752, i64 2153193793, i64 2153193814, i64 2153193842, i64 2153193876}
!107 = !{i64 2148764800}
!108 = !{i64 2148679509, i64 2148679541, i64 2148679570, i64 2148679604, i64 2148679635, i64 2148679658}
!109 = !{i64 2148765029}
!110 = !{i64 2150592502, i64 2150592993, i64 2150592539, i64 2150592595, i64 2150592629, i64 2150592653, i64 2150592694, i64 2150592715, i64 2150592743, i64 2150592777}
!111 = !{i64 2155326065, i64 2155326545, i64 2155326102, i64 2155326158, i64 2155326192, i64 2155326216, i64 2155326257, i64 2155326278, i64 2155326306, i64 2155326340}
!112 = !{i64 2157006150, i64 2157006630, i64 2157006187, i64 2157006243, i64 2157006277, i64 2157006301, i64 2157006342, i64 2157006363, i64 2157006391, i64 2157006425}
!113 = !{i64 2152359466}
!114 = !{i64 2152368316}
!115 = !{i64 2152521086}
!116 = !{i64 2149997391}
!117 = !{i64 2150002325}
!118 = !{i64 2150024043}
!119 = !{i64 2150028937}
!120 = !{i64 2150105464}
!121 = !{i64 2150105789}
!122 = !{i64 2152532948}
!123 = !{i64 2152378270}
!124 = !{i64 2152387765}
!125 = !{i64 2152397242}
!126 = !{i64 2148678789, i64 2148678815, i64 2148678844, i64 2148678878, i64 2148678909, i64 2148678932}
!127 = !{i64 2157011528, i64 2157012008, i64 2157011565, i64 2157011621, i64 2157011655, i64 2157011679, i64 2157011720, i64 2157011741, i64 2157011769, i64 2157011803}
!128 = !{i64 2155725192}
!129 = !{i64 2155725397}
