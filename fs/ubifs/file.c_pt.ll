; ModuleID = '/llk/IR_all_yes/fs/ubifs/file.c_pt.bc'
source_filename = "../fs/ubifs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
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
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%union.anon.69 = type { i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.77 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
%struct.page = type { i32, %union.anon.16, %union.anon.62, %struct.atomic_t, i32 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.62 = type { %struct.atomic_t }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.84 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.71, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.71 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.25, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_data_node = type { %struct.ubifs_ch, [16 x i8], i32, i16, i16, [0 x i8] }
%struct.vm_fault = type { %struct.anon.27, i32, ptr, ptr, %union.anon.28, ptr, ptr, ptr, ptr, ptr }
%struct.anon.27 = type { ptr, i32, i32, i32 }
%union.anon.28 = type { i32 }

@ubifs_setattr.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ubifs_setattr\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/file.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UBIFS DBG gen (pid %d): ino %lu, mode %#x, ia_valid %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ubifs_fsync.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ubifs_fsync\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG gen (pid %d): syncing inode %lu\0A\00", [53 x i8] zeroinitializer }, align 32
@ubifs_file_address_operations = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ubifs_writepage, ptr @ubifs_readpage, ptr null, ptr @ubifs_set_page_dirty, ptr null, ptr null, ptr @ubifs_write_begin, ptr @ubifs_write_end, ptr null, ptr @ubifs_invalidatepage, ptr @ubifs_releasepage, ptr null, ptr null, ptr @ubifs_migrate_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubifs_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_setattr, ptr @ubifs_getattr, ptr @ubifs_listxattr, ptr null, ptr @ubifs_update_time, ptr null, ptr null, ptr null, ptr @ubifs_fileattr_set, ptr @ubifs_fileattr_get, [36 x i8] undef }, align 128
@ubifs_symlink_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @ubifs_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_setattr, ptr @ubifs_symlink_getattr, ptr @ubifs_listxattr, ptr null, ptr @ubifs_update_time, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ubifs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @ubifs_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_ioctl, ptr null, ptr @ubifs_file_mmap, i32 0, ptr @fscrypt_file_open, ptr null, ptr null, ptr @ubifs_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@do_truncation.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_truncation\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UBIFS DBG gen (pid %d): ino %lu, size %lld -> %lld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PagePrivate(page)\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cannot write page %lu of inode %lu, error %d\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!(block & ~UBIFS_S_KEY_BLOCK_MASK)\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ubifs/key.h\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@__const.release_new_page_budget.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 96, i8 0, i8 0, i8 -1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@do_setattr.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_setattr\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG gen (pid %d): size %lld -> %lld\0A\00", [53 x i8] zeroinitializer }, align 32
@ubifs_writepage.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubifs_writepage\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBIFS DBG gen (pid %d): ino %lu, pg %lu, pg flags %#lx\0A\00", [40 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bu->buf_len > 0\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bu->buf_len <= c->leb_size\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ignoring error %d and skipping bulk-read\00", [55 x i8] zeroinitializer }, align 32
@populate_page.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"populate_page\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"UBIFS DBG gen (pid %d): ino %lu, pg %lu, i_size %lld, flags %#lx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"le64_to_cpu(dn->ch.sqnum) > ubifs_inode(inode)->creat_sqnum\00", [36 x i8] zeroinitializer }, align 32
@populate_page.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UBIFS DBG gen (pid %d): hole\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad data node (block %u, inode %lu)\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@do_readpage.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.26, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_readpage\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"!PageChecked(page)\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"!PagePrivate(page)\00", [45 x i8] zeroinitializer }, align 32
@do_readpage.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.28, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cannot read page %lu of inode %lu, error %d\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ret == 0\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ubifs_inode(inode)->ui_size == inode->i_size\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!c->ro_media && !c->ro_mount\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"err == -ENOSPC\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mutex_is_locked(&ui->ui_mutex)\00", [33 x i8] zeroinitializer }, align 32
@__const.allocate_budget.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 -128, i8 0, i8 0, i8 -1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@write_begin_slow.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write_begin_slow\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UBIFS DBG gen (pid %d): ino %lu, pos %llu, len %u, i_size %lld\0A\00", [32 x i8] zeroinitializer }, align 32
@ubifs_write_end.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ubifs_write_end\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"UBIFS DBG gen (pid %d): ino %lu, pos %llu, pg %lu, len %u, copied %d, i_size %lld\0A\00", [45 x i8] zeroinitializer }, align 32
@ubifs_write_end.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"UBIFS DBG gen (pid %d): copied %d instead of %d, read page and repeat\0A\00", [57 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@ubifs_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @ubifs_vm_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__const.ubifs_vm_page_mkwrite.req = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32 } { i8 32, i8 0, i8 0, i8 -1, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i32 0 }, align 4
@ubifs_vm_page_mkwrite.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 1, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ubifs_vm_page_mkwrite\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"UBIFS DBG gen (pid %d): ino %lu, pg %lu, i_size %lld\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"out of space for mmapped file (inode number %lu)\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1267, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1317, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [30 x i8] c"ubifs_file_address_operations\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1644, i32 39 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"ubifs_file_operations\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1674, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1117, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1159, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 420, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 452, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 938, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 44, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [18 x i8] c"../fs/ubifs/key.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 270, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 416, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 430, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 717, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1228, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1015, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 759, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 760, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 810, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 616, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 640, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 689, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 704, i32 15 }
@___asan_gen_.159 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 260, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 109, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 111, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 112, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 166, i32 16 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1459, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 433, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 434, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 473, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 490, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 228, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 546, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 559, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 271, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1498, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [18 x i8] c"ubifs_file_vm_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1597, i32 42 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1517, i32 2 }
@___asan_gen_.219 = private constant [19 x i8] c"../fs/ubifs/file.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1553, i32 18 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 788, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ubifs_file_address_operations, ptr @ubifs_file_operations, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @ubifs_file_vm_ops, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_file_address_operations to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_setattr(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_setattr.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_setattr, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 8
  %conv = zext i16 %15 to i32
  %16 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_setattr.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13, i32 noundef %conv, i32 noundef %17) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call9 = tail call i32 @dbg_check_synced_i_size(ptr noundef %5, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags.i, align 4
  %and.i48 = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i, label %if.end12.if.end16_crit_edge, label %fscrypt_prepare_setattr.exit

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

fscrypt_prepare_setattr.exit:                     ; preds = %if.end12
  %call1.i = tail call i32 @__fscrypt_prepare_setattr(ptr noundef %dentry, ptr noundef %attr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool14.not = icmp eq i32 %call1.i, 0
  br i1 %tobool14.not, label %fscrypt_prepare_setattr.exit.if.end16_crit_edge, label %fscrypt_prepare_setattr.exit.cleanup_crit_edge

fscrypt_prepare_setattr.exit.cleanup_crit_edge:   ; preds = %fscrypt_prepare_setattr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fscrypt_prepare_setattr.exit.if.end16_crit_edge:  ; preds = %fscrypt_prepare_setattr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16:                                         ; preds = %fscrypt_prepare_setattr.exit.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %22 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %attr, align 8
  %and = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end16.if.else_crit_edge, label %land.lhs.true

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end16
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %24 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ia_size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %26 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp = icmp slt i64 %25, %27
  br i1 %cmp, label %if.then20, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call fastcc i32 @do_truncation(ptr noundef %5, ptr noundef %1, ptr noundef %attr)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end16.if.else_crit_edge
  %call22 = tail call fastcc i32 @do_setattr(ptr noundef %5, ptr noundef %1, ptr noundef %attr)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %fscrypt_prepare_setattr.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call1.i, %fscrypt_prepare_setattr.exit.cleanup_crit_edge ], [ %call21, %if.then20 ], [ %call22, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_synced_i_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_truncation(ptr noundef %c, ptr noundef %inode, ptr nocapture noundef readonly %attr) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  %tmp57 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #10
  %0 = call ptr @memset(ptr %req, i32 255, i32 20)
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %1 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %i_size, align 8
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %3 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ia_size, align 8
  %and = and i64 %4, 4095
  %conv = trunc i64 %and to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_truncation.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_truncation, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_truncation.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef %12, i64 noundef %2, i64 noundef %4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = call ptr @memset(ptr %req, i32 0, i32 20)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %req, align 4
  %bf.set = or i32 %bf.load, 268435456
  store i32 %bf.set, ptr %req, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load9 = load i32, ptr %req, align 4
  %bf.clear10 = and i32 %bf.load9, -3841
  %bf.set11 = or i32 %bf.clear10, 256
  store i32 %bf.set11, ptr %req, align 4
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load12 = load i16, ptr %dirtied_ino_d, align 4
  %bf.clear13 = and i16 %bf.load12, 1
  %bf.set14 = or i16 %bf.clear13, 112
  store i16 %bf.set14, ptr %dirtied_ino_d, align 4
  %call15 = call i32 @ubifs_budget_space(ptr noundef %c, ptr noundef nonnull %req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end8.if.end22_crit_edge, label %if.then17

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool18.not = icmp eq i64 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call15)
  %cmp.not = icmp eq i32 %call15, -28
  %or.cond = select i1 %tobool18.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup77_crit_edge

if.then17.cleanup77_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup77

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  call void @truncate_setsize(ptr noundef %inode, i64 noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool23.not = icmp eq i32 %conv, 0
  br i1 %tobool23.not, label %if.end22.if.end55_crit_edge, label %if.then24

if.end22.if.end55_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then24:                                        ; preds = %if.end22
  %17 = lshr i64 %4, 12
  %conv25 = trunc i64 %17 to i32
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %18 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping, align 8
  %call.i = call ptr @pagecache_get_page(ptr noundef %19, i32 noundef %conv25, i32 noundef 2, i32 noundef 0) #10
  %tobool27.not = icmp eq ptr %call.i, null
  br i1 %tobool27.not, label %if.then24.if.end55_crit_edge, label %if.then28

if.then24.if.end55_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then28:                                        ; preds = %if.then24
  %20 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %22, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %23, %if.end.i.i ]
  %24 = inttoptr i32 %retval.0.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i = icmp eq i32 %26, -1
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %20, align 4
  %and.i13.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !129

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !128

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i15.i = add i32 %28, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %29, %if.end.i17.i ]
  %30 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #10, !srcloc !130
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !128

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i22.i = add i32 %28, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %call.i to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %31, %if.end.i24.i ]
  %32 = inttoptr i32 %retval.0.i25.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool30.not = icmp eq i32 %35, 0
  br i1 %tobool30.not, label %if.else, label %do.body32

do.body32:                                        ; preds = %PageDirty.exit
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i121 = icmp eq i32 %37, -1
  br i1 %cmp.i.not.i121, label %if.then.i122, label %PagePrivate.exit, !prof !129

if.then.i122:                                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %do.body32
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %call.i, align 4
  %40 = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool34.not = icmp eq i32 %40, 0
  br i1 %tobool34.not, label %if.then43, label %PagePrivate.exit.do.end46_crit_edge, !prof !129

PagePrivate.exit.do.end46_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

if.then43:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 1159) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %PagePrivate.exit.do.end46_crit_edge
  %call47 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef nonnull %call.i) #10
  %call48 = call fastcc i32 @do_writepage(ptr noundef nonnull %call.i, i32 noundef %conv)
  %41 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %20, align 4
  %and.i.i125 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i125)
  %tobool.not.i.i126 = icmp eq i32 %and.i.i125, 0
  br i1 %tobool.not.i.i126, label %if.end.i.i129, label %if.then.i.i128, !prof !128

if.then.i.i128:                                   ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i127 = add i32 %42, -1
  br label %_compound_head.exit.i131

if.end.i.i129:                                    ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i131

_compound_head.exit.i131:                         ; preds = %if.end.i.i129, %if.then.i.i128
  %retval.0.i.i130 = phi i32 [ %sub.i.i127, %if.then.i.i128 ], [ %43, %if.end.i.i129 ]
  %44 = inttoptr i32 %retval.0.i.i130 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %45 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i.i.i.i = icmp eq i32 %46, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !129

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i131
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %44, ptr noundef nonnull @.str.17) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !132
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i131
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %47 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %47, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_truncation, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !127

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %44, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %44) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %put_page.exit.if.end55_crit_edge, label %put_page.exit.out_budg_crit_edge

put_page.exit.out_budg_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_budg

put_page.exit.if.end55_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.else:                                          ; preds = %PageDirty.exit
  call void @unlock_page(ptr noundef nonnull %call.i) #10
  %48 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %20, align 4
  %and.i.i132 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i132)
  %tobool.not.i.i133 = icmp eq i32 %and.i.i132, 0
  br i1 %tobool.not.i.i133, label %if.end.i.i136, label %if.then.i.i135, !prof !128

if.then.i.i135:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i134 = add i32 %49, -1
  br label %_compound_head.exit.i141

if.end.i.i136:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i141

_compound_head.exit.i141:                         ; preds = %if.end.i.i136, %if.then.i.i135
  %retval.0.i.i137 = phi i32 [ %sub.i.i134, %if.then.i.i135 ], [ %50, %if.end.i.i136 ]
  %51 = inttoptr i32 %retval.0.i.i137 to ptr
  %_refcount.i.i.i.i.i138 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  %call.i.i.i.i.i.i.i139 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i138, i32 noundef 4) #10
  %52 = ptrtoint ptr %_refcount.i.i.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %_refcount.i.i.i.i.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i.i.i140 = icmp eq i32 %53, 0
  br i1 %cmp.i.i.i.i140, label %if.then.i.i.i.i142, label %do.end5.i.i.i.i146, !prof !129

if.then.i.i.i.i142:                               ; preds = %_compound_head.exit.i141
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str.17) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !132
  unreachable

do.end5.i.i.i.i146:                               ; preds = %_compound_head.exit.i141
  %call.i.i.i10.i.i.i.i143 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i138, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i138, i32 1, i32 3, i32 1) #10
  %54 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i138, ptr %_refcount.i.i.i.i.i138, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i138) #10, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i144 = extractvalue { i32, i32 } %54, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i144)
  %cmp.i.i.i.i.i.i.i145 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i144, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@do_truncation, %if.then.i.i.i.i.i148)) #10
          to label %folio_put_testzero.exit.i.i149 [label %if.then.i.i.i.i.i148], !srcloc !127

if.then.i.i.i.i.i148:                             ; preds = %do.end5.i.i.i.i146
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i147 = zext i1 %cmp.i.i.i.i.i.i.i145 to i32
  call void @__page_ref_mod_and_test(ptr noundef %51, i32 noundef -1, i32 noundef %conv.i.i.i.i.i147) #10
  br label %folio_put_testzero.exit.i.i149

folio_put_testzero.exit.i.i149:                   ; preds = %if.then.i.i.i.i.i148, %do.end5.i.i.i.i146
  br i1 %cmp.i.i.i.i.i.i.i145, label %if.then.i4.i150, label %folio_put_testzero.exit.i.i149.if.end55_crit_edge

folio_put_testzero.exit.i.i149.if.end55_crit_edge: ; preds = %folio_put_testzero.exit.i.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then.i4.i150:                                  ; preds = %folio_put_testzero.exit.i.i149
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %51) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then.i4.i150, %folio_put_testzero.exit.i.i149.if.end55_crit_edge, %put_page.exit.if.end55_crit_edge, %if.then24.if.end55_crit_edge, %if.end22.if.end55_crit_edge
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #10
  %55 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %i_size, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %57 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %ui_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp57) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp57, ptr noundef %inode) #10
  %58 = call ptr @memcpy(ptr %i_ctime, ptr %tmp57, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp57) #10
  %59 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call fastcc void @do_attr_changes(ptr noundef %inode, ptr noundef %attr)
  %call58 = call i32 @ubifs_jnl_truncate(ptr noundef %c, ptr noundef %inode, i64 noundef %2, i64 noundef %4) #10
  call void @mutex_unlock(ptr noundef %ui_mutex) #10
  br label %out_budg

out_budg:                                         ; preds = %if.end55, %put_page.exit.out_budg_crit_edge
  %err.2 = phi i32 [ %call58, %if.end55 ], [ %call48, %put_page.exit.out_budg_crit_edge ]
  br i1 %tobool16.not, label %if.then61, label %if.else62

if.then61:                                        ; preds = %out_budg
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_release_budget(ptr noundef %c, ptr noundef nonnull %req) #10
  br label %cleanup77

if.else62:                                        ; preds = %out_budg
  call void @__sanitizer_cov_trace_pc() #12
  %nospace_rp = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 6
  %60 = ptrtoint ptr %nospace_rp to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load63 = load i8, ptr %nospace_rp, align 4
  %bf.clear68 = and i8 %bf.load63, 63
  store i8 %bf.clear68, ptr %nospace_rp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  br label %cleanup77

cleanup77:                                        ; preds = %if.else62, %if.then61, %if.then17.cleanup77_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then17.cleanup77_crit_edge ], [ %err.2, %if.else62 ], [ %err.2, %if.then61 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_setattr(ptr noundef %c, ptr noundef %inode, ptr nocapture noundef readonly %attr) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  %tmp44 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %0 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ia_size, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #10
  %2 = getelementptr inbounds i8, ptr %req, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 256, ptr %req, align 4
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 1
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %5 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len, align 4
  %7 = trunc i32 %6 to i16
  %8 = shl i16 %7, 1
  %bf.value = add i16 %8, 14
  %bf.shl = and i16 %bf.value, -16
  %bf.set27 = or i16 %bf.shl, 1
  %9 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %bf.set27, ptr %dirtied_ino_d, align 4
  %idx_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %idx_growth to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %idx_growth, align 4
  %data_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %data_growth to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %data_growth, align 4
  %dd_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %dd_growth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dd_growth, align 4
  %call28 = call i32 @ubifs_budget_space(ptr noundef %c, ptr noundef nonnull %req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attr, align 8
  %and29 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end.if.end39_crit_edge, label %do.body

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_setattr.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_setattr, %if.then36)) #10
          to label %do.end [label %if.then36], !srcloc !127

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %21 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_size, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_setattr.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.19, i32 noundef %20, i64 noundef %22, i64 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body
  call void @truncate_setsize(ptr noundef %inode, i64 noundef %1) #10
  br label %if.end39

if.end39:                                         ; preds = %do.end, %if.end.if.end39_crit_edge
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #10
  %23 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %attr, align 8
  %and41 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end46_crit_edge, label %if.then43

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp44) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp44, ptr noundef %inode) #10
  %25 = call ptr @memcpy(ptr %i_ctime, ptr %tmp44, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp44) #10
  %26 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_size45 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %27 = ptrtoint ptr %i_size45 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size45, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %29 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %ui_size, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39.if.end46_crit_edge
  call fastcc void @do_attr_changes(ptr noundef %inode, ptr noundef %attr)
  %dirty = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %30 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load47 = load i8, ptr %dirty, align 4
  %31 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %attr, align 8
  %and49 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %. = select i1 %tobool50.not, i32 1, i32 2
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef %.) #10
  call void @mutex_unlock(ptr noundef %ui_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47)
  %tobool54.not = icmp sgt i8 %bf.load47, -1
  br i1 %tobool54.not, label %if.end46.if.end56_crit_edge, label %if.then55

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then55:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_release_budget(ptr noundef %c, ptr noundef nonnull %req) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end46.if.end56_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_flags, align 4
  %and57 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %lor.lhs.false, label %if.end56.if.then61_crit_edge

if.end56.if.then61_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

lor.lhs.false:                                    ; preds = %if.end56
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %37 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_flags, align 4
  %and59 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then61_crit_edge

lor.lhs.false.if.then61_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then61:                                        ; preds = %lor.lhs.false.if.then61_crit_edge, %if.end56.if.then61_crit_edge
  %s_op = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 6
  %39 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_op, align 4
  %write_inode = getelementptr inbounds %struct.super_operations, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %write_inode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_inode, align 4
  %call63 = call i32 %42(ptr noundef %inode, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %entry.cleanup_crit_edge ], [ %call63, %if.then61 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_fsync.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_fsync, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_fsync.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.5, i32 noundef %13, i32 noundef %15) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 81
  %16 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %ro_mount, align 8
  %17 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not = icmp eq i8 %17, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool11.not = icmp eq i32 %datasync, 0
  br i1 %tobool11.not, label %if.end10.if.then13_crit_edge, label %lor.lhs.false

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end10
  %i_state = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 24
  %18 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_state, align 8
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.end19_crit_edge, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_op, align 4
  %write_inode = getelementptr inbounds %struct.super_operations, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %write_inode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_inode, align 4
  %call15 = tail call i32 %25(ptr noundef %3, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then13.if.end19_crit_edge, label %if.then13.out_crit_edge

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %lor.lhs.false.if.end19_crit_edge
  %call20 = tail call i32 @ubifs_sync_wbufs_by_inode(ptr noundef %7, ptr noundef %3) #10
  br label %out

out:                                              ; preds = %if.end19, %if.then13.out_crit_edge
  %err.0 = phi i32 [ %call15, %if.then13.out_crit_edge ], [ %call20, %if.end19 ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %do.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_sync_wbufs_by_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubifs_update_time(ptr noundef %inode, ptr nocapture noundef readonly %time, i32 noundef %flags) #0 align 64 {
entry:
  %req = alloca %struct.ubifs_budget_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #10
  %4 = getelementptr inbounds i8, ptr %req, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %req, align 4
  %dirtied_ino_d = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 1
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %7 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len, align 4
  %9 = trunc i32 %8 to i16
  %10 = shl i16 %9, 1
  %bf.value = add i16 %10, 14
  %bf.shl = and i16 %bf.value, -16
  %bf.set27 = or i16 %bf.shl, 1
  %11 = ptrtoint ptr %dirtied_ino_d to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %bf.set27, ptr %dirtied_ino_d, align 4
  %idx_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %idx_growth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %idx_growth, align 4
  %data_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %data_growth to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %data_growth, align 4
  %dd_growth = getelementptr inbounds %struct.ubifs_budget_req, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %dd_growth to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dd_growth, align 4
  %call28 = call i32 @ubifs_budget_space(ptr noundef %3, ptr noundef nonnull %req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #10
  %and29 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end.if.end32_crit_edge, label %if.then31

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %15 = call ptr @memcpy(ptr %i_atime, ptr %time, i32 16)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end.if.end32_crit_edge
  %and33 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end36_crit_edge, label %if.then35

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %16 = call ptr @memcpy(ptr %i_ctime, ptr %time, i32 16)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32.if.end36_crit_edge
  %and37 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %17 = call ptr @memcpy(ptr %i_mtime, ptr %time, i32 16)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %dirty = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %18 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load41 = load i8, ptr %dirty, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #10
  call void @mutex_unlock(ptr noundef %ui_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41)
  %tobool43.not = icmp sgt i8 %bf.load41, -1
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.then44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_release_budget(ptr noundef %3, ptr noundef nonnull %req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end40.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #10
  ret i32 %call28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_budget_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_budget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_writepage(ptr noundef %page, ptr nocapture noundef readnone %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %8 = lshr i64 %call1, 12
  %conv = trunc i64 %8 to i32
  %9 = trunc i64 %call1 to i32
  %conv2 = and i32 %9, 4095
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_writepage.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_writepage, %if.then)) #10
          to label %do.body7 [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %20 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_writepage.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.21, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %22 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i = icmp eq i32 %23, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !129

if.then.i:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %do.body7
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %page, align 4
  %26 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not = icmp eq i32 %26, 0
  br i1 %tobool9.not, label %if.then18, label %PagePrivate.exit.do.end21_crit_edge, !prof !129

PagePrivate.exit.do.end21_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

if.then18:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 1017) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %PagePrivate.exit.do.end21_crit_edge
  %index22 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %index22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv)
  %cmp = icmp ugt i32 %28, %conv
  br i1 %cmp, label %do.end21.out_unlock_crit_edge, label %lor.lhs.false

do.end21.out_unlock_crit_edge:                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

lor.lhs.false:                                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv)
  %cmp25 = icmp eq i32 %28, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %tobool27.not = icmp eq i32 %conv2, 0
  %or.cond = select i1 %cmp25, i1 %tobool27.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.out_unlock_crit_edge, label %if.end29

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end29:                                         ; preds = %lor.lhs.false
  %ui_lock = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %ui_lock) #10
  %synced_i_size30 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 10
  %29 = ptrtoint ptr %synced_i_size30 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %synced_i_size30, align 8
  tail call void @_raw_spin_unlock(ptr noundef %ui_lock) #10
  %31 = ptrtoint ptr %index22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv)
  %cmp33 = icmp ult i32 %32, %conv
  br i1 %cmp33, label %if.then35, label %if.end49

if.then35:                                        ; preds = %if.end29
  %conv37 = zext i32 %32 to i64
  %shr38 = ashr i64 %30, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr38, i64 %conv37)
  %cmp39.not = icmp sgt i64 %shr38, %conv37
  br i1 %cmp39.not, label %if.then35.if.end47_crit_edge, label %if.then41

if.then35.if.end47_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then41:                                        ; preds = %if.then35
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %s_op to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_op, align 4
  %write_inode = getelementptr inbounds %struct.super_operations, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %write_inode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write_inode, align 4
  %call43 = tail call i32 %38(ptr noundef %3, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then41.if.end47_crit_edge, label %if.then41.out_unlock_crit_edge

if.then41.out_unlock_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.end47:                                         ; preds = %if.then41.if.end47_crit_edge, %if.then35.if.end47_crit_edge
  %call48 = tail call fastcc i32 @do_writepage(ptr noundef %page, i32 noundef 4096)
  br label %cleanup

if.end49:                                         ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %39 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %39, 512
  %40 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !137
  %44 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i1.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 213
  %48 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !138
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #10
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %conv2
  %sub = sub nuw nsw i32 4096, %conv2
  %50 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  tail call void @flush_dcache_page(ptr noundef %page) #10
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !139
  %51 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i1.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 213
  %55 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %56, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !140
  %57 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %30)
  %cmp57 = icmp sgt i64 %call1, %30
  br i1 %cmp57, label %if.then59, label %if.end49.if.end67_crit_edge

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then59:                                        ; preds = %if.end49
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  %s_op61 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %s_op61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_op61, align 4
  %write_inode62 = getelementptr inbounds %struct.super_operations, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %write_inode62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_inode62, align 4
  %call63 = tail call i32 %66(ptr noundef %3, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then59.if.end67_crit_edge, label %if.then59.out_unlock_crit_edge

if.then59.out_unlock_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then59.if.end67_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.end67:                                         ; preds = %if.then59.if.end67_crit_edge, %if.end49.if.end67_crit_edge
  %call68 = tail call fastcc i32 @do_writepage(ptr noundef %page, i32 noundef %conv2)
  br label %cleanup

out_unlock:                                       ; preds = %if.then59.out_unlock_crit_edge, %if.then41.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %do.end21.out_unlock_crit_edge
  %err.0 = phi i32 [ %call43, %if.then41.out_unlock_crit_edge ], [ %call63, %if.then59.out_unlock_crit_edge ], [ 0, %lor.lhs.false.out_unlock_crit_edge ], [ 0, %do.end21.out_unlock_crit_edge ]
  tail call void @unlock_page(ptr noundef %page) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end67, %if.end47
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ %call48, %if.end47 ], [ %call68, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %index1.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index1.i, align 4
  %last_page_read2.i = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %last_page_read2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_page_read2.i, align 4
  store i32 %9, ptr %last_page_read2.i, align 4
  %bulk_read.i = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 30
  %12 = ptrtoint ptr %bulk_read.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %bulk_read.i, align 8
  %13 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %ui_mutex.i = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 7
  %call4.i = tail call i32 @mutex_trylock(ptr noundef %ui_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end_crit_edge, label %if.end7.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end7.i:                                        ; preds = %if.end.i
  %add.i = add i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i)
  %cmp.not.i = icmp eq i32 %9, %add.i
  br i1 %cmp.not.i, label %if.end20.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end7.i
  %read_in_a_row.i = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %read_in_a_row.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %read_in_a_row.i, align 8
  %bulk_read9.i = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %bulk_read9.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load10.i = load i8, ptr %bulk_read9.i, align 4
  %16 = and i8 %bf.load10.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not.i = icmp eq i8 %16, 0
  br i1 %tobool14.not.i, label %if.then8.i.ubifs_bulk_read.exit.thread7_crit_edge, label %if.then15.i

if.then8.i.ubifs_bulk_read.exit.thread7_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubifs_bulk_read.exit.thread7

if.then15.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear18.i = and i8 %bf.load10.i, -33
  %17 = ptrtoint ptr %bulk_read9.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.clear18.i, ptr %bulk_read9.i, align 4
  br label %ubifs_bulk_read.exit.thread7

if.end20.i:                                       ; preds = %if.end7.i
  %bulk_read21.i = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %bulk_read21.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load22.i = load i8, ptr %bulk_read21.i, align 4
  %19 = and i8 %bf.load22.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool26.not.i = icmp eq i8 %19, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end20.i.if.end38.i_crit_edge

if.end20.i.if.end38.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then27.i:                                      ; preds = %if.end20.i
  %read_in_a_row28.i = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 14
  %20 = ptrtoint ptr %read_in_a_row28.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_in_a_row28.i, align 8
  %add29.i = add i32 %21, 1
  store i32 %add29.i, ptr %read_in_a_row28.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add29.i)
  %cmp31.i = icmp ult i32 %add29.i, 3
  br i1 %cmp31.i, label %if.then27.i.ubifs_bulk_read.exit.thread7_crit_edge, label %if.end33.i

if.then27.i.ubifs_bulk_read.exit.thread7_crit_edge: ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubifs_bulk_read.exit.thread7

if.end33.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set37.i = or i8 %bf.load22.i, 32
  %22 = ptrtoint ptr %bulk_read21.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.set37.i, ptr %bulk_read21.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end33.i, %if.end20.i.if.end38.i_crit_edge
  %bu_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 49
  %call39.i = tail call i32 @mutex_trylock(ptr noundef %bu_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.else.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  %bu42.i = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 50
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 11328, i32 noundef 2848) #13
  %tobool44.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not.i, label %if.else.i.ubifs_bulk_read.exit.thread7_crit_edge, label %if.end46.i

if.else.i.ubifs_bulk_read.exit.thread7_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ubifs_bulk_read.exit.thread7

if.end46.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %buf.i = getelementptr inbounds %struct.bu_info, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %buf.i, align 8
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end46.i, %if.then41.i
  %bu.0.i = phi ptr [ %bu42.i, %if.then41.i ], [ %call7.i.i, %if.end46.i ]
  %max_bu_buf_len.i = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 48
  %25 = ptrtoint ptr %max_bu_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_bu_buf_len.i, align 4
  %buf_len.i = getelementptr inbounds %struct.bu_info, ptr %bu.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %buf_len.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %28 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino.i, align 8
  %30 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %31)
  %tobool.not.i.i = icmp ult i32 %31, 536870912
  br i1 %tobool.not.i.i, label %if.end47.i.data_key_init.exit.i_crit_edge, label %if.then.i.i, !prof !128

if.end47.i.data_key_init.exit.i_crit_edge:        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %data_key_init.exit.i

if.then.i.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 270) #10
  br label %data_key_init.exit.i

data_key_init.exit.i:                             ; preds = %if.then.i.i, %if.end47.i.data_key_init.exit.i_crit_edge
  %32 = ptrtoint ptr %bu.0.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %bu.0.i, align 8
  %or.i.i = or i32 %31, 536870912
  %arrayidx5.i.i = getelementptr [2 x i32], ptr %bu.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i.i, ptr %arrayidx5.i.i, align 4
  %call49.i = tail call fastcc i32 @ubifs_do_bulk_read(ptr noundef %7, ptr noundef %bu.0.i, ptr noundef %page) #10
  br i1 %tobool40.not.i, label %if.else53.i, label %if.then51.i

if.then51.i:                                      ; preds = %data_key_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %bu_mutex.i) #10
  br label %ubifs_bulk_read.exit

if.else53.i:                                      ; preds = %data_key_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %bu.0.i) #10
  br label %ubifs_bulk_read.exit

ubifs_bulk_read.exit.thread7:                     ; preds = %if.else.i.ubifs_bulk_read.exit.thread7_crit_edge, %if.then27.i.ubifs_bulk_read.exit.thread7_crit_edge, %if.then15.i, %if.then8.i.ubifs_bulk_read.exit.thread7_crit_edge
  tail call void @mutex_unlock(ptr noundef %ui_mutex.i) #10
  br label %if.end

ubifs_bulk_read.exit:                             ; preds = %if.else53.i, %if.then51.i
  tail call void @mutex_unlock(ptr noundef %ui_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool.not = icmp eq i32 %call49.i, 0
  br i1 %tobool.not, label %ubifs_bulk_read.exit.if.end_crit_edge, label %ubifs_bulk_read.exit.return_crit_edge

ubifs_bulk_read.exit.return_crit_edge:            ; preds = %ubifs_bulk_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

ubifs_bulk_read.exit.if.end_crit_edge:            ; preds = %ubifs_bulk_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %ubifs_bulk_read.exit.if.end_crit_edge, %ubifs_bulk_read.exit.thread7, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call fastcc i32 @do_readpage(ptr noundef %page)
  tail call void @unlock_page(ptr noundef %page) #10
  br label %return

return:                                           ; preds = %if.end, %ubifs_bulk_read.exit.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_set_page_dirty(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %call = tail call i32 @__set_page_dirty_nobuffers(ptr noundef %page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %if.then, !prof !128

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.2, i32 noundef 1459) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  %req.i = alloca %struct.ubifs_budget_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %6 = lshr i64 %pos, 12
  %conv = trunc i64 %6 to i32
  %conv1 = zext i32 %len to i64
  %add = add i64 %conv1, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %8)
  %cmp = icmp sgt i64 %add, %8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ui_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %8)
  %cmp6.not = icmp eq i64 %10, %8
  br i1 %cmp6.not, label %entry.do.body14_crit_edge, label %if.then, !prof !128

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef 433) #10
  br label %do.body14

do.body14:                                        ; preds = %if.then, %entry.do.body14_crit_edge
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 81
  %11 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %.not = icmp ult i8 %bf.load, 64
  br i1 %.not, label %do.body14.do.end33_crit_edge, label %if.then30, !prof !128

do.body14.do.end33_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

if.then30:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 434) #10
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body14.do.end33_crit_edge
  %12 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load34 = load i8, ptr %ro_media, align 8
  %13 = and i8 %bf.load34, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool38.not = icmp eq i8 %13, 0
  br i1 %tobool38.not, label %if.end46, label %do.end33.cleanup_crit_edge, !prof !128

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %do.end33
  %call47 = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %conv, i32 noundef %flags) #10
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end46.cleanup_crit_edge, label %if.end58, !prof !129

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end58:                                         ; preds = %if.end46
  %14 = getelementptr inbounds %struct.page, ptr %call47, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i203 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i203)
  %tobool.not.i.i204 = icmp eq i32 %and.i.i203, 0
  br i1 %tobool.not.i.i204, label %if.end.i.i207, label %if.then.i.i206, !prof !128

if.then.i.i206:                                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i205 = add i32 %16, -1
  br label %_compound_head.exit.i211

if.end.i.i207:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call47 to i32
  br label %_compound_head.exit.i211

_compound_head.exit.i211:                         ; preds = %if.end.i.i207, %if.then.i.i206
  %retval.0.i.i208 = phi i32 [ %sub.i.i205, %if.then.i.i206 ], [ %17, %if.end.i.i207 ]
  %18 = inttoptr i32 %retval.0.i.i208 to ptr
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i209 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i209)
  %tobool.not.i.i.i210 = icmp eq i32 %and.i.i.i.i209, 0
  br i1 %tobool.not.i.i.i210, label %folio_flags.exit.i.i, label %if.then.i.i.i212, !prof !128

if.then.i.i.i212:                                 ; preds = %_compound_head.exit.i211
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.30) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !141
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i211
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %if.then61, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !142
  br label %if.end71

if.then61:                                        ; preds = %folio_flags.exit.i.i
  %and = and i64 %pos, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool62.not = icmp eq i64 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp63 = icmp eq i32 %len, 4096
  %or.cond = and i1 %tobool62.not, %cmp63
  br i1 %or.cond, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.then61
  %25 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %call47, align 4
  %27 = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then65.if.then.i_crit_edge

if.then65.if.then.i_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then65
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %14, align 4
  %and.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !128

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then65.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef nonnull %call47, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !143
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %30 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %call47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !129

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call47, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !144
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 10, ptr noundef nonnull %call47) #10
  br label %if.end70

if.else:                                          ; preds = %if.then61
  %call66 = tail call fastcc i32 @do_readpage(ptr noundef nonnull %call47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.else.if.end70_crit_edge, label %if.then68

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then68:                                        ; preds = %if.else
  tail call void @unlock_page(ptr noundef nonnull %call47) #10
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %14, align 4
  %and.i.i213 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i213)
  %tobool.not.i.i214 = icmp eq i32 %and.i.i213, 0
  br i1 %tobool.not.i.i214, label %if.end.i.i217, label %if.then.i.i216, !prof !128

if.then.i.i216:                                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i215 = add i32 %33, -1
  br label %_compound_head.exit.i219

if.end.i.i217:                                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %call47 to i32
  br label %_compound_head.exit.i219

_compound_head.exit.i219:                         ; preds = %if.end.i.i217, %if.then.i.i216
  %retval.0.i.i218 = phi i32 [ %sub.i.i215, %if.then.i.i216 ], [ %34, %if.end.i.i217 ]
  %35 = inttoptr i32 %retval.0.i.i218 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %36 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !129

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i219
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.17) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !132
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i219
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ubifs_write_begin, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !127

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %35, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %35) #10
  br label %cleanup

if.end70:                                         ; preds = %if.else.if.end70_crit_edge, %SetPageChecked.exit
  %skipped_read.0 = phi i32 [ 0, %if.else.if.end70_crit_edge ], [ 1, %SetPageChecked.exit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  %39 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !128

if.then.i.i.i:                                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call47, ptr noundef nonnull @.str.30) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !141
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end70
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call47) #10
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i165 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i165, label %do.body7.i168, label %if.then.i166, !prof !128

if.then.i166:                                     ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call47, ptr noundef nonnull @.str.15) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !146
  unreachable

do.body7.i168:                                    ; preds = %SetPageUptodate.exit
  %43 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %14, align 4
  %and.i31.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i167 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i167, label %if.end.i.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body7.i168
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %44, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i168
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %call47 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %45, %if.end.i.i ]
  %46 = inttoptr i32 %retval.0.i.i to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i.not.i169 = icmp eq i32 %48, -1
  %49 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %14, align 4
  %and.i32.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i169, label %if.then17.i, label %do.end24.i, !prof !129

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !128

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %50, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %call47 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %51, %if.end.i36.i ]
  %52 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !147
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !128

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %50, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %call47 to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %53, %if.end.i43.i ]
  %54 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %54) #10
  br label %if.end71

if.end71:                                         ; preds = %ClearPageError.exit, %PageUptodate.exit
  %skipped_read.1 = phi i32 [ 0, %PageUptodate.exit ], [ %skipped_read.0, %ClearPageError.exit ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #10
  %55 = call ptr @memcpy(ptr %req.i, ptr @__const.allocate_budget.req, i32 20)
  %56 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %call47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp.i.not.i.i = icmp eq i32 %57, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i220, label %PagePrivate.exit.i, !prof !129

if.then.i.i220:                                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call47, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit.i:                               ; preds = %if.end71
  %58 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %call47, align 4
  %60 = and i32 %59, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i221 = icmp eq i32 %60, 0
  br i1 %tobool.not.i221, label %if.else.i, label %if.then.i222

if.then.i222:                                     ; preds = %PagePrivate.exit.i
  br i1 %cmp, label %if.end.i, label %if.then.i222.allocate_budget.exit.thread_crit_edge

if.then.i222.allocate_budget.exit.thread_crit_edge: ; preds = %if.then.i222
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_budget.exit.thread

if.end.i:                                         ; preds = %if.then.i222
  %ui_mutex.i = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ui_mutex.i, i32 noundef 0) #10
  %dirty.i = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %61 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i = load i8, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.allocate_budget.exit.thread_crit_edge

if.end.i.allocate_budget.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_budget.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load6.i = load i32, ptr %req.i, align 4
  %bf.clear.i = and i32 %bf.load6.i, -3841
  %bf.set.i = or i32 %bf.clear.i, 256
  store i32 %bf.set.i, ptr %req.i, align 4
  br label %allocate_budget.exit

if.else.i:                                        ; preds = %PagePrivate.exit.i
  %63 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %call47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp.i.not.i39.i = icmp eq i32 %64, -1
  br i1 %cmp.i.not.i39.i, label %if.then.i40.i, label %PageChecked.exit.i, !prof !129

if.then.i40.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call47, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

PageChecked.exit.i:                               ; preds = %if.else.i
  %65 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %call47, align 4
  %67 = and i32 %66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool8.not.i = icmp eq i32 %67, 0
  %68 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load14.i = load i32, ptr %req.i, align 4
  %..i = select i1 %tobool8.not.i, i32 268435456, i32 536870912
  %bf.set16.i = or i32 %..i, %bf.load14.i
  store i32 %bf.set16.i, ptr %req.i, align 4
  br i1 %cmp, label %if.then19.i, label %PageChecked.exit.i.allocate_budget.exit_crit_edge

PageChecked.exit.i.allocate_budget.exit_crit_edge: ; preds = %PageChecked.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_budget.exit

if.then19.i:                                      ; preds = %PageChecked.exit.i
  %ui_mutex20.i = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ui_mutex20.i, i32 noundef 0) #10
  %dirty21.i = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %dirty21.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load22.i = load i8, ptr %dirty21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load22.i)
  %tobool25.not.i = icmp sgt i8 %bf.load22.i, -1
  br i1 %tobool25.not.i, label %if.then26.i, label %if.then19.i.allocate_budget.exit_crit_edge

if.then19.i.allocate_budget.exit_crit_edge:       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_budget.exit

if.then26.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load27.i = load i32, ptr %req.i, align 4
  %bf.clear28.i = and i32 %bf.load27.i, -3841
  %bf.set29.i = or i32 %bf.clear28.i, 256
  store i32 %bf.set29.i, ptr %req.i, align 4
  br label %allocate_budget.exit

allocate_budget.exit.thread:                      ; preds = %if.end.i.allocate_budget.exit.thread_crit_edge, %if.then.i222.allocate_budget.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  br label %if.end118

allocate_budget.exit:                             ; preds = %if.then26.i, %if.then19.i.allocate_budget.exit_crit_edge, %PageChecked.exit.i.allocate_budget.exit_crit_edge, %if.end5.i
  %call33.i = call i32 @ubifs_budget_space(ptr noundef %5, ptr noundef nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  %71 = zext i32 %call33.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call33.i, label %if.then92 [
    i32 0, label %allocate_budget.exit.if.end118_crit_edge
    i32 -28, label %allocate_budget.exit.do.end95_crit_edge
  ], !prof !149

allocate_budget.exit.do.end95_crit_edge:          ; preds = %allocate_budget.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end95

allocate_budget.exit.if.end118_crit_edge:         ; preds = %allocate_budget.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then92:                                        ; preds = %allocate_budget.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.2, i32 noundef 473) #10
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %allocate_budget.exit.do.end95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skipped_read.1)
  %tobool96.not = icmp eq i32 %skipped_read.1, 0
  br i1 %tobool96.not, label %do.end95.if.end98_crit_edge, label %if.then97

do.end95.if.end98_crit_edge:                      ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then97:                                        ; preds = %do.end95
  %72 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %call47, align 4
  %74 = and i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i170 = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i170, label %PageCompound.exit.i173, label %if.then97.if.then.i174_crit_edge

if.then97.if.then.i174_crit_edge:                 ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i174

PageCompound.exit.i173:                           ; preds = %if.then97
  %75 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %14, align 4
  %and.i.i.i171 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i171)
  %tobool.not.i172 = icmp eq i32 %and.i.i.i171, 0
  br i1 %tobool.not.i172, label %do.body7.i176, label %PageCompound.exit.i173.if.then.i174_crit_edge, !prof !128

PageCompound.exit.i173.if.then.i174_crit_edge:    ; preds = %PageCompound.exit.i173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i174

if.then.i174:                                     ; preds = %PageCompound.exit.i173.if.then.i174_crit_edge, %if.then97.if.then.i174_crit_edge
  call void @dump_page(ptr noundef nonnull %call47, ptr noundef nonnull @.str.16) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !150
  unreachable

do.body7.i176:                                    ; preds = %PageCompound.exit.i173
  %77 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %call47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i.not.i175 = icmp eq i32 %78, -1
  br i1 %cmp.i.not.i175, label %if.then16.i177, label %ClearPageChecked.exit, !prof !129

if.then16.i177:                                   ; preds = %do.body7.i176
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef nonnull %call47, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !151
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i176
  call void @_clear_bit(i32 noundef 10, ptr noundef nonnull %call47) #10
  %79 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %14, align 4
  %and.i.i178 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i178)
  %tobool.not.i179 = icmp eq i32 %and.i.i178, 0
  br i1 %tobool.not.i179, label %do.body7.i183, label %if.then.i180, !prof !128

if.then.i180:                                     ; preds = %ClearPageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef nonnull %call47, ptr noundef nonnull @.str.15) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !152
  unreachable

do.body7.i183:                                    ; preds = %ClearPageChecked.exit
  %81 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %14, align 4
  %and.i31.i181 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i181)
  %tobool.not.i.i182 = icmp eq i32 %and.i31.i181, 0
  br i1 %tobool.not.i.i182, label %if.end.i.i186, label %if.then.i.i185, !prof !128

if.then.i.i185:                                   ; preds = %do.body7.i183
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i184 = add i32 %82, -1
  br label %_compound_head.exit.i191

if.end.i.i186:                                    ; preds = %do.body7.i183
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %call47 to i32
  br label %_compound_head.exit.i191

_compound_head.exit.i191:                         ; preds = %if.end.i.i186, %if.then.i.i185
  %retval.0.i.i187 = phi i32 [ %sub.i.i184, %if.then.i.i185 ], [ %83, %if.end.i.i186 ]
  %84 = inttoptr i32 %retval.0.i.i187 to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %cmp.i.not.i188 = icmp eq i32 %86, -1
  %87 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %14, align 4
  %and.i32.i189 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i189)
  %tobool.not.i33.i190 = icmp eq i32 %and.i32.i189, 0
  br i1 %cmp.i.not.i188, label %if.then17.i192, label %do.end24.i198, !prof !129

if.then17.i192:                                   ; preds = %_compound_head.exit.i191
  br i1 %tobool.not.i33.i190, label %if.end.i36.i195, label %if.then.i35.i194, !prof !128

if.then.i35.i194:                                 ; preds = %if.then17.i192
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i193 = add i32 %88, -1
  br label %_compound_head.exit38.i197

if.end.i36.i195:                                  ; preds = %if.then17.i192
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %call47 to i32
  br label %_compound_head.exit38.i197

_compound_head.exit38.i197:                       ; preds = %if.end.i36.i195, %if.then.i35.i194
  %retval.0.i37.i196 = phi i32 [ %sub.i34.i193, %if.then.i35.i194 ], [ %89, %if.end.i36.i195 ]
  %90 = inttoptr i32 %retval.0.i37.i196 to ptr
  call void @dump_page(ptr noundef %90, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !153
  unreachable

do.end24.i198:                                    ; preds = %_compound_head.exit.i191
  br i1 %tobool.not.i33.i190, label %if.end.i43.i201, label %if.then.i42.i200, !prof !128

if.then.i42.i200:                                 ; preds = %do.end24.i198
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i199 = add i32 %88, -1
  br label %ClearPageUptodate.exit

if.end.i43.i201:                                  ; preds = %do.end24.i198
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %call47 to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i201, %if.then.i42.i200
  %retval.0.i44.i202 = phi i32 [ %sub.i41.i199, %if.then.i42.i200 ], [ %91, %if.end.i43.i201 ]
  %92 = inttoptr i32 %retval.0.i44.i202 to ptr
  call void @_clear_bit(i32 noundef 2, ptr noundef %92) #10
  br label %if.end98

if.end98:                                         ; preds = %ClearPageUptodate.exit, %do.end95.if.end98_crit_edge
  br i1 %cmp, label %do.body101, label %if.end98.if.end116_crit_edge

if.end98.if.end116_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

do.body101:                                       ; preds = %if.end98
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  %call102 = call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex) #10
  br i1 %call102, label %do.body101.do.end114_crit_edge, label %if.then111, !prof !128

do.body101.do.end114_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end114

if.then111:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.2, i32 noundef 490) #10
  br label %do.end114

do.end114:                                        ; preds = %if.then111, %do.body101.do.end114_crit_edge
  call void @mutex_unlock(ptr noundef %ui_mutex) #10
  br label %if.end116

if.end116:                                        ; preds = %do.end114, %if.end98.if.end116_crit_edge
  call void @unlock_page(ptr noundef nonnull %call47) #10
  call fastcc void @put_page(ptr noundef nonnull %call47)
  %call117 = call fastcc i32 @write_begin_slow(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, ptr noundef %pagep, i32 noundef %flags)
  br label %cleanup

if.end118:                                        ; preds = %allocate_budget.exit.if.end118_crit_edge, %allocate_budget.exit.thread
  %93 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call47, ptr %pagep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %if.end116, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ %call117, %if.end116 ], [ 0, %if.end118 ], [ -30, %do.end33.cleanup_crit_edge ], [ -12, %if.end46.cleanup_crit_edge ], [ %call66, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %call66, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_write_end(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %7)
  %cmp = icmp sgt i64 %add, %7
  %lnot.ext = zext i1 %cmp to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_write_end.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_write_end, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %18 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_write_end.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.44, i32 noundef %13, i32 noundef %15, i64 noundef %pos, i32 noundef %17, i32 noundef %len, i32 noundef %copied, i64 noundef %19) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp13 = icmp eq i32 %len, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %copied)
  %20 = icmp ult i32 %copied, 4096
  %21 = and i1 %cmp13, %20
  br i1 %21, label %do.body22, label %if.end42, !prof !129

do.body22:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_write_end.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_write_end, %if.then34)) #10
          to label %do.end40 [label %if.then34], !srcloc !127

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %22 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i103 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i103 to ptr
  %task36 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task36, align 8
  %pid37 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid37, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_write_end.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.45, i32 noundef %27, i32 noundef %copied, i32 noundef 4096) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %do.body22
  tail call fastcc void @cancel_budget(ptr noundef %5, ptr noundef %page, ptr noundef %1, i32 noundef %lnot.ext)
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %page, align 4
  %30 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %do.end40.if.then.i_crit_edge

do.end40.if.then.i_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %do.end40
  %31 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !128

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %do.end40.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !150
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %34 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %ClearPageChecked.exit, !prof !129

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !151
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %page) #10
  %call41 = tail call fastcc i32 @do_readpage(ptr noundef %page)
  br label %out

if.end42:                                         ; preds = %do.end
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i99 = icmp eq i32 %37, -1
  br i1 %cmp.i.not.i99, label %if.then.i100, label %PagePrivate.exit, !prof !129

if.then.i100:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %if.end42
  %38 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %page, align 4
  %40 = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool44.not = icmp eq i32 %40, 0
  br i1 %tobool44.not, label %if.then45, label %PagePrivate.exit.if.end47_crit_edge

PagePrivate.exit.if.end47_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %PagePrivate.exit
  %41 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i.not.i101 = icmp eq i32 %42, -1
  br i1 %cmp.i.not.i101, label %if.then.i102, label %SetPagePrivate.exit, !prof !129

if.then.i102:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !154
  unreachable

SetPagePrivate.exit:                              ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %page) #10
  %dirty_pg_cnt = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 82
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dirty_pg_cnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %dirty_pg_cnt, i32 1, i32 3, i32 1) #10
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_pg_cnt, ptr %dirty_pg_cnt, i32 1, ptr elementtype(i32) %dirty_pg_cnt) #10, !srcloc !155
  %call46 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef %page) #10
  br label %if.end47

if.end47:                                         ; preds = %SetPagePrivate.exit, %PagePrivate.exit.if.end47_crit_edge
  br i1 %cmp, label %if.then49, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then49:                                        ; preds = %if.end47
  %44 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %47, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %48 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i104 = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i104, label %if.then49.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then49.i_size_write.exit_crit_edge:            ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then49
  %49 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !157
  %53 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i105 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i105 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %58, ptrtoint (ptr @lockdep_recursion to i32)
  %59 = inttoptr i32 %add.i28.i to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !158
  %62 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i7.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %65, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool20.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %66 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i29.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.i = icmp eq i32 %69, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %70 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i9.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %73, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !159
  %74 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %77, ptrtoint (ptr @hardirqs_enabled to i32)
  %78 = inttoptr i32 %add47.i.i to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !160
  %81 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i12.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %84, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool54.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !128

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then49.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %85 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %86, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !161
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %87 = tail call ptr @llvm.returnaddress(i32 0) #10
  %88 = ptrtoint ptr %87 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %88) #10
  %89 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %add, ptr %i_size, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %88) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !162
  %90 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %91, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !163
  %92 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i.i.i26.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  %96 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %add, ptr %ui_size, align 8
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 2) #10
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  %call51 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex) #10
  br i1 %call51, label %i_size_write.exit.do.end63_crit_edge, label %if.then60, !prof !128

i_size_write.exit.do.end63_crit_edge:             ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

if.then60:                                        ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.2, i32 noundef 587) #10
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %i_size_write.exit.do.end63_crit_edge
  tail call void @mutex_unlock(ptr noundef %ui_mutex) #10
  br label %out

out:                                              ; preds = %do.end63, %if.end47.out_crit_edge, %ClearPageChecked.exit
  %copied.addr.0 = phi i32 [ %call41, %ClearPageChecked.exit ], [ %copied, %do.end63 ], [ %copied, %if.end47.out_crit_edge ]
  tail call void @unlock_page(ptr noundef %page) #10
  %97 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %97, align 4
  %and.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i106 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i106, label %if.end.i.i, label %if.then.i.i108, !prof !128

if.then.i.i108:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i107 = add i32 %99, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i108
  %retval.0.i.i = phi i32 [ %sub.i.i107, %if.then.i.i108 ], [ %100, %if.end.i.i ]
  %101 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %101, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %102 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i.i.i.i = icmp eq i32 %103, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !129

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %101, ptr noundef nonnull @.str.17) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !132
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %104, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ubifs_write_end, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !127

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %101, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %101) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret i32 %copied.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ubifs_invalidatepage(ptr noundef %page, i32 noundef %offset, i32 noundef %length) #0 align 64 {
entry:
  %req.i27 = alloca %struct.ubifs_budget_req, align 4
  %req.i = alloca %struct.ubifs_budget_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !129

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %page, align 4
  %12 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then, label %PagePrivate.exit.do.end_crit_edge, !prof !129

PagePrivate.exit.do.end_crit_edge:                ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 1296) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %PagePrivate.exit.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool4.not = icmp ne i32 %offset, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp = icmp ult i32 %length, 4096
  %or.cond = or i1 %tobool4.not, %cmp
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i19 = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i19, label %if.then.i20, label %PageChecked.exit, !prof !129

if.then.i20:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

PageChecked.exit:                                 ; preds = %if.end6
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %page, align 4
  %17 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #10
  %18 = call ptr @memcpy(ptr %req.i, ptr @__const.release_new_page_budget.req, i32 20)
  call void @ubifs_release_budget(ptr noundef %7, ptr noundef nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  br label %if.end10

if.else:                                          ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i27) #10
  %19 = call ptr @memset(ptr %req.i27, i32 0, i32 16)
  %dd_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i27, i32 0, i32 4
  %page_budget.i = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 87, i32 7
  %20 = ptrtoint ptr %page_budget.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_budget.i, align 8
  %22 = ptrtoint ptr %dd_growth.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dd_growth.i, align 4
  call void @ubifs_release_budget(ptr noundef %7, ptr noundef nonnull %req.i27) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i27) #10
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %dirty_pg_cnt = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 82
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_pg_cnt, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %dirty_pg_cnt, i32 1, i32 3, i32 1) #10
  %23 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_pg_cnt, ptr %dirty_pg_cnt, i32 1, ptr elementtype(i32) %dirty_pg_cnt) #10, !srcloc !164
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i23 = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i23, label %if.then.i24, label %ClearPagePrivate.exit, !prof !129

if.then.i24:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !165
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.end10
  call void @_clear_bit(i32 noundef 13, ptr noundef %page) #10
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  %28 = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %ClearPagePrivate.exit.if.then.i25_crit_edge

ClearPagePrivate.exit.if.then.i25_crit_edge:      ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i25

PageCompound.exit.i:                              ; preds = %ClearPagePrivate.exit
  %29 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i25_crit_edge, !prof !128

PageCompound.exit.i.if.then.i25_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i25

if.then.i25:                                      ; preds = %PageCompound.exit.i.if.then.i25_crit_edge, %ClearPagePrivate.exit.if.then.i25_crit_edge
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !150
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %32 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i26 = icmp eq i32 %33, -1
  br i1 %cmp.i.not.i26, label %if.then16.i, label %ClearPageChecked.exit, !prof !129

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !151
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 10, ptr noundef %page) #10
  br label %cleanup

cleanup:                                          ; preds = %ClearPageChecked.exit, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_releasepage(ptr noundef %page, i32 noundef %unused_gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %8 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %8, align 4
  %and.i16.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !129

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !128

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i = add i32 %16, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %17, %if.end.i20.i ]
  %18 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #10, !srcloc !166
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !128

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i = add i32 %16, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %19, %if.end.i27.i ]
  %20 = inttoptr i32 %retval.0.i28.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %23 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %do.body, label %PageWriteback.exit.cleanup_crit_edge

PageWriteback.exit.cleanup_crit_edge:             ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %PageWriteback.exit
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i17 = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i17, label %if.then.i18, label %PagePrivate.exit, !prof !129

if.then.i18:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %do.body
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool2.not = icmp eq i32 %28, 0
  br i1 %tobool2.not, label %if.then6, label %PagePrivate.exit.do.body8_crit_edge, !prof !129

PagePrivate.exit.do.body8_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

if.then6:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 1497) #10
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %PagePrivate.exit.do.body8_crit_edge
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.2, i32 noundef 1498) #10
  %29 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i.not.i21 = icmp eq i32 %30, -1
  br i1 %cmp.i.not.i21, label %if.then.i22, label %ClearPagePrivate.exit, !prof !129

if.then.i22:                                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !165
  unreachable

ClearPagePrivate.exit:                            ; preds = %do.body8
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #10
  %31 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %page, align 4
  %33 = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i23 = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i23, label %PageCompound.exit.i, label %ClearPagePrivate.exit.if.then.i24_crit_edge

ClearPagePrivate.exit.if.then.i24_crit_edge:      ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i24

PageCompound.exit.i:                              ; preds = %ClearPagePrivate.exit
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %8, align 4
  %and.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i24_crit_edge, !prof !128

PageCompound.exit.i.if.then.i24_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i24

if.then.i24:                                      ; preds = %PageCompound.exit.i.if.then.i24_crit_edge, %ClearPagePrivate.exit.if.then.i24_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !150
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i25 = icmp eq i32 %37, -1
  br i1 %cmp.i.not.i25, label %if.then16.i, label %ClearPageChecked.exit, !prof !129

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !151
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %page) #10
  br label %cleanup

cleanup:                                          ; preds = %ClearPageChecked.exit, %PageWriteback.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %ClearPageChecked.exit ], [ 0, %PageWriteback.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_migrate_page(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @migrate_page_move_mapping(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !129

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %PagePrivate.exit.if.end3_crit_edge, label %if.then2

PagePrivate.exit.if.end3_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %PagePrivate.exit
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i15 = icmp eq i32 %6, -1
  br i1 %cmp.i.not.i15, label %if.then.i16, label %ClearPagePrivate.exit, !prof !129

if.then.i16:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !165
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.then2
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #10
  %7 = ptrtoint ptr %newpage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %newpage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i17 = icmp eq i32 %8, -1
  br i1 %cmp.i.not.i17, label %if.then.i18, label %SetPagePrivate.exit, !prof !129

if.then.i18:                                      ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %newpage, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !154
  unreachable

SetPagePrivate.exit:                              ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %newpage) #10
  br label %if.end3

if.end3:                                          ; preds = %SetPagePrivate.exit, %PagePrivate.exit.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp4.not = icmp eq i32 %mode, 3
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @migrate_page_copy(ptr noundef %newpage, ptr noundef %page) #10
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @migrate_page_states(ptr noundef %newpage, ptr noundef %page) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ubifs_get_link(ptr noundef readnone %dentry, ptr noundef %inode, ptr noundef %done) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %dentry, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data5 = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 16
  %4 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data5, align 8
  %data_len = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 15
  %6 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len, align 4
  %call6 = tail call ptr @fscrypt_get_symlink(ptr noundef %inode, ptr noundef %5, i32 noundef %7, ptr noundef %done) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call6, %if.end4 ], [ %3, %if.then ], [ inttoptr (i32 -10 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_symlink_getattr(ptr noundef %mnt_userns, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ubifs_getattr(ptr noundef %mnt_userns, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #10
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @fscrypt_symlink_getattr(ptr noundef %path, ptr noundef %stat) #10
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  %now.i = alloca %struct.timespec64, align 8
  %req.i = alloca %struct.ubifs_budget_req, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #10
  %4 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %now.i, ptr noundef %3) #10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %i_mtime.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_mtime.i.i, align 8
  %11 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %now.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp.i.i.i = icmp eq i64 %10, %12
  br i1 %cmp.i.i.i, label %timespec64_equal.exit.i.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

timespec64_equal.exit.i.i:                        ; preds = %entry
  %tv_nsec.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tv_nsec.i.i.i, align 8
  %tv_nsec2.i.i.i = getelementptr inbounds %struct.timespec64, ptr %now.i, i32 0, i32 1
  %15 = ptrtoint ptr %tv_nsec2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tv_nsec2.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.i.not.i.i = icmp eq i32 %14, %16
  br i1 %cmp3.i.not.i.i, label %lor.lhs.false.i.i, label %timespec64_equal.exit.i.i.if.then.i_crit_edge

timespec64_equal.exit.i.i.if.then.i_crit_edge:    ; preds = %timespec64_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.i:                                ; preds = %timespec64_equal.exit.i.i
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %17 = ptrtoint ptr %i_ctime.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_ctime.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %10)
  %cmp.i5.i.i = icmp eq i64 %18, %10
  br i1 %cmp.i5.i.i, label %timespec64_equal.exit11.i.i, label %lor.lhs.false.i.i.if.then.i_crit_edge

lor.lhs.false.i.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

timespec64_equal.exit11.i.i:                      ; preds = %lor.lhs.false.i.i
  %tv_nsec.i6.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %tv_nsec.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tv_nsec.i6.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %14)
  %cmp3.i8.not.i.i = icmp eq i32 %20, %14
  br i1 %cmp3.i8.not.i.i, label %timespec64_equal.exit11.i.i.if.end_crit_edge, label %timespec64_equal.exit11.i.i.if.then.i_crit_edge

timespec64_equal.exit11.i.i.if.then.i_crit_edge:  ; preds = %timespec64_equal.exit11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

timespec64_equal.exit11.i.i.if.end_crit_edge:     ; preds = %timespec64_equal.exit11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %timespec64_equal.exit11.i.i.if.then.i_crit_edge, %lor.lhs.false.i.i.if.then.i_crit_edge, %timespec64_equal.exit.i.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #10
  %21 = getelementptr inbounds i8, ptr %req.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4
  %23 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %req.i, align 4
  %data_len.i = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 15
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i, align 4
  %26 = trunc i32 %25 to i16
  %27 = shl i16 %26, 1
  %bf.value.i = add i16 %27, 14
  %bf.shl.i = and i16 %bf.value.i, -16
  %bf.set28.i = or i16 %bf.shl.i, 1
  store i16 %bf.set28.i, ptr %21, align 4
  %idx_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i, i32 0, i32 2
  %28 = ptrtoint ptr %idx_growth.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %idx_growth.i, align 4
  %data_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i, i32 0, i32 3
  %29 = ptrtoint ptr %data_growth.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %data_growth.i, align 4
  %dd_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i, i32 0, i32 4
  %30 = ptrtoint ptr %dd_growth.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dd_growth.i, align 4
  %call29.i = call i32 @ubifs_budget_space(ptr noundef %8, ptr noundef nonnull %req.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end.i, label %update_mctime.exit

if.end.i:                                         ; preds = %if.then.i
  %ui_mutex.i = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex.i, i32 noundef 0) #10
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %3) #10
  %31 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  %32 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %i_ctime.i, i32 16)
  %dirty.i = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load32.i = load i8, ptr %dirty.i, align 4
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 1) #10
  call void @mutex_unlock(ptr noundef %ui_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load32.i)
  %tobool34.not.i = icmp sgt i8 %bf.load32.i, -1
  br i1 %tobool34.not.i, label %if.end39.critedge.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_release_budget(ptr noundef %8, ptr noundef nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  br label %if.end

if.end39.critedge.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  br label %if.end

update_mctime.exit:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end39.critedge.i, %if.then35.i, %timespec64_equal.exit11.i.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #10
  %call2 = call i32 @generic_file_write_iter(ptr noundef %iocb, ptr noundef %from) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %update_mctime.exit
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call29.i, %update_mctime.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_file_mmap(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_file_mmap(ptr noundef %file, ptr noundef %vma) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %0 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ubifs_file_vm_ops, ptr %vm_ops, align 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %1 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_file_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fscrypt_prepare_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_writepage(ptr noundef %page, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %req.i74 = alloca %struct.ubifs_budget_req, align 4
  %req.i = alloca %struct.ubifs_budget_req, align 4
  %key = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #10
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key, align 8, !annotation !167
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %call = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 44) #10
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page, align 4
  %shr.i.i70 = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %shr.i.i70, label %entry.if.then.i71_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

entry.if.then.i71_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i71

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i71_crit_edge

is_highmem_idx.exit.i.if.then.i71_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i71

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i71:                                      ; preds = %is_highmem_idx.exit.i.if.then.i71_crit_edge, %entry.if.then.i71_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page) #10
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page) #10
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i71
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i71 ]
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %kmap.exit.do.body_crit_edge, label %while.body

kmap.exit.do.body_crit_edge:                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.body:                                       ; preds = %kmap.exit
  %15 = tail call i32 @llvm.smin.i32(i32 %len, i32 4096)
  %i_ino = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %14)
  %tobool.not.i72 = icmp ult i32 %14, 536870912
  br i1 %tobool.not.i72, label %while.body.while.end_crit_edge, label %if.then.i73, !prof !128

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then.i73:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 270) #10
  br label %while.end

while.end:                                        ; preds = %if.then.i73, %while.body.while.end_crit_edge
  %18 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %key, align 8
  %or.i = or i32 %14, 536870912
  %arrayidx5.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %arrayidx5.i, align 4
  %call2 = call i32 @ubifs_jnl_write_data(ptr noundef %8, ptr noundef %4, ptr noundef nonnull %key, ptr noundef %addr.0.i, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool7.not = icmp eq i32 %call2, 0
  br i1 %tobool7.not, label %while.end.do.body_crit_edge, label %if.then8

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then8:                                         ; preds = %while.end
  %20 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !128

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !168
  unreachable

do.body7.i:                                       ; preds = %if.then8
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %20, align 4
  %and.i31.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i.not.i = icmp eq i32 %28, -1
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %20, align 4
  %and.i32.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !129

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !128

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %30, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %31, %if.end.i36.i ]
  %32 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !169
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !128

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %30, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %33, %if.end.i43.i ]
  %34 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %34) #10
  %35 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index, align 4
  %37 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef %36, i32 noundef %38, i32 noundef %call2) #10
  call void @ubifs_ro_mode(ptr noundef %8, i32 noundef %call2) #10
  br label %do.body

do.body:                                          ; preds = %SetPageError.exit, %while.end.do.body_crit_edge, %kmap.exit.do.body_crit_edge
  %err.180 = phi i32 [ 0, %while.end.do.body_crit_edge ], [ %call2, %SetPageError.exit ], [ 0, %kmap.exit.do.body_crit_edge ]
  %39 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i57 = icmp eq i32 %40, -1
  br i1 %cmp.i.not.i57, label %if.then.i58, label %PagePrivate.exit, !prof !129

if.then.i58:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %do.body
  %41 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %page, align 4
  %43 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool13.not = icmp eq i32 %43, 0
  br i1 %tobool13.not, label %if.then17, label %PagePrivate.exit.do.end_crit_edge, !prof !129

PagePrivate.exit.do.end_crit_edge:                ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then17:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_assert_failed(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 943) #10
  br label %do.end

do.end:                                           ; preds = %if.then17, %PagePrivate.exit.do.end_crit_edge
  %44 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i.not.i59 = icmp eq i32 %45, -1
  br i1 %cmp.i.not.i59, label %if.then.i60, label %PageChecked.exit, !prof !129

if.then.i60:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

PageChecked.exit:                                 ; preds = %do.end
  %46 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %page, align 4
  %48 = and i32 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool20.not = icmp eq i32 %48, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #10
  %49 = call ptr @memcpy(ptr %req.i, ptr @__const.release_new_page_budget.req, i32 20)
  call void @ubifs_release_budget(ptr noundef %8, ptr noundef nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  br label %if.end22

if.else:                                          ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i74) #10
  %50 = call ptr @memset(ptr %req.i74, i32 0, i32 16)
  %dd_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i74, i32 0, i32 4
  %page_budget.i = getelementptr inbounds %struct.ubifs_info, ptr %8, i32 0, i32 87, i32 7
  %51 = ptrtoint ptr %page_budget.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %page_budget.i, align 8
  %53 = ptrtoint ptr %dd_growth.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dd_growth.i, align 4
  call void @ubifs_release_budget(ptr noundef %8, ptr noundef nonnull %req.i74) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i74) #10
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  %dirty_pg_cnt = getelementptr inbounds %struct.ubifs_info, ptr %8, i32 0, i32 82
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_pg_cnt, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %dirty_pg_cnt, i32 1, i32 3, i32 1) #10
  %54 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_pg_cnt, ptr %dirty_pg_cnt, i32 1, ptr elementtype(i32) %dirty_pg_cnt) #10, !srcloc !164
  %55 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp.i.not.i63 = icmp eq i32 %56, -1
  br i1 %cmp.i.not.i63, label %if.then.i64, label %ClearPagePrivate.exit, !prof !129

if.then.i64:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !165
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.end22
  call void @_clear_bit(i32 noundef 13, ptr noundef %page) #10
  %57 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %page, align 4
  %59 = and i32 %58, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i65 = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i65, label %PageCompound.exit.i, label %ClearPagePrivate.exit.if.then.i67_crit_edge

ClearPagePrivate.exit.if.then.i67_crit_edge:      ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i67

PageCompound.exit.i:                              ; preds = %ClearPagePrivate.exit
  %60 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %and.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i66 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i66, label %do.body7.i69, label %PageCompound.exit.i.if.then.i67_crit_edge, !prof !128

PageCompound.exit.i.if.then.i67_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i67

if.then.i67:                                      ; preds = %PageCompound.exit.i.if.then.i67_crit_edge, %ClearPagePrivate.exit.if.then.i67_crit_edge
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !150
  unreachable

do.body7.i69:                                     ; preds = %PageCompound.exit.i
  %63 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp.i.not.i68 = icmp eq i32 %64, -1
  br i1 %cmp.i.not.i68, label %if.then16.i, label %ClearPageChecked.exit, !prof !129

if.then16.i:                                      ; preds = %do.body7.i69
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !151
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i69
  call void @_clear_bit(i32 noundef 10, ptr noundef %page) #10
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #10
  %65 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %page, align 4
  %shr.i.i75 = lshr i32 %66, 30
  %67 = zext i32 %shr.i.i75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %shr.i.i75, label %ClearPageChecked.exit.kunmap.exit_crit_edge [
    i32 2, label %ClearPageChecked.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i77
  ]

ClearPageChecked.exit.if.end.i_crit_edge:         ; preds = %ClearPageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

ClearPageChecked.exit.kunmap.exit_crit_edge:      ; preds = %ClearPageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i77:                          ; preds = %ClearPageChecked.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %68 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp2.i.not.i76 = icmp eq i32 %68, 2
  br i1 %cmp2.i.not.i76, label %is_highmem_idx.exit.i77.if.end.i_crit_edge, label %is_highmem_idx.exit.i77.kunmap.exit_crit_edge

is_highmem_idx.exit.i77.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i77.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i77.if.end.i_crit_edge, %ClearPageChecked.exit.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %page) #10
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i77.kunmap.exit_crit_edge, %ClearPageChecked.exit.kunmap.exit_crit_edge
  call void @unlock_page(ptr noundef %page) #10
  call void @end_page_writeback(ptr noundef %page) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #10
  ret i32 %err.180
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !128

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !129

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.17) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !132
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !127

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #10
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %4) #10
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_attr_changes(ptr nocapture noundef %inode, ptr nocapture noundef readonly %attr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ia_uid, align 8
  %4 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i_uid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attr, align 8
  %and2 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %7 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ia_gid, align 4
  %9 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %i_gid, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %10 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attr, align 8
  %and7 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %12 = call ptr @memcpy(ptr %i_atime, ptr %ia_atime, i32 16)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %13 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %attr, align 8
  %and12 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %i_mtime, ptr %ia_mtime, i32 16)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10.if.end15_crit_edge
  %16 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attr, align 8
  %and17 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end20_crit_edge, label %if.then19

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %i_ctime, ptr %ia_ctime, i32 16)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  %19 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %attr, align 8
  %and22 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end32_crit_edge, label %if.then24

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then24:                                        ; preds = %if.end20
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %21 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ia_mode, align 4
  %i_gid25 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %23 = ptrtoint ptr %i_gid25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack = load i32, ptr %i_gid25, align 8
  %24 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call = tail call i32 @in_group_p([1 x i32] %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %land.lhs.true, label %if.then24.if.end31_crit_edge

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call zeroext i1 @capable(i32 noundef 4) #10
  %25 = and i16 %22, -1025
  %spec.select = select i1 %call27, i16 %22, i16 %25
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true, %if.then24.if.end31_crit_edge
  %mode.0 = phi i16 [ %22, %if.then24.if.end31_crit_edge ], [ %spec.select, %land.lhs.true ]
  %26 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %mode.0, ptr %inode, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end20.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_truncate(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_write_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !170
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !171
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !129

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !172
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !174
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !176
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_readpage(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  %out_len.i = alloca i32, align 4
  %key.i = alloca %union.ubifs_key, align 8
  %dlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %call = tail call fastcc i64 @i_size_read(ptr noundef %3)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_readpage.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_readpage, %if.then)) #10
          to label %do.body5 [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %18 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_readpage.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.26, i32 noundef %13, i32 noundef %15, i32 noundef %17, i64 noundef %call, i32 noundef %19) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %20 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageChecked.exit, !prof !129

if.then.i:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

PageChecked.exit:                                 ; preds = %do.body5
  %22 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %page, align 4
  %24 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool7.not = icmp eq i32 %24, 0
  br i1 %tobool7.not, label %PageChecked.exit.do.body22_crit_edge, label %if.then18, !prof !128

PageChecked.exit.do.body22_crit_edge:             ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

if.then18:                                        ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 111) #10
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %PageChecked.exit.do.body22_crit_edge
  %25 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i171 = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i171, label %if.then.i172, label %PagePrivate.exit, !prof !129

if.then.i172:                                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %do.body22
  %27 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %page, align 4
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool24.not = icmp eq i32 %29, 0
  br i1 %tobool24.not, label %PagePrivate.exit.do.end38_crit_edge, label %if.then35, !prof !128

PagePrivate.exit.do.end38_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

if.then35:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 112) #10
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %PagePrivate.exit.do.end38_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 44) #10
  %30 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %page, align 4
  %shr.i.i245 = lshr i32 %31, 30
  %32 = zext i32 %shr.i.i245 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %shr.i.i245, label %do.end38.if.then.i246_crit_edge [
    i32 2, label %do.end38.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

do.end38.if.else.i_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

do.end38.if.then.i246_crit_edge:                  ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i246

is_highmem_idx.exit.i:                            ; preds = %do.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %33 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp2.i.not.i = icmp eq i32 %33, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i246_crit_edge

is_highmem_idx.exit.i.if.then.i246_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i246

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i246:                                     ; preds = %is_highmem_idx.exit.i.if.then.i246_crit_edge, %do.end38.if.then.i246_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page) #10
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %do.end38.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page) #10
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i246
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i246 ]
  %index40 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %index40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index40, align 4
  %sub = add i64 %call, 4095
  %36 = lshr i64 %sub, 12
  %conv = trunc i64 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv)
  %cmp.not = icmp ult i32 %35, %conv
  br i1 %cmp.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %kmap.exit
  %37 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %page, align 4
  %39 = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then42.if.then.i175_crit_edge

if.then42.if.then.i175_crit_edge:                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i175

PageCompound.exit.i:                              ; preds = %if.then42
  %40 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %and.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i175_crit_edge, !prof !128

PageCompound.exit.i.if.then.i175_crit_edge:       ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i175

if.then.i175:                                     ; preds = %PageCompound.exit.i.if.then.i175_crit_edge, %if.then42.if.then.i175_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !143
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %43 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp.i.not.i176 = icmp eq i32 %44, -1
  br i1 %cmp.i.not.i176, label %if.then16.i, label %SetPageChecked.exit, !prof !129

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !144
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 10, ptr noundef %page) #10
  %45 = call ptr @memset(ptr %addr.0.i, i32 0, i32 4096)
  br label %out

if.end43:                                         ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3136, i32 noundef 4144) #13
  %tobool45.not = icmp eq ptr %call7.i, null
  br i1 %tobool45.not, label %if.end43.error_crit_edge, label %if.else

if.end43.error_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.else:                                          ; preds = %if.end43
  %47 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len.i) #10
  %51 = ptrtoint ptr %out_len.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %out_len.i, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dlen.i) #10
  %52 = ptrtoint ptr %dlen.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %dlen.i, align 4, !annotation !167
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %53 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %35)
  %tobool.not.i.i247 = icmp ult i32 %35, 536870912
  br i1 %tobool.not.i.i247, label %if.else.data_key_init.exit.i_crit_edge, label %if.then.i.i248, !prof !128

if.else.data_key_init.exit.i_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %data_key_init.exit.i

if.then.i.i248:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %50, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 270) #10
  br label %data_key_init.exit.i

data_key_init.exit.i:                             ; preds = %if.then.i.i248, %if.else.data_key_init.exit.i_crit_edge
  %55 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %key.i, align 8
  %or.i.i = or i32 %35, 536870912
  %arrayidx5.i.i = getelementptr inbounds [2 x i32], ptr %key.i, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i.i, ptr %arrayidx5.i.i, align 4
  %call.i.i = call i32 @ubifs_tnc_locate(ptr noundef %50, ptr noundef nonnull %key.i, ptr noundef nonnull %call7.i, ptr noundef null, ptr noundef null) #10
  %57 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call.i.i, label %while.end [
    i32 0, label %do.body.i
    i32 -2, label %while.end.thread278
  ]

while.end.thread278:                              ; preds = %data_key_init.exit.i
  %58 = call ptr @memset(ptr %addr.0.i, i32 0, i32 4096)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i) #10
  %59 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %page, align 4
  %61 = and i32 %60, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i178 = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i178, label %PageCompound.exit.i181, label %while.end.thread278.if.then.i182_crit_edge

while.end.thread278.if.then.i182_crit_edge:       ; preds = %while.end.thread278
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i182

do.body.i:                                        ; preds = %data_key_init.exit.i
  %sqnum.i = getelementptr inbounds %struct.ubifs_ch, ptr %call7.i, i32 0, i32 2
  %62 = ptrtoint ptr %sqnum.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %sqnum.i, align 8
  %64 = call i64 @llvm.bswap.i64(i64 %63) #10
  %creat_sqnum.i = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 1
  %65 = ptrtoint ptr %creat_sqnum.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %creat_sqnum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %66)
  %cmp4.not.i = icmp ugt i64 %64, %66
  br i1 %cmp4.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then8.i, !prof !128

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_assert_failed(ptr noundef %50, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef 63) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %do.body.i.do.end.i_crit_edge
  %size.i = getelementptr inbounds %struct.ubifs_data_node, ptr %call7.i, i32 0, i32 2
  %67 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.i, align 8
  %69 = call i32 @llvm.bswap.i32(i32 %68) #10
  %70 = add i32 %69, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %70)
  %71 = icmp ult i32 %70, -4096
  br i1 %71, label %do.end.i.while.end.thread_crit_edge, label %if.end13.i

do.end.i.while.end.thread_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread

if.end13.i:                                       ; preds = %do.end.i
  %len15.i = getelementptr inbounds %struct.ubifs_ch, ptr %call7.i, i32 0, i32 3
  %72 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len15.i, align 8
  %74 = call i32 @llvm.bswap.i32(i32 %73) #10
  %sub.i = add i32 %74, -48
  %75 = ptrtoint ptr %dlen.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub.i, ptr %dlen.i, align 4
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %76 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i_flags.i, align 4
  %and.i249 = and i32 %77, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool16.not.i = icmp eq i32 %and.i249, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end22.i_crit_edge, label %if.then17.i250

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then17.i250:                                   ; preds = %if.end13.i
  %call18.i = call i32 @ubifs_decrypt(ptr noundef %3, ptr noundef nonnull %call7.i, ptr noundef nonnull %dlen.i, i32 noundef %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then17.i250.if.end22.i_crit_edge, label %if.then17.i250.while.end.thread_crit_edge

if.then17.i250.while.end.thread_crit_edge:        ; preds = %if.then17.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread

if.then17.i250.if.end22.i_crit_edge:              ; preds = %if.then17.i250
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i250.if.end22.i_crit_edge, %if.end13.i.if.end22.i_crit_edge
  %78 = ptrtoint ptr %out_len.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4096, ptr %out_len.i, align 4
  %data.i = getelementptr inbounds %struct.ubifs_data_node, ptr %call7.i, i32 0, i32 5
  %79 = ptrtoint ptr %dlen.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dlen.i, align 4
  %compr_type.i = getelementptr inbounds %struct.ubifs_data_node, ptr %call7.i, i32 0, i32 3
  %81 = ptrtoint ptr %compr_type.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %compr_type.i, align 4
  %83 = call i16 @llvm.bswap.i16(i16 %82) #10
  %conv.i = zext i16 %83 to i32
  %call23.i = call i32 @ubifs_decompress(ptr noundef %50, ptr noundef %data.i, i32 noundef %80, ptr noundef %addr.0.i, ptr noundef nonnull %out_len.i, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %lor.lhs.false25.i, label %if.end22.i.while.end.thread_crit_edge

if.end22.i.while.end.thread_crit_edge:            ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread

lor.lhs.false25.i:                                ; preds = %if.end22.i
  %84 = ptrtoint ptr %out_len.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %out_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %85)
  %cmp26.not.i = icmp eq i32 %69, %85
  br i1 %cmp26.not.i, label %if.end29.i, label %lor.lhs.false25.i.while.end.thread_crit_edge

lor.lhs.false25.i.while.end.thread_crit_edge:     ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.thread

if.end29.i:                                       ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %69)
  %cmp30.i = icmp ult i32 %69, 4096
  br i1 %cmp30.i, label %if.then32.i, label %if.end29.i.read_block.exit.thread_crit_edge

if.end29.i.read_block.exit.thread_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %read_block.exit.thread

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %addr.0.i, i32 %69
  %sub33.i = sub nuw nsw i32 4096, %69
  %86 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub33.i)
  br label %read_block.exit.thread

while.end.thread:                                 ; preds = %lor.lhs.false25.i.while.end.thread_crit_edge, %if.end22.i.while.end.thread_crit_edge, %if.then17.i250.while.end.thread_crit_edge, %do.end.i.while.end.thread_crit_edge
  %87 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %i_ino.i, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %50, ptr noundef nonnull @.str.29, i32 noundef %35, i32 noundef %88) #10
  call void @ubifs_dump_node(ptr noundef %50, ptr noundef nonnull %call7.i, i32 noundef 4144) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i) #10
  br label %cleanup109.thread273

read_block.exit.thread:                           ; preds = %if.then32.i, %if.end29.i.read_block.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i) #10
  %add59 = add nuw i32 %35, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %conv)
  %cmp60 = icmp eq i32 %add59, %conv
  br i1 %cmp60, label %if.then62, label %read_block.exit.thread.out_free_crit_edge

read_block.exit.thread.out_free_crit_edge:        ; preds = %read_block.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.then62:                                        ; preds = %read_block.exit.thread
  %89 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size.i, align 8
  %91 = call i32 @llvm.bswap.i32(i32 %90)
  %92 = trunc i64 %call to i32
  %conv63 = and i32 %92, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv63)
  %tobool64.not = icmp ne i32 %conv63, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %conv63)
  %cmp65 = icmp sgt i32 %91, %conv63
  %or.cond = select i1 %tobool64.not, i1 %cmp65, i1 false
  br i1 %or.cond, label %if.then67, label %if.then62.out_free_crit_edge

if.then62.out_free_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.then67:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %conv63
  %sub68 = sub i32 %91, %conv63
  %93 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub68)
  br label %out_free

while.end:                                        ; preds = %data_key_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len.i) #10
  br label %cleanup109.thread273

PageCompound.exit.i181:                           ; preds = %while.end.thread278
  %94 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %94, align 4
  %and.i.i.i179 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i179)
  %tobool.not.i180 = icmp eq i32 %and.i.i.i179, 0
  br i1 %tobool.not.i180, label %do.body7.i184, label %PageCompound.exit.i181.if.then.i182_crit_edge, !prof !128

PageCompound.exit.i181.if.then.i182_crit_edge:    ; preds = %PageCompound.exit.i181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i182

if.then.i182:                                     ; preds = %PageCompound.exit.i181.if.then.i182_crit_edge, %while.end.thread278.if.then.i182_crit_edge
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !143
  unreachable

do.body7.i184:                                    ; preds = %PageCompound.exit.i181
  %97 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %cmp.i.not.i183 = icmp eq i32 %98, -1
  br i1 %cmp.i.not.i183, label %if.then16.i185, label %SetPageChecked.exit186, !prof !129

if.then16.i185:                                   ; preds = %do.body7.i184
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !144
  unreachable

SetPageChecked.exit186:                           ; preds = %do.body7.i184
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 10, ptr noundef %page) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_readpage.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_readpage, %cleanup109.thread)) #10
          to label %out_free [label %cleanup109.thread], !srcloc !127

cleanup109.thread:                                ; preds = %SetPageChecked.exit186
  call void @__sanitizer_cov_trace_pc() #12
  %99 = call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i252 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i252 to ptr
  %task101 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task101 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task101, align 8
  %pid102 = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 68
  %103 = ptrtoint ptr %pid102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pid102, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_readpage.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.28, i32 noundef %104) #10
  br label %out_free

cleanup109.thread273:                             ; preds = %while.end, %while.end.thread
  %err.2269 = phi i32 [ -22, %while.end.thread ], [ %call.i.i, %while.end ]
  %105 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i_sb, align 4
  %s_fs_info83 = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 33
  %107 = ptrtoint ptr %s_fs_info83 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_fs_info83, align 16
  %109 = ptrtoint ptr %index40 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %index40, align 4
  %111 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i_ino.i, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %108, ptr noundef nonnull @.str.35, i32 noundef %110, i32 noundef %112, i32 noundef %err.2269) #10
  br label %error

out_free:                                         ; preds = %cleanup109.thread, %SetPageChecked.exit186, %if.then67, %if.then62.out_free_crit_edge, %read_block.exit.thread.out_free_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %out

out:                                              ; preds = %out_free, %SetPageChecked.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  %113 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %113, align 4
  %and.i.i.i.i = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !128

if.then.i.i.i:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.30) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !141
  unreachable

SetPageUptodate.exit:                             ; preds = %out
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #10
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %113, align 4
  %and.i.i = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i190 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i190, label %do.body7.i193, label %if.then.i191, !prof !128

if.then.i191:                                     ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !146
  unreachable

do.body7.i193:                                    ; preds = %SetPageUptodate.exit
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %113, align 4
  %and.i31.i = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i192 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i192, label %if.end.i.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body7.i193
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %119, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i193
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %120, %if.end.i.i ]
  %121 = inttoptr i32 %retval.0.i.i to ptr
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %cmp.i.not.i194 = icmp eq i32 %123, -1
  %124 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %113, align 4
  %and.i32.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i194, label %if.then17.i, label %do.end24.i, !prof !129

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !128

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %125, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %126, %if.end.i36.i ]
  %127 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %127, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !147
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !128

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %125, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %page to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %128, %if.end.i43.i ]
  %129 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %129) #10
  call void @flush_dcache_page(ptr noundef %page) #10
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #10
  %130 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %page, align 4
  %shr.i.i253 = lshr i32 %131, 30
  %132 = zext i32 %shr.i.i253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %shr.i.i253, label %ClearPageError.exit.cleanup112_crit_edge [
    i32 2, label %ClearPageError.exit.cleanup112.sink.split_crit_edge
    i32 3, label %is_highmem_idx.exit.i255
  ]

ClearPageError.exit.cleanup112.sink.split_crit_edge: ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112.sink.split

ClearPageError.exit.cleanup112_crit_edge:         ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

is_highmem_idx.exit.i255:                         ; preds = %ClearPageError.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %133 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %133)
  %cmp2.i.not.i254 = icmp eq i32 %133, 2
  br i1 %cmp2.i.not.i254, label %is_highmem_idx.exit.i255.cleanup112.sink.split_crit_edge, label %is_highmem_idx.exit.i255.cleanup112_crit_edge

is_highmem_idx.exit.i255.cleanup112_crit_edge:    ; preds = %is_highmem_idx.exit.i255
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

is_highmem_idx.exit.i255.cleanup112.sink.split_crit_edge: ; preds = %is_highmem_idx.exit.i255
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112.sink.split

error:                                            ; preds = %cleanup109.thread273, %if.end43.error_crit_edge
  %err.3 = phi i32 [ -12, %if.end43.error_crit_edge ], [ %err.2269, %cleanup109.thread273 ]
  call void @kfree(ptr noundef %call7.i) #10
  %134 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %134, align 4
  %and.i.i195 = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i195)
  %tobool.not.i196 = icmp eq i32 %and.i.i195, 0
  br i1 %tobool.not.i196, label %do.body7.i200, label %if.then.i197, !prof !128

if.then.i197:                                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !152
  unreachable

do.body7.i200:                                    ; preds = %error
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %134, align 4
  %and.i31.i198 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i198)
  %tobool.not.i.i199 = icmp eq i32 %and.i31.i198, 0
  br i1 %tobool.not.i.i199, label %if.end.i.i203, label %if.then.i.i202, !prof !128

if.then.i.i202:                                   ; preds = %do.body7.i200
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i201 = add i32 %138, -1
  br label %_compound_head.exit.i208

if.end.i.i203:                                    ; preds = %do.body7.i200
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i208

_compound_head.exit.i208:                         ; preds = %if.end.i.i203, %if.then.i.i202
  %retval.0.i.i204 = phi i32 [ %sub.i.i201, %if.then.i.i202 ], [ %139, %if.end.i.i203 ]
  %140 = inttoptr i32 %retval.0.i.i204 to ptr
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %cmp.i.not.i205 = icmp eq i32 %142, -1
  %143 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %134, align 4
  %and.i32.i206 = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i206)
  %tobool.not.i33.i207 = icmp eq i32 %and.i32.i206, 0
  br i1 %cmp.i.not.i205, label %if.then17.i209, label %do.end24.i215, !prof !129

if.then17.i209:                                   ; preds = %_compound_head.exit.i208
  br i1 %tobool.not.i33.i207, label %if.end.i36.i212, label %if.then.i35.i211, !prof !128

if.then.i35.i211:                                 ; preds = %if.then17.i209
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i210 = add i32 %144, -1
  br label %_compound_head.exit38.i214

if.end.i36.i212:                                  ; preds = %if.then17.i209
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i214

_compound_head.exit38.i214:                       ; preds = %if.end.i36.i212, %if.then.i35.i211
  %retval.0.i37.i213 = phi i32 [ %sub.i34.i210, %if.then.i35.i211 ], [ %145, %if.end.i36.i212 ]
  %146 = inttoptr i32 %retval.0.i37.i213 to ptr
  call void @dump_page(ptr noundef %146, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !153
  unreachable

do.end24.i215:                                    ; preds = %_compound_head.exit.i208
  br i1 %tobool.not.i33.i207, label %if.end.i43.i218, label %if.then.i42.i217, !prof !128

if.then.i42.i217:                                 ; preds = %do.end24.i215
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i216 = add i32 %144, -1
  br label %ClearPageUptodate.exit

if.end.i43.i218:                                  ; preds = %do.end24.i215
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i218, %if.then.i42.i217
  %retval.0.i44.i219 = phi i32 [ %sub.i41.i216, %if.then.i42.i217 ], [ %147, %if.end.i43.i218 ]
  %148 = inttoptr i32 %retval.0.i44.i219 to ptr
  call void @_clear_bit(i32 noundef 2, ptr noundef %148) #10
  %149 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %134, align 4
  %and.i.i220 = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i220)
  %tobool.not.i221 = icmp eq i32 %and.i.i220, 0
  br i1 %tobool.not.i221, label %do.body7.i225, label %if.then.i222, !prof !128

if.then.i222:                                     ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !168
  unreachable

do.body7.i225:                                    ; preds = %ClearPageUptodate.exit
  %151 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %134, align 4
  %and.i31.i223 = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i223)
  %tobool.not.i.i224 = icmp eq i32 %and.i31.i223, 0
  br i1 %tobool.not.i.i224, label %if.end.i.i228, label %if.then.i.i227, !prof !128

if.then.i.i227:                                   ; preds = %do.body7.i225
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i226 = add i32 %152, -1
  br label %_compound_head.exit.i233

if.end.i.i228:                                    ; preds = %do.body7.i225
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i233

_compound_head.exit.i233:                         ; preds = %if.end.i.i228, %if.then.i.i227
  %retval.0.i.i229 = phi i32 [ %sub.i.i226, %if.then.i.i227 ], [ %153, %if.end.i.i228 ]
  %154 = inttoptr i32 %retval.0.i.i229 to ptr
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %156)
  %cmp.i.not.i230 = icmp eq i32 %156, -1
  %157 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %134, align 4
  %and.i32.i231 = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i231)
  %tobool.not.i33.i232 = icmp eq i32 %and.i32.i231, 0
  br i1 %cmp.i.not.i230, label %if.then17.i234, label %do.end24.i240, !prof !129

if.then17.i234:                                   ; preds = %_compound_head.exit.i233
  br i1 %tobool.not.i33.i232, label %if.end.i36.i237, label %if.then.i35.i236, !prof !128

if.then.i35.i236:                                 ; preds = %if.then17.i234
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i235 = add i32 %158, -1
  br label %_compound_head.exit38.i239

if.end.i36.i237:                                  ; preds = %if.then17.i234
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i239

_compound_head.exit38.i239:                       ; preds = %if.end.i36.i237, %if.then.i35.i236
  %retval.0.i37.i238 = phi i32 [ %sub.i34.i235, %if.then.i35.i236 ], [ %159, %if.end.i36.i237 ]
  %160 = inttoptr i32 %retval.0.i37.i238 to ptr
  call void @dump_page(ptr noundef %160, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !169
  unreachable

do.end24.i240:                                    ; preds = %_compound_head.exit.i233
  br i1 %tobool.not.i33.i232, label %if.end.i43.i243, label %if.then.i42.i242, !prof !128

if.then.i42.i242:                                 ; preds = %do.end24.i240
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i241 = add i32 %158, -1
  br label %SetPageError.exit

if.end.i43.i243:                                  ; preds = %do.end24.i240
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i243, %if.then.i42.i242
  %retval.0.i44.i244 = phi i32 [ %sub.i41.i241, %if.then.i42.i242 ], [ %161, %if.end.i43.i243 ]
  %162 = inttoptr i32 %retval.0.i44.i244 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %162) #10
  call void @flush_dcache_page(ptr noundef %page) #10
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #10
  %163 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %page, align 4
  %shr.i.i256 = lshr i32 %164, 30
  %165 = zext i32 %shr.i.i256 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %shr.i.i256, label %SetPageError.exit.cleanup112_crit_edge [
    i32 2, label %SetPageError.exit.cleanup112.sink.split_crit_edge
    i32 3, label %is_highmem_idx.exit.i258
  ]

SetPageError.exit.cleanup112.sink.split_crit_edge: ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112.sink.split

SetPageError.exit.cleanup112_crit_edge:           ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

is_highmem_idx.exit.i258:                         ; preds = %SetPageError.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %166 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %166)
  %cmp2.i.not.i257 = icmp eq i32 %166, 2
  br i1 %cmp2.i.not.i257, label %is_highmem_idx.exit.i258.cleanup112.sink.split_crit_edge, label %is_highmem_idx.exit.i258.cleanup112_crit_edge

is_highmem_idx.exit.i258.cleanup112_crit_edge:    ; preds = %is_highmem_idx.exit.i258
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112

is_highmem_idx.exit.i258.cleanup112.sink.split_crit_edge: ; preds = %is_highmem_idx.exit.i258
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup112.sink.split

cleanup112.sink.split:                            ; preds = %is_highmem_idx.exit.i258.cleanup112.sink.split_crit_edge, %SetPageError.exit.cleanup112.sink.split_crit_edge, %is_highmem_idx.exit.i255.cleanup112.sink.split_crit_edge, %ClearPageError.exit.cleanup112.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %is_highmem_idx.exit.i255.cleanup112.sink.split_crit_edge ], [ 0, %ClearPageError.exit.cleanup112.sink.split_crit_edge ], [ %err.3, %is_highmem_idx.exit.i258.cleanup112.sink.split_crit_edge ], [ %err.3, %SetPageError.exit.cleanup112.sink.split_crit_edge ]
  call void @kunmap_high(ptr noundef %page) #10
  br label %cleanup112

cleanup112:                                       ; preds = %cleanup112.sink.split, %is_highmem_idx.exit.i258.cleanup112_crit_edge, %SetPageError.exit.cleanup112_crit_edge, %is_highmem_idx.exit.i255.cleanup112_crit_edge, %ClearPageError.exit.cleanup112_crit_edge
  %retval.0 = phi i32 [ 0, %ClearPageError.exit.cleanup112_crit_edge ], [ 0, %is_highmem_idx.exit.i255.cleanup112_crit_edge ], [ %err.3, %SetPageError.exit.cleanup112_crit_edge ], [ %err.3, %is_highmem_idx.exit.i258.cleanup112_crit_edge ], [ %retval.0.ph, %cleanup112.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ubifs_do_bulk_read(ptr noundef %c, ptr noundef %bu, ptr noundef %page1) unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.page, ptr %page1, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %mapping1 = getelementptr inbounds %struct.page, ptr %page1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #10
  %6 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %n, align 4
  %buf = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 2
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 8
  %tobool.not = icmp eq ptr %8, null
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gfp_mask.i.i, align 4
  %or1.i = and i32 %10, -73857
  %and = or i32 %or1.i, 73728
  %call3 = tail call i32 @ubifs_tnc_get_bu_keys(ptr noundef %c, ptr noundef %bu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.out_warn_crit_edge

entry.out_warn_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_warn

if.end:                                           ; preds = %entry
  %eof = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 7
  %11 = ptrtoint ptr %eof to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eof, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %read_in_a_row = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %read_in_a_row to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %read_in_a_row, align 8
  %bulk_read = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %bulk_read, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %bulk_read, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %blk_cnt = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 6
  %15 = ptrtoint ptr %blk_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blk_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not = icmp eq i32 %16, 0
  br i1 %tobool8.not, label %if.end7.out_bu_off_crit_edge, label %if.end10

if.end7.out_bu_off_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_bu_off

if.end10:                                         ; preds = %if.end7
  %cnt = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 5
  %17 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool11.not = icmp eq i32 %18, 0
  br i1 %tobool11.not, label %if.end10.if.end57_crit_edge, label %if.then12

if.end10.if.end57_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then12:                                        ; preds = %if.end10
  br i1 %tobool.not, label %if.then14, label %if.then12.if.end52_crit_edge

if.then12.if.end52_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then14:                                        ; preds = %if.then12
  %sub = add i32 %18, -1
  %offs = getelementptr %struct.bu_info, ptr %bu, i32 0, i32 1, i32 %sub, i32 3
  %19 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offs, align 8
  %len = getelementptr %struct.bu_info, ptr %bu, i32 0, i32 1, i32 %sub, i32 4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %add = add i32 %22, %20
  %offs22 = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %offs22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offs22, align 8
  %sub23 = sub i32 %add, %24
  %buf_len = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 3
  %25 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub23, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub23)
  %cmp = icmp slt i32 %sub23, 1
  br i1 %cmp, label %if.then28, label %if.then14.do.body30_crit_edge, !prof !129

if.then14.do.body30_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

if.then28:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 759) #10
  br label %do.body30

do.body30:                                        ; preds = %if.then28, %if.then14.do.body30_crit_edge
  %26 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_len, align 4
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %28 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %leb_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp32.not = icmp sgt i32 %27, %29
  br i1 %cmp32.not, label %if.then41, label %do.body30.if.end8.i_crit_edge, !prof !129

do.body30.if.end8.i_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then41:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, i32 noundef 760) #10
  %30 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %buf_len, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then41, %do.body30.if.end8.i_crit_edge
  %31 = phi i32 [ %.pr, %if.then41 ], [ %27, %do.body30.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 11328) #14
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9.i, ptr %buf, align 8
  %tobool49.not = icmp eq ptr %call9.i, null
  br i1 %tobool49.not, label %if.end8.i.out_bu_off_crit_edge, label %if.end8.i.if.end52_crit_edge

if.end8.i.if.end52_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.end8.i.out_bu_off_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_bu_off

if.end52:                                         ; preds = %if.end8.i.if.end52_crit_edge, %if.then12.if.end52_crit_edge
  %call53 = tail call i32 @ubifs_tnc_bulk_read(ptr noundef %c, ptr noundef %bu) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end52.if.end57_crit_edge, label %if.end52.out_warn_crit_edge

if.end52.out_warn_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_warn

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end57:                                         ; preds = %if.end52.if.end57_crit_edge, %if.end10.if.end57_crit_edge
  %call58 = call fastcc i32 @populate_page(ptr noundef %c, ptr noundef %page1, ptr noundef %bu, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.out_warn_crit_edge

if.end57.out_warn_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_warn

if.end61:                                         ; preds = %if.end57
  tail call void @unlock_page(ptr noundef %page1) #10
  %call62 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call62)
  %cmp63 = icmp eq i64 %call62, 0
  br i1 %cmp63, label %if.end61.out_free_crit_edge, label %if.end65

if.end61.out_free_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end65:                                         ; preds = %if.end61
  %sub66 = add i64 %call62, 17592186044415
  %33 = lshr i64 %sub66, 12
  %conv = trunc i64 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp68185 = icmp sgt i32 %16, 1
  br i1 %cmp68185, label %if.end65.for.body_crit_edge, label %if.end65.for.end_crit_edge

if.end65.for.end_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end65.for.body_crit_edge:                      ; preds = %if.end65
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end65.for.body_crit_edge
  %page_idx.0186 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end65.for.body_crit_edge ]
  %add70 = add i32 %page_idx.0186, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add70, i32 %conv)
  %cmp71 = icmp ugt i32 %add70, %conv
  br i1 %cmp71, label %for.body.for.end_crit_edge, label %if.end74

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end74:                                         ; preds = %for.body
  %call75 = tail call ptr @pagecache_get_page(ptr noundef %3, i32 noundef %add70, i32 noundef 39, i32 noundef %and) #10
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.end74.for.end_crit_edge, label %if.end78

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end78:                                         ; preds = %if.end74
  %34 = getelementptr inbounds %struct.page, ptr %call75, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i165 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i165, label %if.end.i.i166, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %36, -1
  br label %_compound_head.exit.i

if.end.i.i166:                                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call75 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i166, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %37, %if.end.i.i166 ]
  %38 = inttoptr i32 %retval.0.i.i to ptr
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !128

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.30) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !141
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %38, align 4
  %45 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i, label %if.then81, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !142
  br label %if.end83

if.then81:                                        ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call82 = call fastcc i32 @populate_page(ptr noundef %c, ptr noundef nonnull %call75, ptr noundef %bu, ptr noundef nonnull %n)
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %PageUptodate.exit
  %err.1 = phi i32 [ 0, %PageUptodate.exit ], [ %call82, %if.then81 ]
  tail call void @unlock_page(ptr noundef nonnull %call75) #10
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %34, align 4
  %and.i.i167 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i167)
  %tobool.not.i.i168 = icmp eq i32 %and.i.i167, 0
  br i1 %tobool.not.i.i168, label %if.end.i.i171, label %if.then.i.i170, !prof !128

if.then.i.i170:                                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i169 = add i32 %47, -1
  br label %_compound_head.exit.i173

if.end.i.i171:                                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %call75 to i32
  br label %_compound_head.exit.i173

_compound_head.exit.i173:                         ; preds = %if.end.i.i171, %if.then.i.i170
  %retval.0.i.i172 = phi i32 [ %sub.i.i169, %if.then.i.i170 ], [ %48, %if.end.i.i171 ]
  %49 = inttoptr i32 %retval.0.i.i172 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %50 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !129

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i173
  call void @__sanitizer_cov_trace_pc() #12
  %52 = inttoptr i32 %retval.0.i.i172 to ptr
  tail call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.17) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !132
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i173
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ubifs_do_bulk_read, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !127

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %49, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %49) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool84.not = icmp eq i32 %err.1, 0
  br i1 %tobool84.not, label %for.inc, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %put_page.exit
  %inc = add nuw nsw i32 %page_idx.0186, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %put_page.exit.for.end_crit_edge, %if.end74.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end65.for.end_crit_edge
  %page_idx.0.lcssa = phi i32 [ 1, %if.end65.for.end_crit_edge ], [ %page_idx.0186, %put_page.exit.for.end_crit_edge ], [ %page_idx.0186, %if.end74.for.end_crit_edge ], [ %page_idx.0186, %for.body.for.end_crit_edge ], [ %16, %for.inc.for.end_crit_edge ]
  %add88 = add i32 %page_idx.0.lcssa, %1
  %sub89 = add i32 %add88, -1
  %last_page_read = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 13
  %54 = ptrtoint ptr %last_page_read to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub89, ptr %last_page_read, align 4
  br label %out_free

out_free:                                         ; preds = %out_bu_off, %out_warn, %for.end, %if.end61.out_free_crit_edge
  %ret.0 = phi i32 [ 0, %out_warn ], [ 1, %if.end61.out_free_crit_edge ], [ 1, %for.end ], [ 0, %out_bu_off ]
  br i1 %tobool.not, label %if.then91, label %out_free.if.end93_crit_edge

out_free.if.end93_crit_edge:                      ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then91:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf, align 8
  tail call void @kfree(ptr noundef %56) #10
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %out_free.if.end93_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  ret i32 %ret.0

out_warn:                                         ; preds = %if.end57.out_warn_crit_edge, %if.end52.out_warn_crit_edge, %entry.out_warn_crit_edge
  %err.3 = phi i32 [ %call3, %entry.out_warn_crit_edge ], [ %call53, %if.end52.out_warn_crit_edge ], [ %call58, %if.end57.out_warn_crit_edge ]
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.24, i32 noundef %err.3) #10
  br label %out_free

out_bu_off:                                       ; preds = %if.end8.i.out_bu_off_crit_edge, %if.end7.out_bu_off_crit_edge
  %bulk_read94 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 6
  %57 = ptrtoint ptr %bulk_read94 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load95 = load i8, ptr %bulk_read94, align 4
  %bf.clear96 = and i8 %bf.load95, -33
  store i8 %bf.clear96, ptr %bulk_read94, align 4
  %read_in_a_row98 = getelementptr inbounds %struct.ubifs_inode, ptr %5, i32 0, i32 14
  %58 = ptrtoint ptr %read_in_a_row98 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %read_in_a_row98, align 8
  br label %out_free
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_get_bu_keys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_bulk_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @populate_page(ptr noundef %c, ptr noundef %page, ptr nocapture noundef readonly %bu, ptr nocapture noundef %n) unnamed_addr #0 align 64 {
entry:
  %out_len = alloca i32, align 4
  %dlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  %offs1 = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %offs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offs1, align 8
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapping, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call fastcc i64 @i_size_read(ptr noundef %7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @populate_page.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@populate_page, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %18 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @populate_page.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.26, i32 noundef %13, i32 noundef %15, i32 noundef %17, i64 noundef %call, i32 noundef %19) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 44) #10
  %20 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %21, 30
  %22 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %shr.i.i, label %do.end.if.then.i276_crit_edge [
    i32 2, label %do.end.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

do.end.if.else.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

do.end.if.then.i276_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i276

is_highmem_idx.exit.i:                            ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %23 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp2.i.not.i = icmp eq i32 %23, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i276_crit_edge

is_highmem_idx.exit.i.if.then.i276_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i276

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i276:                                     ; preds = %is_highmem_idx.exit.i.if.then.i276_crit_edge, %do.end.if.then.i276_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page) #10
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %do.end.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page) #10
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i276
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i276 ]
  %sub = add i64 %call, 17592186044415
  %24 = lshr i64 %sub, 12
  %conv = trunc i64 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %tobool7.not = icmp eq i64 %call, 0
  br i1 %tobool7.not, label %kmap.exit.out_hole.thread_crit_edge, label %lor.lhs.false

kmap.exit.out_hole.thread_crit_edge:              ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_hole.thread

lor.lhs.false:                                    ; preds = %kmap.exit
  %index8 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv)
  %cmp = icmp ugt i32 %26, %conv
  br i1 %cmp, label %lor.lhs.false.out_hole.thread_crit_edge, label %while.cond.preheader

lor.lhs.false.out_hole.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_hole.thread

while.cond.preheader:                             ; preds = %lor.lhs.false
  %cnt = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 5
  %27 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cnt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len) #10
  %29 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %out_len, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dlen) #10
  %30 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %dlen, align 4, !annotation !167
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %28)
  %cmp13.not321 = icmp slt i32 %1, %28
  br i1 %cmp13.not321, label %while.cond.preheader.if.else_crit_edge, label %while.cond.preheader.if.then15_crit_edge

while.cond.preheader.if.then15_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

while.cond.preheader.if.else_crit_edge:           ; preds = %while.cond.preheader
  br label %if.else

out_hole.thread:                                  ; preds = %lor.lhs.false.out_hole.thread_crit_edge, %kmap.exit.out_hole.thread_crit_edge
  %31 = call ptr @memset(ptr %addr.0.i, i32 0, i32 4096)
  br label %if.then116

if.then15:                                        ; preds = %if.then82.if.then15_crit_edge, %while.cond.preheader.if.then15_crit_edge
  %nn.0.lcssa = phi i32 [ %1, %while.cond.preheader.if.then15_crit_edge ], [ %28, %if.then82.if.then15_crit_edge ]
  %32 = call ptr @memset(ptr %addr.0.i, i32 0, i32 4096)
  br label %while.end

if.else:                                          ; preds = %if.then82.if.else_crit_edge, %while.cond.preheader.if.else_crit_edge
  %nn.0322 = phi i32 [ %add83, %if.then82.if.else_crit_edge ], [ %1, %while.cond.preheader.if.else_crit_edge ]
  %arrayidx17 = getelementptr %struct.bu_info, ptr %bu, i32 0, i32 1, i32 %nn.0322
  %arrayidx.i = getelementptr [2 x i32], ptr %arrayidx17, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %and.i277 = and i32 %34, 536870911
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i277, i32 %26)
  %cmp19 = icmp eq i32 %and.i277, %26
  br i1 %cmp19, label %if.then21, label %if.else75

if.then21:                                        ; preds = %if.else
  %buf = getelementptr inbounds %struct.bu_info, ptr %bu, i32 0, i32 2
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf, align 8
  %offs24 = getelementptr %struct.bu_info, ptr %bu, i32 0, i32 1, i32 %nn.0322, i32 3
  %37 = ptrtoint ptr %offs24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offs24, align 8
  %sub25 = sub i32 %38, %3
  %add.ptr = getelementptr i8, ptr %36, i32 %sub25
  %sqnum = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 2
  %39 = ptrtoint ptr %sqnum to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %sqnum, align 1
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  %creat_sqnum = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 1
  %42 = ptrtoint ptr %creat_sqnum to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %creat_sqnum, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp28.not = icmp ugt i64 %41, %43
  br i1 %cmp28.not, label %if.then21.do.end41_crit_edge, label %if.then38, !prof !128

if.then21.do.end41_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

if.then38:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2, i32 noundef 641) #10
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %if.then21.do.end41_crit_edge
  %size = getelementptr inbounds %struct.ubifs_data_node, ptr %add.ptr, i32 0, i32 2
  %44 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %size, align 1
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = add i32 %46, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %47)
  %48 = icmp ult i32 %47, -4096
  br i1 %48, label %do.end41.out_err_crit_edge, label %if.end48

do.end41.out_err_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end48:                                         ; preds = %do.end41
  %len50 = getelementptr inbounds %struct.ubifs_ch, ptr %add.ptr, i32 0, i32 3
  %49 = ptrtoint ptr %len50 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %len50, align 1
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %sub51 = add i32 %51, -48
  %52 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub51, ptr %dlen, align 4
  %53 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4096, ptr %out_len, align 4
  %i_flags = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %54 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_flags, align 4
  %and = and i32 %55, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.end48.if.end58_crit_edge, label %if.then53

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then53:                                        ; preds = %if.end48
  %call54 = call i32 @ubifs_decrypt(ptr noundef %7, ptr noundef %add.ptr, ptr noundef nonnull %dlen, i32 noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then53.if.end58_crit_edge, label %if.then53.out_err_crit_edge

if.then53.out_err_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.then53.if.end58_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end58:                                         ; preds = %if.then53.if.end58_crit_edge, %if.end48.if.end58_crit_edge
  %data = getelementptr inbounds %struct.ubifs_data_node, ptr %add.ptr, i32 0, i32 5
  %56 = ptrtoint ptr %dlen to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dlen, align 4
  %compr_type = getelementptr inbounds %struct.ubifs_data_node, ptr %add.ptr, i32 0, i32 3
  %58 = ptrtoint ptr %compr_type to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %compr_type, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %conv59 = zext i16 %60 to i32
  %call60 = call i32 @ubifs_decompress(ptr noundef %c, ptr noundef %data, i32 noundef %57, ptr noundef %addr.0.i, ptr noundef nonnull %out_len, i32 noundef %conv59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %if.end58.out_err_crit_edge

if.end58.out_err_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

lor.lhs.false62:                                  ; preds = %if.end58
  %61 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %out_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %62)
  %cmp63.not = icmp eq i32 %46, %62
  br i1 %cmp63.not, label %if.end66, label %lor.lhs.false62.out_err_crit_edge

lor.lhs.false62.out_err_crit_edge:                ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end66:                                         ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %46)
  %cmp67 = icmp ult i32 %46, 4096
  br i1 %cmp67, label %if.then69, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr70 = getelementptr i8, ptr %addr.0.i, i32 %46
  %sub71 = sub nuw nsw i32 4096, %46
  %63 = call ptr @memset(ptr %add.ptr70, i32 0, i32 %sub71)
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %if.end66.cleanup_crit_edge
  %add = add nsw i32 %nn.0322, 1
  br label %while.end

if.else75:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i277, i32 %26)
  %cmp80 = icmp ult i32 %and.i277, %26
  br i1 %cmp80, label %if.then82, label %if.else84

if.then82:                                        ; preds = %if.else75
  %add83 = add nsw i32 %nn.0322, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_len) #10
  %64 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %out_len, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dlen) #10
  %65 = ptrtoint ptr %dlen to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %dlen, align 4, !annotation !167
  %exitcond.not = icmp eq i32 %add83, %28
  br i1 %exitcond.not, label %if.then82.if.then15_crit_edge, label %if.then82.if.else_crit_edge

if.then82.if.else_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then82.if.then15_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.else84:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #12
  %66 = call ptr @memset(ptr %addr.0.i, i32 0, i32 4096)
  br label %while.end

while.end:                                        ; preds = %if.else84, %cleanup, %if.then15
  %tobool115.not = phi i1 [ false, %if.then15 ], [ false, %if.else84 ], [ true, %cleanup ]
  %read.2 = phi i32 [ 0, %if.then15 ], [ 0, %if.else84 ], [ %46, %cleanup ]
  %nn.2 = phi i32 [ %nn.0.lcssa, %if.then15 ], [ %nn.0322, %if.else84 ], [ %add, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #10
  %67 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv)
  %cmp101 = icmp eq i32 %68, %conv
  br i1 %cmp101, label %if.then103, label %while.end.out_hole_crit_edge

while.end.out_hole_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_hole

if.then103:                                       ; preds = %while.end
  %69 = trunc i64 %call to i32
  %conv106 = and i32 %69, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv106)
  %tobool107.not = icmp ne i32 %conv106, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %read.2, i32 %conv106)
  %cmp108 = icmp ugt i32 %read.2, %conv106
  %or.cond217 = select i1 %tobool107.not, i1 %cmp108, i1 false
  br i1 %or.cond217, label %if.then110, label %if.then103.out_hole_crit_edge

if.then103.out_hole_crit_edge:                    ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_hole

if.then110:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr111 = getelementptr i8, ptr %addr.0.i, i32 %conv106
  %sub112 = sub nsw i32 %read.2, %conv106
  %70 = call ptr @memset(ptr %add.ptr111, i32 0, i32 %sub112)
  br label %out_hole

out_hole:                                         ; preds = %if.then110, %if.then103.out_hole_crit_edge, %while.end.out_hole_crit_edge
  br i1 %tobool115.not, label %out_hole.if.end136_crit_edge, label %out_hole.if.then116_crit_edge

out_hole.if.then116_crit_edge:                    ; preds = %out_hole
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116

out_hole.if.end136_crit_edge:                     ; preds = %out_hole
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then116:                                       ; preds = %out_hole.if.then116_crit_edge, %out_hole.thread
  %nn.4316 = phi i32 [ %1, %out_hole.thread ], [ %nn.2, %out_hole.if.then116_crit_edge ]
  %71 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %page, align 4
  %73 = and i32 %72, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then116.if.then.i_crit_edge

if.then116.if.then.i_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then116
  %74 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  %and.i.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !128

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then116.if.then.i_crit_edge
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !143
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %77 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i.not.i = icmp eq i32 %78, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !129

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !144
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 10, ptr noundef %page) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @populate_page.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@populate_page, %if.then129)) #10
          to label %if.end136 [label %if.then129], !srcloc !127

if.then129:                                       ; preds = %SetPageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  %79 = call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i280 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i280 to ptr
  %task131 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task131 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task131, align 8
  %pid132 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 68
  %83 = ptrtoint ptr %pid132 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pid132, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @populate_page.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.28, i32 noundef %84) #10
  br label %if.end136

if.end136:                                        ; preds = %if.then129, %SetPageChecked.exit, %out_hole.if.end136_crit_edge
  %nn.4317 = phi i32 [ %nn.4316, %if.then129 ], [ %nn.2, %out_hole.if.end136_crit_edge ], [ %nn.4316, %SetPageChecked.exit ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  %85 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %85, align 4
  %and.i.i.i.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !128

if.then.i.i.i:                                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.30) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !141
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end136
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #10
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %85, align 4
  %and.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i221 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i221, label %do.body7.i224, label %if.then.i222, !prof !128

if.then.i222:                                     ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !146
  unreachable

do.body7.i224:                                    ; preds = %SetPageUptodate.exit
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %85, align 4
  %and.i31.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i223 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i223, label %if.end.i.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body7.i224
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %91, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i224
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %92, %if.end.i.i ]
  %93 = inttoptr i32 %retval.0.i.i to ptr
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp.i.not.i225 = icmp eq i32 %95, -1
  %96 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %85, align 4
  %and.i32.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i225, label %if.then17.i, label %do.end24.i, !prof !129

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !128

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %97, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %98, %if.end.i36.i ]
  %99 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %99, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !147
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !128

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %97, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %page to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %100, %if.end.i43.i ]
  %101 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %101) #10
  call void @flush_dcache_page(ptr noundef %page) #10
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #10
  %102 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %page, align 4
  %shr.i.i281 = lshr i32 %103, 30
  %104 = zext i32 %shr.i.i281 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %shr.i.i281, label %ClearPageError.exit.kunmap.exit_crit_edge [
    i32 2, label %ClearPageError.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i283
  ]

ClearPageError.exit.if.end.i_crit_edge:           ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

ClearPageError.exit.kunmap.exit_crit_edge:        ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i283:                         ; preds = %ClearPageError.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %105 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp2.i.not.i282 = icmp eq i32 %105, 2
  br i1 %cmp2.i.not.i282, label %is_highmem_idx.exit.i283.if.end.i_crit_edge, label %is_highmem_idx.exit.i283.kunmap.exit_crit_edge

is_highmem_idx.exit.i283.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i283
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i283.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i283
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i283.if.end.i_crit_edge, %ClearPageError.exit.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %page) #10
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i283.kunmap.exit_crit_edge, %ClearPageError.exit.kunmap.exit_crit_edge
  %106 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %nn.4317, ptr %n, align 4
  br label %cleanup138

out_err:                                          ; preds = %lor.lhs.false62.out_err_crit_edge, %if.end58.out_err_crit_edge, %if.then53.out_err_crit_edge, %do.end41.out_err_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_len) #10
  %107 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %107, align 4
  %and.i.i226 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i226)
  %tobool.not.i227 = icmp eq i32 %and.i.i226, 0
  br i1 %tobool.not.i227, label %do.body7.i231, label %if.then.i228, !prof !128

if.then.i228:                                     ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !152
  unreachable

do.body7.i231:                                    ; preds = %out_err
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %107, align 4
  %and.i31.i229 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i229)
  %tobool.not.i.i230 = icmp eq i32 %and.i31.i229, 0
  br i1 %tobool.not.i.i230, label %if.end.i.i234, label %if.then.i.i233, !prof !128

if.then.i.i233:                                   ; preds = %do.body7.i231
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i232 = add i32 %111, -1
  br label %_compound_head.exit.i239

if.end.i.i234:                                    ; preds = %do.body7.i231
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i239

_compound_head.exit.i239:                         ; preds = %if.end.i.i234, %if.then.i.i233
  %retval.0.i.i235 = phi i32 [ %sub.i.i232, %if.then.i.i233 ], [ %112, %if.end.i.i234 ]
  %113 = inttoptr i32 %retval.0.i.i235 to ptr
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %cmp.i.not.i236 = icmp eq i32 %115, -1
  %116 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %107, align 4
  %and.i32.i237 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i237)
  %tobool.not.i33.i238 = icmp eq i32 %and.i32.i237, 0
  br i1 %cmp.i.not.i236, label %if.then17.i240, label %do.end24.i246, !prof !129

if.then17.i240:                                   ; preds = %_compound_head.exit.i239
  br i1 %tobool.not.i33.i238, label %if.end.i36.i243, label %if.then.i35.i242, !prof !128

if.then.i35.i242:                                 ; preds = %if.then17.i240
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i241 = add i32 %117, -1
  br label %_compound_head.exit38.i245

if.end.i36.i243:                                  ; preds = %if.then17.i240
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i245

_compound_head.exit38.i245:                       ; preds = %if.end.i36.i243, %if.then.i35.i242
  %retval.0.i37.i244 = phi i32 [ %sub.i34.i241, %if.then.i35.i242 ], [ %118, %if.end.i36.i243 ]
  %119 = inttoptr i32 %retval.0.i37.i244 to ptr
  call void @dump_page(ptr noundef %119, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !153
  unreachable

do.end24.i246:                                    ; preds = %_compound_head.exit.i239
  br i1 %tobool.not.i33.i238, label %if.end.i43.i249, label %if.then.i42.i248, !prof !128

if.then.i42.i248:                                 ; preds = %do.end24.i246
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i247 = add i32 %117, -1
  br label %ClearPageUptodate.exit

if.end.i43.i249:                                  ; preds = %do.end24.i246
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i249, %if.then.i42.i248
  %retval.0.i44.i250 = phi i32 [ %sub.i41.i247, %if.then.i42.i248 ], [ %120, %if.end.i43.i249 ]
  %121 = inttoptr i32 %retval.0.i44.i250 to ptr
  call void @_clear_bit(i32 noundef 2, ptr noundef %121) #10
  %122 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %107, align 4
  %and.i.i251 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i251)
  %tobool.not.i252 = icmp eq i32 %and.i.i251, 0
  br i1 %tobool.not.i252, label %do.body7.i256, label %if.then.i253, !prof !128

if.then.i253:                                     ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !168
  unreachable

do.body7.i256:                                    ; preds = %ClearPageUptodate.exit
  %124 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %107, align 4
  %and.i31.i254 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i254)
  %tobool.not.i.i255 = icmp eq i32 %and.i31.i254, 0
  br i1 %tobool.not.i.i255, label %if.end.i.i259, label %if.then.i.i258, !prof !128

if.then.i.i258:                                   ; preds = %do.body7.i256
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i257 = add i32 %125, -1
  br label %_compound_head.exit.i264

if.end.i.i259:                                    ; preds = %do.body7.i256
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i264

_compound_head.exit.i264:                         ; preds = %if.end.i.i259, %if.then.i.i258
  %retval.0.i.i260 = phi i32 [ %sub.i.i257, %if.then.i.i258 ], [ %126, %if.end.i.i259 ]
  %127 = inttoptr i32 %retval.0.i.i260 to ptr
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %129)
  %cmp.i.not.i261 = icmp eq i32 %129, -1
  %130 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %107, align 4
  %and.i32.i262 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i262)
  %tobool.not.i33.i263 = icmp eq i32 %and.i32.i262, 0
  br i1 %cmp.i.not.i261, label %if.then17.i265, label %do.end24.i271, !prof !129

if.then17.i265:                                   ; preds = %_compound_head.exit.i264
  br i1 %tobool.not.i33.i263, label %if.end.i36.i268, label %if.then.i35.i267, !prof !128

if.then.i35.i267:                                 ; preds = %if.then17.i265
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i266 = add i32 %131, -1
  br label %_compound_head.exit38.i270

if.end.i36.i268:                                  ; preds = %if.then17.i265
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i270

_compound_head.exit38.i270:                       ; preds = %if.end.i36.i268, %if.then.i35.i267
  %retval.0.i37.i269 = phi i32 [ %sub.i34.i266, %if.then.i35.i267 ], [ %132, %if.end.i36.i268 ]
  %133 = inttoptr i32 %retval.0.i37.i269 to ptr
  call void @dump_page(ptr noundef %133, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !169
  unreachable

do.end24.i271:                                    ; preds = %_compound_head.exit.i264
  br i1 %tobool.not.i33.i263, label %if.end.i43.i274, label %if.then.i42.i273, !prof !128

if.then.i42.i273:                                 ; preds = %do.end24.i271
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i272 = add i32 %131, -1
  br label %SetPageError.exit

if.end.i43.i274:                                  ; preds = %do.end24.i271
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i274, %if.then.i42.i273
  %retval.0.i44.i275 = phi i32 [ %sub.i41.i272, %if.then.i42.i273 ], [ %134, %if.end.i43.i274 ]
  %135 = inttoptr i32 %retval.0.i44.i275 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %135) #10
  call void @flush_dcache_page(ptr noundef %page) #10
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 55) #10
  %136 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %page, align 4
  %shr.i.i284 = lshr i32 %137, 30
  %138 = zext i32 %shr.i.i284 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %shr.i.i284, label %SetPageError.exit.kunmap.exit288_crit_edge [
    i32 2, label %SetPageError.exit.if.end.i287_crit_edge
    i32 3, label %is_highmem_idx.exit.i286
  ]

SetPageError.exit.if.end.i287_crit_edge:          ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i287

SetPageError.exit.kunmap.exit288_crit_edge:       ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit288

is_highmem_idx.exit.i286:                         ; preds = %SetPageError.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %139 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %139)
  %cmp2.i.not.i285 = icmp eq i32 %139, 2
  br i1 %cmp2.i.not.i285, label %is_highmem_idx.exit.i286.if.end.i287_crit_edge, label %is_highmem_idx.exit.i286.kunmap.exit288_crit_edge

is_highmem_idx.exit.i286.kunmap.exit288_crit_edge: ; preds = %is_highmem_idx.exit.i286
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit288

is_highmem_idx.exit.i286.if.end.i287_crit_edge:   ; preds = %is_highmem_idx.exit.i286
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i287

if.end.i287:                                      ; preds = %is_highmem_idx.exit.i286.if.end.i287_crit_edge, %SetPageError.exit.if.end.i287_crit_edge
  call void @kunmap_high(ptr noundef %page) #10
  br label %kunmap.exit288

kunmap.exit288:                                   ; preds = %if.end.i287, %is_highmem_idx.exit.i286.kunmap.exit288_crit_edge, %SetPageError.exit.kunmap.exit288_crit_edge
  %i_ino137 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %140 = ptrtoint ptr %i_ino137 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %i_ino137, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.29, i32 noundef %26, i32 noundef %141) #10
  br label %cleanup138

cleanup138:                                       ; preds = %kunmap.exit288, %kunmap.exit
  %retval.0 = phi i32 [ 0, %kunmap.exit ], [ -22, %kunmap.exit288 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_locate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_begin_slow(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, ptr nocapture noundef writeonly %pagep, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.ubifs_budget_req, align 4
  %req = alloca %struct.ubifs_budget_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %6 = lshr i64 %pos, 12
  %conv = trunc i64 %6 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #10
  %7 = call ptr @memcpy(ptr %req, ptr @__const.ubifs_vm_page_mkwrite.req, i32 20)
  %conv1 = zext i32 %len to i64
  %add = add i64 %conv1, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %9)
  %cmp = icmp sgt i64 %add, %9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_begin_slow.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_begin_slow, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %18 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_begin_slow.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.42, i32 noundef %15, i32 noundef %17, i64 noundef %pos, i32 noundef %len, i64 noundef %19) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %cmp, label %if.then12, label %do.end.if.end13_crit_edge

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %req, align 4
  %bf.clear = and i32 %bf.load, -3841
  %bf.set = or i32 %bf.clear, 256
  store i32 %bf.set, ptr %req, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.end.if.end13_crit_edge
  %call14 = call i32 @ubifs_budget_space(ptr noundef %5, ptr noundef nonnull %req) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end23, label %if.end13.cleanup_crit_edge, !prof !128

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %call24 = call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %conv, i32 noundef %flags) #10
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then34, label %if.end35, !prof !129

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_release_budget(ptr noundef %5, ptr noundef nonnull %req) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  %21 = getelementptr inbounds %struct.page, ptr %call24, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i114 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i114)
  %tobool.not.i.i115 = icmp eq i32 %and.i.i114, 0
  br i1 %tobool.not.i.i115, label %if.end.i.i118, label %if.then.i.i117, !prof !128

if.then.i.i117:                                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i116 = add i32 %23, -1
  br label %_compound_head.exit.i122

if.end.i.i118:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call24 to i32
  br label %_compound_head.exit.i122

_compound_head.exit.i122:                         ; preds = %if.end.i.i118, %if.then.i.i117
  %retval.0.i.i119 = phi i32 [ %sub.i.i116, %if.then.i.i117 ], [ %24, %if.end.i.i118 ]
  %25 = inttoptr i32 %retval.0.i.i119 to ptr
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i120 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i120)
  %tobool.not.i.i.i121 = icmp eq i32 %and.i.i.i.i120, 0
  br i1 %tobool.not.i.i.i121, label %folio_flags.exit.i.i, label %if.then.i.i.i123, !prof !128

if.then.i.i.i123:                                 ; preds = %_compound_head.exit.i122
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.30) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !141
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i122
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i, label %if.then38, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !142
  br label %if.end48

if.then38:                                        ; preds = %folio_flags.exit.i.i
  %and = and i64 %pos, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool39.not = icmp eq i64 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp40 = icmp eq i32 %len, 4096
  %or.cond = and i1 %tobool39.not, %cmp40
  br i1 %or.cond, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then38
  %32 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %call24, align 4
  %34 = and i32 %33, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then42.if.then.i_crit_edge

if.then42.if.then.i_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then42
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %21, align 4
  %and.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !128

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then42.if.then.i_crit_edge
  call void @dump_page(ptr noundef nonnull %call24, ptr noundef nonnull @.str.16) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !143
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %37 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %call24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i = icmp eq i32 %38, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !129

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef nonnull %call24, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !144
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 10, ptr noundef nonnull %call24) #10
  br label %if.end47

if.else:                                          ; preds = %if.then38
  %call43 = call fastcc i32 @do_readpage(ptr noundef nonnull %call24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.else.if.end47_crit_edge, label %if.then45

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then45:                                        ; preds = %if.else
  call void @unlock_page(ptr noundef nonnull %call24) #10
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %21, align 4
  %and.i.i124 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool.not.i.i125 = icmp eq i32 %and.i.i124, 0
  br i1 %tobool.not.i.i125, label %if.end.i.i128, label %if.then.i.i127, !prof !128

if.then.i.i127:                                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i126 = add i32 %40, -1
  br label %_compound_head.exit.i130

if.end.i.i128:                                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %call24 to i32
  br label %_compound_head.exit.i130

_compound_head.exit.i130:                         ; preds = %if.end.i.i128, %if.then.i.i127
  %retval.0.i.i129 = phi i32 [ %sub.i.i126, %if.then.i.i127 ], [ %41, %if.end.i.i128 ]
  %42 = inttoptr i32 %retval.0.i.i129 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %43 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i.i.i = icmp eq i32 %44, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !129

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i130
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.17) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !132
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i130
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@write_begin_slow, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !127

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %42, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %42) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @ubifs_release_budget(ptr noundef %5, ptr noundef nonnull %req) #10
  br label %cleanup

if.end47:                                         ; preds = %if.else.if.end47_crit_edge, %SetPageChecked.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !145
  %46 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !128

if.then.i.i.i:                                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef nonnull %call24, ptr noundef nonnull @.str.30) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !141
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end47
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call24) #10
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %21, align 4
  %and.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i103 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i103, label %do.body7.i106, label %if.then.i104, !prof !128

if.then.i104:                                     ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef nonnull %call24, ptr noundef nonnull @.str.15) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !146
  unreachable

do.body7.i106:                                    ; preds = %SetPageUptodate.exit
  %50 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %21, align 4
  %and.i31.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i105 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i105, label %if.end.i.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body7.i106
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %51, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i106
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %call24 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %52, %if.end.i.i ]
  %53 = inttoptr i32 %retval.0.i.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i.not.i107 = icmp eq i32 %55, -1
  %56 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %21, align 4
  %and.i32.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i107, label %if.then17.i, label %do.end24.i, !prof !129

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !128

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %57, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %call24 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %58, %if.end.i36.i ]
  %59 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %59, ptr noundef nonnull @.str.9) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !147
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !128

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %57, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %call24 to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %60, %if.end.i43.i ]
  %61 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %61) #10
  br label %if.end48

if.end48:                                         ; preds = %ClearPageError.exit, %PageUptodate.exit
  %62 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %call24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i.not.i108 = icmp eq i32 %63, -1
  br i1 %cmp.i.not.i108, label %if.then.i109, label %PagePrivate.exit, !prof !129

if.then.i109:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef nonnull %call24, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %if.end48
  %64 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %call24, align 4
  %66 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool50.not = icmp eq i32 %66, 0
  br i1 %tobool50.not, label %if.else52, label %if.then51

if.then51:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #10
  %67 = call ptr @memcpy(ptr %req.i, ptr @__const.release_new_page_budget.req, i32 20)
  call void @ubifs_release_budget(ptr noundef %5, ptr noundef nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  br label %if.end57

if.else52:                                        ; preds = %PagePrivate.exit
  %68 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %call24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp.i.not.i110 = icmp eq i32 %69, -1
  br i1 %cmp.i.not.i110, label %if.then.i111, label %PageChecked.exit, !prof !129

if.then.i111:                                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef nonnull %call24, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

PageChecked.exit:                                 ; preds = %if.else52
  %70 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %call24, align 4
  %72 = and i32 %71, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool54.not = icmp eq i32 %72, 0
  br i1 %tobool54.not, label %if.then55, label %PageChecked.exit.if.end57_crit_edge

PageChecked.exit.if.end57_crit_edge:              ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then55:                                        ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_convert_page_budget(ptr noundef %5) #10
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %PageChecked.exit.if.end57_crit_edge, %if.then51
  br i1 %cmp, label %if.then59, label %if.end57.if.end65_crit_edge

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then59:                                        ; preds = %if.end57
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #10
  %dirty = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %73 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load61 = load i8, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load61)
  %tobool62.not = icmp sgt i8 %bf.load61, -1
  br i1 %tobool62.not, label %if.then59.if.end65_crit_edge, label %if.then63

if.then59.if.end65_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_release_dirty_inode_budget(ptr noundef %5, ptr noundef %1) #10
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then59.if.end65_crit_edge, %if.end57.if.end65_crit_edge
  %74 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call24, ptr %pagep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %put_page.exit, %if.then34, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then34 ], [ 0, %if.end65 ], [ %call43, %put_page.exit ], [ %call14, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_convert_page_budget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_dirty_inode_budget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cancel_budget(ptr noundef %c, ptr noundef %page, ptr noundef %ui, i32 noundef %appending) unnamed_addr #0 align 64 {
entry:
  %req.i20 = alloca %struct.ubifs_budget_req, align 4
  %req.i = alloca %struct.ubifs_budget_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %appending)
  %tobool.not = icmp eq i32 %appending, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %dirty = getelementptr inbounds %struct.ubifs_inode, ptr %ui, i32 0, i32 6
  %0 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ubifs_release_dirty_inode_budget(ptr noundef %c, ptr noundef %ui) #10
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %ui, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %ui_mutex) #10
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %1 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !129

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %if.end3
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %page, align 4
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.then5, label %PagePrivate.exit.if.end10_crit_edge

PagePrivate.exit.if.end10_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %PagePrivate.exit
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i16 = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i16, label %if.then.i17, label %PageChecked.exit, !prof !129

if.then.i17:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

PageChecked.exit:                                 ; preds = %if.then5
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #10
  %11 = call ptr @memcpy(ptr %req.i, ptr @__const.release_new_page_budget.req, i32 20)
  call void @ubifs_release_budget(ptr noundef %c, ptr noundef nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  br label %if.end10

if.else:                                          ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i20) #10
  %12 = call ptr @memset(ptr %req.i20, i32 0, i32 16)
  %dd_growth.i = getelementptr inbounds %struct.ubifs_budget_req, ptr %req.i20, i32 0, i32 4
  %page_budget.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 7
  %13 = ptrtoint ptr %page_budget.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_budget.i, align 8
  %15 = ptrtoint ptr %dd_growth.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dd_growth.i, align 4
  call void @ubifs_release_budget(ptr noundef %c, ptr noundef nonnull %req.i20) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i20) #10
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8, %PagePrivate.exit.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page_move_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_page_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_page_states(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fscrypt_get_symlink(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_symlink_getattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_vm_page_mkwrite(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  %req.i = alloca %struct.ubifs_budget_req, align 4
  %now = alloca %struct.timespec64, align 8
  %req = alloca %struct.ubifs_budget_req, align 4
  %tmp83 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  %2 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #10
  %12 = call ptr @memset(ptr %now, i32 255, i32 16)
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %now, ptr noundef %7) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #10
  %13 = call ptr @memcpy(ptr %req, ptr @__const.ubifs_vm_page_mkwrite.req, i32 20)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_vm_page_mkwrite.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_vm_page_mkwrite, %if.then)) #10
          to label %do.body7 [label %if.then], !srcloc !127

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = call i32 @llvm.read_register.i32(metadata !117) #10
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino, align 8
  %index = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 4
  %call6 = call fastcc i64 @i_size_read(ptr noundef %7)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_vm_page_mkwrite.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.49, i32 noundef %19, i32 noundef %21, i32 noundef %23, i64 noundef %call6) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %ro_media = getelementptr inbounds %struct.ubifs_info, ptr %11, i32 0, i32 81
  %24 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %ro_media, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %.not = icmp ult i8 %bf.load, 64
  br i1 %.not, label %do.body7.do.end26_crit_edge, label %if.then23, !prof !128

do.body7.do.end26_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

if.then23:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_assert_failed(ptr noundef %11, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 1519) #10
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body7.do.end26_crit_edge
  %25 = ptrtoint ptr %ro_media to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load27 = load i8, ptr %ro_media, align 8
  %26 = and i8 %bf.load27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not = icmp eq i8 %26, 0
  br i1 %tobool31.not, label %if.end39, label %do.end26.cleanup_crit_edge, !prof !128

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %do.end26
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  %27 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_mtime.i, align 8
  %29 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %now, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp.i.i = icmp eq i64 %28, %30
  br i1 %cmp.i.i, label %timespec64_equal.exit.i, label %if.end39.if.then42_crit_edge

if.end39.if.then42_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

timespec64_equal.exit.i:                          ; preds = %if.end39
  %tv_nsec.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tv_nsec.i.i, align 8
  %tv_nsec2.i.i = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %33 = ptrtoint ptr %tv_nsec2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tv_nsec2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp3.i.not.i = icmp eq i32 %32, %34
  br i1 %cmp3.i.not.i, label %lor.lhs.false.i, label %timespec64_equal.exit.i.if.then42_crit_edge

timespec64_equal.exit.i.if.then42_crit_edge:      ; preds = %timespec64_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

lor.lhs.false.i:                                  ; preds = %timespec64_equal.exit.i
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  %35 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_ctime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %28)
  %cmp.i5.i = icmp eq i64 %36, %28
  br i1 %cmp.i5.i, label %timespec64_equal.exit11.i, label %lor.lhs.false.i.if.then42_crit_edge

lor.lhs.false.i.if.then42_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

timespec64_equal.exit11.i:                        ; preds = %lor.lhs.false.i
  %tv_nsec.i6.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17, i32 1
  %37 = ptrtoint ptr %tv_nsec.i6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tv_nsec.i6.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %32)
  %cmp3.i8.not.i = icmp eq i32 %38, %32
  br i1 %cmp3.i8.not.i, label %timespec64_equal.exit11.i.if.end45_crit_edge, label %timespec64_equal.exit11.i.if.then42_crit_edge

timespec64_equal.exit11.i.if.then42_crit_edge:    ; preds = %timespec64_equal.exit11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

timespec64_equal.exit11.i.if.end45_crit_edge:     ; preds = %timespec64_equal.exit11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then42:                                        ; preds = %timespec64_equal.exit11.i.if.then42_crit_edge, %lor.lhs.false.i.if.then42_crit_edge, %timespec64_equal.exit.i.if.then42_crit_edge, %if.end39.if.then42_crit_edge
  %39 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load43 = load i32, ptr %req, align 4
  %bf.clear44 = and i32 %bf.load43, -3841
  %bf.set = or i32 %bf.clear44, 256
  store i32 %bf.set, ptr %req, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %timespec64_equal.exit11.i.if.end45_crit_edge
  %tobool41.not147 = phi i1 [ false, %if.then42 ], [ true, %timespec64_equal.exit11.i.if.end45_crit_edge ]
  %call46 = call i32 @ubifs_budget_space(ptr noundef %11, ptr noundef nonnull %req) #10
  %40 = zext i32 %call46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call46, label %if.end45.cleanup_crit_edge [
    i32 0, label %if.end58
    i32 -28, label %if.then55
  ], !prof !177

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then55:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino56 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_ino56, align 8
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %11, ptr noundef nonnull @.str.50, i32 noundef %42) #10
  br label %cleanup

if.end58:                                         ; preds = %if.end45
  call void @__might_sleep(ptr noundef nonnull @.str.51, i32 noundef 788) #10
  %43 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %45, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %46, %if.end.i.i ]
  %47 = inttoptr i32 %retval.0.i.i to ptr
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !128

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %47, ptr noundef nonnull @.str.30) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !141
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %47, i32 noundef 4) #10
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %47, align 4
  %and.i.i4.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i142_crit_edge

folio_flags.exit.i.i.if.then.i142_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i142

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %47, i32 1, i32 3, i32 1) #10
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #10, !srcloc !178
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !179
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i142_crit_edge

folio_trylock.exit.i.if.then.i142_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i142

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit

if.then.i142:                                     ; preds = %folio_trylock.exit.i.if.then.i142_crit_edge, %folio_flags.exit.i.i.if.then.i142_crit_edge
  call void @__folio_lock(ptr noundef %47) #10
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i142, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %54 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mapping, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %56 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_mapping, align 8
  %cmp59.not = icmp eq ptr %55, %57
  br i1 %cmp59.not, label %lor.rhs, label %lock_page.exit.sigbus_crit_edge, !prof !128

lock_page.exit.sigbus_crit_edge:                  ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigbus

lor.rhs:                                          ; preds = %lock_page.exit
  %index.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %58 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %59 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %call61 = call fastcc i64 @i_size_read(ptr noundef %7)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %call61)
  %cmp62 = icmp sgt i64 %shl.i, %call61
  br i1 %cmp62, label %lor.rhs.sigbus_crit_edge, label %if.end70, !prof !129

lor.rhs.sigbus_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigbus

if.end70:                                         ; preds = %lor.rhs
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %61)
  %cmp.i.not.i = icmp eq i32 %61, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !129

if.then.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

PagePrivate.exit:                                 ; preds = %if.end70
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %1, align 4
  %64 = and i32 %63, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool72.not = icmp eq i32 %64, 0
  br i1 %tobool72.not, label %if.else, label %if.then73

if.then73:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req.i) #10
  %65 = call ptr @memcpy(ptr %req.i, ptr @__const.release_new_page_budget.req, i32 20)
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %req.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req.i) #10
  br label %if.end79

if.else:                                          ; preds = %PagePrivate.exit
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp.i.not.i135 = icmp eq i32 %67, -1
  br i1 %cmp.i.not.i135, label %if.then.i136, label %PageChecked.exit, !prof !129

if.then.i136:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

PageChecked.exit:                                 ; preds = %if.else
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %1, align 4
  %70 = and i32 %69, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool75.not = icmp eq i32 %70, 0
  br i1 %tobool75.not, label %if.then76, label %PageChecked.exit.if.end77_crit_edge

PageChecked.exit.if.end77_crit_edge:              ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then76:                                        ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_convert_page_budget(ptr noundef %11) #10
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %PageChecked.exit.if.end77_crit_edge
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.i.not.i139 = icmp eq i32 %72, -1
  br i1 %cmp.i.not.i139, label %if.then.i140, label %SetPagePrivate.exit, !prof !129

if.then.i140:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.10) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !154
  unreachable

SetPagePrivate.exit:                              ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 13, ptr noundef %1) #10
  %dirty_pg_cnt = getelementptr inbounds %struct.ubifs_info, ptr %11, i32 0, i32 82
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_pg_cnt, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %dirty_pg_cnt, i32 1, i32 3, i32 1) #10
  %73 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_pg_cnt, ptr %dirty_pg_cnt, i32 1, ptr elementtype(i32) %dirty_pg_cnt) #10, !srcloc !155
  %call78 = call i32 @__set_page_dirty_nobuffers(ptr noundef %1) #10
  br label %if.end79

if.end79:                                         ; preds = %SetPagePrivate.exit, %if.then73
  br i1 %tobool41.not147, label %if.end79.if.end91_crit_edge, label %if.then81

if.end79.if.end91_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then81:                                        ; preds = %if.end79
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #10
  %i_ctime = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp83) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp83, ptr noundef %7) #10
  %74 = call ptr @memcpy(ptr %i_ctime, ptr %tmp83, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp83) #10
  %75 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime, i32 16)
  %dirty = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 6
  %76 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load84 = load i8, ptr %dirty, align 4
  call void @__mark_inode_dirty(ptr noundef %7, i32 noundef 1) #10
  call void @mutex_unlock(ptr noundef %ui_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load84)
  %tobool88.not = icmp sgt i8 %bf.load84, -1
  br i1 %tobool88.not, label %if.then81.if.end91_crit_edge, label %if.then89

if.then81.if.end91_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then89:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  call void @ubifs_release_dirty_inode_budget(ptr noundef %11, ptr noundef %7) #10
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.then81.if.end91_crit_edge, %if.end79.if.end91_crit_edge
  call void @wait_for_stable_page(ptr noundef %1) #10
  br label %cleanup

sigbus:                                           ; preds = %lor.rhs.sigbus_crit_edge, %lock_page.exit.sigbus_crit_edge
  call void @unlock_page(ptr noundef %1) #10
  call void @ubifs_release_budget(ptr noundef %11, ptr noundef nonnull %req) #10
  br label %cleanup

cleanup:                                          ; preds = %sigbus, %if.end91, %if.then55, %if.end45.cleanup_crit_edge, %do.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sigbus ], [ 512, %if.end91 ], [ 2, %do.end26.cleanup_crit_edge ], [ 2, %if.end45.cleanup_crit_edge ], [ 2, %if.then55 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_stable_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !58, !59, !61, !63, !64, !66, !68, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !109, !111, !112, !113, !115}
!llvm.named.register.sp = !{!117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ubifs/file.c", i32 1267, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ubifs_setattr.__UNIQUE_ID_ddebug289, !1, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ubifs/file.c", i32 1317, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ubifs_fsync.__UNIQUE_ID_ddebug290, !7, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!10 = !{ptr @ubifs_file_address_operations, !11, !"ubifs_file_address_operations", i1 false, i1 false}
!11 = !{!"../fs/ubifs/file.c", i32 1644, i32 39}
!12 = !{ptr @ubifs_file_inode_operations, !13, !"ubifs_file_inode_operations", i1 false, i1 false}
!13 = !{!"../fs/ubifs/file.c", i32 1657, i32 31}
!14 = !{ptr @ubifs_symlink_inode_operations, !15, !"ubifs_symlink_inode_operations", i1 false, i1 false}
!15 = !{!"../fs/ubifs/file.c", i32 1666, i32 31}
!16 = !{ptr @ubifs_file_operations, !17, !"ubifs_file_operations", i1 false, i1 false}
!17 = !{!"../fs/ubifs/file.c", i32 1674, i32 30}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ubifs/file.c", i32 1117, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @do_truncation.__UNIQUE_ID_ddebug287, !19, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ubifs/file.c", i32 1159, i32 5}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ubifs/file.c", i32 938, i32 16}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ubifs/key.h", i32 270, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/page-flags.h", i32 430, i32 1}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/mm.h", i32 717, i32 2}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/file.c", i32 1228, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @do_setattr.__UNIQUE_ID_ddebug288, !42, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/file.c", i32 1015, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ubifs_writepage.__UNIQUE_ID_ddebug285, !46, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ubifs/file.c", i32 759, i32 4}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ubifs/file.c", i32 760, i32 4}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ubifs/file.c", i32 810, i32 16}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ubifs/file.c", i32 616, i32 2}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @populate_page.__UNIQUE_ID_ddebug281, !56, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ubifs/file.c", i32 640, i32 4}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ubifs/file.c", i32 689, i32 3}
!63 = !{ptr @populate_page.__UNIQUE_ID_ddebug282, !62, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ubifs/file.c", i32 704, i32 15}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ubifs/file.c", i32 109, i32 2}
!72 = !{ptr @do_readpage.__UNIQUE_ID_ddebug276, !71, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ubifs/file.c", i32 111, i32 2}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ubifs/file.c", i32 112, i32 2}
!77 = !{ptr @do_readpage.__UNIQUE_ID_ddebug277, !78, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!78 = !{!"../fs/ubifs/file.c", i32 163, i32 4}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ubifs/file.c", i32 166, i32 16}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ubifs/file.c", i32 1459, i32 2}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ubifs/file.c", i32 433, i32 2}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ubifs/file.c", i32 434, i32 2}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ubifs/file.c", i32 473, i32 3}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ubifs/file.c", i32 490, i32 4}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ubifs/file.c", i32 228, i32 2}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @write_begin_slow.__UNIQUE_ID_ddebug278, !92, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ubifs/file.c", i32 546, i32 2}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ubifs_write_end.__UNIQUE_ID_ddebug279, !96, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ubifs/file.c", i32 559, i32 3}
!101 = !{ptr @ubifs_write_end.__UNIQUE_ID_ddebug280, !100, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!104 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ubifs/file.c", i32 1498, i32 2}
!107 = !{ptr @ubifs_file_vm_ops, !108, !"ubifs_file_vm_ops", i1 false, i1 false}
!108 = !{!"../fs/ubifs/file.c", i32 1597, i32 42}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ubifs/file.c", i32 1517, i32 2}
!111 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ubifs_vm_page_mkwrite.__UNIQUE_ID_ddebug291, !110, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ubifs/file.c", i32 1553, i32 18}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!117 = !{!"sp"}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2149106515, i64 2149106520, i64 2149106533, i64 2149106577, i64 2149106611, i64 2149106632}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = !{i64 2150795553, i64 2150796044, i64 2150795590, i64 2150795646, i64 2150795680, i64 2150795704, i64 2150795745, i64 2150795766, i64 2150795794, i64 2150795828}
!131 = !{i64 2151144350, i64 2151144841, i64 2151144387, i64 2151144443, i64 2151144477, i64 2151144501, i64 2151144542, i64 2151144563, i64 2151144591, i64 2151144625}
!132 = !{i64 2153322218, i64 2153322701, i64 2153322255, i64 2153322311, i64 2153322345, i64 2153322369, i64 2153322410, i64 2153322431, i64 2153322459, i64 2153322493}
!133 = !{i64 2148389639}
!134 = !{i64 2148304372, i64 2148304404, i64 2148304433, i64 2148304467, i64 2148304498, i64 2148304521}
!135 = !{i64 2148389868}
!136 = !{i64 2155299049}
!137 = !{i64 2153857340}
!138 = !{i64 2152292195}
!139 = !{i64 2152292402}
!140 = !{i64 2153860111}
!141 = !{i64 2150685644, i64 2150686135, i64 2150685681, i64 2150685737, i64 2150685771, i64 2150685795, i64 2150685836, i64 2150685857, i64 2150685885, i64 2150685919}
!142 = !{i64 2151435536}
!143 = !{i64 2150942026, i64 2150942199, i64 2150942214, i64 2150942266, i64 2150942325, i64 2150942349, i64 2150942390, i64 2150942411, i64 2150942439, i64 2150942471}
!144 = !{i64 2150942797, i64 2150942970, i64 2150942985, i64 2150943037, i64 2150943096, i64 2150943120, i64 2150943161, i64 2150943182, i64 2150943210, i64 2150943242}
!145 = !{i64 2151436607}
!146 = !{i64 2150756036, i64 2150756209, i64 2150756224, i64 2150756276, i64 2150756335, i64 2150756359, i64 2150756400, i64 2150756421, i64 2150756449, i64 2150756481}
!147 = !{i64 2150756911, i64 2150757084, i64 2150757099, i64 2150757151, i64 2150757210, i64 2150757234, i64 2150757275, i64 2150757296, i64 2150757324, i64 2150757356}
!148 = !{i64 2150933983, i64 2150934474, i64 2150934020, i64 2150934076, i64 2150934110, i64 2150934134, i64 2150934175, i64 2150934196, i64 2150934224, i64 2150934258}
!149 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!150 = !{i64 2150950173, i64 2150950346, i64 2150950361, i64 2150950413, i64 2150950472, i64 2150950496, i64 2150950537, i64 2150950558, i64 2150950586, i64 2150950618}
!151 = !{i64 2150950944, i64 2150951117, i64 2150951132, i64 2150951184, i64 2150951243, i64 2150951267, i64 2150951308, i64 2150951329, i64 2150951357, i64 2150951389}
!152 = !{i64 2151444520, i64 2151444693, i64 2151444708, i64 2151444760, i64 2151444819, i64 2151444843, i64 2151444884, i64 2151444905, i64 2151444933, i64 2151444965}
!153 = !{i64 2151445395, i64 2151445568, i64 2151445583, i64 2151445635, i64 2151445694, i64 2151445718, i64 2151445759, i64 2151445780, i64 2151445808, i64 2151445840}
!154 = !{i64 2151149601, i64 2151149774, i64 2151149789, i64 2151149841, i64 2151149900, i64 2151149924, i64 2151149965, i64 2151149986, i64 2151150014, i64 2151150046}
!155 = !{i64 2148301187, i64 2148301213, i64 2148301242, i64 2148301276, i64 2148301307, i64 2148301330}
!156 = !{i64 2152621661}
!157 = !{i64 2150097966}
!158 = !{i64 2150102900}
!159 = !{i64 2150124618}
!160 = !{i64 2150129512}
!161 = !{i64 2150206039}
!162 = !{i64 2150206364}
!163 = !{i64 2152633523}
!164 = !{i64 2148303652, i64 2148303678, i64 2148303707, i64 2148303741, i64 2148303772, i64 2148303795}
!165 = !{i64 2151154180, i64 2151154353, i64 2151154368, i64 2151154420, i64 2151154479, i64 2151154503, i64 2151154544, i64 2151154565, i64 2151154593, i64 2151154625}
!166 = !{i64 2151201498, i64 2151201989, i64 2151201535, i64 2151201591, i64 2151201625, i64 2151201649, i64 2151201690, i64 2151201711, i64 2151201739, i64 2151201773}
!167 = !{!"auto-init"}
!168 = !{i64 2150747234, i64 2150747407, i64 2150747422, i64 2150747474, i64 2150747533, i64 2150747557, i64 2150747598, i64 2150747619, i64 2150747647, i64 2150747679}
!169 = !{i64 2150748109, i64 2150748282, i64 2150748297, i64 2150748349, i64 2150748408, i64 2150748432, i64 2150748473, i64 2150748494, i64 2150748522, i64 2150748554}
!170 = !{i64 693668, i64 693729}
!171 = !{i64 696400}
!172 = !{i64 696685}
!173 = !{i64 2152619730}
!174 = !{i64 2152619572}
!175 = !{i64 2152619900}
!176 = !{i64 2150205714}
!177 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!178 = !{i64 2148310045, i64 2148310077, i64 2148310106, i64 2148310140, i64 2148310171, i64 2148310194}
!179 = !{i64 2148399126}
