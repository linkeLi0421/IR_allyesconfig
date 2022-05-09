; ModuleID = '/llk/IR_all_yes/fs/jffs2/fs.c_pt.bc'
source_filename = "../fs/jffs2/fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.37 }
%union.anon.37 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%union.jffs2_device_node = type { %struct.jint32_t }
%struct.jint32_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.82 = type { ptr }
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
%struct.jffs2_full_dnode = type { ptr, i32, i32, i32 }
%struct.jffs2_raw_inode = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jmode_t, %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jmode_t = type { i32 }
%struct.jint16_t = type { i16 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.76 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.76 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
%struct.jffs2_full_dirent = type { %union.anon.83, ptr, i32, i32, i32, i8, [0 x i8] }
%union.anon.83 = type { ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.41 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.41 = type { %struct.callback_head }
%struct.jffs2_inode_info = type { %struct.mutex, i32, %struct.rb_root, ptr, ptr, ptr, ptr, i16, i8, %struct.inode }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@jffs2_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jffs2_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jffs2_dir_operations = external dso_local constant %struct.file_operations, align 4
@jffs2_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@jffs2_file_operations = external dso_local constant %struct.file_operations, align 4
@jffs2_file_address_operations = external dso_local constant %struct.address_space_operations, align 4
@jffs2_iget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015jffs2: Device node has strange size %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jffs2_iget\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/jffs2/fs.c\00", [18 x i8] zeroinitializer }, align 32
@jffs2_iget._entry_ptr = internal global ptr @jffs2_iget._entry, section ".printk_index", align 4
@jffs2_iget._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015jffs2: Read device numbers for inode %lu failed\0A\00", [45 x i8] zeroinitializer }, align 32
@jffs2_iget._entry_ptr.5 = internal global ptr @jffs2_iget._entry.3, section ".printk_index", align 4
@jffs2_iget._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014jffs2: %s(): Bogus i_mode %o for ino %lu\0A\00", [52 x i8] zeroinitializer }, align 32
@jffs2_iget._entry_ptr.8 = internal global ptr @jffs2_iget._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Flash size not aligned to erasesize, reducing to %dKiB\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Too few erase blocks (%d)\00", [38 x i8] zeroinitializer }, align 32
@jffs2_gc_fetch_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015jffs2: Eep. read_inode() failed for ino #%u. unlinked %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jffs2_gc_fetch_inode\00", [43 x i8] zeroinitializer }, align 32
@jffs2_gc_fetch_inode._entry_ptr = internal global ptr @jffs2_gc_fetch_inode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 8192, i64 24576, i64 40960]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 329, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 337, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 354, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 547, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 552, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [17 x i8] c"../fs/jffs2/fs.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 676, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @jffs2_gc_fetch_inode._entry, ptr @jffs2_gc_fetch_inode._entry_ptr, ptr @jffs2_iget._entry, ptr @jffs2_iget._entry.3, ptr @jffs2_iget._entry.6, ptr @jffs2_iget._entry_ptr, ptr @jffs2_iget._entry_ptr.5, ptr @jffs2_iget._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_iget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_iget._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_iget._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_gc_fetch_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_setattr(ptr noundef %inode, ptr nocapture noundef readonly %iattr) local_unnamed_addr #0 align 64 {
entry:
  %dev = alloca %union.jffs2_device_node, align 4
  %alloclen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %inode, i32 -120
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dev, align 4, !annotation !39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloclen) #8
  %5 = ptrtoint ptr %alloclen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %alloclen, align 4, !annotation !39
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %entry.if.end32_crit_edge [
    i16 24576, label %entry.if.then_crit_edge
    i16 8192, label %entry.if.then_crit_edge509
    i16 -24576, label %if.then15
  ]

entry.if.then_crit_edge509:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge509
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %10 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_rdev, align 8
  %12 = and i32 %11, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.then.i488, label %if.else.i

if.then.i488:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = lshr i32 %11, 12
  %shl.i.i = and i32 %14, 65280
  %or.i.i = or i32 %shl.i.i, %11
  %conv.i.i = trunc i32 %or.i.i to i16
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i, ptr %dev, align 4
  br label %if.end32

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i = and i32 %11, 255
  %16 = lshr i32 %11, 12
  %shl.i7.i = and i32 %16, 1048320
  %or.i8.i = or i32 %shl.i7.i, %and1.i.i
  %and2.i.i = shl i32 %11, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i8.i, %shl3.i.i
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or4.i.i, ptr %dev, align 4
  br label %if.end32

if.then15:                                        ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #8
  %metadata = getelementptr i8, ptr %inode, i32 -20
  %18 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %metadata, align 4
  %size = getelementptr inbounds %struct.jffs2_full_dnode, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 1051840) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %add.ptr) #8
  br label %cleanup

if.end:                                           ; preds = %if.then15
  %22 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %metadata, align 4
  %call22 = tail call i32 @jffs2_read_dnode(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %23, ptr noundef nonnull %call9.i, i32 noundef 0, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  tail call void @mutex_unlock(ptr noundef %add.ptr) #8
  br i1 %tobool23.not, label %if.end.if.end32_crit_edge, label %if.then24

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end.if.end32_crit_edge, %if.else.i, %if.then.i488, %entry.if.end32_crit_edge
  %mdatalen.0 = phi i32 [ 0, %entry.if.end32_crit_edge ], [ 2, %if.then.i488 ], [ 4, %if.else.i ], [ %21, %if.end.if.end32_crit_edge ]
  %mdata.0 = phi ptr [ null, %entry.if.end32_crit_edge ], [ %dev, %if.then.i488 ], [ %dev, %if.else.i ], [ %call9.i, %if.end.if.end32_crit_edge ]
  %call33 = tail call ptr @jffs2_alloc_raw_inode() #8
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end32
  %24 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %inode, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %26)
  %cmp39 = icmp eq i16 %26, -24576
  br i1 %cmp39, label %if.then41, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %mdata.0) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %add = add i32 %mdatalen.0, 68
  %call44 = call i32 @jffs2_reserve_space(ptr noundef %3, i32 noundef %add, ptr noundef nonnull %alloclen, i32 noundef 0, i32 noundef 18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end54, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call33) #8
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %inode, align 8
  %29 = and i16 %28, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %29)
  %cmp50 = icmp eq i16 %29, -24576
  br i1 %cmp50, label %if.then52, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then52:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %mdata.0) #8
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #8
  %30 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iattr, align 8
  %32 = ptrtoint ptr %call33 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 6533, ptr %call33, align 1
  %nodetype = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 1
  %33 = ptrtoint ptr %nodetype to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 -8190, ptr %nodetype, align 1
  %totlen = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 2
  %34 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %add, ptr %totlen, align 1
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 3
  %call62 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call33, i32 noundef 8) #12
  %35 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %call62, ptr %hdr_crc, align 1
  %ino = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %36 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_ino, align 8
  %38 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %ino, align 1
  %version = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 5
  %highest_version = getelementptr i8, ptr %inode, i32 -28
  %39 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %highest_version, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %highest_version, align 4
  %41 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %inc, ptr %version, align 1
  %uid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 7
  %and69 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %42 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %42)
  %.unpack486 = load i32, ptr %ia_uid, align 8
  %43 = insertvalue [1 x i32] undef, i32 %.unpack486, 0
  %call71 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %43) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 53
  %46 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %48 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %49 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = call i32 @from_kuid(ptr noundef %47, [1 x i32] %49) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call71, %cond.true ], [ %call1.i, %cond.false ]
  %conv73 = trunc i32 %cond to i16
  %50 = ptrtoint ptr %uid to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %conv73, ptr %uid, align 1
  %gid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 8
  %and76 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %cond.false81, label %cond.true78

cond.true78:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %51 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %51)
  %.unpack = load i32, ptr %ia_gid, align 4
  %52 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call80 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %52) #8
  br label %cond.end83

cond.false81:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i490 = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 53
  %55 = ptrtoint ptr %s_user_ns.i.i490 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_user_ns.i.i490, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %57 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack.i491 = load i32, ptr %i_gid.i, align 8
  %58 = insertvalue [1 x i32] undef, i32 %.unpack.i491, 0
  %call1.i492 = call i32 @from_kgid(ptr noundef %56, [1 x i32] %58) #8
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false81, %cond.true78
  %cond84 = phi i32 [ %call80, %cond.true78 ], [ %call1.i492, %cond.false81 ]
  %conv85 = trunc i32 %cond84 to i16
  %59 = ptrtoint ptr %gid to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %conv85, ptr %gid, align 1
  %and86 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %spec.select508 = select i1 %tobool87.not, ptr %inode, ptr %ia_mode
  %60 = ptrtoint ptr %spec.select508 to i32
  call void @__asan_load2_noabort(i32 %60)
  %conv90.sink.in = load i16, ptr %spec.select508, align 4
  %conv90.sink = zext i16 %conv90.sink.in to i32
  %61 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 6
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %conv90.sink, ptr %61, align 1
  %isize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 9
  %and100 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  %ia_size = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 4
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %cond105.in = select i1 %tobool101.not, ptr %i_size, ptr %ia_size
  %63 = ptrtoint ptr %cond105.in to i32
  call void @__asan_load8_noabort(i32 %63)
  %cond105 = load i64, ptr %cond105.in, align 8
  %conv106 = trunc i64 %cond105 to i32
  %64 = ptrtoint ptr %isize to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %conv106, ptr %isize, align 1
  %atime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 10
  %and110 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %tmp109.sroa.0.0.in = select i1 %tobool111.not, ptr %i_atime, ptr %ia_atime
  %65 = ptrtoint ptr %tmp109.sroa.0.0.in to i32
  call void @__asan_load8_noabort(i32 %65)
  %tmp109.sroa.0.0 = load i64, ptr %tmp109.sroa.0.0.in, align 8
  %66 = call i64 @llvm.smax.i64(i64 %tmp109.sroa.0.0, i64 0)
  %67 = call i64 @llvm.umin.i64(i64 %66, i64 4294967295)
  %68 = trunc i64 %67 to i32
  %69 = ptrtoint ptr %atime to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %atime, align 1
  %mtime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 11
  %and133 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %tmp132.sroa.0.0.in = select i1 %tobool134.not, ptr %i_mtime, ptr %ia_mtime
  %70 = ptrtoint ptr %tmp132.sroa.0.0.in to i32
  call void @__asan_load8_noabort(i32 %70)
  %tmp132.sroa.0.0 = load i64, ptr %tmp132.sroa.0.0.in, align 8
  %71 = call i64 @llvm.smax.i64(i64 %tmp132.sroa.0.0, i64 0)
  %72 = call i64 @llvm.umin.i64(i64 %71, i64 4294967295)
  %73 = trunc i64 %72 to i32
  %74 = ptrtoint ptr %mtime to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %mtime, align 1
  %ctime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 12
  %and157 = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %tmp156.sroa.0.0.in = select i1 %tobool158.not, ptr %i_ctime, ptr %ia_ctime
  %75 = ptrtoint ptr %tmp156.sroa.0.0.in to i32
  call void @__asan_load8_noabort(i32 %75)
  %tmp156.sroa.0.0 = load i64, ptr %tmp156.sroa.0.0.in, align 8
  %76 = call i64 @llvm.smax.i64(i64 %tmp156.sroa.0.0, i64 0)
  %77 = call i64 @llvm.umin.i64(i64 %76, i64 4294967295)
  %78 = trunc i64 %77 to i32
  %79 = ptrtoint ptr %ctime to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %ctime, align 1
  %offset = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 13
  %80 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 0, ptr %offset, align 1
  %csize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 14
  %dsize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 15
  %81 = ptrtoint ptr %dsize to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %mdatalen.0, ptr %dsize, align 1
  %82 = ptrtoint ptr %csize to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %mdatalen.0, ptr %csize, align 1
  %compr = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 16
  %83 = ptrtoint ptr %compr to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %compr, align 1
  br i1 %tobool101.not, label %cond.end83.if.end209_crit_edge, label %land.lhs.true

cond.end83.if.end209_crit_edge:                   ; preds = %cond.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

land.lhs.true:                                    ; preds = %cond.end83
  %84 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %i_size, align 8
  %86 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %85, i64 %87)
  %cmp186 = icmp slt i64 %85, %87
  br i1 %cmp186, label %if.then188, label %land.lhs.true204.critedge

if.then188:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %compr to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %compr, align 1
  %89 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ia_size, align 8
  %91 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %i_size, align 8
  %sub = sub i64 %90, %92
  %conv195 = trunc i64 %sub to i32
  %93 = ptrtoint ptr %dsize to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %conv195, ptr %dsize, align 1
  %94 = load i64, ptr %i_size, align 8
  %conv200 = trunc i64 %94 to i32
  %95 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %conv200, ptr %offset, align 1
  br label %if.end209

land.lhs.true204.critedge:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %87)
  %tobool206.not = icmp eq i64 %87, 0
  %spec.select = zext i1 %tobool206.not to i32
  br label %if.end209

if.end209:                                        ; preds = %land.lhs.true204.critedge, %if.then188, %cond.end83.if.end209_crit_edge
  %alloc_type.0 = phi i32 [ 0, %if.then188 ], [ 0, %cond.end83.if.end209_crit_edge ], [ %spec.select, %land.lhs.true204.critedge ]
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 20
  %call212 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %call33, i32 noundef 60) #12
  %96 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 %call212, ptr %node_crc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mdatalen.0)
  %tobool213.not = icmp eq i32 %mdatalen.0, 0
  br i1 %tobool213.not, label %if.end209.if.end222_crit_edge, label %if.then214

if.end209.if.end222_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

if.then214:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %call217 = call i32 @crc32_le(i32 noundef 0, ptr noundef %mdata.0, i32 noundef %mdatalen.0) #12
  br label %if.end222

if.end222:                                        ; preds = %if.then214, %if.end209.if.end222_crit_edge
  %call217.sink = phi i32 [ %call217, %if.then214 ], [ 0, %if.end209.if.end222_crit_edge ]
  %97 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call33, i32 0, i32 19
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %call217.sink, ptr %97, align 1
  %call223 = call ptr @jffs2_write_dnode(ptr noundef %3, ptr noundef %add.ptr, ptr noundef nonnull %call33, ptr noundef %mdata.0, i32 noundef %mdatalen.0, i32 noundef %alloc_type.0) #8
  %99 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %inode, align 8
  %101 = and i16 %100, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %101)
  %cmp227 = icmp eq i16 %101, -24576
  br i1 %cmp227, label %if.then229, label %if.end222.if.end230_crit_edge

if.end222.if.end230_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end230

if.then229:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %mdata.0) #8
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %if.end222.if.end230_crit_edge
  %cmp.i493 = icmp ugt ptr %call223, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i493, label %if.then232, label %if.end235

if.then232:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  call void @jffs2_complete_reservation(ptr noundef %3) #8
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call33) #8
  call void @mutex_unlock(ptr noundef %add.ptr) #8
  %102 = ptrtoint ptr %call223 to i32
  br label %cleanup

if.end235:                                        ; preds = %if.end230
  %103 = ptrtoint ptr %atime to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %atime, align 1
  %conv241 = zext i32 %104 to i64
  %105 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv241, ptr %i_atime, align 8
  %.compoundliteral237.sroa.2.0.i_atime236.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %106 = ptrtoint ptr %.compoundliteral237.sroa.2.0.i_atime236.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %.compoundliteral237.sroa.2.0.i_atime236.sroa_idx, align 8
  %107 = ptrtoint ptr %ctime to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %ctime, align 1
  %conv247 = zext i32 %108 to i64
  %109 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv247, ptr %i_ctime, align 8
  %.compoundliteral243.sroa.2.0.i_ctime242.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %110 = ptrtoint ptr %.compoundliteral243.sroa.2.0.i_ctime242.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %.compoundliteral243.sroa.2.0.i_ctime242.sroa_idx, align 8
  %111 = ptrtoint ptr %mtime to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %mtime, align 1
  %conv254 = zext i32 %112 to i64
  %113 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv254, ptr %i_mtime, align 8
  %.compoundliteral250.sroa.2.0.i_mtime249.sroa_idx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %114 = ptrtoint ptr %.compoundliteral250.sroa.2.0.i_mtime249.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %.compoundliteral250.sroa.2.0.i_mtime249.sroa_idx, align 8
  %115 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %61, align 1
  %conv258 = trunc i32 %116 to i16
  %117 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv258, ptr %inode, align 8
  %118 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %uid, align 1
  %conv262 = zext i16 %119 to i32
  %i_uid.i494 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %120 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i496 = getelementptr inbounds %struct.super_block, ptr %121, i32 0, i32 53
  %122 = ptrtoint ptr %s_user_ns.i.i496 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_user_ns.i.i496, align 8
  %call1.i497 = call i32 @make_kuid(ptr noundef %123, i32 noundef %conv262) #8
  %124 = ptrtoint ptr %i_uid.i494 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call1.i497, ptr %i_uid.i494, align 4
  %125 = ptrtoint ptr %gid to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %gid, align 1
  %conv265 = zext i16 %126 to i32
  %i_gid.i498 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %127 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i500 = getelementptr inbounds %struct.super_block, ptr %128, i32 0, i32 53
  %129 = ptrtoint ptr %s_user_ns.i.i500 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %s_user_ns.i.i500, align 8
  %call1.i501 = call i32 @make_kgid(ptr noundef %130, i32 noundef %conv265) #8
  %131 = ptrtoint ptr %i_gid.i498 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call1.i501, ptr %i_gid.i498, align 8
  %metadata266 = getelementptr i8, ptr %inode, i32 -20
  %132 = ptrtoint ptr %metadata266 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %metadata266, align 4
  br i1 %tobool101.not, label %if.end235.if.end295_crit_edge, label %land.lhs.true269

if.end235.if.end295_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end295

land.lhs.true269:                                 ; preds = %if.end235
  %134 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %i_size, align 8
  %136 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %135, i64 %137)
  %cmp272 = icmp sgt i64 %135, %137
  br i1 %cmp272, label %if.then274, label %land.lhs.true269.land.lhs.true281_crit_edge

land.lhs.true269.land.lhs.true281_crit_edge:      ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true281

if.then274:                                       ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #10
  %fragtree = getelementptr i8, ptr %inode, i32 -24
  %conv276 = trunc i64 %137 to i32
  %call277 = call i32 @jffs2_truncate_fragtree(ptr noundef %3, ptr noundef %fragtree, i32 noundef %conv276) #8
  br label %land.lhs.true281

land.lhs.true281:                                 ; preds = %if.then274, %land.lhs.true269.land.lhs.true281_crit_edge
  %138 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %i_size, align 8
  %140 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %141)
  %cmp284 = icmp slt i64 %139, %141
  br i1 %cmp284, label %if.then286, label %land.lhs.true281.if.end295_crit_edge

land.lhs.true281.if.end295_crit_edge:             ; preds = %land.lhs.true281
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end295

if.then286:                                       ; preds = %land.lhs.true281
  call void @__sanitizer_cov_trace_pc() #10
  %call287 = call i32 @jffs2_add_full_dnode_to_inode(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %call223) #8
  %142 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %ia_size, align 8
  %144 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %i_size, align 8
  %add291 = add i64 %143, 511
  %shr = ashr i64 %add291, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %145 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %shr, ptr %i_blocks, align 8
  br label %if.end295

if.end295:                                        ; preds = %if.then286, %land.lhs.true281.if.end295_crit_edge, %if.end235.if.end295_crit_edge
  %storemerge = phi ptr [ null, %if.then286 ], [ %call223, %if.end235.if.end295_crit_edge ], [ %call223, %land.lhs.true281.if.end295_crit_edge ]
  %146 = ptrtoint ptr %metadata266 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %storemerge, ptr %metadata266, align 4
  %tobool296.not = icmp eq ptr %133, null
  br i1 %tobool296.not, label %if.end295.if.end298_crit_edge, label %if.then297

if.end295.if.end298_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end298

if.then297:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %133, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %3, ptr noundef %148) #8
  call void @jffs2_free_full_dnode(ptr noundef nonnull %133) #8
  br label %if.end298

if.end298:                                        ; preds = %if.then297, %if.end295.if.end298_crit_edge
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call33) #8
  call void @mutex_unlock(ptr noundef %add.ptr) #8
  call void @jffs2_complete_reservation(ptr noundef %3) #8
  br i1 %tobool101.not, label %if.end298.cleanup_crit_edge, label %land.lhs.true302

if.end298.cleanup_crit_edge:                      ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true302:                                 ; preds = %if.end298
  %149 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %i_size, align 8
  %151 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %150, i64 %152)
  %cmp305 = icmp sgt i64 %150, %152
  br i1 %cmp305, label %if.then307, label %land.lhs.true302.cleanup_crit_edge

land.lhs.true302.cleanup_crit_edge:               ; preds = %land.lhs.true302
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then307:                                       ; preds = %land.lhs.true302
  call void @__sanitizer_cov_trace_pc() #10
  call void @truncate_setsize(ptr noundef %inode, i64 noundef %152) #8
  %153 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %i_size, align 8
  %add310 = add i64 %154, 511
  %shr311 = ashr i64 %add310, 9
  %i_blocks312 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %155 = ptrtoint ptr %i_blocks312 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %shr311, ptr %i_blocks312, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then307, %land.lhs.true302.cleanup_crit_edge, %if.end298.cleanup_crit_edge, %if.then232, %if.then52, %if.then46.cleanup_crit_edge, %if.then41, %if.then35.cleanup_crit_edge, %if.then24, %if.then19
  %retval.0 = phi i32 [ %102, %if.then232 ], [ %call22, %if.then24 ], [ -12, %if.then19 ], [ -12, %if.then41 ], [ -12, %if.then35.cleanup_crit_edge ], [ %call44, %if.then52 ], [ %call44, %if.then46.cleanup_crit_edge ], [ 0, %if.then307 ], [ 0, %land.lhs.true302.cleanup_crit_edge ], [ 0, %if.end298.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloclen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_read_dnode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_raw_inode() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_reserve_space(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_raw_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_write_dnode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_complete_reservation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_truncate_fragtree(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_add_full_dnode_to_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_mark_node_obsolete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %iattr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @jffs2_do_setattr(ptr noundef %1, ptr noundef %iattr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iattr, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %call6 = tail call i32 @posix_acl_chmod(ptr noundef nonnull @init_user_ns, ptr noundef %1, i16 noundef zeroext %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.then5 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 29366, ptr %buf, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %f_bsize, align 4
  %flash_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %flash_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flash_size, align 4
  %shr = lshr i32 %7, 12
  %conv = zext i32 %shr to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %f_blocks, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %9 = call ptr @memset(ptr %f_files, i32 0, i32 16)
  %10 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 254, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %11 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 29366, ptr %f_fsid, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %index = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %arrayidx3 = getelementptr %struct.kstatfs, ptr %buf, i32 0, i32 7, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx3, align 4
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #8
  %dirty_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dirty_size, align 4
  %free_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %free_size, align 4
  %add = add i32 %20, %18
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sector_size, align 4
  %resv_blocks_write = getelementptr inbounds %struct.jffs2_sb_info, ptr %3, i32 0, i32 20
  %23 = ptrtoint ptr %resv_blocks_write to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %resv_blocks_write, align 4
  %conv4 = zext i8 %24 to i32
  %mul = mul i32 %22, %conv4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp = icmp ugt i32 %add, %mul
  %sub = sub i32 %add, %mul
  %phi.bo = lshr i32 %sub, 12
  %avail.0 = select i1 %cmp, i32 %phi.bo, i32 0
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #8
  %conv12 = zext i32 %avail.0 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %25 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv12, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %26 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv12, ptr %f_bavail, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %add.ptr = getelementptr i8, ptr %inode, i32 -120
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #8
  tail call void @clear_inode(ptr noundef %inode) #8
  tail call void @jffs2_do_clear_inode(ptr noundef %3, ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_do_clear_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  %latest_node = alloca %struct.jffs2_raw_inode, align 1
  %jdev = alloca %union.jffs2_device_node, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %latest_node) #8
  %0 = call ptr @memset(ptr %latest_node, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jdev) #8
  %1 = ptrtoint ptr %jdev to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %jdev, align 4, !annotation !39
  %call = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %ino) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call, i32 -120
  %i_sb = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %highest_version.i = getelementptr i8, ptr %call, i32 -28
  %flags.i = getelementptr i8, ptr %call, i32 -4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 4
  %usercompr.i = getelementptr i8, ptr %call, i32 -2
  %9 = ptrtoint ptr %usercompr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %usercompr.i, align 2
  %10 = call ptr @memset(ptr %highest_version.i, i32 0, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #8
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %call5 = call i32 @jffs2_do_read_inode(ptr noundef %7, ptr noundef %add.ptr, i32 noundef %12, ptr noundef nonnull %latest_node) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.error_crit_edge

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end8:                                          ; preds = %if.end4
  %mode = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 6
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %mode, align 1
  %conv = trunc i32 %14 to i16
  %15 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %call, align 8
  %uid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 7
  %16 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %uid, align 1
  %conv9 = zext i16 %17 to i32
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 53
  %20 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = call i32 @make_kuid(ptr noundef %21, i32 noundef %conv9) #8
  %22 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %gid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 8
  %23 = ptrtoint ptr %gid to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %gid, align 1
  %conv11 = zext i16 %24 to i32
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i173 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 53
  %27 = ptrtoint ptr %s_user_ns.i.i173 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_user_ns.i.i173, align 8
  %call1.i174 = call i32 @make_kgid(ptr noundef %28, i32 noundef %conv11) #8
  %29 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call1.i174, ptr %i_gid.i, align 8
  %isize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 9
  %30 = ptrtoint ptr %isize to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %isize, align 1
  %conv12 = zext i32 %31 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %32 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv12, ptr %i_size, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %atime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 10
  %33 = ptrtoint ptr %atime to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %atime, align 1
  %conv14 = zext i32 %34 to i64
  %35 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv14, ptr %i_atime, align 8
  %.compoundliteral.sroa.2.0.i_atime.sroa_idx = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %.compoundliteral.sroa.2.0.i_atime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %.compoundliteral.sroa.2.0.i_atime.sroa_idx, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %mtime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 11
  %37 = ptrtoint ptr %mtime to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %mtime, align 1
  %conv18 = zext i32 %38 to i64
  %39 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv18, ptr %i_mtime, align 8
  %.compoundliteral15.sroa.2.0.i_mtime.sroa_idx = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16, i32 1
  %40 = ptrtoint ptr %.compoundliteral15.sroa.2.0.i_mtime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %.compoundliteral15.sroa.2.0.i_mtime.sroa_idx, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %ctime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %latest_node, i32 0, i32 12
  %41 = ptrtoint ptr %ctime to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %ctime, align 1
  %conv23 = zext i32 %42 to i64
  %43 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv23, ptr %i_ctime, align 8
  %.compoundliteral20.sroa.2.0.i_ctime.sroa_idx = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17, i32 1
  %44 = ptrtoint ptr %.compoundliteral20.sroa.2.0.i_ctime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %.compoundliteral20.sroa.2.0.i_ctime.sroa_idx, align 8
  %inocache = getelementptr i8, ptr %call, i32 -8
  %45 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %inocache, align 8
  %pino_nlink = getelementptr inbounds %struct.jffs2_inode_cache, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %pino_nlink to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pino_nlink, align 4
  call void @set_nlink(ptr noundef nonnull %call, i32 noundef %48) #8
  %49 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_size, align 8
  %add = add i64 %50, 511
  %shr = ashr i64 %add, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %51 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %shr, ptr %i_blocks, align 8
  %52 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %call, align 8
  %conv27 = zext i16 %53 to i32
  %and28 = and i32 %conv27, 61440
  %54 = add nsw i32 %and28, -4096
  %55 = lshr exact i32 %54, 12
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %55, label %do.end95 [
    i32 9, label %sw.bb
    i32 3, label %sw.bb29
    i32 7, label %sw.bb43
    i32 5, label %if.end8.sw.bb46_crit_edge
    i32 1, label %if.end8.sw.bb46_crit_edge178
    i32 11, label %if.end8.sw.bb90_crit_edge
    i32 0, label %if.end8.sw.bb90_crit_edge179
  ]

if.end8.sw.bb90_crit_edge179:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end8.sw.bb90_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end8.sw.bb46_crit_edge178:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46

if.end8.sw.bb46_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %57 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @jffs2_symlink_inode_operations, ptr %i_op, align 8
  %target = getelementptr i8, ptr %call, i32 -12
  %58 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %target, align 4
  %60 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 48
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %60, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end8
  call void @set_nlink(ptr noundef nonnull %call, i32 noundef 2) #8
  %dents = getelementptr i8, ptr %call, i32 -16
  %62 = ptrtoint ptr %dents to i32
  call void @__asan_load4_noabort(i32 %62)
  %fd.0175 = load ptr, ptr %dents, align 4
  %tobool30.not176 = icmp eq ptr %fd.0175, null
  br i1 %tobool30.not176, label %sw.bb29.for.end_crit_edge, label %sw.bb29.for.body_crit_edge

sw.bb29.for.body_crit_edge:                       ; preds = %sw.bb29
  br label %for.body

sw.bb29.for.end_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb29.for.body_crit_edge
  %fd.0177 = phi ptr [ %fd.0, %for.inc.for.body_crit_edge ], [ %fd.0175, %sw.bb29.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.0177, i32 0, i32 5
  %63 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %64)
  %cmp = icmp eq i8 %64, 4
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ino33 = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.0177, i32 0, i32 3
  %65 = ptrtoint ptr %ino33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ino33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool34.not = icmp eq i32 %66, 0
  br i1 %tobool34.not, label %land.lhs.true.for.inc_crit_edge, label %if.then35

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @inc_nlink(ptr noundef %call) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.jffs2_full_dirent, ptr %fd.0177, i32 0, i32 1
  %67 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %67)
  %fd.0 = load ptr, ptr %next, align 4
  %tobool30.not = icmp eq ptr %fd.0, null
  br i1 %tobool30.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.bb29.for.end_crit_edge
  %68 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp38 = icmp eq i32 %69, 1
  br i1 %cmp38, label %if.then40, label %for.end.if.end41_crit_edge

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @inc_nlink(ptr noundef %call) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %for.end.if.end41_crit_edge
  %i_op42 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %70 = ptrtoint ptr %i_op42 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @jffs2_dir_inode_operations, ptr %i_op42, align 8
  %71 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @jffs2_dir_operations, ptr %71, align 8
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %i_op44 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %73 = ptrtoint ptr %i_op44 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @jffs2_file_inode_operations, ptr %i_op44, align 8
  %74 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @jffs2_file_operations, ptr %74, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %76 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @jffs2_file_address_operations, ptr %a_ops, align 4
  %79 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %nrpages to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %nrpages, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end8.sw.bb46_crit_edge, %if.end8.sw.bb46_crit_edge178
  %metadata = getelementptr i8, ptr %call, i32 -20
  %81 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %metadata, align 4
  %size = getelementptr inbounds %struct.jffs2_full_dnode, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %84, label %do.end57 [
    i32 2, label %sw.bb46.do.end65_crit_edge
    i32 4, label %sw.bb46.do.end65_crit_edge180
  ]

sw.bb46.do.end65_crit_edge180:                    ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65

sw.bb46.do.end65_crit_edge:                       ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end65

do.end57:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %84) #13
  br label %error

do.end65:                                         ; preds = %sw.bb46.do.end65_crit_edge, %sw.bb46.do.end65_crit_edge180
  %call69 = call i32 @jffs2_read_dnode(ptr noundef %7, ptr noundef %add.ptr, ptr noundef %82, ptr noundef nonnull %jdev, i32 noundef 0, i32 noundef %84) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %do.end75, label %if.end79

do.end75:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %i_ino, align 8
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %87) #13
  br label %error

if.end79:                                         ; preds = %do.end65
  %88 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %metadata, align 4
  %size81 = getelementptr inbounds %struct.jffs2_full_dnode, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp82 = icmp eq i32 %91, 2
  br i1 %cmp82, label %if.then84, label %if.else

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %jdev to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %jdev, align 4
  %conv.i = zext i16 %93 to i32
  %94 = shl nuw nsw i32 %conv.i, 12
  %shl.i = and i32 %94, 267386880
  %and2.i = and i32 %conv.i, 255
  %or.i = or i32 %shl.i, %and2.i
  br label %sw.bb90

if.else:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %jdev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %jdev, align 4
  %and1.i = and i32 %96, 255
  %shr2.i = lshr i32 %96, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i170 = or i32 %and3.i, %and1.i
  %97 = shl i32 %96, 12
  %shl.i171 = and i32 %97, -1048576
  %or4.i = or i32 %or.i170, %shl.i171
  br label %sw.bb90

sw.bb90:                                          ; preds = %if.else, %if.then84, %if.end8.sw.bb90_crit_edge, %if.end8.sw.bb90_crit_edge179
  %rdev.0 = phi i32 [ 0, %if.end8.sw.bb90_crit_edge ], [ 0, %if.end8.sw.bb90_crit_edge179 ], [ %or.i, %if.then84 ], [ %or4.i, %if.else ]
  %i_op91 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %98 = ptrtoint ptr %i_op91 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @jffs2_file_inode_operations, ptr %i_op91, align 8
  %99 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %call, align 8
  call void @init_special_inode(ptr noundef nonnull %call, i16 noundef zeroext %100, i32 noundef %rdev.0) #8
  br label %sw.epilog

do.end95:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %i_ino, align 8
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %conv27, i32 noundef %102) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end95, %sw.bb90, %sw.bb43, %if.end41, %sw.bb
  call void @mutex_unlock(ptr noundef %add.ptr) #8
  call void @unlock_new_inode(ptr noundef %call) #8
  br label %cleanup

error:                                            ; preds = %do.end75, %do.end57, %if.end4.error_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end4.error_crit_edge ], [ -5, %do.end57 ], [ %call69, %do.end75 ]
  call void @mutex_unlock(ptr noundef %add.ptr) #8
  call void @iget_failed(ptr noundef nonnull %call) #8
  %103 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error, %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %103, %error ], [ %call, %sw.epilog ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jdev) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %latest_node) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_read_inode(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_dirty_inode(ptr noundef %inode, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #8
  %0 = call ptr @memset(ptr %iattr, i32 255, i32 80)
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %1 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_state, align 8
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 119, ptr %iattr, align 8
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %6 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %ia_mode, align 4
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %7 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_uid, align 4
  %9 = ptrtoint ptr %ia_uid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ia_uid, align 8
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %10 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_gid, align 8
  %12 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ia_gid, align 4
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %13 = call ptr @memcpy(ptr %ia_atime, ptr %i_atime, i32 16)
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %14 = call ptr @memcpy(ptr %ia_mtime, ptr %i_mtime, i32 16)
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %15 = call ptr @memcpy(ptr %ia_ctime, ptr %i_ctime, i32 16)
  %call = call i32 @jffs2_do_setattr(ptr noundef %inode, ptr noundef nonnull %iattr)
  br label %cleanup

cleanup:                                          ; preds = %do.end3, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_remount_fs(ptr nocapture noundef readonly %sb, ptr nocapture noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %flags = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %s_flags.i20 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags.i20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i20, align 4
  %and.i21 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.i22.not = icmp eq i32 %and.i21, 0
  br i1 %tobool.i22.not, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_stop_garbage_collect_thread(ptr noundef %1) #8
  %alloc_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %alloc_sem, i32 noundef 0) #8
  %call3 = tail call i32 @jffs2_flush_wbuf_pad(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %alloc_sem) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %8 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_flags, align 4
  %and6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @jffs2_start_garbage_collect_thread(ptr noundef %1) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %10 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_flags, align 4
  %or = or i32 %11, 1024
  store i32 %or, ptr %sb_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -30, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_stop_garbage_collect_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flush_wbuf_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_start_garbage_collect_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_new_inode(ptr noundef %dir_i, i16 noundef zeroext %mode, ptr noundef %ri) local_unnamed_addr #0 align 64 {
entry:
  %mode.addr = alloca i16, align 2
  %tmp59 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %mode.addr, align 2
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  %call = tail call ptr @new_inode(ptr noundef %2) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 -120
  %highest_version.i = getelementptr i8, ptr %call, i32 -28
  %flags.i = getelementptr i8, ptr %call, i32 -4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags.i, align 4
  %usercompr.i = getelementptr i8, ptr %call, i32 -2
  %6 = ptrtoint ptr %usercompr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %usercompr.i, align 2
  %7 = call ptr @memset(ptr %highest_version.i, i32 0, i32 20)
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #8
  %8 = call ptr @memset(ptr %ri, i32 0, i32 68)
  %uid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 7
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cred, align 16
  %fsuid = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %15)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %fsuid, align 4
  %.fca.0.insert89 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call7 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert89) #8
  %conv = trunc i32 %call7 to i16
  %16 = ptrtoint ptr %uid to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %conv, ptr %uid, align 1
  %17 = ptrtoint ptr %dir_i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dir_i, align 8
  %19 = and i16 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool9.not = icmp eq i16 %19, 0
  %gid22 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 8
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %dir_i, i32 0, i32 3
  %24 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack.i = load i32, ptr %i_gid.i, align 8
  %25 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kgid(ptr noundef %23, [1 x i32] %25) #8
  %conv14 = trunc i32 %call1.i to i16
  %26 = ptrtoint ptr %gid22 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %conv14, ptr %gid22, align 1
  %27 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mode.addr, align 2
  %29 = and i16 %28, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %29)
  %cmp = icmp eq i16 %29, 16384
  br i1 %cmp, label %if.then18, label %if.then10.if.end36_crit_edge

if.then10.if.end36_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then18:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i16 %28, 1024
  %30 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %or, ptr %mode.addr, align 2
  br label %if.end36

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %cred32 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 99
  %33 = ptrtoint ptr %cred32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cred32, align 16
  %fsgid = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %35)
  %agg.tmp25.sroa.0.0.copyload = load i32, ptr %fsgid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp25.sroa.0.0.copyload, 0
  %call34 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #8
  %conv35 = trunc i32 %call34 to i16
  %36 = ptrtoint ptr %gid22 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %conv35, ptr %gid22, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then18, %if.then10.if.end36_crit_edge
  %call37 = call i32 @jffs2_init_acl_pre(ptr noundef %dir_i, ptr noundef nonnull %call, ptr noundef nonnull %mode.addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end42, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %add.ptr) #8
  call void @make_bad_inode(ptr noundef nonnull %call) #8
  call void @iput(ptr noundef nonnull %call) #8
  %37 = inttoptr i32 %call37 to ptr
  br label %cleanup

if.end42:                                         ; preds = %if.end36
  %38 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mode.addr, align 2
  %conv43 = zext i16 %39 to i32
  %call44 = call i32 @jffs2_do_new_inode(ptr noundef %4, ptr noundef %add.ptr, i32 noundef %conv43, ptr noundef %ri) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %add.ptr) #8
  call void @make_bad_inode(ptr noundef nonnull %call) #8
  call void @iput(ptr noundef nonnull %call) #8
  %40 = inttoptr i32 %call44 to ptr
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  call void @set_nlink(ptr noundef nonnull %call, i32 noundef 1) #8
  %ino = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 4
  %41 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %ino, align 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %43 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %i_ino, align 8
  %mode50 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 6
  %44 = ptrtoint ptr %mode50 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %mode50, align 1
  %conv51 = trunc i32 %45 to i16
  %46 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv51, ptr %call, align 8
  %gid53 = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 8
  %47 = ptrtoint ptr %gid53 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %gid53, align 1
  %conv55 = zext i16 %48 to i32
  %i_gid.i135 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %i_sb.i.i136 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 8
  %49 = ptrtoint ptr %i_sb.i.i136 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb.i.i136, align 4
  %s_user_ns.i.i137 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 53
  %51 = ptrtoint ptr %s_user_ns.i.i137 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_user_ns.i.i137, align 8
  %call1.i138 = call i32 @make_kgid(ptr noundef %52, i32 noundef %conv55) #8
  %53 = ptrtoint ptr %i_gid.i135 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call1.i138, ptr %i_gid.i135, align 8
  %54 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %uid, align 1
  %conv58 = zext i16 %55 to i32
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %56 = ptrtoint ptr %i_sb.i.i136 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb.i.i136, align 4
  %s_user_ns.i.i140 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 53
  %58 = ptrtoint ptr %s_user_ns.i.i140 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_user_ns.i.i140, align 8
  %call1.i141 = call i32 @make_kuid(ptr noundef %59, i32 noundef %conv58) #8
  %60 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call1.i141, ptr %i_uid.i, align 4
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp59) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp59, ptr noundef nonnull %call) #8
  %61 = call ptr @memcpy(ptr %i_mtime, ptr %tmp59, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp59) #8
  %62 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %63 = call ptr @memcpy(ptr %i_atime, ptr %i_mtime, i32 16)
  %atime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 10
  %mtime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 11
  %ctime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 12
  %64 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %i_mtime, align 8
  %66 = call i64 @llvm.smax.i64(i64 %65, i64 0)
  %67 = call i64 @llvm.umin.i64(i64 %66, i64 4294967295)
  %68 = trunc i64 %67 to i32
  %69 = ptrtoint ptr %ctime to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %ctime, align 1
  %70 = ptrtoint ptr %mtime to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %68, ptr %mtime, align 1
  %71 = ptrtoint ptr %atime to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %68, ptr %atime, align 1
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %72 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %i_blocks, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %73 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %i_size, align 8
  %call74 = call i32 @insert_inode_locked(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then77:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %add.ptr) #8
  call void @make_bad_inode(ptr noundef nonnull %call) #8
  call void @iput(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.end49.cleanup_crit_edge, %if.then46, %if.then39, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %37, %if.then39 ], [ %40, %if.then46 ], [ inttoptr (i32 -22 to ptr), %if.then77 ], [ %call, %if.end49.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_init_acl_pre(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_new_inode(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp = icmp eq i8 %5, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %conv3 = trunc i64 %7 to i32
  %flash_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %flash_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv3, ptr %flash_size, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %erasesize, align 8
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %sector_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sector_size, align 4
  %12 = urem i32 %conv3, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9.not = icmp eq i32 %12, 0
  br i1 %cmp9.not, label %if.end.if.end18_crit_edge, label %if.then11

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mul = sub i32 %conv3, %12
  %13 = ptrtoint ptr %flash_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %flash_size, align 4
  %log15 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %log15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log15, align 4
  %div17117 = lshr i32 %mul, 10
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %15, ptr noundef null, i8 noundef zeroext 105, ptr noundef nonnull @.str.10, i32 noundef %div17117) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end.if.end18_crit_edge
  %16 = ptrtoint ptr %flash_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flash_size, align 4
  %18 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sector_size, align 4
  %mul21 = mul i32 %19, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %mul21)
  %cmp22 = icmp ult i32 %17, %mul21
  br i1 %cmp22, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %log26 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %log26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log26, align 4
  %div29 = udiv i32 %17, %19
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %21, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.11, i32 noundef %div29) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %cleanmarker_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %cleanmarker_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 12, ptr %cleanmarker_size, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp.i = icmp eq i8 %26, 4
  br i1 %cmp.i, label %if.then.i, label %if.end30.if.end3.i_crit_edge

if.end30.if.end3.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end30
  %call.i = tail call i32 @jffs2_nand_flash_setup(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end30.if.end3.i_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %30)
  %cmp7.i = icmp eq i8 %30, 6
  br i1 %cmp7.i, label %if.then9.i, label %if.end3.i.if.end14.i_crit_edge

if.end3.i.if.end14.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end3.i
  %call10.i = tail call i32 @jffs2_dataflash_setup(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then9.i.if.end14.i_crit_edge, label %if.then9.i.cleanup_crit_edge

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9.i.if.end14.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i.if.end14.i_crit_edge, %if.end3.i.if.end14.i_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp18.i = icmp eq i8 %34, 3
  br i1 %cmp18.i, label %land.lhs.true.i, label %if.end14.i.if.end27.i_crit_edge

if.end14.i.if.end27.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %if.end14.i
  %flags.i = getelementptr inbounds %struct.mtd_info, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %land.lhs.true.i.if.end27.i_crit_edge

land.lhs.true.i.if.end27.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  %call23.i = tail call i32 @jffs2_nor_wbuf_flash_setup(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then22.i.if.end27.i_crit_edge, label %if.then22.i.cleanup_crit_edge

if.then22.i.cleanup_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22.i.if.end27.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i.if.end27.i_crit_edge, %land.lhs.true.i.if.end27.i_crit_edge, %if.end14.i.if.end27.i_crit_edge
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %40)
  %cmp31.i = icmp eq i8 %40, 7
  br i1 %cmp31.i, label %if.then33.i, label %if.end27.i.if.end32_crit_edge

if.end27.i.if.end32_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then33.i:                                      ; preds = %if.end27.i
  %call34.i = tail call i32 @jffs2_ubivol_setup(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i.if.end32_crit_edge, label %if.then33.i.cleanup_crit_edge

if.then33.i.cleanup_crit_edge:                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33.i.if.end32_crit_edge:                   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %if.then33.i.if.end32_crit_edge, %if.end27.i.if.end32_crit_edge
  %41 = ptrtoint ptr %flash_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flash_size, align 4
  %43 = lshr i32 %42, 19
  %and.i118 = and i32 %43, 8128
  %44 = tail call i32 @llvm.umin.i32(i32 %and.i118, i32 1024) #8
  %45 = tail call i32 @llvm.umax.i32(i32 %44, i32 128) #8
  %inocache_hashsize = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 46
  %46 = ptrtoint ptr %inocache_hashsize to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %inocache_hashsize, align 4
  %47 = shl nuw nsw i32 %45, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #11
  %inocache_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 47
  %48 = ptrtoint ptr %inocache_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call8.i.i, ptr %inocache_list, align 4
  %tobool38.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool38.not, label %if.end32.out_wbuf_crit_edge, label %if.end40

if.end32.out_wbuf_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_wbuf

if.end40:                                         ; preds = %if.end32
  tail call void @jffs2_init_xattr_subsystem(ptr noundef %1) #8
  %call41 = tail call i32 @jffs2_do_mount_fs(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.end, label %if.end40.out_inohash_crit_edge

if.end40.out_inohash_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_inohash

do.end:                                           ; preds = %if.end40
  %call45 = tail call ptr @jffs2_iget(ptr noundef %sb, i32 noundef 1)
  %cmp.i119 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %do.end50, label %if.end52

do.end50:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %call45 to i32
  br label %out_root

if.end52:                                         ; preds = %do.end
  %call56 = tail call ptr @d_make_root(ptr noundef %call45) #8
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %50 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call56, ptr %s_root, align 64
  %tobool58.not = icmp eq ptr %call56, null
  br i1 %tobool58.not, label %if.end52.out_root_crit_edge, label %if.end60

if.end52.out_root_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_root

if.end60:                                         ; preds = %if.end52
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %51 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 4294967295, ptr %s_maxbytes, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %52 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4096, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %53 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 12, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %54 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 29366, ptr %s_magic, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %55 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %56 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 4294967295, ptr %s_time_max, align 64
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %57 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_flags.i, align 4
  %and.i120 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool.i.not = icmp eq i32 %and.i120, 0
  br i1 %tobool.i.not, label %if.then62, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = tail call i32 @jffs2_start_garbage_collect_thread(ptr noundef %1) #8
  br label %cleanup

out_root:                                         ; preds = %if.end52.out_root_crit_edge, %do.end50
  %ret.0 = phi i32 [ %49, %do.end50 ], [ -12, %if.end52.out_root_crit_edge ]
  tail call void @jffs2_free_ino_caches(ptr noundef %1) #8
  tail call void @jffs2_free_raw_node_refs(ptr noundef %1) #8
  %blocks65 = getelementptr inbounds %struct.jffs2_sb_info, ptr %1, i32 0, i32 28
  %59 = ptrtoint ptr %blocks65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %blocks65, align 4
  tail call void @kvfree(ptr noundef %60) #8
  br label %out_inohash

out_inohash:                                      ; preds = %out_root, %if.end40.out_inohash_crit_edge
  %ret.1 = phi i32 [ %call41, %if.end40.out_inohash_crit_edge ], [ %ret.0, %out_root ]
  tail call void @jffs2_clear_xattr_subsystem(ptr noundef %1) #8
  %61 = ptrtoint ptr %inocache_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %inocache_list, align 4
  tail call void @kfree(ptr noundef %62) #8
  br label %out_wbuf

out_wbuf:                                         ; preds = %out_inohash, %if.end32.out_wbuf_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_inohash ], [ -12, %if.end32.out_wbuf_crit_edge ]
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %66)
  %cmp.i121 = icmp eq i8 %66, 4
  br i1 %cmp.i121, label %if.then.i122, label %out_wbuf.if.end.i_crit_edge

out_wbuf.if.end.i_crit_edge:                      ; preds = %out_wbuf
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i122:                                     ; preds = %out_wbuf
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_nand_flash_cleanup(ptr noundef %1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i122, %out_wbuf.if.end.i_crit_edge
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %70)
  %cmp5.i = icmp eq i8 %70, 6
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_dataflash_cleanup(ptr noundef %1) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %74)
  %cmp12.i = icmp eq i8 %74, 3
  br i1 %cmp12.i, label %land.lhs.true.i126, label %if.end8.i.if.end16.i_crit_edge

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

land.lhs.true.i126:                               ; preds = %if.end8.i
  %flags.i123 = getelementptr inbounds %struct.mtd_info, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %flags.i123 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i123, align 4
  %and.i124 = and i32 %76, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool.not.i125 = icmp eq i32 %and.i124, 0
  br i1 %tobool.not.i125, label %if.then15.i, label %land.lhs.true.i126.if.end16.i_crit_edge

land.lhs.true.i126.if.end16.i_crit_edge:          ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then15.i:                                      ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_nor_wbuf_flash_cleanup(ptr noundef %1) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %land.lhs.true.i126.if.end16.i_crit_edge, %if.end8.i.if.end16.i_crit_edge
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %80)
  %cmp20.i = icmp eq i8 %80, 7
  br i1 %cmp20.i, label %if.then22.i127, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22.i127:                                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_ubivol_cleanup(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22.i127, %if.end16.i.cleanup_crit_edge, %if.then62, %if.end60.cleanup_crit_edge, %if.then33.i.cleanup_crit_edge, %if.then22.i.cleanup_crit_edge, %if.then9.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then24 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then62 ], [ 0, %if.end60.cleanup_crit_edge ], [ %ret.2, %if.end16.i.cleanup_crit_edge ], [ %ret.2, %if.then22.i127 ], [ %call34.i, %if.then33.i.cleanup_crit_edge ], [ %call23.i, %if.then22.i.cleanup_crit_edge ], [ %call10.i, %if.then9.i.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_init_xattr_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_do_mount_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_ino_caches(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_raw_node_refs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_clear_xattr_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_flash_cleanup(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp eq i8 %3, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_nand_flash_cleanup(ptr noundef %c) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp5 = icmp eq i8 %7, 6
  br i1 %cmp5, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_dataflash_cleanup(ptr noundef %c) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %8 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp12 = icmp eq i8 %11, 3
  br i1 %cmp12, label %land.lhs.true, label %if.end8.if.end16_crit_edge

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %flags = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then15, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_nor_wbuf_flash_cleanup(ptr noundef %c) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %17)
  %cmp20 = icmp eq i8 %17, 7
  br i1 %cmp20, label %if.then22, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_ubivol_cleanup(ptr noundef %c) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end16.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_gc_release_inode(ptr nocapture noundef readnone %c, ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.jffs2_inode_info, ptr %f, i32 0, i32 9
  tail call void @iput(ptr noundef %vfs_inode) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jffs2_gc_fetch_inode(ptr noundef %c, i32 noundef %inum, i32 noundef %unlinked) #0 align 64 {
entry:
  %__wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unlinked)
  %tobool.not = icmp eq i32 %unlinked, 0
  %os_priv94 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 72
  %0 = ptrtoint ptr %os_priv94 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %os_priv94, align 4
  br i1 %tobool.not, label %if.else93, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @ilookup(ptr noundef %1, i32 noundef %inum) #8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.then.if.end100_crit_edge

if.then.if.end100_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

do.end:                                           ; preds = %if.then
  %inocache_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %inocache_lock) #8
  %call3 = tail call ptr @jffs2_get_ino_cache(ptr noundef %c, i32 noundef %inum) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock) #8
  br label %cleanup

if.end:                                           ; preds = %do.end
  %state = getelementptr inbounds %struct.jffs2_inode_cache, ptr %call3, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp.not = icmp eq i16 %3, 3
  br i1 %cmp.not, label %if.else, label %do.body15

do.body15:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wait) #8
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %__wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %__wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %__wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @default_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %7, align 4
  %inocache_wq = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 45
  call void @add_wait_queue(ptr noundef %inocache_wq, ptr noundef nonnull %__wait) #8
  br label %__here

__here:                                           ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 212
  %19 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 ptrtoint (ptr blockaddress(@jffs2_gc_fetch_inode, %__here) to i32), ptr %task_state_change, align 4
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 2, ptr %20, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @_raw_spin_unlock(ptr noundef %inocache_lock) #8
  call void @schedule() #8
  call void @remove_wait_queue(ptr noundef %inocache_wq, ptr noundef nonnull %__wait) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wait) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %inocache_lock) #8
  br label %cleanup

if.else93:                                        ; preds = %entry
  %call95 = tail call ptr @jffs2_iget(ptr noundef %1, i32 noundef %inum)
  %cmp.i = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else93.cleanup_crit_edge, label %if.else93.if.end100_crit_edge

if.else93.if.end100_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.else93.cleanup_crit_edge:                      ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end100:                                        ; preds = %if.else93.if.end100_crit_edge, %if.then.if.end100_crit_edge
  %inode.0 = phi ptr [ %call, %if.then.if.end100_crit_edge ], [ %call95, %if.else93.if.end100_crit_edge ]
  %call101 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode.0) #8
  br i1 %call101, label %do.end105, label %if.end109

do.end105:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %inum, i32 noundef %unlinked) #13
  tail call void @iput(ptr noundef %inode.0) #8
  br label %cleanup

if.end109:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %inode.0, i32 -120
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %do.end105, %if.else93.cleanup_crit_edge, %if.else, %__here, %do.end8
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end105 ], [ %add.ptr, %if.end109 ], [ null, %do.end8 ], [ null, %if.else ], [ null, %__here ], [ %call95, %if.else93.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_get_ino_cache(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_nand_flash_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_dataflash_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_nor_wbuf_flash_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_ubivol_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_nand_flash_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_dataflash_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_nor_wbuf_flash_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_ubivol_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !27, !28}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/fs.c", i32 329, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @jffs2_iget._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @jffs2_iget._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jffs2/fs.c", i32 337, i32 4}
!8 = !{ptr @jffs2_iget._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @jffs2_iget._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jffs2/fs.c", i32 354, i32 3}
!12 = !{ptr @jffs2_iget._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @jffs2_iget._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../fs/jffs2/fs.c", i32 447, i32 12}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../fs/jffs2/fs.c", i32 454, i32 13}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/jffs2/fs.c", i32 547, i32 3}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/jffs2/fs.c", i32 552, i32 3}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../fs/jffs2/fs.c", i32 659, i32 5}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/jffs2/fs.c", i32 676, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @jffs2_gc_fetch_inode._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @jffs2_gc_fetch_inode._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
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
!39 = !{!"auto-init"}
!40 = !{i64 2154662684}
