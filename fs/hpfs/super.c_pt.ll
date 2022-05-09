; ModuleID = '/llk/IR_all_yes/fs/hpfs/super.c_pt.bc'
source_filename = "../fs/hpfs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.match_token = type { i32, ptr }
%struct.user_namespace = type opaque
%struct.timezone = type { i32, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.hpfs_sb_info = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, ptr, ptr, i32, i32, i32, %struct.callback_head, i32, [256 x i32], [256 x i32] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.hpfs_spare_block = type { i32, i32, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [100 x i32], [1 x i32] }
%struct.quad_buffer_head = type { [4 x ptr], ptr }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.33 = type { %struct.callback_head }
%struct.hpfs_super_block = type { i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32, [103 x i32] }
%struct.hpfs_dirent = type { i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, [0 x i8] }
%struct.substring_t = type { ptr, ptr }
%struct.hpfs_inode_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.inode }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
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
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@hpfs_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013hpfs: filesystem error: %pV\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hpfs_error\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/hpfs/super.c\00", [16 x i8] zeroinitializer }, align 32
@hpfs_error._entry_ptr = internal global ptr @hpfs_error._entry, section ".printk_index", align 4
@hpfs_error._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\01c; crashing the system because you wanted it\0A\00", [49 x i8] zeroinitializer }, align 32
@hpfs_error._entry_ptr.5 = internal global ptr @hpfs_error._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPFS panic\00", [21 x i8] zeroinitializer }, align 32
@hpfs_error._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\01c; already mounted read-only\0A\00", [33 x i8] zeroinitializer }, align 32
@hpfs_error._entry_ptr.9 = internal global ptr @hpfs_error._entry.7, section ".printk_index", align 4
@hpfs_error._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01c; remounting read-only\0A\00", [38 x i8] zeroinitializer }, align 32
@hpfs_error._entry_ptr.12 = internal global ptr @hpfs_error._entry.10, section ".printk_index", align 4
@hpfs_error._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\01c; going on - but anything won't be destroyed because it's read-only\0A\00", [57 x i8] zeroinitializer }, align 32
@hpfs_error._entry_ptr.15 = internal global ptr @hpfs_error._entry.13, section ".printk_index", align 4
@hpfs_error._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\01c; corrupted filesystem mounted read/write - your computer will explode within 20 seconds ... but you wanted it so!\0A\00", [42 x i8] zeroinitializer }, align 32
@hpfs_error._entry_ptr.18 = internal global ptr @hpfs_error._entry.16, section ".printk_index", align 4
@hpfs_error._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@hpfs_error._entry_ptr.21 = internal global ptr @hpfs_error._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cycle detected on key %08x in %s\00", [63 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias269 = internal constant [19 x i8] c"hpfs.alias=fs-hpfs\00", section ".modinfo", align 1
@hpfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.26, i32 1, ptr null, ptr null, ptr @hpfs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_hpfs__270_791_init_hpfs_fs6 = internal global ptr @init_hpfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_hpfs_fs = internal global ptr @exit_hpfs_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file271 = internal constant [23 x i8] c"hpfs.file=fs/hpfs/hpfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [17 x i8] c"hpfs.license=GPL\00", section ".modinfo", align 1
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hpfs\00", [27 x i8] zeroinitializer }, align 32
@hpfs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sbi->hpfs_mutex\00", [47 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013hpfs: bad mount options.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hpfs_fill_super\00", [16 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry_ptr = internal global ptr @hpfs_fill_super._entry, section ".printk_index", align 4
@hpfs_fill_super._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hpfs: Bad magic ... probably not HPFS\0A\00", [55 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry_ptr.33 = internal global ptr @hpfs_fill_super._entry.31, section ".printk_index", align 4
@hpfs_fill_super._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013hpfs: Bad version %d,%d. Mount readonly to go around\0A\00", [40 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry_ptr.36 = internal global ptr @hpfs_fill_super._entry.34, section ".printk_index", align 4
@hpfs_fill_super._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [215 x i8], [41 x i8] } { [215 x i8] c"\013hpfs: please try recent version of HPFS driver at http://artax.karlin.mff.cuni.cz/~mikulas/vyplody/hpfs/index-e.cgi and if it still can't understand this format, contact author - mikulas@artax.karlin.mff.cuni.cz\0A\00", [41 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry_ptr.39 = internal global ptr @hpfs_fill_super._entry.37, section ".printk_index", align 4
@hpfs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @hpfs_alloc_inode, ptr null, ptr @hpfs_free_inode, ptr null, ptr null, ptr null, ptr @hpfs_evict_inode, ptr @hpfs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpfs_statfs, ptr @hpfs_remount_fs, ptr null, ptr @hpfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hpfs_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid size in superblock: %08x\00", [63 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.30, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hpfs: Improperly stopped, not mounted\0A\00", [55 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry_ptr.43 = internal global ptr @hpfs_fill_super._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"improperly stopped\00", [45 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.30, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013hpfs: Spare dnodes used, try chkdsk\0A\00", [57 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry_ptr.47 = internal global ptr @hpfs_fill_super._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"warning: spare dnodes used, try chkdsk\00", [57 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.30, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013hpfs: Proceeding, but your filesystem could be corrupted if you delete files or directories\0A\00", [33 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry_ptr.51 = internal global ptr @hpfs_fill_super._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"dir band size mismatch: dir_band_start==%08x, dir_band_end==%08x, n_dir_band==%08x\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dir_band\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dir_band_bitmap\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bitmaps\00", [24 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.30, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013hpfs: You really don't want any checks? You are crazy...\0A\00", [36 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry_ptr.58 = internal global ptr @hpfs_fill_super._entry.56, section ".printk_index", align 4
@hpfs_fill_super._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.30, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013hpfs: code page support is disabled\0A\00", [57 x i8] zeroinitializer }, align 32
@hpfs_fill_super._entry_ptr.61 = internal global ptr @hpfs_fill_super._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\01\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to find root dir\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.64 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [20 x %struct.match_token], [32 x i8] } { [20 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.66 }, %struct.match_token { i32 1, ptr @.str.67 }, %struct.match_token { i32 2, ptr @.str.68 }, %struct.match_token { i32 3, ptr @.str.69 }, %struct.match_token { i32 4, ptr @.str.70 }, %struct.match_token { i32 5, ptr @.str.71 }, %struct.match_token { i32 6, ptr @.str.72 }, %struct.match_token { i32 7, ptr @.str.73 }, %struct.match_token { i32 8, ptr @.str.74 }, %struct.match_token { i32 9, ptr @.str.75 }, %struct.match_token { i32 10, ptr @.str.76 }, %struct.match_token { i32 11, ptr @.str.77 }, %struct.match_token { i32 12, ptr @.str.78 }, %struct.match_token { i32 13, ptr @.str.79 }, %struct.match_token { i32 14, ptr @.str.80 }, %struct.match_token { i32 15, ptr @.str.81 }, %struct.match_token { i32 16, ptr @.str.82 }, %struct.match_token { i32 17, ptr @.str.83 }, %struct.match_token { i32 18, ptr @.str.84 }, %struct.match_token { i32 19, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"help\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"umask=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"case=lower\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"case=asis\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check=none\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check=normal\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check=strict\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"errors=continue\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"errors=remount-ro\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"errors=panic\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eas=no\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eas=ro\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eas=rw\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chkdsk=no\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chkdsk=errors\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chkdsk=always\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timeshift=%d\00", [19 x i8] zeroinitializer }, align 32
@hpfs_help._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [1265 x i8], [303 x i8] } { [1265 x i8] c"\016hpfs: \0AHPFS filesystem options:\0A      help              do not mount and display this text\0A      uid=xxx           set uid of files that don't have uid specified in eas\0A      gid=xxx           set gid of files that don't have gid specified in eas\0A      umask=xxx         set mode of files that don't have mode specified in eas\0A      case=lower        lowercase all files\0A      case=asis         do not lowercase files (default)\0A      check=none        no fs checks - kernel may crash on corrupted filesystem\0A      check=normal      do some checks - it should not crash (default)\0A      check=strict      do extra time-consuming checks, used for debugging\0A      errors=continue   continue on errors\0A      errors=remount-ro remount read-only if errors found (default)\0A      errors=panic      panic on errors\0A      chkdsk=no         do not mark fs for chkdsking even if there were errors\0A      chkdsk=errors     mark fs dirty if errors found (default)\0A      chkdsk=always     always mark fs dirty - used for debugging\0A      eas=no            ignore extended attributes\0A      eas=ro            read but do not write extended attributes\0A      eas=rw            r/w eas => enables chmod, chown, mknod, ln -s (default)\0A      timeshift=nnn\09add nnn seconds to file times\0A\0A\00", [303 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hpfs_help\00", [22 x i8] zeroinitializer }, align 32
@hpfs_help._entry_ptr = internal global ptr @hpfs_help._entry, section ".printk_index", align 4
@hpfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hpfs_remount_fs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.87, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hpfs_remount_fs\00", [16 x i8] zeroinitializer }, align 32
@hpfs_remount_fs._entry_ptr = internal global ptr @hpfs_remount_fs._entry, section ".printk_index", align 4
@hpfs_remount_fs._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013hpfs: timeshift can't be changed using remount.\0A\00", [45 x i8] zeroinitializer }, align 32
@hpfs_remount_fs._entry_ptr.90 = internal global ptr @hpfs_remount_fs._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",umask=%03o\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",case=lower\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",check=none\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",check=strict\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",errors=continue\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",errors=panic\00", [18 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",chkdsk=no\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",chkdsk=always\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",eas=no\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",eas=ro\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",timeshift=%d\00", [18 x i8] zeroinitializer }, align 32
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hpfs_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 14, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 43, i64 45]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 67, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 73, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 75, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 78, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 80, i32 5 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 85, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 87, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 89, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 105, i32 17 }
@___asan_gen_.163 = private unnamed_addr constant [13 x i8] c"hpfs_fs_type\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 761, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 156, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 763, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 563, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 578, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 598, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 604, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 606, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [10 x i8] c"hpfs_sops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 526, i32 38 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 642, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 657, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 660, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 671, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 675, i32 17 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 677, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 683, i32 18 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 689, i32 105 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 690, i32 72 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 691, i32 64 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 697, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 702, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 724, i32 35 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 726, i32 17 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 325, i32 28 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 290, i32 28 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 291, i32 13 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 292, i32 12 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 293, i32 12 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 294, i32 14 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 295, i32 19 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 296, i32 18 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 297, i32 19 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 298, i32 21 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 299, i32 21 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 300, i32 17 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 301, i32 15 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 302, i32 18 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 303, i32 15 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 304, i32 15 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 305, i32 15 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 306, i32 18 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 307, i32 22 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 308, i32 22 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 309, i32 18 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 418, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [18 x i8] c"hpfs_inode_cachep\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 230, i32 28 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 464, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 472, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 498, i32 18 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 499, i32 18 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 500, i32 18 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 502, i32 19 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 504, i32 19 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 506, i32 19 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 508, i32 19 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 510, i32 19 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 512, i32 19 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 514, i32 19 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 516, i32 19 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 518, i32 19 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 520, i32 19 }
@___asan_gen_.391 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.392 = private constant [19 x i8] c"../fs/hpfs/super.c\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 255, i32 40 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_alias269, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__exitcall_exit_hpfs_fs, ptr @__initcall__kmod_hpfs__270_791_init_hpfs_fs6, ptr @exit_hpfs_fs, ptr @hpfs_error._entry, ptr @hpfs_error._entry.10, ptr @hpfs_error._entry.13, ptr @hpfs_error._entry.16, ptr @hpfs_error._entry.19, ptr @hpfs_error._entry.3, ptr @hpfs_error._entry.7, ptr @hpfs_error._entry_ptr, ptr @hpfs_error._entry_ptr.12, ptr @hpfs_error._entry_ptr.15, ptr @hpfs_error._entry_ptr.18, ptr @hpfs_error._entry_ptr.21, ptr @hpfs_error._entry_ptr.5, ptr @hpfs_error._entry_ptr.9, ptr @hpfs_fill_super._entry, ptr @hpfs_fill_super._entry.31, ptr @hpfs_fill_super._entry.34, ptr @hpfs_fill_super._entry.37, ptr @hpfs_fill_super._entry.41, ptr @hpfs_fill_super._entry.45, ptr @hpfs_fill_super._entry.49, ptr @hpfs_fill_super._entry.56, ptr @hpfs_fill_super._entry.59, ptr @hpfs_fill_super._entry_ptr, ptr @hpfs_fill_super._entry_ptr.33, ptr @hpfs_fill_super._entry_ptr.36, ptr @hpfs_fill_super._entry_ptr.39, ptr @hpfs_fill_super._entry_ptr.43, ptr @hpfs_fill_super._entry_ptr.47, ptr @hpfs_fill_super._entry_ptr.51, ptr @hpfs_fill_super._entry_ptr.58, ptr @hpfs_fill_super._entry_ptr.61, ptr @hpfs_help._entry, ptr @hpfs_help._entry_ptr, ptr @hpfs_remount_fs._entry, ptr @hpfs_remount_fs._entry.88, ptr @hpfs_remount_fs._entry_ptr, ptr @hpfs_remount_fs._entry_ptr.90, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @hpfs_fs_type, ptr @.str.25, ptr @.str.26, ptr @hpfs_fill_super.__key, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @hpfs_sops, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @tokens, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @hpfs_inode_cachep, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_error._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_error._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_error._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_error._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_error._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_error._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fill_super._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fill_super._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fill_super._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 215, i32 256, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fill_super._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fill_super._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fill_super._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fill_super._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_fill_super._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_help._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 1265, i32 1568, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_remount_fs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpfs_remount_fs._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hpfs_error(ptr noundef %s, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !217
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %vaf) #13
  call void @llvm.va_end(ptr nonnull %args)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sb_was_error = getelementptr inbounds %struct.hpfs_sb_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sb_was_error to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %sb_was_error, align 2
  %7 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then, label %do.end55

if.then:                                          ; preds = %entry
  %8 = trunc i16 %bf.load to i14
  %trunc = and i14 %8, -4096
  %9 = zext i14 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i14 %trunc, label %if.else35 [
    i14 -8192, label %do.end11
    i14 4096, label %if.then21
  ]

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  call fastcc void @mark_dirty(ptr noundef %s, i32 noundef 0)
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #14
  unreachable

if.then21:                                        ; preds = %if.then
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %10 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end32, label %do.end26

do.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %if.end58

do.end32:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  call fastcc void @mark_dirty(ptr noundef %s, i32 noundef 0)
  %12 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_flags.i, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %s_flags.i, align 4
  br label %if.end58

if.else35:                                        ; preds = %if.then
  %s_flags.i73 = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %14 = ptrtoint ptr %s_flags.i73 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_flags.i73, align 4
  %and.i74 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.i75.not = icmp eq i32 %and.i74, 0
  br i1 %tobool.i75.not, label %do.end46, label %do.end40

do.end40:                                         ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %if.end58

do.end46:                                         ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %if.end58

do.end55:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %do.end46, %do.end40, %do.end32, %do.end26
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %sb_was_error60 = getelementptr inbounds %struct.hpfs_sb_info, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sb_was_error60 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load61 = load i16, ptr %sb_was_error60, align 2
  %bf.set = or i16 %bf.load61, 256
  store i16 %bf.set, ptr %sb_was_error60, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mark_dirty(ptr noundef %s, i32 noundef %remount) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chkdsk = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %sb_chkdsk to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %sb_chkdsk, align 2
  %3 = and i16 %bf.load, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remount)
  %tobool1.not = icmp eq i32 %remount, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #10
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !217
  %call3 = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef 17, ptr noundef nonnull %bh, i32 noundef 0) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %if.then
  %dirty = getelementptr inbounds %struct.hpfs_spare_block, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load6 = load i16, ptr %dirty, align 4
  %bf.set = and i16 %bf.load6, -16641
  %bf.clear9 = or i16 %bf.set, 256
  store i16 %bf.clear9, ptr %dirty, align 4
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %9) #10
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bh, align 4
  %call11 = call i32 @sync_dirty_buffer(ptr noundef %11) #10
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then5.if.end_crit_edge, label %if.then.i

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %13) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #10
  br label %if.end12

if.end12:                                         ; preds = %if.end, %lor.lhs.false.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_stop_cycles(ptr noundef %s, i32 noundef %key, ptr nocapture noundef %c1, ptr nocapture noundef %c2, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %key)
  %cmp = icmp eq i32 %3, %key
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.22, i32 noundef %key, ptr noundef %msg)
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %inc = add i32 %1, 1
  %4 = ptrtoint ptr %c2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc, ptr %c2, align 4
  %and = and i32 %inc, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %c1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %key, ptr %c1, align 4
  br label %return

return:                                           ; preds = %if.then2, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then2 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_get_free_dnodes(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  %qbh.i = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_n_free_dnodes = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sb_n_free_dnodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_n_free_dnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %sb_dmap = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %sb_dmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_dmap, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh.i) #10
  %6 = call ptr @memset(ptr %qbh.i, i32 255, i32 20)
  %call.i = call ptr @hpfs_map_4sectors(ptr noundef %s, i32 noundef %5, ptr noundef nonnull %qbh.i, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %hpfs_count_one_bitmap.exit.thread, label %hpfs_count_one_bitmap.exit

hpfs_count_one_bitmap.exit.thread:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i) #10
  br label %cleanup7

hpfs_count_one_bitmap.exit:                       ; preds = %if.then
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull %call.i, i32 noundef 16384) #10
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i)
  %cmp2 = icmp eq i32 %call4.i.i, -1
  br i1 %cmp2, label %hpfs_count_one_bitmap.exit.cleanup7_crit_edge, label %if.end

hpfs_count_one_bitmap.exit.cleanup7_crit_edge:    ; preds = %hpfs_count_one_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup7

if.end:                                           ; preds = %hpfs_count_one_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %sb_n_free_dnodes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call4.i.i, ptr %sb_n_free_dnodes, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %8 = ptrtoint ptr %sb_n_free_dnodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_n_free_dnodes, align 4
  br label %cleanup7

cleanup7:                                         ; preds = %if.end5, %hpfs_count_one_bitmap.exit.cleanup7_crit_edge, %hpfs_count_one_bitmap.exit.thread
  %retval.1 = phi i32 [ %9, %if.end5 ], [ 0, %hpfs_count_one_bitmap.exit.cleanup7_crit_edge ], [ 0, %hpfs_count_one_bitmap.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hpfs_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %range = alloca %struct.fstrim_range, align 8
  %n_trimmed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072146311, i32 %cmd)
  %cond = icmp eq i32 %cmd, -1072146311
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %range) #10
  %0 = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 2
  %2 = call ptr @memset(ptr %range, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_trimmed) #10
  %3 = ptrtoint ptr %n_trimmed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %n_trimmed, align 4, !annotation !217
  %call = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %4 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 24, i32 -1226833920) #15
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !218

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range, i32 noundef 24) #10
  %6 = call i32 @llvm.read_register.i32(metadata !207) #10
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !219
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !220
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %range, ptr noundef %4, i32 noundef 24) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !220
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !218

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.end.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %range, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %10 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %14 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %range, align 8
  %shr = lshr i64 %15, 9
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %0, align 8
  %add = add i64 %17, %15
  %shr6 = lshr i64 %add, 9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %1, align 8
  %add7 = add i64 %19, 511
  %shr8 = lshr i64 %add7, 9
  %call9 = call i32 @hpfs_trim_fs(ptr noundef %13, i64 noundef %shr, i64 noundef %shr6, i64 noundef %shr8, ptr noundef nonnull %n_trimmed) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then.i25, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i25:                                      ; preds = %if.end3
  %20 = ptrtoint ptr %n_trimmed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_trimmed, align 4
  %conv = zext i32 %21 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %shl, ptr %0, align 8
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #10
  %call.i.i24 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i24, label %if.then.i25.cleanup_crit_edge, label %copy_to_user.exit

if.then.i25.cleanup_crit_edge:                    ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i29 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %range, i32 noundef 24) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %range, i32 noundef 24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool15.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool15.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then.i25.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb.cleanup_crit_edge ], [ %call9, %if.end3.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i25.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_trimmed) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %range) #10
  br label %return

return:                                           ; preds = %cleanup, %entry.return_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -515, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_trim_fs(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_hpfs_fs() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @hpfs_fs_type) #10
  tail call void @rcu_barrier() #10
  %0 = load ptr, ptr @hpfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_hpfs_fs() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.104, i32 noundef 832, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #10
  store ptr %call.i, ptr @hpfs_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @hpfs_fs_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rcu_barrier() #10
  %0 = load ptr, ptr @hpfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_sector(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_map_4sectors(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_brelse4(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hpfs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @hpfs_fill_super) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_fill_super(ptr noundef %s, ptr noundef %options, i32 noundef %silent) #0 align 64 {
entry:
  %bh0 = alloca ptr, align 4
  %bh1 = alloca ptr, align 4
  %bh2 = alloca ptr, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %umask = alloca i16, align 2
  %lowercase = alloca i32, align 4
  %eas = alloca i32, align 4
  %chk = alloca i32, align 4
  %errs = alloca i32, align 4
  %chkdsk = alloca i32, align 4
  %timeshift = alloca i32, align 4
  %qbh = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh0) #10
  %0 = ptrtoint ptr %bh0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh0, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh1) #10
  %1 = ptrtoint ptr %bh1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh1, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh2) #10
  %2 = ptrtoint ptr %bh2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh2, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %umask) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lowercase) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eas) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chk) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errs) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chkdsk) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeshift) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh) #10
  %3 = call ptr @memset(ptr %qbh, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2216) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup281_crit_edge, label %if.end

entry.cleanup281_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup281

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @hpfs_fill_super.__key) #10
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !207) #10
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred, align 16
  %uid5 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %uid5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uid5, align 4
  %16 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %uid, align 4
  %gid13 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 5
  %17 = ptrtoint ptr %gid13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gid13, align 4
  %19 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %gid, align 4
  %call14 = tail call i32 @current_umask() #10
  %conv = trunc i32 %call14 to i16
  %20 = ptrtoint ptr %umask to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %umask, align 2
  %21 = ptrtoint ptr %lowercase to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %lowercase, align 4
  %22 = ptrtoint ptr %eas to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %eas, align 4
  %23 = ptrtoint ptr %chk to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %chk, align 4
  %24 = ptrtoint ptr %errs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %errs, align 4
  %25 = ptrtoint ptr %chkdsk to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %chkdsk, align 4
  %26 = ptrtoint ptr %timeshift to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %timeshift, align 4
  %call15 = call fastcc i32 @parse_opts(ptr noundef %options, ptr noundef nonnull %uid, ptr noundef nonnull %gid, ptr noundef nonnull %umask, ptr noundef nonnull %lowercase, ptr noundef nonnull %eas, ptr noundef nonnull %chk, ptr noundef nonnull %errs, ptr noundef nonnull %chkdsk, ptr noundef nonnull %timeshift)
  %27 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call15, label %if.end26 [
    i32 0, label %do.end20
    i32 2, label %if.then25
  ]

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  br label %bail0

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #13
  br label %bail0

if.end26:                                         ; preds = %if.end
  %call27 = tail call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef 512) #10
  %sb_fs_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %sb_fs_size, align 8
  %call28 = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef 0, ptr noundef nonnull %bh0, i32 noundef 0) #10
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end26.bail0_crit_edge, label %if.end31

if.end26.bail0_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail0

if.end31:                                         ; preds = %if.end26
  %call32 = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef 16, ptr noundef nonnull %bh1, i32 noundef 1) #10
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.bail2_crit_edge, label %if.end35

if.end31.bail2_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail2

if.end35:                                         ; preds = %if.end31
  %call36 = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef 17, ptr noundef nonnull %bh2, i32 noundef 0) #10
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.bail3_crit_edge, label %if.end39

if.end35.bail3_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail3

if.end39:                                         ; preds = %if.end35
  %29 = ptrtoint ptr %call32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1239979513, i32 %30)
  %cmp40.not = icmp eq i32 %30, 1239979513
  br i1 %cmp40.not, label %lor.lhs.false, label %if.end39.if.then45_crit_edge

if.end39.if.then45_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.end39
  %31 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1226347001, i32 %32)
  %cmp43.not = icmp eq i32 %32, 1226347001
  br i1 %cmp43.not, label %if.end54, label %lor.lhs.false.if.then45_crit_edge

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.end39.if.then45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool46.not = icmp eq i32 %silent, 0
  br i1 %tobool46.not, label %do.end50, label %if.then45.bail4_crit_edge

if.then45.bail4_crit_edge:                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail4

do.end50:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #13
  br label %bail4

if.end54:                                         ; preds = %lor.lhs.false
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %33 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_flags.i, align 4
  %and.i436 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i436)
  %tobool.i.not = icmp eq i32 %and.i436, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.end54.if.end78_crit_edge

if.end54.if.end78_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true:                                    ; preds = %if.end54
  %funcversion = getelementptr inbounds %struct.hpfs_super_block, ptr %call32, i32 0, i32 3
  %35 = ptrtoint ptr %funcversion to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %funcversion, align 1
  %37 = and i8 %36, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %switch435 = icmp eq i8 %37, 2
  br i1 %switch435, label %land.lhs.true.if.end78_crit_edge, label %do.end67

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

do.end67:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv56 = zext i8 %36 to i32
  %version = getelementptr inbounds %struct.hpfs_super_block, ptr %call32, i32 0, i32 2
  %38 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %version, align 4
  %conv69 = zext i8 %39 to i32
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv69, i32 noundef %conv56) #13
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %bail4

if.end78:                                         ; preds = %land.lhs.true.if.end78_crit_edge, %if.end54.if.end78_crit_edge
  %or = or i32 %34, 1024
  %40 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or, ptr %s_flags.i, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 12
  %41 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -107616183, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %42 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @hpfs_sops, ptr %s_op, align 4
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 45
  %43 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @hpfs_dentry_operations, ptr %s_d_op, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %44 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %44, 60
  %conv.i = sext i32 %mul.i to i64
  %45 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info, align 16
  %sb_timeshift.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %sb_timeshift.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sb_timeshift.i, align 4
  %conv1.i = sext i32 %48 to i64
  %add2.i = add nsw i64 %conv1.i, %conv.i
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 35
  %49 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %add2.i, ptr %s_time_min, align 8
  %add.i = add nsw i64 %conv.i, 4294967295
  %50 = load i32, ptr %sb_timeshift.i, align 4
  %conv1.i442 = sext i32 %50 to i64
  %add2.i443 = add nsw i64 %add.i, %conv1.i442
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 36
  %51 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add2.i443, ptr %s_time_max, align 64
  %root81 = getelementptr inbounds %struct.hpfs_super_block, ptr %call32, i32 0, i32 5
  %52 = ptrtoint ptr %root81 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %root81, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53)
  %sb_root = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %sb_root to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sb_root, align 4
  %n_sectors = getelementptr inbounds %struct.hpfs_super_block, ptr %call32, i32 0, i32 6
  %56 = ptrtoint ptr %n_sectors to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n_sectors, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %sb_fs_size, align 8
  %bitmaps = getelementptr inbounds %struct.hpfs_super_block, ptr %call32, i32 0, i32 8
  %60 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bitmaps, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %sb_bitmaps = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %sb_bitmaps to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %sb_bitmaps, align 4
  %dir_band_start = getelementptr inbounds %struct.hpfs_super_block, ptr %call32, i32 0, i32 15
  %64 = ptrtoint ptr %dir_band_start to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dir_band_start, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  %sb_dirband_start = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %sb_dirband_start to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %sb_dirband_start, align 8
  %n_dir_band = getelementptr inbounds %struct.hpfs_super_block, ptr %call32, i32 0, i32 14
  %68 = ptrtoint ptr %n_dir_band to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %n_dir_band, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69)
  %sb_dirband_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %71 = ptrtoint ptr %sb_dirband_size to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %sb_dirband_size, align 4
  %dir_band_bitmap = getelementptr inbounds %struct.hpfs_super_block, ptr %call32, i32 0, i32 17
  %72 = ptrtoint ptr %dir_band_bitmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dir_band_bitmap, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  %sb_dmap = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 6
  %75 = ptrtoint ptr %sb_dmap to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %sb_dmap, align 8
  %sb_uid = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %uid, align 4
  %78 = ptrtoint ptr %sb_uid to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %sb_uid, align 4
  %sb_gid = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 10
  %79 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %gid, align 4
  %81 = ptrtoint ptr %sb_gid to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %sb_gid, align 8
  %82 = ptrtoint ptr %umask to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %umask, align 2
  %84 = and i16 %83, 511
  %85 = xor i16 %84, 511
  %sb_mode = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 11
  %86 = ptrtoint ptr %sb_mode to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %sb_mode, align 4
  %sb_n_free = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %87 = ptrtoint ptr %sb_n_free to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %sb_n_free, align 4
  %sb_n_free_dnodes = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %88 = ptrtoint ptr %sb_n_free_dnodes to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %sb_n_free_dnodes, align 8
  %89 = ptrtoint ptr %lowercase to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %lowercase, align 4
  %sb_lowercase = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 12
  %91 = trunc i32 %90 to i16
  %92 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load = load i16, ptr %sb_lowercase, align 2
  %bf.value = shl i16 %91, 9
  %bf.shl = and i16 %bf.value, 512
  %bf.clear = and i16 %bf.load, 63
  %bf.set = or i16 %bf.shl, %bf.clear
  %93 = ptrtoint ptr %eas to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %eas, align 4
  %95 = trunc i32 %94 to i16
  %bf.shl87 = shl i16 %95, 14
  %bf.set89 = or i16 %bf.set, %bf.shl87
  %96 = ptrtoint ptr %chk to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %chk, align 4
  %98 = trunc i32 %97 to i16
  %bf.value92 = shl i16 %98, 10
  %bf.shl93 = and i16 %bf.value92, 3072
  %bf.set95 = or i16 %bf.shl93, %bf.set89
  %99 = ptrtoint ptr %chkdsk to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %chkdsk, align 4
  %101 = trunc i32 %100 to i16
  %bf.value98 = shl i16 %101, 6
  %bf.shl99 = and i16 %bf.value98, 192
  %bf.set101 = or i16 %bf.set95, %bf.shl99
  %102 = ptrtoint ptr %errs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %errs, align 4
  %104 = trunc i32 %103 to i16
  %bf.value104 = shl i16 %104, 12
  %bf.shl105 = and i16 %bf.value104, 12288
  %105 = ptrtoint ptr %timeshift to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %timeshift, align 4
  %sb_timeshift = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 17
  %107 = ptrtoint ptr %sb_timeshift to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %sb_timeshift, align 8
  %bf.clear110 = or i16 %bf.set101, %bf.shl105
  store i16 %bf.clear110, ptr %sb_lowercase, align 2
  %sb_cp_table = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 13
  %108 = ptrtoint ptr %sb_cp_table to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %sb_cp_table, align 8
  %sb_c_bitmap = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 15
  %109 = ptrtoint ptr %sb_c_bitmap to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %sb_c_bitmap, align 8
  %sb_max_fwd_alloc = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 16
  %110 = ptrtoint ptr %sb_max_fwd_alloc to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 16777215, ptr %sb_max_fwd_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp113 = icmp slt i32 %58, 0
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %58)
  br label %bail4

if.end117:                                        ; preds = %if.end78
  %n_spares_used = getelementptr inbounds %struct.hpfs_spare_block, ptr %call36, i32 0, i32 6
  %111 = ptrtoint ptr %n_spares_used to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %n_spares_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool118.not = icmp eq i32 %112, 0
  br i1 %tobool118.not, label %if.end117.if.end120_crit_edge, label %if.then119

if.end117.if.end120_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then119:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  call void @hpfs_load_hotfix_map(ptr noundef %s, ptr noundef nonnull %call36) #10
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end117.if.end120_crit_edge
  %113 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bitmaps, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114)
  %call122 = call ptr @hpfs_load_bitmap_directory(ptr noundef %s, i32 noundef %115) #10
  %sb_bmp_dir = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 14
  %116 = ptrtoint ptr %sb_bmp_dir to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call122, ptr %sb_bmp_dir, align 4
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %if.end120.bail4_crit_edge, label %if.end125

if.end120.bail4_crit_edge:                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail4

if.end125:                                        ; preds = %if.end120
  %dirty = getelementptr inbounds %struct.hpfs_spare_block, ptr %call36, i32 0, i32 2
  %117 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %117)
  %bf.load126 = load i16, ptr %dirty, align 4
  %118 = and i16 %bf.load126, 16640
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %118)
  %119 = icmp eq i16 %118, 256
  br i1 %119, label %if.then136, label %if.end125.if.end146_crit_edge

if.end125.if.end146_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then136:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp137 = icmp eq i32 %103, 2
  br i1 %cmp137, label %do.end142, label %if.end145

do.end142:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #12
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #13
  br label %bail4

if.end145:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.44)
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end125.if.end146_crit_edge
  %120 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %s_flags.i, align 4
  %and.i445 = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i445)
  %tobool.i446.not = icmp eq i32 %and.i445, 0
  br i1 %tobool.i446.not, label %if.then148, label %if.end146.if.end157_crit_edge

if.end146.if.end157_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

if.then148:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %122)
  %bf.load150 = load i16, ptr %dirty, align 4
  %bf.set152 = and i16 %bf.load150, -16641
  %bf.clear155 = or i16 %bf.set152, 256
  store i16 %bf.clear155, ptr %dirty, align 4
  %123 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bh2, align 4
  call void @mark_buffer_dirty(ptr noundef %124) #10
  br label %if.end157

if.end157:                                        ; preds = %if.then148, %if.end146.if.end157_crit_edge
  %n_dnode_spares = getelementptr inbounds %struct.hpfs_spare_block, ptr %call36, i32 0, i32 9
  %125 = ptrtoint ptr %n_dnode_spares to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %n_dnode_spares, align 4
  %n_dnode_spares_free = getelementptr inbounds %struct.hpfs_spare_block, ptr %call36, i32 0, i32 8
  %127 = ptrtoint ptr %n_dnode_spares_free to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %n_dnode_spares_free, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp158.not = icmp eq i32 %126, %128
  br i1 %cmp158.not, label %if.end157.if.end179_crit_edge, label %if.then160

if.end157.if.end179_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

if.then160:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %cmp161 = icmp sgt i32 %103, 1
  br i1 %cmp161, label %do.end166, label %if.end169

do.end166:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  call fastcc void @mark_dirty(ptr noundef %s, i32 noundef 0)
  br label %bail4

if.end169:                                        ; preds = %if.then160
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp170 = icmp eq i32 %103, 0
  br i1 %cmp170, label %do.end175, label %if.end169.if.end179_crit_edge

if.end169.if.end179_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

do.end175:                                        ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #12
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #13
  br label %if.end179

if.end179:                                        ; preds = %do.end175, %if.end169.if.end179_crit_edge, %if.end157.if.end179_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool180.not = icmp eq i32 %97, 0
  br i1 %tobool180.not, label %do.end219, label %if.then181

if.then181:                                       ; preds = %if.end179
  %dir_band_end = getelementptr inbounds %struct.hpfs_super_block, ptr %call32, i32 0, i32 16
  %129 = ptrtoint ptr %dir_band_end to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dir_band_end, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130)
  %132 = ptrtoint ptr %dir_band_start to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dir_band_start, align 4
  %134 = call i32 @llvm.bswap.i32(i32 %133)
  %sub = add i32 %131, 1
  %add = sub i32 %sub, %134
  %135 = ptrtoint ptr %n_dir_band to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %n_dir_band, align 4
  %137 = call i32 @llvm.bswap.i32(i32 %136)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %137)
  %cmp184.not = icmp ne i32 %add, %137
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %134)
  %cmp189 = icmp ult i32 %131, %134
  %or.cond432 = select i1 %cmp184.not, i1 true, i1 %cmp189
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %137)
  %cmp193 = icmp ugt i32 %137, 16384
  %or.cond433 = or i1 %cmp193, %or.cond432
  br i1 %or.cond433, label %if.then195, label %if.end199

if.then195:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.52, i32 noundef %134, i32 noundef %131, i32 noundef %137)
  br label %bail4

if.end199:                                        ; preds = %if.then181
  %138 = ptrtoint ptr %sb_dirband_size to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sb_dirband_size, align 4
  store i32 0, ptr %sb_dirband_size, align 4
  %140 = ptrtoint ptr %dir_band_start to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dir_band_start, align 4
  %142 = call i32 @llvm.bswap.i32(i32 %141)
  %143 = ptrtoint ptr %n_dir_band to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %n_dir_band, align 4
  %145 = call i32 @llvm.bswap.i32(i32 %144)
  %call204 = call i32 @hpfs_chk_sectors(ptr noundef %s, i32 noundef %142, i32 noundef %145, ptr noundef nonnull @.str.53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %lor.lhs.false206, label %if.end199.if.then214_crit_edge

if.end199.if.then214_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then214

lor.lhs.false206:                                 ; preds = %if.end199
  %146 = ptrtoint ptr %dir_band_bitmap to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dir_band_bitmap, align 4
  %148 = call i32 @llvm.bswap.i32(i32 %147)
  %call208 = call i32 @hpfs_chk_sectors(ptr noundef %s, i32 noundef %148, i32 noundef 4, ptr noundef nonnull @.str.54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %lor.lhs.false210, label %lor.lhs.false206.if.then214_crit_edge

lor.lhs.false206.if.then214_crit_edge:            ; preds = %lor.lhs.false206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then214

lor.lhs.false210:                                 ; preds = %lor.lhs.false206
  %149 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %bitmaps, align 4
  %151 = call i32 @llvm.bswap.i32(i32 %150)
  %call212 = call i32 @hpfs_chk_sectors(ptr noundef %s, i32 noundef %151, i32 noundef 4, ptr noundef nonnull @.str.55) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %cleanup, label %lor.lhs.false210.if.then214_crit_edge

lor.lhs.false210.if.then214_crit_edge:            ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then214

if.then214:                                       ; preds = %lor.lhs.false210.if.then214_crit_edge, %lor.lhs.false206.if.then214_crit_edge, %if.end199.if.then214_crit_edge
  call fastcc void @mark_dirty(ptr noundef %s, i32 noundef 0)
  br label %bail4

cleanup:                                          ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %sb_dirband_size to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %139, ptr %sb_dirband_size, align 4
  br label %if.end222

do.end219:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  %call221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #13
  br label %if.end222

if.end222:                                        ; preds = %do.end219, %cleanup
  %n_code_pages = getelementptr inbounds %struct.hpfs_spare_block, ptr %call36, i32 0, i32 11
  %153 = ptrtoint ptr %n_code_pages to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %n_code_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool223.not = icmp eq i32 %154, 0
  br i1 %tobool223.not, label %if.end222.if.end235_crit_edge, label %if.then224

if.end222.if.end235_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end235

if.then224:                                       ; preds = %if.end222
  %code_page_dir = getelementptr inbounds %struct.hpfs_spare_block, ptr %call36, i32 0, i32 10
  %155 = ptrtoint ptr %code_page_dir to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %code_page_dir, align 4
  %157 = call i32 @llvm.bswap.i32(i32 %156)
  %call225 = call ptr @hpfs_load_code_page(ptr noundef %s, i32 noundef %157) #10
  %158 = ptrtoint ptr %sb_cp_table to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call225, ptr %sb_cp_table, align 8
  %tobool227.not = icmp eq ptr %call225, null
  br i1 %tobool227.not, label %do.end231, label %if.then224.if.end235_crit_edge

if.then224.if.end235_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end235

do.end231:                                        ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #12
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #13
  br label %if.end235

if.end235:                                        ; preds = %do.end231, %if.then224.if.end235_crit_edge, %if.end222.if.end235_crit_edge
  %159 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bh2, align 4
  %tobool.not.i = icmp eq ptr %160, null
  br i1 %tobool.not.i, label %if.end235.brelse.exit_crit_edge, label %if.then.i

if.end235.brelse.exit_crit_edge:                  ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %160) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end235.brelse.exit_crit_edge
  %161 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %bh1, align 4
  %tobool.not.i447 = icmp eq ptr %162, null
  br i1 %tobool.not.i447, label %brelse.exit.brelse.exit449_crit_edge, label %if.then.i448

brelse.exit.brelse.exit449_crit_edge:             ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit449

if.then.i448:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %162) #10
  br label %brelse.exit449

brelse.exit449:                                   ; preds = %if.then.i448, %brelse.exit.brelse.exit449_crit_edge
  %163 = ptrtoint ptr %bh0 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bh0, align 4
  %tobool.not.i450 = icmp eq ptr %164, null
  br i1 %tobool.not.i450, label %brelse.exit449.brelse.exit452_crit_edge, label %if.then.i451

brelse.exit449.brelse.exit452_crit_edge:          ; preds = %brelse.exit449
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit452

if.then.i451:                                     ; preds = %brelse.exit449
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %164) #10
  br label %brelse.exit452

brelse.exit452:                                   ; preds = %if.then.i451, %brelse.exit449.brelse.exit452_crit_edge
  %165 = ptrtoint ptr %sb_root to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %sb_root, align 4
  %call237 = call ptr @iget_locked(ptr noundef %s, i32 noundef %166) #10
  %tobool238.not = icmp eq ptr %call237, null
  br i1 %tobool238.not, label %brelse.exit452.bail0_crit_edge, label %if.end240

brelse.exit452.bail0_crit_edge:                   ; preds = %brelse.exit452
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail0

if.end240:                                        ; preds = %brelse.exit452
  call void @hpfs_init_inode(ptr noundef nonnull %call237) #10
  call void @hpfs_read_inode(ptr noundef nonnull %call237) #10
  call void @unlock_new_inode(ptr noundef nonnull %call237) #10
  %call241 = call ptr @d_make_root(ptr noundef nonnull %call237) #10
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %167 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call241, ptr %s_root, align 64
  %tobool243.not = icmp eq ptr %call241, null
  br i1 %tobool243.not, label %if.end240.bail0_crit_edge, label %if.end245

if.end240.bail0_crit_edge:                        ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail0

if.end245:                                        ; preds = %if.end240
  %168 = ptrtoint ptr %sb_root to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %sb_root, align 4
  %call247 = call i32 @hpfs_fnode_dno(ptr noundef %s, i32 noundef %169) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.end245.if.then253_crit_edge, label %if.end251

if.end245.if.then253_crit_edge:                   ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then253

if.end251:                                        ; preds = %if.end245
  %call250 = call ptr @map_dirent(ptr noundef nonnull %call237, i32 noundef %call247, ptr noundef nonnull @.str.62, i32 noundef 2, ptr noundef null, ptr noundef nonnull %qbh) #10
  %tobool252.not = icmp eq ptr %call250, null
  br i1 %tobool252.not, label %if.end251.if.then253_crit_edge, label %if.else254

if.end251.if.then253_crit_edge:                   ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then253

if.then253:                                       ; preds = %if.end251.if.then253_crit_edge, %if.end245.if.then253_crit_edge
  call void (ptr, ptr, ...) @hpfs_error(ptr noundef %s, ptr noundef nonnull @.str.63)
  br label %if.end280

if.else254:                                       ; preds = %if.end251
  %read_date = getelementptr inbounds %struct.hpfs_dirent, ptr %call250, i32 0, i32 5
  %170 = ptrtoint ptr %read_date to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %read_date, align 4
  %172 = call i32 @llvm.bswap.i32(i32 %171)
  %conv255 = zext i32 %172 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %173 = load i32, ptr @sys_tz, align 4
  %mul.i453 = mul i32 %173, 60
  %conv.i454 = sext i32 %mul.i453 to i64
  %add.i455 = add nsw i64 %conv.i454, %conv255
  %174 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %s_fs_info, align 16
  %sb_timeshift.i457 = getelementptr inbounds %struct.hpfs_sb_info, ptr %175, i32 0, i32 17
  %176 = ptrtoint ptr %sb_timeshift.i457 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sb_timeshift.i457, align 4
  %conv1.i458 = sext i32 %177 to i64
  %add2.i459 = add nsw i64 %add.i455, %conv1.i458
  %i_atime = getelementptr inbounds %struct.inode, ptr %call237, i32 0, i32 15
  %178 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %add2.i459, ptr %i_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call237, i32 0, i32 15, i32 1
  %179 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %tv_nsec, align 8
  %write_date = getelementptr inbounds %struct.hpfs_dirent, ptr %call250, i32 0, i32 3
  %180 = ptrtoint ptr %write_date to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %write_date, align 4
  %182 = call i32 @llvm.bswap.i32(i32 %181)
  %conv258 = zext i32 %182 to i64
  %add.i462 = add nsw i64 %conv258, %conv.i454
  %183 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %s_fs_info, align 16
  %sb_timeshift.i464 = getelementptr inbounds %struct.hpfs_sb_info, ptr %184, i32 0, i32 17
  %185 = ptrtoint ptr %sb_timeshift.i464 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %sb_timeshift.i464, align 4
  %conv1.i465 = sext i32 %186 to i64
  %add2.i466 = add nsw i64 %add.i462, %conv1.i465
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call237, i32 0, i32 16
  %187 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %add2.i466, ptr %i_mtime, align 8
  %tv_nsec262 = getelementptr inbounds %struct.inode, ptr %call237, i32 0, i32 16, i32 1
  %188 = ptrtoint ptr %tv_nsec262 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %tv_nsec262, align 8
  %creation_date = getelementptr inbounds %struct.hpfs_dirent, ptr %call250, i32 0, i32 6
  %189 = ptrtoint ptr %creation_date to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %creation_date, align 4
  %191 = call i32 @llvm.bswap.i32(i32 %190)
  %conv263 = zext i32 %191 to i64
  %add.i469 = add nsw i64 %conv263, %conv.i454
  %192 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %s_fs_info, align 16
  %sb_timeshift.i471 = getelementptr inbounds %struct.hpfs_sb_info, ptr %193, i32 0, i32 17
  %194 = ptrtoint ptr %sb_timeshift.i471 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %sb_timeshift.i471, align 4
  %conv1.i472 = sext i32 %195 to i64
  %add2.i473 = add nsw i64 %add.i469, %conv1.i472
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call237, i32 0, i32 17
  %196 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %add2.i473, ptr %i_ctime, align 8
  %tv_nsec267 = getelementptr inbounds %struct.inode, ptr %call237, i32 0, i32 17, i32 1
  %197 = ptrtoint ptr %tv_nsec267 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %tv_nsec267, align 8
  %ea_size = getelementptr inbounds %struct.hpfs_dirent, ptr %call250, i32 0, i32 7
  %198 = ptrtoint ptr %ea_size to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %ea_size, align 4
  %200 = call i32 @llvm.bswap.i32(i32 %199)
  %i_ea_size = getelementptr i8, ptr %call237, i32 -12
  %201 = ptrtoint ptr %i_ea_size to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %i_ea_size, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call237, i32 0, i32 11
  %202 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %i_ino, align 8
  %i_parent_dir = getelementptr i8, ptr %call237, i32 -40
  %204 = ptrtoint ptr %i_parent_dir to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %i_parent_dir, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %call237, i32 0, i32 14
  %205 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %206)
  %cmp270 = icmp eq i64 %206, -1
  br i1 %cmp270, label %if.then272, label %if.else254.if.end274_crit_edge

if.else254.if.end274_crit_edge:                   ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end274

if.then272:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #12
  %207 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 2048, ptr %i_size, align 8
  br label %if.end274

if.end274:                                        ; preds = %if.then272, %if.else254.if.end274_crit_edge
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call237, i32 0, i32 22
  %208 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %209)
  %cmp275 = icmp eq i64 %209, -1
  br i1 %cmp275, label %if.then277, label %if.end274.if.end279_crit_edge

if.end274.if.end279_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end279

if.then277:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 5, ptr %i_blocks, align 8
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %if.end274.if.end279_crit_edge
  call void @hpfs_brelse4(ptr noundef nonnull %qbh) #10
  br label %if.end280

if.end280:                                        ; preds = %if.end279, %if.then253
  %211 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %s_fs_info, align 16
  call void @mutex_unlock(ptr noundef %212) #10
  br label %cleanup281

bail4:                                            ; preds = %if.then214, %if.then195, %do.end166, %do.end142, %if.end120.bail4_crit_edge, %if.then115, %do.end67, %do.end50, %if.then45.bail4_crit_edge
  %213 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %bh2, align 4
  %tobool.not.i476 = icmp eq ptr %214, null
  br i1 %tobool.not.i476, label %bail4.bail3_crit_edge, label %if.then.i477

bail4.bail3_crit_edge:                            ; preds = %bail4
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail3

if.then.i477:                                     ; preds = %bail4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %214) #10
  br label %bail3

bail3:                                            ; preds = %if.then.i477, %bail4.bail3_crit_edge, %if.end35.bail3_crit_edge
  %215 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %bh1, align 4
  %tobool.not.i479 = icmp eq ptr %216, null
  br i1 %tobool.not.i479, label %bail3.bail2_crit_edge, label %if.then.i480

bail3.bail2_crit_edge:                            ; preds = %bail3
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail2

if.then.i480:                                     ; preds = %bail3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %216) #10
  br label %bail2

bail2:                                            ; preds = %if.then.i480, %bail3.bail2_crit_edge, %if.end31.bail2_crit_edge
  %217 = ptrtoint ptr %bh0 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %bh0, align 4
  %tobool.not.i482 = icmp eq ptr %218, null
  br i1 %tobool.not.i482, label %bail2.bail0_crit_edge, label %if.then.i483

bail2.bail0_crit_edge:                            ; preds = %bail2
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail0

if.then.i483:                                     ; preds = %bail2
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %218) #10
  br label %bail0

bail0:                                            ; preds = %if.then.i483, %bail2.bail0_crit_edge, %if.end240.bail0_crit_edge, %brelse.exit452.bail0_crit_edge, %if.end26.bail0_crit_edge, %if.then25, %do.end20
  %219 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %s_fs_info, align 16
  call void @mutex_unlock(ptr noundef %220) #10
  %sb_cp_table.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 13
  %221 = ptrtoint ptr %sb_cp_table.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %sb_cp_table.i, align 8
  call void @kfree(ptr noundef %222) #10
  %sb_bmp_dir.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %call7.i.i, i32 0, i32 14
  %223 = ptrtoint ptr %sb_bmp_dir.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %sb_bmp_dir.i, align 4
  call void @kfree(ptr noundef %224) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup281

cleanup281:                                       ; preds = %bail0, %if.end280, %entry.cleanup281_crit_edge
  %retval.0 = phi i32 [ -22, %bail0 ], [ 0, %if.end280 ], [ -12, %entry.cleanup281_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeshift) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chkdsk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errs) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eas) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lowercase) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %umask) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh0) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_opts(ptr noundef %opts, ptr nocapture noundef writeonly %uid, ptr nocapture noundef writeonly %gid, ptr nocapture noundef writeonly %umask, ptr nocapture noundef writeonly %lowercase, ptr nocapture noundef writeonly %eas, ptr nocapture noundef writeonly %chk, ptr nocapture noundef writeonly %errs, ptr nocapture noundef writeonly %chkdsk, ptr nocapture noundef writeonly %timeshift) unnamed_addr #0 align 64 {
entry:
  %opts.addr = alloca ptr, align 4
  %option = alloca i32, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %rhs = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opts.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %opts, ptr %opts.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #10
  %1 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %option, align 4, !annotation !217
  %tobool.not = icmp eq ptr %opts, null
  br i1 %tobool.not, label %entry.cleanup88_crit_edge, label %while.cond.preheader

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

while.cond.preheader:                             ; preds = %entry
  %call115 = call ptr @strsep(ptr noundef nonnull %opts.addr, ptr noundef nonnull @.str.64) #10
  %cmp.not116 = icmp eq ptr %call115, null
  br i1 %cmp.not116, label %while.cond.preheader.cleanup88_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup88_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call118 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call115, %while.cond.preheader.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #10
  %2 = call ptr @memset(ptr %args, i32 255, i32 24)
  %3 = ptrtoint ptr %call118 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %while.body.while.cond.backedge_crit_edge, label %if.end3

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end3:                                          ; preds = %while.body
  %call4 = call i32 @match_token(ptr noundef nonnull %call118, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #10
  %5 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %call4, label %if.end3.cleanup85.thread_crit_edge [
    i32 0, label %if.end3.cleanup85.thread.loopexit_crit_edge
    i32 1, label %sw.bb5
    i32 2, label %sw.bb19
    i32 3, label %sw.bb41
    i32 4, label %sw.bb47
    i32 5, label %sw.bb48
    i32 6, label %sw.bb49
    i32 7, label %sw.bb50
    i32 8, label %sw.bb51
    i32 9, label %sw.bb52
    i32 10, label %sw.bb53
    i32 11, label %sw.bb54
    i32 12, label %sw.bb55
    i32 13, label %sw.bb56
    i32 14, label %sw.bb57
    i32 15, label %sw.bb58
    i32 16, label %sw.bb59
    i32 17, label %sw.bb60
    i32 18, label %sw.bb61
  ]

if.end3.cleanup85.thread.loopexit_crit_edge:      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85.thread.loopexit

if.end3.cleanup85.thread_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85.thread

sw.bb5:                                           ; preds = %if.end3
  %call7 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %sw.bb5.cleanup85.thread.loopexit_crit_edge

sw.bb5.cleanup85.thread.loopexit_crit_edge:       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85.thread.loopexit

if.end10:                                         ; preds = %sw.bb5
  %6 = call i32 @llvm.read_register.i32(metadata !207) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %14 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %option, align 4
  %call14 = call i32 @make_kuid(ptr noundef %13, i32 noundef %15) #10
  %16 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call14, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp.i.not = icmp eq i32 %call14, -1
  br i1 %cmp.i.not, label %if.end10.cleanup85.thread.loopexit_crit_edge, label %if.end10.while.cond.backedge_crit_edge

if.end10.while.cond.backedge_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end10.cleanup85.thread.loopexit_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85.thread.loopexit

sw.bb19:                                          ; preds = %if.end3
  %call21 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %sw.bb19.cleanup85.thread.loopexit_crit_edge

sw.bb19.cleanup85.thread.loopexit_crit_edge:      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85.thread.loopexit

if.end24:                                         ; preds = %sw.bb19
  %17 = call i32 @llvm.read_register.i32(metadata !207) #10
  %and.i105 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i105 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task32, align 8
  %cred33 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 99
  %21 = ptrtoint ptr %cred33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cred33, align 16
  %user_ns34 = getelementptr inbounds %struct.cred, ptr %22, i32 0, i32 25
  %23 = ptrtoint ptr %user_ns34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user_ns34, align 4
  %25 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %option, align 4
  %call35 = call i32 @make_kgid(ptr noundef %24, i32 noundef %26) #10
  %27 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call35, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call35)
  %cmp.i106.not = icmp eq i32 %call35, -1
  br i1 %cmp.i106.not, label %if.end24.cleanup85.thread.loopexit_crit_edge, label %if.end24.while.cond.backedge_crit_edge

if.end24.while.cond.backedge_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end24.cleanup85.thread.loopexit_crit_edge:     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85.thread.loopexit

sw.bb41:                                          ; preds = %if.end3
  %call43 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %option) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %sw.bb41.cleanup85.thread.loopexit_crit_edge

sw.bb41.cleanup85.thread.loopexit_crit_edge:      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85.thread.loopexit

if.end46:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %option, align 4
  %conv = trunc i32 %29 to i16
  %30 = ptrtoint ptr %umask to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %umask, align 2
  br label %while.cond.backedge

sw.bb47:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %lowercase to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %lowercase, align 4
  br label %while.cond.backedge

sw.bb48:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %lowercase to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %lowercase, align 4
  br label %while.cond.backedge

sw.bb49:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %chk to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %chk, align 4
  br label %while.cond.backedge

sw.bb50:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %chk to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %chk, align 4
  br label %while.cond.backedge

sw.bb51:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %chk to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %chk, align 4
  br label %while.cond.backedge

sw.bb52:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %errs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %errs, align 4
  br label %while.cond.backedge

sw.bb53:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %errs to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %errs, align 4
  br label %while.cond.backedge

sw.bb54:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %errs to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %errs, align 4
  br label %while.cond.backedge

sw.bb55:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %eas to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %eas, align 4
  br label %while.cond.backedge

sw.bb56:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %eas to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %eas, align 4
  br label %while.cond.backedge

sw.bb57:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %eas to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %eas, align 4
  br label %while.cond.backedge

sw.bb58:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %chkdsk to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %chkdsk, align 4
  br label %while.cond.backedge

sw.bb59:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %chkdsk to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %chkdsk, align 4
  br label %while.cond.backedge

sw.bb60:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %chkdsk to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %chkdsk, align 4
  br label %while.cond.backedge

sw.bb61:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rhs) #10
  %45 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %args, align 4
  %47 = ptrtoint ptr %rhs to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %rhs, align 4
  %tobool62.not = icmp eq ptr %46, null
  br i1 %tobool62.not, label %sw.bb61.cleanup.thread_crit_edge, label %lor.lhs.false

sw.bb61.cleanup.thread_crit_edge:                 ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %sw.bb61
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %46, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %49, label %lor.lhs.false.cleanup_crit_edge [
    i8 0, label %lor.lhs.false.cleanup.thread_crit_edge
    i8 45, label %lor.lhs.false.if.then78_crit_edge
    i8 43, label %if.then78.fold.split
  ]

lor.lhs.false.if.then78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then78.fold.split:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then78

if.then78:                                        ; preds = %if.then78.fold.split, %lor.lhs.false.if.then78_crit_edge
  %m.0108 = phi i32 [ -1, %lor.lhs.false.if.then78_crit_edge ], [ 1, %if.then78.fold.split ]
  %incdec.ptr = getelementptr i8, ptr %46, i32 1
  %51 = ptrtoint ptr %rhs to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %incdec.ptr, ptr %rhs, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %sw.bb61.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rhs) #10
  br label %cleanup85.thread

cleanup:                                          ; preds = %if.then78, %lor.lhs.false.cleanup_crit_edge
  %m.0109 = phi i32 [ %m.0108, %if.then78 ], [ 1, %lor.lhs.false.cleanup_crit_edge ]
  %52 = ptrtoint ptr %rhs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rhs, align 4
  %call80 = call i32 @simple_strtoul(ptr noundef %53, ptr noundef nonnull %rhs, i32 noundef 0) #10
  %mul = mul i32 %call80, %m.0109
  %54 = ptrtoint ptr %timeshift to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul, ptr %timeshift, align 4
  %55 = ptrtoint ptr %rhs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rhs, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool81.not = icmp eq i8 %58, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rhs) #10
  br i1 %tobool81.not, label %cleanup.while.cond.backedge_crit_edge, label %cleanup85

cleanup.while.cond.backedge_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

cleanup85.thread.loopexit:                        ; preds = %sw.bb41.cleanup85.thread.loopexit_crit_edge, %if.end24.cleanup85.thread.loopexit_crit_edge, %sw.bb19.cleanup85.thread.loopexit_crit_edge, %if.end10.cleanup85.thread.loopexit_crit_edge, %sw.bb5.cleanup85.thread.loopexit_crit_edge, %if.end3.cleanup85.thread.loopexit_crit_edge
  %retval.3.ph.ph = phi i32 [ 2, %if.end3.cleanup85.thread.loopexit_crit_edge ], [ 0, %sw.bb5.cleanup85.thread.loopexit_crit_edge ], [ 0, %if.end10.cleanup85.thread.loopexit_crit_edge ], [ 0, %sw.bb19.cleanup85.thread.loopexit_crit_edge ], [ 0, %if.end24.cleanup85.thread.loopexit_crit_edge ], [ 0, %sw.bb41.cleanup85.thread.loopexit_crit_edge ]
  br label %cleanup85.thread

cleanup85.thread:                                 ; preds = %cleanup85.thread.loopexit, %cleanup.thread, %if.end3.cleanup85.thread_crit_edge
  %retval.3.ph = phi i32 [ 0, %cleanup.thread ], [ %retval.3.ph.ph, %cleanup85.thread.loopexit ], [ 0, %if.end3.cleanup85.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  br label %cleanup88

cleanup85:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  br label %cleanup88

while.cond.backedge:                              ; preds = %cleanup.while.cond.backedge_crit_edge, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %if.end46, %if.end24.while.cond.backedge_crit_edge, %if.end10.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #10
  %call = call ptr @strsep(ptr noundef nonnull %opts.addr, ptr noundef nonnull @.str.64) #10
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup88_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.cleanup88_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

cleanup88:                                        ; preds = %while.cond.backedge.cleanup88_crit_edge, %cleanup85, %cleanup85.thread, %while.cond.preheader.cleanup88_crit_edge, %entry.cleanup88_crit_edge
  %retval.4 = phi i32 [ 1, %entry.cleanup88_crit_edge ], [ %retval.3.ph, %cleanup85.thread ], [ 1, %while.cond.preheader.cleanup88_crit_edge ], [ 0, %cleanup85 ], [ 1, %while.cond.backedge.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #10
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_load_hotfix_map(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_load_bitmap_directory(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_chk_sectors(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hpfs_load_code_page(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_init_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_read_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hpfs_fnode_dno(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_dirent(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @hpfs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hpfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #10
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.hpfs_inode_info, ptr %call, i32 0, i32 11
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpfs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hpfs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -48
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_evict_inode(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpfs_put_super(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  tail call fastcc void @unmark_dirty(ptr noundef %s)
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @mutex_unlock(ptr noundef %3) #10
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %rcu = getelementptr inbounds %struct.hpfs_sb_info, ptr %5, i32 0, i32 18
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @lazy_free_sbi) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %qbh.i.i32 = alloca %struct.quad_buffer_head, align 4
  %qbh.i.i = alloca %struct.quad_buffer_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_dev, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #10
  %sb_n_free = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %sb_n_free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_n_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %sb_fs_size.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %sb_fs_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_fs_size.i, align 4
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %add.i = add i32 %13, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add.i)
  %cmp229.not.i = icmp ult i32 %add.i, 16384
  br i1 %cmp229.not.i, label %for.cond1.preheader.i.count_bitmaps.exit_crit_edge, label %for.body3.preheader.i

for.cond1.preheader.i.count_bitmaps.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %count_bitmaps.exit

for.body3.preheader.i:                            ; preds = %for.cond1.preheader.i
  %shr.i = lshr i32 %add.i, 14
  br label %for.body3.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %n.028.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void @hpfs_prefetch_bitmap(ptr noundef %1, i32 noundef %n.028.i) #10
  %inc.i = add nuw nsw i32 %n.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 62
  br i1 %exitcond.not.i, label %for.cond1.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body3.i:                                      ; preds = %for.cond1.i.for.body3.i_crit_edge, %for.body3.preheader.i
  %count.031.i = phi i32 [ %23, %for.cond1.i.for.body3.i_crit_edge ], [ 0, %for.body3.preheader.i ]
  %n.130.i = phi i32 [ %inc10.i, %for.cond1.i.for.body3.i_crit_edge ], [ 0, %for.body3.preheader.i ]
  %add4.i = add nuw nsw i32 %n.130.i, 62
  call void @hpfs_prefetch_bitmap(ptr noundef %1, i32 noundef %add4.i) #10
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %sb_bmp_dir.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %sb_bmp_dir.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sb_bmp_dir.i, align 4
  %arrayidx.i = getelementptr i32, ptr %17, i32 %n.130.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh.i.i) #10
  %21 = call ptr @memset(ptr %qbh.i.i, i32 255, i32 20)
  %call.i.i = call ptr @hpfs_map_4sectors(ptr noundef %1, i32 noundef %20, ptr noundef nonnull %qbh.i.i, i32 noundef 0) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %hpfs_count_one_bitmap.exit.thread.i, label %hpfs_count_one_bitmap.exit.i

hpfs_count_one_bitmap.exit.thread.i:              ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i.i) #10
  br label %22

hpfs_count_one_bitmap.exit.i:                     ; preds = %for.body3.i
  %call4.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull %call.i.i, i32 noundef 16384) #10
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i.i)
  %cmp7.not.i = icmp eq i32 %call4.i.i.i, -1
  %add8.i = add i32 %call4.i.i.i, %count.031.i
  br i1 %cmp7.not.i, label %hpfs_count_one_bitmap.exit.i._crit_edge, label %hpfs_count_one_bitmap.exit.i.for.cond1.i_crit_edge

hpfs_count_one_bitmap.exit.i.for.cond1.i_crit_edge: ; preds = %hpfs_count_one_bitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.i

hpfs_count_one_bitmap.exit.i._crit_edge:          ; preds = %hpfs_count_one_bitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %22

22:                                               ; preds = %hpfs_count_one_bitmap.exit.i._crit_edge, %hpfs_count_one_bitmap.exit.thread.i
  br label %for.cond1.i

for.cond1.i:                                      ; preds = %22, %hpfs_count_one_bitmap.exit.i.for.cond1.i_crit_edge
  %23 = phi i32 [ %count.031.i, %22 ], [ %add8.i, %hpfs_count_one_bitmap.exit.i.for.cond1.i_crit_edge ]
  %inc10.i = add nuw nsw i32 %n.130.i, 1
  %exitcond32.not.i = icmp eq i32 %inc10.i, %shr.i
  br i1 %exitcond32.not.i, label %for.cond1.i.count_bitmaps.exit_crit_edge, label %for.cond1.i.for.body3.i_crit_edge

for.cond1.i.for.body3.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.i

for.cond1.i.count_bitmaps.exit_crit_edge:         ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %count_bitmaps.exit

count_bitmaps.exit:                               ; preds = %for.cond1.i.count_bitmaps.exit_crit_edge, %for.cond1.preheader.i.count_bitmaps.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %for.cond1.preheader.i.count_bitmaps.exit_crit_edge ], [ %23, %for.cond1.i.count_bitmaps.exit_crit_edge ]
  %24 = ptrtoint ptr %sb_n_free to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %count.0.lcssa.i, ptr %sb_n_free, align 4
  br label %if.end

if.end:                                           ; preds = %count_bitmaps.exit, %entry.if.end_crit_edge
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_magic, align 4
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %buf, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %28 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 512, ptr %f_bsize, align 4
  %sb_fs_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %sb_fs_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sb_fs_size, align 4
  %conv = zext i32 %30 to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %31 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv, ptr %f_blocks, align 8
  %32 = ptrtoint ptr %sb_n_free to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sb_n_free, align 4
  %conv5 = zext i32 %33 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %34 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv5, ptr %f_bfree, align 8
  %35 = load i32, ptr %sb_n_free, align 4
  %conv7 = zext i32 %35 to i64
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %36 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv7, ptr %f_bavail, align 8
  %sb_dirband_size = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %sb_dirband_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_dirband_size, align 4
  %div30 = lshr i32 %38, 2
  %conv8 = zext i32 %div30 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %39 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv8, ptr %f_files, align 8
  %40 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i, align 16
  %sb_n_free_dnodes.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %sb_n_free_dnodes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sb_n_free_dnodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i = icmp eq i32 %43, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end5.i_crit_edge

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end
  %sb_dmap.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %41, i32 0, i32 6
  %44 = ptrtoint ptr %sb_dmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sb_dmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qbh.i.i32) #10
  %46 = call ptr @memset(ptr %qbh.i.i32, i32 255, i32 20)
  %call.i.i34 = call ptr @hpfs_map_4sectors(ptr noundef %1, i32 noundef %45, ptr noundef nonnull %qbh.i.i32, i32 noundef 0) #10
  %tobool.not.i.i35 = icmp eq ptr %call.i.i34, null
  br i1 %tobool.not.i.i35, label %hpfs_count_one_bitmap.exit.thread.i36, label %hpfs_count_one_bitmap.exit.i38

hpfs_count_one_bitmap.exit.thread.i36:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i.i32) #10
  br label %hpfs_get_free_dnodes.exit

hpfs_count_one_bitmap.exit.i38:                   ; preds = %if.then.i
  %call4.i.i.i37 = call i32 @__bitmap_weight(ptr noundef nonnull %call.i.i34, i32 noundef 16384) #10
  call void @hpfs_brelse4(ptr noundef nonnull %qbh.i.i32) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qbh.i.i32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i.i37)
  %cmp2.i = icmp eq i32 %call4.i.i.i37, -1
  br i1 %cmp2.i, label %hpfs_count_one_bitmap.exit.i38.hpfs_get_free_dnodes.exit_crit_edge, label %if.end.i

hpfs_count_one_bitmap.exit.i38.hpfs_get_free_dnodes.exit_crit_edge: ; preds = %hpfs_count_one_bitmap.exit.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %hpfs_get_free_dnodes.exit

if.end.i:                                         ; preds = %hpfs_count_one_bitmap.exit.i38
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %sb_n_free_dnodes.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call4.i.i.i37, ptr %sb_n_free_dnodes.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.end.if.end5.i_crit_edge
  %48 = ptrtoint ptr %sb_n_free_dnodes.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sb_n_free_dnodes.i, align 4
  br label %hpfs_get_free_dnodes.exit

hpfs_get_free_dnodes.exit:                        ; preds = %if.end5.i, %hpfs_count_one_bitmap.exit.i38.hpfs_get_free_dnodes.exit_crit_edge, %hpfs_count_one_bitmap.exit.thread.i36
  %retval.1.i = phi i32 [ %49, %if.end5.i ], [ 0, %hpfs_count_one_bitmap.exit.i38.hpfs_get_free_dnodes.exit_crit_edge ], [ 0, %hpfs_count_one_bitmap.exit.thread.i36 ]
  %50 = lshr i32 %7, 12
  %shl.i.i = and i32 %50, 1048320
  %and1.i.i = and i32 %7, 255
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %conv10 = zext i32 %retval.1.i to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %51 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv10, ptr %f_ffree, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %52 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %53 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 254, ptr %f_namelen, align 8
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  call void @mutex_unlock(ptr noundef %55) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_remount_fs(ptr noundef %s, ptr nocapture noundef %flags, ptr noundef %data) #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %umask = alloca i16, align 2
  %lowercase = alloca i32, align 4
  %eas = alloca i32, align 4
  %chk = alloca i32, align 4
  %errs = alloca i32, align 4
  %chkdsk = alloca i32, align 4
  %timeshift = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %umask) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lowercase) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eas) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chk) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %errs) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chkdsk) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeshift) #10
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @sync_filesystem(ptr noundef %s) #10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 1024
  store i32 %or, ptr %flags, align 4
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #10
  %sb_uid = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %sb_uid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_uid, align 4
  %8 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %uid, align 4
  %sb_gid = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %sb_gid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_gid, align 4
  %11 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %gid, align 4
  %sb_mode = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %sb_mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sb_mode, align 4
  %14 = and i16 %13, 511
  %15 = xor i16 %14, 511
  %16 = ptrtoint ptr %umask to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %umask, align 2
  %sb_lowercase = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %sb_lowercase, align 2
  %bf.lshr = lshr i16 %bf.load, 9
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %18 = ptrtoint ptr %lowercase to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bf.cast, ptr %lowercase, align 4
  %bf.lshr4 = lshr i16 %bf.load, 14
  %bf.cast5 = zext i16 %bf.lshr4 to i32
  %19 = ptrtoint ptr %eas to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.cast5, ptr %eas, align 4
  %bf.lshr7 = lshr i16 %bf.load, 10
  %bf.clear8 = and i16 %bf.lshr7, 3
  %bf.cast9 = zext i16 %bf.clear8 to i32
  %20 = ptrtoint ptr %chk to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bf.cast9, ptr %chk, align 4
  %bf.lshr11 = lshr i16 %bf.load, 6
  %bf.clear12 = and i16 %bf.lshr11, 3
  %bf.cast13 = zext i16 %bf.clear12 to i32
  %21 = ptrtoint ptr %chkdsk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.cast13, ptr %chkdsk, align 4
  %bf.lshr15 = lshr i16 %bf.load, 12
  %bf.clear16 = and i16 %bf.lshr15, 3
  %bf.cast17 = zext i16 %bf.clear16 to i32
  %22 = ptrtoint ptr %errs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.cast17, ptr %errs, align 4
  %sb_timeshift = getelementptr inbounds %struct.hpfs_sb_info, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %sb_timeshift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sb_timeshift, align 4
  %25 = ptrtoint ptr %timeshift to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %timeshift, align 4
  %call18 = call fastcc i32 @parse_opts(ptr noundef %data, ptr noundef nonnull %uid, ptr noundef nonnull %gid, ptr noundef nonnull %umask, ptr noundef nonnull %lowercase, ptr noundef nonnull %eas, ptr noundef nonnull %chk, ptr noundef nonnull %errs, ptr noundef nonnull %chkdsk, ptr noundef nonnull %timeshift)
  %26 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %call18, label %if.end22 [
    i32 0, label %entry.out_err_crit_edge
    i32 2, label %if.then21
  ]

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end22:                                         ; preds = %entry
  %27 = ptrtoint ptr %timeshift to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timeshift, align 4
  %29 = ptrtoint ptr %sb_timeshift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sb_timeshift, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp24.not = icmp eq i32 %28, %30
  br i1 %cmp24.not, label %if.end32, label %if.end22.out_err_crit_edge

if.end22.out_err_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end32:                                         ; preds = %if.end22
  tail call fastcc void @unmark_dirty(ptr noundef %s)
  %31 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uid, align 4
  %33 = ptrtoint ptr %sb_uid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sb_uid, align 4
  %34 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gid, align 4
  %36 = ptrtoint ptr %sb_gid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sb_gid, align 4
  %37 = ptrtoint ptr %umask to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %umask, align 2
  %39 = and i16 %38, 511
  %40 = xor i16 %39, 511
  %41 = ptrtoint ptr %sb_mode to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %sb_mode, align 4
  %42 = ptrtoint ptr %lowercase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lowercase, align 4
  %44 = trunc i32 %43 to i16
  %45 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load41 = load i16, ptr %sb_lowercase, align 2
  %bf.value = shl i16 %44, 9
  %bf.shl = and i16 %bf.value, 512
  %bf.clear42 = and i16 %bf.load41, 319
  %bf.set = or i16 %bf.shl, %bf.clear42
  %46 = ptrtoint ptr %eas to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %eas, align 4
  %48 = trunc i32 %47 to i16
  %bf.shl46 = shl i16 %48, 14
  %bf.set48 = or i16 %bf.set, %bf.shl46
  %49 = ptrtoint ptr %chk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chk, align 4
  %51 = trunc i32 %50 to i16
  %bf.value52 = shl i16 %51, 10
  %bf.shl53 = and i16 %bf.value52, 3072
  %bf.set55 = or i16 %bf.shl53, %bf.set48
  %52 = ptrtoint ptr %chkdsk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chkdsk, align 4
  %54 = trunc i32 %53 to i16
  %bf.value59 = shl i16 %54, 6
  %bf.shl60 = and i16 %bf.value59, 192
  %bf.set62 = or i16 %bf.set55, %bf.shl60
  %55 = ptrtoint ptr %errs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %errs, align 4
  %57 = trunc i32 %56 to i16
  %bf.value66 = shl i16 %57, 12
  %bf.shl67 = and i16 %bf.value66, 12288
  %bf.set69 = or i16 %bf.set62, %bf.shl67
  store i16 %bf.set69, ptr %sb_lowercase, align 2
  %58 = ptrtoint ptr %sb_timeshift to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %28, ptr %sb_timeshift, align 4
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %and72 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then74, label %if.end32.if.end75_crit_edge

if.end32.if.end75_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then74:                                        ; preds = %if.end32
  %61 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chkdsk.i = getelementptr inbounds %struct.hpfs_sb_info, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %sb_chkdsk.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i = load i16, ptr %sb_chkdsk.i, align 2
  %64 = and i16 %bf.load.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i = icmp eq i16 %64, 0
  br i1 %tobool.not.i, label %if.then74.if.end75_crit_edge, label %land.lhs.true.i

if.then74.if.end75_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.lhs.true.i:                                  ; preds = %if.then74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #10
  %65 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !217
  %call3.i = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef 17, ptr noundef nonnull %bh.i, i32 noundef 0) #10
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  %dirty.i = getelementptr inbounds %struct.hpfs_spare_block, ptr %call3.i, i32 0, i32 2
  %66 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load6.i = load i16, ptr %dirty.i, align 4
  %bf.set.i = and i16 %bf.load6.i, -16641
  %bf.clear9.i = or i16 %bf.set.i, 256
  store i16 %bf.clear9.i, ptr %dirty.i, align 4
  %67 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bh.i, align 4
  call void @mark_buffer_dirty(ptr noundef %68) #10
  %69 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bh.i, align 4
  %call11.i = call i32 @sync_dirty_buffer(ptr noundef %70) #10
  %71 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i, label %if.then5.i.if.end.i_crit_edge, label %if.then.i.i

if.then5.i.if.end.i_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %72) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then5.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #10
  br label %if.end75

if.end75:                                         ; preds = %if.end.i, %if.then74.if.end75_crit_edge, %if.end32.if.end75_crit_edge
  %73 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_fs_info.i, align 16
  call void @mutex_unlock(ptr noundef %74) #10
  br label %cleanup

out_err:                                          ; preds = %if.end22.out_err_crit_edge, %if.then21, %entry.out_err_crit_edge
  %.str.89.sink = phi ptr [ @.str.85, %if.then21 ], [ @.str.29, %entry.out_err_crit_edge ], [ @.str.89, %if.end22.out_err_crit_edge ]
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.89.sink) #13
  %75 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @mutex_unlock(ptr noundef %76) #10
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end75
  %retval.0 = phi i32 [ -22, %out_err ], [ 0, %if.end75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeshift) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chkdsk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %errs) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chk) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eas) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lowercase) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %umask) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpfs_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %sb_uid = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %sb_uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %sb_uid, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call1 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %5) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.91, i32 noundef %call1) #10
  %sb_gid = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %sb_gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack94 = load i32, ptr %sb_gid, align 4
  %7 = insertvalue [1 x i32] undef, i32 %.unpack94, 0
  %call3 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.92, i32 noundef %call3) #10
  %sb_mode = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %sb_mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sb_mode, align 4
  %10 = and i16 %9, 511
  %11 = xor i16 %10, 511
  %and = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.93, i32 noundef %and) #10
  %sb_lowercase = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %sb_lowercase, align 2
  %13 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.94) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load4 = load i16, ptr %sb_lowercase, align 2
  %15 = and i16 %bf.load4, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool8.not = icmp eq i16 %15, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.95) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %16 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load12 = load i16, ptr %sb_lowercase, align 2
  %17 = and i16 %bf.load12, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %17)
  %cmp = icmp eq i16 %17, 2048
  br i1 %cmp, label %if.then17, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.96) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end10.if.end18_crit_edge
  %18 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load19 = load i16, ptr %sb_lowercase, align 2
  %19 = and i16 %bf.load19, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool23.not = icmp eq i16 %19, 0
  br i1 %tobool23.not, label %if.then24, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.97) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end18.if.end25_crit_edge
  %20 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load27 = load i16, ptr %sb_lowercase, align 2
  %21 = and i16 %bf.load27, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %21)
  %cmp31 = icmp eq i16 %21, 8192
  br i1 %cmp31, label %if.then33, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.98) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end25.if.end34_crit_edge
  %22 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load35 = load i16, ptr %sb_lowercase, align 2
  %23 = and i16 %bf.load35, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool39.not = icmp eq i16 %23, 0
  br i1 %tobool39.not, label %if.then40, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.99) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end34.if.end41_crit_edge
  %24 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load43 = load i16, ptr %sb_lowercase, align 2
  %25 = and i16 %bf.load43, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %25)
  %cmp47 = icmp eq i16 %25, 128
  br i1 %cmp47, label %if.then49, label %if.end41.if.end50_crit_edge

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then49:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.100) #10
  %26 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load51.pr = load i16, ptr %sb_lowercase, align 2
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end41.if.end50_crit_edge
  %bf.load51 = phi i16 [ %bf.load51.pr, %if.then49 ], [ %bf.load43, %if.end41.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load51)
  %tobool54.not = icmp ult i16 %bf.load51, 16384
  br i1 %tobool54.not, label %if.then55, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.101) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end50.if.end56_crit_edge
  %27 = ptrtoint ptr %sb_lowercase to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load58 = load i16, ptr %sb_lowercase, align 2
  %bf.lshr59.mask = and i16 %bf.load58, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr59.mask)
  %cmp61 = icmp eq i16 %bf.lshr59.mask, 16384
  br i1 %cmp61, label %if.then63, label %if.end56.if.end64_crit_edge

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then63:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.102) #10
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end56.if.end64_crit_edge
  %sb_timeshift = getelementptr inbounds %struct.hpfs_sb_info, ptr %3, i32 0, i32 17
  %28 = ptrtoint ptr %sb_timeshift to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sb_timeshift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool65.not = icmp eq i32 %29, 0
  br i1 %tobool65.not, label %if.end64.if.end68_crit_edge, label %if.then66

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.103, i32 noundef %29) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end64.if.end68_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unmark_dirty(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #10
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !217
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 10
  %1 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %3 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_bdev, align 4
  %call1 = tail call i32 @sync_blockdev(ptr noundef %4) #10
  %call2 = call ptr @hpfs_map_sector(ptr noundef %s, i32 noundef 17, ptr noundef nonnull %bh, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chkdsk = getelementptr inbounds %struct.hpfs_sb_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %sb_chkdsk to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %sb_chkdsk, align 2
  %bf.lshr = lshr i16 %bf.load, 6
  %bf.clear = and i16 %bf.lshr, 3
  %bf.lshr7 = lshr i16 %bf.load, 8
  %bf.clear8 = and i16 %bf.lshr7, 1
  %8 = xor i16 %bf.clear8, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %bf.clear, i16 %8)
  %cmp = icmp ugt i16 %bf.clear, %8
  %dirty = getelementptr inbounds %struct.hpfs_spare_block, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %dirty to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load11 = load i16, ptr %dirty, align 4
  %bf.shl = select i1 %cmp, i16 256, i16 0
  %bf.clear12 = and i16 %bf.load11, -257
  %bf.set = or i16 %bf.shl, %bf.clear12
  store i16 %bf.set, ptr %dirty, align 4
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %sb_chkdsk14 = getelementptr inbounds %struct.hpfs_sb_info, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %sb_chkdsk14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load15 = load i16, ptr %sb_chkdsk14, align 2
  %13 = and i16 %bf.load15, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp19.not = icmp eq i16 %13, 0
  %14 = shl i16 %bf.load15, 6
  %15 = and i16 %14, 16384
  %16 = xor i16 %15, 16384
  %17 = select i1 %cmp19.not, i16 0, i16 %16
  %bf.clear32 = and i16 %bf.set, -16385
  %bf.set33 = or i16 %17, %bf.clear32
  %18 = ptrtoint ptr %dirty to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %bf.set33, ptr %dirty, align 4
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %20) #10
  %21 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bh, align 4
  %call35 = call i32 @sync_dirty_buffer(ptr noundef %22) #10
  %23 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.then3.cleanup_crit_edge, label %if.then.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %24) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lazy_free_sbi(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -156
  %sb_cp_table.i = getelementptr i8, ptr %rcu, i32 -20
  %0 = ptrtoint ptr %sb_cp_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb_cp_table.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  %sb_bmp_dir.i = getelementptr i8, ptr %rcu, i32 -16
  %2 = ptrtoint ptr %sb_bmp_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sb_bmp_dir.i, align 4
  tail call void @kfree(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hpfs_prefetch_bitmap(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.hpfs_inode_info, ptr %foo, i32 0, i32 11
  tail call void @inode_init_once(ptr noundef %vfs_inode) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !86, !88, !89, !90, !92, !94, !95, !96, !98, !100, !102, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !171, !173, !174, !175, !177, !178, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hpfs/super.c", i32 67, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hpfs_error._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hpfs_error._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hpfs/super.c", i32 73, i32 4}
!8 = !{ptr @hpfs_error._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hpfs_error._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/hpfs/super.c", i32 75, i32 10}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hpfs/super.c", i32 78, i32 5}
!14 = !{ptr @hpfs_error._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hpfs_error._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hpfs/super.c", i32 80, i32 5}
!18 = !{ptr @hpfs_error._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hpfs_error._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/hpfs/super.c", i32 85, i32 5}
!22 = !{ptr @hpfs_error._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hpfs_error._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/hpfs/super.c", i32 87, i32 4}
!26 = !{ptr @hpfs_error._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hpfs_error._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/hpfs/super.c", i32 89, i32 3}
!30 = !{ptr @hpfs_error._entry.19, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hpfs_error._entry_ptr.21, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/hpfs/super.c", i32 105, i32 17}
!34 = !{ptr @__UNIQUE_ID_alias269, !35, !"__UNIQUE_ID_alias269", i1 false, i1 false}
!35 = !{!"../fs/hpfs/super.c", i32 768, i32 1}
!36 = !{ptr @__initcall__kmod_hpfs__270_791_init_hpfs_fs6, !37, !"__initcall__kmod_hpfs__270_791_init_hpfs_fs6", i1 false, i1 false}
!37 = !{!"../fs/hpfs/super.c", i32 791, i32 1}
!38 = !{ptr @__exitcall_exit_hpfs_fs, !39, !"__exitcall_exit_hpfs_fs", i1 false, i1 false}
!39 = !{!"../fs/hpfs/super.c", i32 792, i32 1}
!40 = !{ptr @__UNIQUE_ID_file271, !41, !"__UNIQUE_ID_file271", i1 false, i1 false}
!41 = !{!"../fs/hpfs/super.c", i32 793, i32 1}
!42 = !{ptr @__UNIQUE_ID_license272, !41, !"__UNIQUE_ID_license272", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!45 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/hpfs/super.c", i32 763, i32 11}
!52 = !{ptr @hpfs_fs_type, !53, !"hpfs_fs_type", i1 false, i1 false}
!53 = !{!"../fs/hpfs/super.c", i32 761, i32 32}
!54 = !{ptr @hpfs_fill_super.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../fs/hpfs/super.c", i32 563, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../fs/hpfs/super.c", i32 566, i32 8}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../fs/hpfs/super.c", i32 567, i32 8}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/hpfs/super.c", i32 578, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @hpfs_fill_super._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @hpfs_fill_super._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/hpfs/super.c", i32 598, i32 4}
!68 = !{ptr @hpfs_fill_super._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @hpfs_fill_super._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/hpfs/super.c", i32 604, i32 3}
!72 = !{ptr @hpfs_fill_super._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @hpfs_fill_super._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/hpfs/super.c", i32 606, i32 3}
!76 = !{ptr @hpfs_fill_super._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @hpfs_fill_super._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/hpfs/super.c", i32 642, i32 17}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/hpfs/super.c", i32 657, i32 4}
!82 = !{ptr @hpfs_fill_super._entry.41, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @hpfs_fill_super._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/hpfs/super.c", i32 660, i32 17}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/hpfs/super.c", i32 671, i32 4}
!88 = !{ptr @hpfs_fill_super._entry.45, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @hpfs_fill_super._entry_ptr.47, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/hpfs/super.c", i32 675, i32 17}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/hpfs/super.c", i32 677, i32 4}
!94 = !{ptr @hpfs_fill_super._entry.49, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @hpfs_fill_super._entry_ptr.51, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/hpfs/super.c", i32 683, i32 18}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/hpfs/super.c", i32 689, i32 105}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/hpfs/super.c", i32 690, i32 72}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/hpfs/super.c", i32 691, i32 64}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/hpfs/super.c", i32 697, i32 3}
!106 = !{ptr @hpfs_fill_super._entry.56, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @hpfs_fill_super._entry_ptr.58, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/hpfs/super.c", i32 702, i32 4}
!110 = !{ptr @hpfs_fill_super._entry.59, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @hpfs_fill_super._entry_ptr.61, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/hpfs/super.c", i32 724, i32 35}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/hpfs/super.c", i32 726, i32 17}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/hpfs/super.c", i32 325, i32 28}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../fs/hpfs/super.c", i32 338, i32 21}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../fs/hpfs/super.c", i32 345, i32 21}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/hpfs/super.c", i32 291, i32 13}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/hpfs/super.c", i32 292, i32 12}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/hpfs/super.c", i32 293, i32 12}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/hpfs/super.c", i32 294, i32 14}
!130 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/hpfs/super.c", i32 295, i32 19}
!132 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/hpfs/super.c", i32 296, i32 18}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/hpfs/super.c", i32 297, i32 19}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/hpfs/super.c", i32 298, i32 21}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/hpfs/super.c", i32 299, i32 21}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/hpfs/super.c", i32 300, i32 17}
!142 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/hpfs/super.c", i32 301, i32 15}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/hpfs/super.c", i32 302, i32 18}
!146 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/hpfs/super.c", i32 303, i32 15}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/hpfs/super.c", i32 304, i32 15}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/hpfs/super.c", i32 305, i32 15}
!152 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/hpfs/super.c", i32 306, i32 18}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/hpfs/super.c", i32 307, i32 22}
!156 = !{ptr @.str.83, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/hpfs/super.c", i32 308, i32 22}
!158 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/hpfs/super.c", i32 309, i32 18}
!160 = !{ptr @tokens, !161, !"tokens", i1 false, i1 false}
!161 = !{!"../fs/hpfs/super.c", i32 290, i32 28}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/hpfs/super.c", i32 418, i32 2}
!164 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @hpfs_help._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @hpfs_help._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @hpfs_sops, !168, !"hpfs_sops", i1 false, i1 false}
!168 = !{!"../fs/hpfs/super.c", i32 526, i32 38}
!169 = !{ptr @hpfs_inode_cachep, !170, !"hpfs_inode_cachep", i1 false, i1 false}
!170 = !{!"../fs/hpfs/super.c", i32 230, i32 28}
!171 = !{ptr @.str.87, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/hpfs/super.c", i32 464, i32 3}
!173 = !{ptr @hpfs_remount_fs._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @hpfs_remount_fs._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.89, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/hpfs/super.c", i32 472, i32 3}
!177 = !{ptr @hpfs_remount_fs._entry.88, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @hpfs_remount_fs._entry_ptr.90, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/hpfs/super.c", i32 498, i32 18}
!181 = !{ptr @.str.92, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/hpfs/super.c", i32 499, i32 18}
!183 = !{ptr @.str.93, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../fs/hpfs/super.c", i32 500, i32 18}
!185 = !{ptr @.str.94, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/hpfs/super.c", i32 502, i32 19}
!187 = !{ptr @.str.95, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/hpfs/super.c", i32 504, i32 19}
!189 = !{ptr @.str.96, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/hpfs/super.c", i32 506, i32 19}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/hpfs/super.c", i32 508, i32 19}
!193 = !{ptr @.str.98, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../fs/hpfs/super.c", i32 510, i32 19}
!195 = !{ptr @.str.99, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/hpfs/super.c", i32 512, i32 19}
!197 = !{ptr @.str.100, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/hpfs/super.c", i32 514, i32 19}
!199 = !{ptr @.str.101, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/hpfs/super.c", i32 516, i32 19}
!201 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/hpfs/super.c", i32 518, i32 19}
!203 = !{ptr @.str.103, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../fs/hpfs/super.c", i32 520, i32 19}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/hpfs/super.c", i32 255, i32 40}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{!"auto-init"}
!218 = !{!"branch_weights", i32 2000, i32 1}
!219 = !{i64 5291680}
!220 = !{i64 5291877}
!221 = !{i64 2152777110}
