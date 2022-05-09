; ModuleID = '/llk/IR_all_yes/fs/omfs/inode.c_pt.bc'
source_filename = "../fs/omfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.match_token = type { i32, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.omfs_sb_info = type { i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.omfs_inode = type { %struct.omfs_header, i64, i64, i64, [35 x i8], i8, i32, [64 x i8], [256 x i8], i64 }
%struct.omfs_header = type { i64, i32, i16, [2 x i8], i8, i8, i8, i8, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.omfs_super_block = type { [256 x i8], i64, i64, i32, i32, i32, i32 }
%struct.omfs_root_block = type { %struct.omfs_header, i64, i64, i64, i64, i32, i32, i64, [256 x i8] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
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

@__UNIQUE_ID_author270 = internal constant [46 x i8] c"omfs.author=Bob Copeland <me@bobcopeland.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description271 = internal constant [60 x i8] c"omfs.description=OMFS (ReplayTV/Karma) Filesystem for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file272 = internal constant [23 x i8] c"omfs.file=fs/omfs/omfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [17 x i8] c"omfs.license=GPL\00", section ".modinfo", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@omfs_aops = external dso_local constant %struct.address_space_operations, align 4
@omfs_dir_inops = external dso_local constant %struct.inode_operations, align 128
@omfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@omfs_file_inops = external dso_local constant %struct.inode_operations, align 128
@omfs_file_operations = external dso_local constant %struct.file_operations, align 4
@__UNIQUE_ID_alias274 = internal constant [19 x i8] c"omfs.alias=fs-omfs\00", section ".modinfo", align 1
@omfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.3, i32 1, ptr null, ptr null, ptr @omfs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_omfs__275_625_init_omfs_fs6 = internal global ptr @init_omfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_omfs_fs = internal global ptr @exit_omfs_fs, section ".exitcall.exit", align 4
@__omfs_write_inode._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014omfs: unknown file type: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__omfs_write_inode\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/omfs/inode.c\00", [16 x i8] zeroinitializer }, align 32
@__omfs_write_inode._entry_ptr = internal global ptr @__omfs_write_inode._entry, section ".printk_index", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"omfs\00", [27 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013omfs: Invalid superblock (%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omfs_fill_super\00", [16 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry_ptr = internal global ptr @omfs_fill_super._entry, section ".printk_index", align 4
@omfs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sbi->s_bitmap_lock\00", [44 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013omfs: sysblock number (%llx) is out of range\0A\00", [48 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry_ptr.10 = internal global ptr @omfs_fill_super._entry.8, section ".printk_index", align 4
@omfs_fill_super._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013omfs: sysblock size (%d) is out of range\0A\00", [52 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry_ptr.13 = internal global ptr @omfs_fill_super._entry.11, section ".printk_index", align 4
@omfs_fill_super._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013omfs: block size (%d) is out of range\0A\00", [55 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry_ptr.16 = internal global ptr @omfs_fill_super._entry.14, section ".printk_index", align 4
@omfs_fill_super._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013omfs: block count discrepancy between super and root blocks (%llx, %llx)\0A\00", [52 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry_ptr.19 = internal global ptr @omfs_fill_super._entry.17, section ".printk_index", align 4
@omfs_fill_super._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013omfs: free space bitmap location is corrupt (%llx, total blocks %llx)\0A\00", [55 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry_ptr.22 = internal global ptr @omfs_fill_super._entry.20, section ".printk_index", align 4
@omfs_fill_super._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.6, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013omfs: cluster size out of range (%d)\00", [57 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry_ptr.25 = internal global ptr @omfs_fill_super._entry.23, section ".printk_index", align 4
@omfs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr @omfs_write_inode, ptr null, ptr @omfs_evict_inode, ptr @omfs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omfs_statfs, ptr null, ptr null, ptr @omfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.6, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017omfs: Mounted volume %s\0A\00", [37 x i8] zeroinitializer }, align 32
@omfs_fill_super._entry_ptr.28 = internal global ptr @omfs_fill_super._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [6 x %struct.match_token], [48 x i8] } { [6 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.31 }, %struct.match_token { i32 1, ptr @.str.32 }, %struct.match_token { i32 2, ptr @.str.33 }, %struct.match_token { i32 3, ptr @.str.34 }, %struct.match_token { i32 4, ptr @.str.35 }, %struct.match_token { i32 5, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"umask=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmask=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fmask=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",umask=%o\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",dmask=%o\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",fmask=%o\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 68, i64 70]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"omfs_fs_type\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 606, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 125, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 608, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 493, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 504, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 507, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 513, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 520, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 548, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 557, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 565, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [10 x i8] c"omfs_sops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 321, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 587, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 412, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 394, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 395, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 396, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 397, i32 14 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 398, i32 14 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 399, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 302, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 305, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 310, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 313, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [19 x i8] c"../fs/omfs/inode.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 315, i32 18 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias274, ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__exitcall_exit_omfs_fs, ptr @__initcall__kmod_omfs__275_625_init_omfs_fs6, ptr @__omfs_write_inode._entry, ptr @__omfs_write_inode._entry_ptr, ptr @exit_omfs_fs, ptr @omfs_fill_super._entry, ptr @omfs_fill_super._entry.11, ptr @omfs_fill_super._entry.14, ptr @omfs_fill_super._entry.17, ptr @omfs_fill_super._entry.20, ptr @omfs_fill_super._entry.23, ptr @omfs_fill_super._entry.26, ptr @omfs_fill_super._entry.8, ptr @omfs_fill_super._entry_ptr, ptr @omfs_fill_super._entry_ptr.10, ptr @omfs_fill_super._entry_ptr.13, ptr @omfs_fill_super._entry_ptr.16, ptr @omfs_fill_super._entry_ptr.19, ptr @omfs_fill_super._entry_ptr.22, ptr @omfs_fill_super._entry_ptr.25, ptr @omfs_fill_super._entry_ptr.28, ptr @omfs_fs_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @omfs_fill_super.__key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @omfs_sops, ptr @.str.27, ptr @.str.29, ptr @tokens, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_fill_super._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_fill_super._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_fill_super._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_fill_super._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_fill_super._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_fill_super._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omfs_fill_super._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omfs_bread(ptr nocapture noundef readonly %sb, i64 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %block)
  %cmp.not = icmp ugt i64 %3, %block
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %s_block_shift.i = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %s_block_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_block_shift.i, align 8
  %sh_prom.i = zext i32 %5 to i64
  %shl.i = shl i64 %block, %sh_prom.i
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %7, i64 noundef %shl.i, i32 noundef %9, i32 noundef 8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omfs_new_inode(ptr nocapture noundef readonly %dir, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %new_block = alloca i64, align 8
  %len = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_block) #9
  %0 = ptrtoint ptr %new_block to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %new_block, align 8, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !107
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call ptr @new_inode(ptr noundef %3) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_mirrors = getelementptr inbounds %struct.omfs_sb_info, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %s_mirrors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_mirrors, align 4
  %call6 = call i32 @omfs_allocate_range(ptr noundef %7, i32 noundef %9, i32 noundef %9, ptr noundef nonnull %new_block, ptr noundef nonnull %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %fail

if.end9:                                          ; preds = %if.end
  %10 = ptrtoint ptr %new_block to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %new_block, align 8
  %conv = trunc i64 %11 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %i_ino, align 8
  call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call2, ptr noundef null, i16 noundef zeroext %mode) #9
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @omfs_aops, ptr %a_ops, align 4
  %i_atime = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call2) #9
  %16 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %17 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %18 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %19 = and i16 %mode, -4096
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i16 %19, label %if.end9.sw.epilog_crit_edge [
    i16 16384, label %sw.bb
    i16 -32768, label %sw.bb12
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %i_op = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %21 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @omfs_dir_inops, ptr %i_op, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 44
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @omfs_dir_operations, ptr %22, align 8
  %s_sys_blocksize = getelementptr inbounds %struct.omfs_sb_info, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %s_sys_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_sys_blocksize, align 8
  %conv11 = zext i32 %25 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 14
  %26 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv11, ptr %i_size, align 8
  call void @inc_nlink(ptr noundef nonnull %call2) #9
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %i_op13 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %27 = ptrtoint ptr %i_op13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @omfs_file_inops, ptr %i_op13, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 44
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @omfs_file_operations, ptr %28, align 8
  %i_size14 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 14
  %30 = ptrtoint ptr %i_size14 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %i_size14, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb, %if.end9.sw.epilog_crit_edge
  %31 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_ino, align 8
  call void @__insert_inode_hash(ptr noundef nonnull %call2, i32 noundef %32) #9
  call void @__mark_inode_dirty(ptr noundef nonnull %call2, i32 noundef 7) #9
  br label %cleanup

fail:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @make_bad_inode(ptr noundef nonnull %call2) #9
  call void @iput(ptr noundef nonnull %call2) #9
  %33 = inttoptr i32 %call6 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %33, %fail ], [ %call2, %sw.epilog ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_block) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omfs_allocate_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omfs_sync_inode(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__omfs_write_inode(ptr noundef %inode, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__omfs_write_inode(ptr nocapture noundef readonly %inode, i32 noundef %wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp.not.i = icmp ugt i64 %7, %conv
  br i1 %cmp.not.i, label %omfs_bread.exit, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

omfs_bread.exit:                                  ; preds = %entry
  %s_block_shift.i.i = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %s_block_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_block_shift.i.i, align 8
  %sh_prom.i.i = zext i32 %9 to i64
  %shl.i.i = shl i64 %conv, %sh_prom.i.i
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %11, i64 noundef %shl.i.i, i32 noundef %13, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %omfs_bread.exit.out_crit_edge, label %if.end

omfs_bread.exit.out_crit_edge:                    ; preds = %omfs_bread.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %omfs_bread.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %conv4 = zext i32 %17 to i64
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv4, ptr %15, align 8
  %19 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inode, align 8
  %and = and i16 %20, -4096
  %21 = zext i16 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %and, label %do.end [
    i16 16384, label %if.end.if.end20_crit_edge
    i16 -32768, label %if.then13
  ]

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv5 = zext i16 %20 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv5) #12
  br label %brelse.exit122

if.end20:                                         ; preds = %if.then13, %if.end.if.end20_crit_edge
  %.sink = phi i8 [ 70, %if.then13 ], [ 68, %if.end.if.end20_crit_edge ]
  %i_type14 = getelementptr inbounds %struct.omfs_inode, ptr %15, i32 0, i32 5
  %22 = ptrtoint ptr %i_type14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %i_type14, align 1
  %s_sys_blocksize = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %s_sys_blocksize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_sys_blocksize, align 8
  %sub = add i32 %24, -24
  %h_body_size = getelementptr inbounds %struct.omfs_header, ptr %15, i32 0, i32 1
  %25 = ptrtoint ptr %h_body_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %h_body_size, align 8
  %h_version = getelementptr %struct.omfs_header, ptr %15, i32 0, i32 4
  %26 = ptrtoint ptr %h_version to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %h_version, align 8
  %h_type = getelementptr %struct.omfs_header, ptr %15, i32 0, i32 5
  %27 = ptrtoint ptr %h_type to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 101, ptr %h_type, align 1
  %h_magic = getelementptr %struct.omfs_header, ptr %15, i32 0, i32 6
  %28 = ptrtoint ptr %h_magic to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -46, ptr %h_magic, align 2
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %29 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_size, align 8
  %i_size25 = getelementptr inbounds %struct.omfs_inode, ptr %15, i32 0, i32 9
  %31 = ptrtoint ptr %i_size25 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %i_size25, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %32 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_ctime, align 8
  %mul = mul i64 %33, 1000
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tv_nsec, align 8
  %add = add i32 %35, 999
  %div = sdiv i32 %add, 1000
  %conv27 = sext i32 %div to i64
  %add28 = add i64 %mul, %conv27
  %i_ctime29 = getelementptr inbounds %struct.omfs_inode, ptr %15, i32 0, i32 3
  %36 = ptrtoint ptr %i_ctime29 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add28, ptr %i_ctime29, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 24
  %call.i = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %add.ptr.i, i32 noundef %sub) #9
  %h_crc.i = getelementptr %struct.omfs_header, ptr %15, i32 0, i32 2
  %37 = ptrtoint ptr %h_crc.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %call.i, ptr %h_crc.i, align 4
  %38 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %15, align 1
  %arrayidx3.i = getelementptr i8, ptr %15, i32 1
  %40 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx3.1.i = getelementptr i8, ptr %15, i32 2
  %42 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx3.1.i, align 1
  %arrayidx3.2.i = getelementptr i8, ptr %15, i32 3
  %44 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx3.2.i, align 1
  %arrayidx3.3.i = getelementptr i8, ptr %15, i32 4
  %46 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx3.3.i, align 1
  %arrayidx3.4.i = getelementptr i8, ptr %15, i32 5
  %48 = ptrtoint ptr %arrayidx3.4.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx3.4.i, align 1
  %arrayidx3.5.i = getelementptr i8, ptr %15, i32 6
  %50 = ptrtoint ptr %arrayidx3.5.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx3.5.i, align 1
  %arrayidx3.6.i = getelementptr i8, ptr %15, i32 7
  %52 = ptrtoint ptr %arrayidx3.6.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx3.6.i, align 1
  %54 = ptrtoint ptr %h_body_size to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %h_body_size, align 1
  %arrayidx3.8.i = getelementptr i8, ptr %15, i32 9
  %56 = ptrtoint ptr %arrayidx3.8.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx3.8.i, align 1
  %arrayidx3.9.i = getelementptr i8, ptr %15, i32 10
  %58 = ptrtoint ptr %arrayidx3.9.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx3.9.i, align 1
  %arrayidx3.10.i = getelementptr i8, ptr %15, i32 11
  %60 = ptrtoint ptr %arrayidx3.10.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx3.10.i, align 1
  %62 = lshr i16 %call.i, 8
  %63 = trunc i16 %62 to i8
  %conv4.12.i = trunc i16 %call.i to i8
  %arrayidx3.13.i = getelementptr i8, ptr %15, i32 14
  %64 = ptrtoint ptr %arrayidx3.13.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx3.13.i, align 1
  %arrayidx3.14.i = getelementptr i8, ptr %15, i32 15
  %66 = ptrtoint ptr %arrayidx3.14.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx3.14.i, align 1
  %68 = ptrtoint ptr %h_version to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %h_version, align 1
  %70 = ptrtoint ptr %h_type to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %h_type, align 1
  %72 = ptrtoint ptr %h_magic to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %h_magic, align 1
  %xor519.i = xor i8 %39, %conv4.12.i
  %xor5.120.i = xor i8 %xor519.i, %63
  %xor5.221.i = xor i8 %xor5.120.i, %41
  %xor5.322.i = xor i8 %xor5.221.i, %43
  %xor5.423.i = xor i8 %xor5.322.i, %45
  %xor5.524.i = xor i8 %xor5.423.i, %47
  %xor5.625.i = xor i8 %xor5.524.i, %49
  %xor5.726.i = xor i8 %xor5.625.i, %51
  %xor5.827.i = xor i8 %xor5.726.i, %53
  %xor5.928.i = xor i8 %xor5.827.i, %55
  %xor5.1029.i = xor i8 %xor5.928.i, %57
  %xor5.11.i = xor i8 %xor5.1029.i, %59
  %xor5.12.i = xor i8 %xor5.11.i, %61
  %xor5.13.i = xor i8 %xor5.12.i, %65
  %xor5.14.i = xor i8 %xor5.13.i, %67
  %xor5.15.i = xor i8 %xor5.14.i, %69
  %xor5.16.i = xor i8 %xor5.15.i, %71
  %xor5.17.i = xor i8 %xor5.16.i, %73
  %h_check_xor.i = getelementptr inbounds %struct.omfs_header, ptr %15, i32 0, i32 7
  %74 = ptrtoint ptr %h_check_xor.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %xor5.17.i, ptr %h_check_xor.i, align 1
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool30.not = icmp eq i32 %wait, 0
  br i1 %tobool30.not, label %if.end20.if.end39_crit_edge, label %if.then31

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then31:                                        ; preds = %if.end20
  %call32 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i.i) #9
  %75 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %call.i.i, align 4
  %77 = and i32 %76, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool34.not = icmp eq i32 %77, 0
  br i1 %tobool34.not, label %if.then31.if.end39_crit_edge, label %land.lhs.true

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i103 = and i32 %79, 1
  %80 = xor i32 %and1.i.i103, 1
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true, %if.then31.if.end39_crit_edge, %if.end20.if.end39_crit_edge
  %sync_failed.0 = phi i32 [ 0, %if.then31.if.end39_crit_edge ], [ 0, %if.end20.if.end39_crit_edge ], [ %80, %land.lhs.true ]
  %s_mirrors = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 4
  %81 = ptrtoint ptr %s_mirrors to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_mirrors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp40131 = icmp ugt i32 %82, 1
  br i1 %cmp40131, label %for.body.lr.ph, label %if.end39.for.end_crit_edge

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end39
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %sync_failed.1133 = phi i32 [ %sync_failed.0, %for.body.lr.ph ], [ %sync_failed.2, %brelse.exit.for.body_crit_edge ]
  %i.0132 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %brelse.exit.for.body_crit_edge ]
  %83 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i_sb, align 4
  %85 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %i_ino, align 8
  %add44 = add i32 %86, %i.0132
  %conv45 = zext i32 %add44 to i64
  %s_fs_info.i.i107 = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 33
  %87 = ptrtoint ptr %s_fs_info.i.i107 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_fs_info.i.i107, align 16
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %88, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %conv45)
  %cmp.not.i108 = icmp ugt i64 %90, %conv45
  br i1 %cmp.not.i108, label %omfs_bread.exit117, label %for.body.brelse.exit122_crit_edge

for.body.brelse.exit122_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit122

omfs_bread.exit117:                               ; preds = %for.body
  %s_block_shift.i.i109 = getelementptr inbounds %struct.omfs_sb_info, ptr %88, i32 0, i32 7
  %91 = ptrtoint ptr %s_block_shift.i.i109 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %s_block_shift.i.i109, align 8
  %sh_prom.i.i110 = zext i32 %92 to i64
  %shl.i.i111 = shl i64 %conv45, %sh_prom.i.i110
  %s_bdev.i.i112 = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 26
  %93 = ptrtoint ptr %s_bdev.i.i112 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_bdev.i.i112, align 4
  %s_blocksize.i.i113 = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 3
  %95 = ptrtoint ptr %s_blocksize.i.i113 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %s_blocksize.i.i113, align 16
  %call.i.i114 = tail call ptr @__bread_gfp(ptr noundef %94, i64 noundef %shl.i.i111, i32 noundef %96, i32 noundef 8) #9
  %tobool47.not = icmp eq ptr %call.i.i114, null
  br i1 %tobool47.not, label %omfs_bread.exit117.brelse.exit122_crit_edge, label %if.end49

omfs_bread.exit117.brelse.exit122_crit_edge:      ; preds = %omfs_bread.exit117
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit122

if.end49:                                         ; preds = %omfs_bread.exit117
  %b_data50 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i114, i32 0, i32 5
  %97 = ptrtoint ptr %b_data50 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %b_data50, align 4
  %99 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %b_data, align 4
  %101 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %b_size, align 8
  %103 = call ptr @memcpy(ptr %98, ptr %100, i32 %102)
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i.i114) #9
  br i1 %tobool30.not, label %if.end49.brelse.exit_crit_edge, label %if.then53

if.end49.brelse.exit_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then53:                                        ; preds = %if.end49
  %call54 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i.i114) #9
  %104 = ptrtoint ptr %call.i.i114 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %call.i.i114, align 4
  %106 = and i32 %105, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool56.not = icmp eq i32 %106, 0
  br i1 %tobool56.not, label %if.then53.brelse.exit_crit_edge, label %land.lhs.true57

if.then53.brelse.exit_crit_edge:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

land.lhs.true57:                                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %call.i.i114 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %call.i.i114, align 4
  %and1.i.i106 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i106)
  %tobool59.not = icmp eq i32 %and1.i.i106, 0
  %spec.select102 = select i1 %tobool59.not, i32 1, i32 %sync_failed.1133
  br label %brelse.exit

brelse.exit:                                      ; preds = %land.lhs.true57, %if.then53.brelse.exit_crit_edge, %if.end49.brelse.exit_crit_edge
  %sync_failed.2 = phi i32 [ %sync_failed.1133, %if.then53.brelse.exit_crit_edge ], [ %sync_failed.1133, %if.end49.brelse.exit_crit_edge ], [ %spec.select102, %land.lhs.true57 ]
  tail call void @__brelse(ptr noundef nonnull %call.i.i114) #9
  %inc = add nuw i32 %i.0132, 1
  %109 = ptrtoint ptr %s_mirrors to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %s_mirrors, align 4
  %cmp40 = icmp ult i32 %inc, %110
  br i1 %cmp40, label %brelse.exit.for.body_crit_edge, label %brelse.exit.for.end_crit_edge

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %brelse.exit.for.end_crit_edge, %if.end39.for.end_crit_edge
  %sync_failed.1.lcssa = phi i32 [ %sync_failed.0, %if.end39.for.end_crit_edge ], [ %sync_failed.2, %brelse.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync_failed.1.lcssa)
  %tobool63.not = icmp eq i32 %sync_failed.1.lcssa, 0
  %cond = select i1 %tobool63.not, i32 0, i32 -5
  br label %brelse.exit122

brelse.exit122:                                   ; preds = %for.end, %omfs_bread.exit117.brelse.exit122_crit_edge, %for.body.brelse.exit122_crit_edge, %do.end
  %ret.0 = phi i32 [ %cond, %for.end ], [ -5, %do.end ], [ -5, %omfs_bread.exit117.brelse.exit122_crit_edge ], [ -5, %for.body.brelse.exit122_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #9
  br label %out

out:                                              ; preds = %brelse.exit122, %omfs_bread.exit.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %brelse.exit122 ], [ -5, %omfs_bread.exit.out_crit_edge ], [ -5, %entry.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omfs_iget(ptr noundef %sb, i32 noundef %ino) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %conv = zext i32 %ino to i64
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp.not.i = icmp ugt i64 %9, %conv
  br i1 %cmp.not.i, label %omfs_bread.exit, label %if.end5.iget_failed_crit_edge

if.end5.iget_failed_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %iget_failed

omfs_bread.exit:                                  ; preds = %if.end5
  %s_block_shift.i.i = getelementptr inbounds %struct.omfs_sb_info, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %s_block_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_block_shift.i.i, align 8
  %sh_prom.i.i = zext i32 %11 to i64
  %shl.i.i = shl i64 %conv, %sh_prom.i.i
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %13, i64 noundef %shl.i.i, i32 noundef %15, i32 noundef 8) #9
  %tobool7.not = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not, label %omfs_bread.exit.iget_failed_crit_edge, label %if.end9

omfs_bread.exit.iget_failed_crit_edge:            ; preds = %omfs_bread.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %iget_failed

if.end9:                                          ; preds = %omfs_bread.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv)
  %cmp.not = icmp eq i64 %19, %conv
  br i1 %cmp.not, label %if.end13, label %brelse.exit352

if.end13:                                         ; preds = %if.end9
  %i_uid = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %s_uid = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_uid, align 8
  %22 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %s_gid = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_gid, align 4
  %25 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %i_gid, align 8
  %i_ctime = getelementptr inbounds %struct.omfs_inode, ptr %17, i32 0, i32 3
  %26 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_ctime, align 8
  %conv33 = trunc i64 %27 to i32
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %27, i32 0) #13, !srcloc !108
  %asmresult.i = extractvalue { i64, i32 } %28, 0
  %asmresult4.i = extractvalue { i64, i32 } %28, 1
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %27, i64 %asmresult.i, i32 %asmresult4.i) #13, !srcloc !109
  %asmresult10.i = extractvalue { i64, i32 } %29, 0
  %div179347 = lshr i64 %asmresult10.i, 9
  %conv180 = trunc i64 %div179347 to i32
  %mul181.neg = mul i32 %conv180, -1000
  %sub182 = add i32 %mul181.neg, %conv33
  %mul201 = mul i32 %sub182, 1000
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %30 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %div179347, ptr %i_atime, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %31 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %div179347, ptr %i_mtime, align 8
  %i_ctime203 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  %32 = ptrtoint ptr %i_ctime203 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %div179347, ptr %i_ctime203, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15, i32 1
  %33 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul201, ptr %tv_nsec, align 8
  %tv_nsec207 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16, i32 1
  %34 = ptrtoint ptr %tv_nsec207 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul201, ptr %tv_nsec207, align 8
  %tv_nsec209 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %tv_nsec209 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul201, ptr %tv_nsec209, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %36 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @omfs_aops, ptr %a_ops, align 4
  %i_type = getelementptr inbounds %struct.omfs_inode, ptr %17, i32 0, i32 5
  %39 = ptrtoint ptr %i_type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %i_type, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %40, label %if.end13.brelse.exit_crit_edge [
    i8 68, label %sw.bb
    i8 70, label %sw.bb216
  ]

if.end13.brelse.exit_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %s_dmask = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 13
  %42 = ptrtoint ptr %s_dmask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_dmask, align 8
  %44 = trunc i32 %43 to i16
  %45 = and i16 %44, 511
  %conv214 = xor i16 %45, 16895
  %46 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv214, ptr %call1, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %47 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @omfs_dir_inops, ptr %i_op, align 8
  %48 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @omfs_dir_operations, ptr %48, align 8
  %s_sys_blocksize = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %s_sys_blocksize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_sys_blocksize, align 8
  %conv215 = zext i32 %51 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %52 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv215, ptr %i_size, align 8
  tail call void @inc_nlink(ptr noundef nonnull %call1) #9
  br label %brelse.exit

sw.bb216:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %s_fmask = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 14
  %53 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_fmask, align 4
  %55 = trunc i32 %54 to i16
  %56 = and i16 %55, 511
  %conv220 = xor i16 %56, -32257
  %57 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv220, ptr %call1, align 8
  %58 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @omfs_file_operations, ptr %58, align 8
  %i_size222 = getelementptr inbounds %struct.omfs_inode, ptr %17, i32 0, i32 9
  %60 = ptrtoint ptr %i_size222 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %i_size222, align 8
  %i_size223 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %62 = ptrtoint ptr %i_size223 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %i_size223, align 8
  br label %brelse.exit

brelse.exit:                                      ; preds = %sw.bb216, %sw.bb, %if.end13.brelse.exit_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #9
  tail call void @unlock_new_inode(ptr noundef nonnull %call1) #9
  br label %cleanup

brelse.exit352:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #9
  br label %iget_failed

iget_failed:                                      ; preds = %brelse.exit352, %omfs_bread.exit.iget_failed_crit_edge, %if.end5.iget_failed_crit_edge
  tail call void @iget_failed(ptr noundef nonnull %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %iget_failed, %brelse.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %iget_failed ], [ %call1, %brelse.exit ], [ %call1, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_omfs_fs() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @omfs_fs_type) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_omfs_fs() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_filesystem(ptr noundef nonnull @omfs_fs_type) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omfs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @omfs_fill_super) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %option.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_uid = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 11
  %2 = tail call i32 @llvm.read_register.i32(metadata !97) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %uid = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uid, align 4
  %10 = ptrtoint ptr %s_uid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %s_uid, align 8
  %s_gid = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 12
  %11 = load ptr, ptr %task, align 8
  %cred8 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred8, align 16
  %gid = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gid, align 4
  %16 = ptrtoint ptr %s_gid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %s_gid, align 4
  %call9 = tail call i32 @current_umask() #9
  %s_fmask = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 14
  %17 = ptrtoint ptr %s_fmask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call9, ptr %s_fmask, align 4
  %s_dmask = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %s_dmask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call9, ptr %s_dmask, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %19 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data, ptr %options.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #9
  %20 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option.i) #9
  %21 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %option.i, align 4, !annotation !107
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %if.end.if.end13_crit_edge, label %while.cond.preheader.i

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

while.cond.preheader.i:                           ; preds = %if.end
  %call75.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.29) #9
  %cmp.not76.i = icmp eq ptr %call75.i, null
  br i1 %cmp.not76.i, label %while.cond.preheader.i.if.end13_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end13_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call77.i = phi ptr [ %call.i, %cleanup.i.while.body.i_crit_edge ], [ %call75.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %22 = ptrtoint ptr %call77.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call77.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i = icmp eq i8 %23, 0
  br i1 %tobool1.not.i, label %while.body.i.cleanup.i_crit_edge, label %if.end3.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end3.i:                                        ; preds = %while.body.i
  %call4.i = call i32 @match_token(ptr noundef nonnull %call77.i, ptr noundef nonnull @tokens, ptr noundef nonnull %args.i) #9
  %24 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call4.i, label %if.end3.i.parse_options.exit.thread_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb18.i
    i32 2, label %sw.bb41.i
    i32 3, label %sw.bb47.i
    i32 4, label %sw.bb54.i
  ]

if.end3.i.parse_options.exit.thread_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_options.exit.thread

sw.bb.i:                                          ; preds = %if.end3.i
  %call5.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %sw.bb.i.parse_options.exit.thread_crit_edge

sw.bb.i.parse_options.exit.thread_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_options.exit.thread

if.end8.i:                                        ; preds = %sw.bb.i
  %25 = call i32 @llvm.read_register.i32(metadata !97) #9
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 99
  %29 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %30, i32 0, i32 25
  %31 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns.i, align 4
  %33 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %option.i, align 4
  %call12.i = call i32 @make_kuid(ptr noundef %32, i32 noundef %34) #9
  %35 = ptrtoint ptr %s_uid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call12.i, ptr %s_uid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i)
  %cmp.i.not.i = icmp eq i32 %call12.i, -1
  br i1 %cmp.i.not.i, label %if.end8.i.parse_options.exit.thread_crit_edge, label %if.end8.i.cleanup.i_crit_edge

if.end8.i.cleanup.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end8.i.parse_options.exit.thread_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_options.exit.thread

sw.bb18.i:                                        ; preds = %if.end3.i
  %call20.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %sw.bb18.i.parse_options.exit.thread_crit_edge

sw.bb18.i.parse_options.exit.thread_crit_edge:    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_options.exit.thread

if.end23.i:                                       ; preds = %sw.bb18.i
  %36 = call i32 @llvm.read_register.i32(metadata !97) #9
  %and.i72.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i72.i to ptr
  %task31.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task31.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task31.i, align 8
  %cred32.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 99
  %40 = ptrtoint ptr %cred32.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cred32.i, align 16
  %user_ns33.i = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 25
  %42 = ptrtoint ptr %user_ns33.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %user_ns33.i, align 4
  %44 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %option.i, align 4
  %call34.i = call i32 @make_kgid(ptr noundef %43, i32 noundef %45) #9
  %46 = ptrtoint ptr %s_gid to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call34.i, ptr %s_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call34.i)
  %cmp.i73.not.i = icmp eq i32 %call34.i, -1
  br i1 %cmp.i73.not.i, label %if.end23.i.parse_options.exit.thread_crit_edge, label %if.end23.i.cleanup.i_crit_edge

if.end23.i.cleanup.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end23.i.parse_options.exit.thread_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_options.exit.thread

sw.bb41.i:                                        ; preds = %if.end3.i
  %call43.i = call i32 @match_octal(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %sw.bb41.i.parse_options.exit.thread_crit_edge

sw.bb41.i.parse_options.exit.thread_crit_edge:    ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_options.exit.thread

if.end46.i:                                       ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %option.i, align 4
  %49 = ptrtoint ptr %s_dmask to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %s_dmask, align 8
  %50 = ptrtoint ptr %s_fmask to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %s_fmask, align 4
  br label %cleanup.i

sw.bb47.i:                                        ; preds = %if.end3.i
  %call49.i = call i32 @match_octal(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %sw.bb47.i.parse_options.exit.thread_crit_edge

sw.bb47.i.parse_options.exit.thread_crit_edge:    ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_options.exit.thread

if.end52.i:                                       ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %option.i, align 4
  %53 = ptrtoint ptr %s_dmask to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %s_dmask, align 8
  br label %cleanup.i

sw.bb54.i:                                        ; preds = %if.end3.i
  %call56.i = call i32 @match_octal(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %sw.bb54.i.parse_options.exit.thread_crit_edge

sw.bb54.i.parse_options.exit.thread_crit_edge:    ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_options.exit.thread

if.end59.i:                                       ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %option.i, align 4
  %56 = ptrtoint ptr %s_fmask to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %s_fmask, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end59.i, %if.end52.i, %if.end46.i, %if.end23.i.cleanup.i_crit_edge, %if.end8.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %call.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.29) #9
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %cleanup.i.if.end13_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.if.end13_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

parse_options.exit.thread:                        ; preds = %sw.bb54.i.parse_options.exit.thread_crit_edge, %sw.bb47.i.parse_options.exit.thread_crit_edge, %sw.bb41.i.parse_options.exit.thread_crit_edge, %if.end23.i.parse_options.exit.thread_crit_edge, %sw.bb18.i.parse_options.exit.thread_crit_edge, %if.end8.i.parse_options.exit.thread_crit_edge, %sw.bb.i.parse_options.exit.thread_crit_edge, %if.end3.i.parse_options.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  br label %if.then141

if.end13:                                         ; preds = %cleanup.i.if.end13_crit_edge, %while.cond.preheader.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %57 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 4294967295, ptr %s_maxbytes, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %58 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1000000, ptr %s_time_gran, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %59 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 36
  %60 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 18446744073709551, ptr %s_time_max, align 64
  %call14 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 512) #9
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %61 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %63 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_blocksize.i, align 16
  %call.i230 = call ptr @__bread_gfp(ptr noundef %62, i64 noundef 0, i32 noundef %64, i32 noundef 8) #9
  %tobool16.not = icmp eq ptr %call.i230, null
  br i1 %tobool16.not, label %if.end13.if.then141_crit_edge, label %if.end18

if.end13.if.then141_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then141

if.end18:                                         ; preds = %if.end13
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i230, i32 0, i32 5
  %65 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data, align 4
  %s_magic = getelementptr inbounds %struct.omfs_super_block, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_magic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1030144633, i32 %68)
  %cmp.not = icmp eq i32 %68, -1030144633
  br i1 %cmp.not, label %if.end29, label %if.then19

if.then19:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool20.not = icmp eq i32 %silent, 0
  br i1 %tobool20.not, label %do.end24, label %if.then19.end.thread266_crit_edge

if.then19.end.thread266_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %end.thread266

do.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %68) #12
  br label %end.thread266

if.end29:                                         ; preds = %if.end18
  %s_magic30 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %69 = ptrtoint ptr %s_magic30 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1030144633, ptr %s_magic30, align 4
  %s_num_blocks = getelementptr inbounds %struct.omfs_super_block, ptr %66, i32 0, i32 2
  %70 = ptrtoint ptr %s_num_blocks to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %s_num_blocks, align 8
  %72 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %call7.i.i, align 8
  %s_blocksize = getelementptr inbounds %struct.omfs_super_block, ptr %66, i32 0, i32 4
  %73 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_blocksize, align 4
  %s_blocksize32 = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %s_blocksize32 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %s_blocksize32, align 8
  %s_mirrors = getelementptr inbounds %struct.omfs_super_block, ptr %66, i32 0, i32 5
  %76 = ptrtoint ptr %s_mirrors to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_mirrors, align 8
  %s_mirrors33 = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %78 = ptrtoint ptr %s_mirrors33 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %s_mirrors33, align 4
  %s_root_block = getelementptr inbounds %struct.omfs_super_block, ptr %66, i32 0, i32 1
  %79 = ptrtoint ptr %s_root_block to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %s_root_block, align 8
  %s_root_ino = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %s_root_ino to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %s_root_ino, align 8
  %s_sys_blocksize = getelementptr inbounds %struct.omfs_super_block, ptr %66, i32 0, i32 6
  %82 = ptrtoint ptr %s_sys_blocksize to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_sys_blocksize, align 4
  %s_sys_blocksize34 = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %s_sys_blocksize34 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %s_sys_blocksize34, align 8
  %s_bitmap_lock = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %s_bitmap_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @omfs_fill_super.__key) #9
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %86)
  %cmp39 = icmp ugt i64 %86, 2147483648
  br i1 %cmp39, label %do.end43, label %if.end47

do.end43:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %86) #12
  br label %end.thread266

if.end47:                                         ; preds = %if.end29
  %87 = ptrtoint ptr %s_sys_blocksize34 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_sys_blocksize34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %88)
  %cmp49 = icmp ugt i32 %88, 4096
  br i1 %cmp49, label %do.end53, label %if.end57

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %88) #12
  br label %end.thread266

if.end57:                                         ; preds = %if.end47
  %89 = ptrtoint ptr %s_blocksize32 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_blocksize32, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %88)
  %cmp60 = icmp ult i32 %90, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %90)
  %cmp62 = icmp ugt i32 %90, 8192
  %or.cond = or i1 %cmp60, %cmp62
  br i1 %or.cond, label %do.end66, label %if.end70

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %90) #12
  br label %end.thread266

if.end70:                                         ; preds = %if.end57
  %call72 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %88) #9
  %91 = ptrtoint ptr %s_blocksize32 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %s_blocksize32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.i = icmp eq i32 %92, 0
  %93 = call i32 @llvm.ctlz.i32(i32 %92, i1 true) #9, !range !110
  %sub.i.i = sub nuw nsw i32 32, %93
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %94 = ptrtoint ptr %s_sys_blocksize34 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %s_sys_blocksize34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i231 = icmp eq i32 %95, 0
  %96 = call i32 @llvm.ctlz.i32(i32 %95, i1 true) #9, !range !110
  %sub.i.i232.neg = or i32 %96, -32
  %cond.i.i233.neg = select i1 %tobool.not.i.i231, i32 0, i32 %sub.i.i232.neg
  %sub = add nsw i32 %cond.i.i233.neg, %cond.i.i
  %s_block_shift = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %97 = ptrtoint ptr %s_block_shift to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %sub, ptr %s_block_shift, align 8
  %98 = ptrtoint ptr %s_root_block to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %s_root_block, align 8
  %100 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_fs_info, align 16
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %101, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %103, i64 %99)
  %cmp.not.i234 = icmp ugt i64 %103, %99
  br i1 %cmp.not.i234, label %omfs_bread.exit, label %if.end70.end.thread266_crit_edge

if.end70.end.thread266_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %end.thread266

omfs_bread.exit:                                  ; preds = %if.end70
  %s_block_shift.i.i = getelementptr inbounds %struct.omfs_sb_info, ptr %101, i32 0, i32 7
  %104 = ptrtoint ptr %s_block_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %s_block_shift.i.i, align 8
  %sh_prom.i.i = zext i32 %105 to i64
  %shl.i.i = shl i64 %99, %sh_prom.i.i
  %106 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_bdev.i, align 4
  %108 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_blocksize.i, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %107, i64 noundef %shl.i.i, i32 noundef %109, i32 noundef 8) #9
  %tobool79.not = icmp eq ptr %call.i.i, null
  br i1 %tobool79.not, label %omfs_bread.exit.end.thread266_crit_edge, label %if.end81

omfs_bread.exit.end.thread266_crit_edge:          ; preds = %omfs_bread.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %end.thread266

if.end81:                                         ; preds = %omfs_bread.exit
  %b_data82 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %110 = ptrtoint ptr %b_data82 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %b_data82, align 4
  %r_bitmap = getelementptr inbounds %struct.omfs_root_block, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %r_bitmap to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %r_bitmap, align 8
  %s_bitmap_ino = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %s_bitmap_ino to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %s_bitmap_ino, align 8
  %r_clustersize = getelementptr inbounds %struct.omfs_root_block, ptr %111, i32 0, i32 6
  %115 = ptrtoint ptr %r_clustersize to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %r_clustersize, align 4
  %s_clustersize = getelementptr inbounds %struct.omfs_sb_info, ptr %call7.i.i, i32 0, i32 6
  %117 = ptrtoint ptr %s_clustersize to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %s_clustersize, align 4
  %118 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %call7.i.i, align 8
  %r_num_blocks = getelementptr inbounds %struct.omfs_root_block, ptr %111, i32 0, i32 2
  %120 = ptrtoint ptr %r_num_blocks to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %r_num_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %119, i64 %121)
  %cmp84.not = icmp eq i64 %119, %121
  br i1 %cmp84.not, label %if.end93, label %do.end88

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i64 noundef %119, i64 noundef %121) #12
  br label %end

if.end93:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %113)
  %cmp95.not = icmp ne i64 %113, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %113, i64 %119)
  %cmp98 = icmp ugt i64 %113, %119
  %or.cond228 = select i1 %cmp95.not, i1 %cmp98, i1 false
  br i1 %or.cond228, label %do.end102, label %if.end107

do.end102:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i64 noundef %113, i64 noundef %119) #12
  br label %end

if.end107:                                        ; preds = %if.end93
  %122 = add i32 %116, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %122)
  %123 = icmp ult i32 %122, -8
  br i1 %123, label %do.end116, label %if.end120

do.end116:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %116) #12
  br label %end

if.end120:                                        ; preds = %if.end107
  %124 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_fs_info, align 16
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %125, align 8
  %sub.i = add i64 %127, 7
  %div91.i = lshr i64 %sub.i, 3
  %conv.i = trunc i64 %div91.i to i32
  %128 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %s_blocksize.i, align 16
  %add1.i = add i32 %129, -1
  %sub2.i = add i32 %add1.i, %conv.i
  %div4.i = udiv i32 %sub2.i, %129
  %s_bitmap_ino.i = getelementptr inbounds %struct.omfs_sb_info, ptr %125, i32 0, i32 1
  %130 = ptrtoint ptr %s_bitmap_ino.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %s_bitmap_ino.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %131)
  %cmp.i = icmp eq i64 %131, -1
  br i1 %cmp.i, label %if.end120.if.end124_crit_edge, label %if.end.i238

if.end120.if.end124_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.end.i238:                                      ; preds = %if.end120
  %s_imap_size.i = getelementptr inbounds %struct.omfs_sb_info, ptr %125, i32 0, i32 9
  %132 = ptrtoint ptr %s_imap_size.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %div4.i, ptr %s_imap_size.i, align 8
  %133 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div4.i, i32 4) #9
  %134 = extractvalue { i32, i1 } %133, 1
  br i1 %134, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !111

kcalloc.exit.thread.i:                            ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #11
  %s_imap96.i = getelementptr inbounds %struct.omfs_sb_info, ptr %125, i32 0, i32 8
  %135 = ptrtoint ptr %s_imap96.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %s_imap96.i, align 4
  br label %omfs_get_imap.exit

if.end7.i.i.i:                                    ; preds = %if.end.i238
  %136 = extractvalue { i32, i1 } %133, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %136, i32 noundef 3520) #15
  %s_imap.i = getelementptr inbounds %struct.omfs_sb_info, ptr %125, i32 0, i32 8
  %137 = ptrtoint ptr %s_imap.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call8.i.i.i, ptr %s_imap.i, align 4
  %tobool.not.i239 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i239, label %if.end7.i.i.i.omfs_get_imap.exit_crit_edge, label %if.end9.i

if.end7.i.i.i.omfs_get_imap.exit_crit_edge:       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omfs_get_imap.exit

if.end9.i:                                        ; preds = %if.end7.i.i.i
  %138 = ptrtoint ptr %s_bitmap_ino.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %s_bitmap_ino.i, align 8
  %s_block_shift.i.i240 = getelementptr inbounds %struct.omfs_sb_info, ptr %125, i32 0, i32 7
  %140 = ptrtoint ptr %s_block_shift.i.i240 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %s_block_shift.i.i240, align 8
  %sh_prom.i.i241 = zext i32 %141 to i64
  %shl.i.i242 = shl i64 %139, %sh_prom.i.i241
  %142 = ptrtoint ptr %125 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %125, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i242, i64 %143)
  %cmp13.not.i = icmp ult i64 %shl.i.i242, %143
  br i1 %cmp13.not.i, label %for.cond.preheader.i, label %if.end9.i.omfs_get_imap.exit_crit_edge

if.end9.i.omfs_get_imap.exit_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omfs_get_imap.exit

for.cond.preheader.i:                             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp18106.i = icmp sgt i32 %conv.i, 0
  br i1 %cmp18106.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end124_crit_edge

for.cond.preheader.i.if.end124_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %brelse.exit94.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %block.0110.i = phi i64 [ %inc.i, %brelse.exit94.i.for.body.i_crit_edge ], [ %shl.i.i242, %for.cond.preheader.i.for.body.i_crit_edge ]
  %ptr.0109.i = phi ptr [ %incdec.ptr.i, %brelse.exit94.i.for.body.i_crit_edge ], [ %call8.i.i.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %count.0107.i = phi i32 [ %sub37.i, %brelse.exit94.i.for.body.i_crit_edge ], [ %conv.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %inc.i = add i64 %block.0110.i, 1
  %144 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_bdev.i, align 4
  %146 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %s_blocksize.i, align 16
  %call.i.i244 = call ptr @__bread_gfp(ptr noundef %145, i64 noundef %block.0110.i, i32 noundef %147, i32 noundef 8) #9
  %tobool21.not.i245 = icmp eq ptr %call.i.i244, null
  br i1 %tobool21.not.i245, label %for.body.i.nomem_free.i_crit_edge, label %if.end23.i246

for.body.i.nomem_free.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nomem_free.i

if.end23.i246:                                    ; preds = %for.body.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i244, i32 0, i32 5
  %148 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %b_data.i, align 4
  %150 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %s_blocksize.i, align 16
  %call25.i = call ptr @kmemdup(ptr noundef %149, i32 noundef %151, i32 noundef 3264) #9
  %152 = ptrtoint ptr %ptr.0109.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call25.i, ptr %ptr.0109.i, align 4
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %brelse.exit.i, label %if.end28.i

brelse.exit.i:                                    ; preds = %if.end23.i246
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %call.i.i244) #9
  br label %nomem_free.i

if.end28.i:                                       ; preds = %if.end23.i246
  %153 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %s_blocksize.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %count.0107.i)
  %cmp30.i = icmp ugt i32 %154, %count.0107.i
  br i1 %cmp30.i, label %if.then32.i, label %if.end28.i.brelse.exit94.i_crit_edge

if.end28.i.brelse.exit94.i_crit_edge:             ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit94.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %call25.i, i32 %count.0107.i
  %sub34.i = sub i32 %154, %count.0107.i
  %155 = call ptr @memset(ptr %add.ptr.i, i32 255, i32 %sub34.i)
  br label %brelse.exit94.i

brelse.exit94.i:                                  ; preds = %if.then32.i, %if.end28.i.brelse.exit94.i_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i.i244) #9
  %incdec.ptr.i = getelementptr ptr, ptr %ptr.0109.i, i32 1
  %156 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %s_blocksize.i, align 16
  %sub37.i = sub i32 %count.0107.i, %157
  %cmp18.i = icmp sgt i32 %sub37.i, 0
  br i1 %cmp18.i, label %brelse.exit94.i.for.body.i_crit_edge, label %brelse.exit94.i.if.end124_crit_edge

brelse.exit94.i.if.end124_crit_edge:              ; preds = %brelse.exit94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

brelse.exit94.i.for.body.i_crit_edge:             ; preds = %brelse.exit94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nomem_free.i:                                     ; preds = %brelse.exit.i, %for.body.i.nomem_free.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %sub2.i)
  %cmp39111.not.i = icmp ugt i32 %129, %sub2.i
  br i1 %cmp39111.not.i, label %nomem_free.i.for.end45.i_crit_edge, label %for.body41.preheader.i

nomem_free.i.for.end45.i_crit_edge:               ; preds = %nomem_free.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end45.i

for.body41.preheader.i:                           ; preds = %nomem_free.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div4.i, i32 1) #9
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.body41.preheader.i
  %count.1112.i = phi i32 [ %inc44.i, %for.body41.i.for.body41.i_crit_edge ], [ 0, %for.body41.preheader.i ]
  %158 = ptrtoint ptr %s_imap.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %s_imap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %159, i32 %count.1112.i
  %160 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i, align 4
  call void @kfree(ptr noundef %161) #9
  %inc44.i = add nuw i32 %count.1112.i, 1
  %exitcond.not.i = icmp eq i32 %inc44.i, %umax.i
  br i1 %exitcond.not.i, label %for.body41.i.for.end45.i_crit_edge, label %for.body41.i.for.body41.i_crit_edge

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41.i

for.body41.i.for.end45.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end45.i

for.end45.i:                                      ; preds = %for.body41.i.for.end45.i_crit_edge, %nomem_free.i.for.end45.i_crit_edge
  %162 = ptrtoint ptr %s_imap.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %s_imap.i, align 4
  call void @kfree(ptr noundef %163) #9
  br label %omfs_get_imap.exit

omfs_get_imap.exit:                               ; preds = %for.end45.i, %if.end9.i.omfs_get_imap.exit_crit_edge, %if.end7.i.i.i.omfs_get_imap.exit_crit_edge, %kcalloc.exit.thread.i
  %s_imap98.i = phi ptr [ %s_imap96.i, %kcalloc.exit.thread.i ], [ %s_imap.i, %if.end9.i.omfs_get_imap.exit_crit_edge ], [ %s_imap.i, %if.end7.i.i.i.omfs_get_imap.exit_crit_edge ], [ %s_imap.i, %for.end45.i ]
  %164 = ptrtoint ptr %s_imap98.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %s_imap98.i, align 4
  %165 = ptrtoint ptr %s_imap_size.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %s_imap_size.i, align 8
  br label %end

if.end124:                                        ; preds = %brelse.exit94.i.if.end124_crit_edge, %for.cond.preheader.i.if.end124_crit_edge, %if.end120.if.end124_crit_edge
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %166 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @omfs_sops, ptr %s_op, align 4
  %r_root_dir = getelementptr inbounds %struct.omfs_root_block, ptr %111, i32 0, i32 3
  %167 = ptrtoint ptr %r_root_dir to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %r_root_dir, align 8
  %conv = trunc i64 %168 to i32
  %call125 = call ptr @omfs_iget(ptr noundef %sb, i32 noundef %conv)
  %cmp.i249 = icmp ugt ptr %call125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %call125 to i32
  br label %end

if.end129:                                        ; preds = %if.end124
  %call130 = call ptr @d_make_root(ptr noundef %call125) #9
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %170 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call130, ptr %s_root, align 64
  %tobool132.not = icmp eq ptr %call130, null
  br i1 %tobool132.not, label %if.end129.end_crit_edge, label %do.end137

if.end129.end_crit_edge:                          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

do.end137:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %r_name = getelementptr inbounds %struct.omfs_root_block, ptr %111, i32 0, i32 8
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %r_name) #12
  br label %end

end.thread266:                                    ; preds = %omfs_bread.exit.end.thread266_crit_edge, %if.end70.end.thread266_crit_edge, %do.end66, %do.end53, %do.end43, %do.end24, %if.then19.end.thread266_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i230) #9
  br label %if.then141

end:                                              ; preds = %do.end137, %if.end129.end_crit_edge, %if.then127, %omfs_get_imap.exit, %do.end116, %do.end102, %do.end88
  %ret.0 = phi i32 [ -22, %do.end88 ], [ -22, %do.end102 ], [ -22, %do.end116 ], [ -12, %omfs_get_imap.exit ], [ %169, %if.then127 ], [ 0, %do.end137 ], [ -12, %if.end129.end_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call.i.i) #9
  call void @__brelse(ptr noundef nonnull %call.i230) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool140.not = icmp eq i32 %ret.0, 0
  br i1 %tobool140.not, label %end.cleanup_crit_edge, label %end.if.then141_crit_edge

end.if.then141_crit_edge:                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then141

end.cleanup_crit_edge:                            ; preds = %end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then141:                                       ; preds = %end.if.then141_crit_edge, %end.thread266, %if.end13.if.then141_crit_edge, %parse_options.exit.thread
  %ret.2264 = phi i32 [ %ret.0, %end.if.then141_crit_edge ], [ -22, %end.thread266 ], [ -22, %if.end13.if.then141_crit_edge ], [ -22, %parse_options.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then141, %end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.2264, %if.then141 ], [ 0, %end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_write_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %0 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @__omfs_write_inode(ptr noundef %inode, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omfs_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #9
  tail call void @clear_inode(ptr noundef %inode) #9
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %inode, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp = icmp eq i16 %5, -32768
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %i_size, align 8
  %call = tail call i32 @omfs_shrink_inode(ptr noundef %inode) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  %conv4 = zext i32 %10 to i64
  %call5 = tail call i32 @omfs_clear_range(ptr noundef %8, i64 noundef %conv4, i32 noundef 2) #9
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omfs_put_super(ptr nocapture noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_imap = getelementptr inbounds %struct.omfs_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %s_imap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_imap, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %1) #9
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %s_fs_info.i, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %and1.i.i = and i32 %7, 255
  %8 = lshr i32 %7, 12
  %shl.i.i = and i32 %8, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1030144633, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %f_bsize, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %3, align 8
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %15 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %f_blocks, align 8
  %16 = load i64, ptr %3, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %17 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %f_files, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %18 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 256, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %19 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %call3 = tail call i32 @omfs_count_free(ptr noundef %1) #9
  %conv = zext i32 %call3 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %20 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %f_ffree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %21 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %f_bavail, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %22 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv, ptr %f_bfree, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omfs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @current_umask() #9
  %s_uid = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 11
  %4 = tail call i32 @llvm.read_register.i32(metadata !97) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred, align 16
  %uid = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %uid, align 4
  %11 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %s_uid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %agg.tmp.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %.unpack, %agg.tmp.sroa.0.0.copyload
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %12) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %call7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_gid = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cred15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 99
  %15 = ptrtoint ptr %cred15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cred15, align 16
  %gid = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %17)
  %agg.tmp8.sroa.0.0.copyload = load i32, ptr %gid, align 4
  %18 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack69 = load i32, ptr %s_gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack69, i32 %agg.tmp8.sroa.0.0.copyload)
  %cmp.i71 = icmp eq i32 %.unpack69, %agg.tmp8.sroa.0.0.copyload
  br i1 %cmp.i71, label %if.end.if.end23_crit_edge, label %if.then19

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = insertvalue [1 x i32] undef, i32 %.unpack69, 0
  %call22 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %19) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %call22) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end.if.end23_crit_edge
  %s_dmask = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 13
  %20 = ptrtoint ptr %s_dmask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_dmask, align 8
  %s_fmask = getelementptr inbounds %struct.omfs_sb_info, ptr %3, i32 0, i32 14
  %22 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_fmask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp = icmp eq i32 %21, %23
  %conv27 = and i32 %call1, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv27)
  %cmp28.not = icmp eq i32 %21, %conv27
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  br i1 %cmp28.not, label %if.then25.if.end47_crit_edge, label %if.then30

if.then25.if.end47_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %21) #9
  br label %if.end47

if.else:                                          ; preds = %if.end23
  br i1 %cmp28.not, label %if.else.if.end39_crit_edge, label %if.then37

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %21) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.else.if.end39_crit_edge
  %24 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_fmask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv27)
  %cmp42.not = icmp eq i32 %25, %conv27
  br i1 %cmp42.not, label %if.end39.if.end47_crit_edge, label %if.then44

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %25) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end39.if.end47_crit_edge, %if.then30, %if.then25.if.end47_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omfs_shrink_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omfs_clear_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omfs_count_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.named.register.sp = !{!97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__UNIQUE_ID_author270, !1, !"__UNIQUE_ID_author270", i1 false, i1 false}
!1 = !{!"../fs/omfs/inode.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_description271, !3, !"__UNIQUE_ID_description271", i1 false, i1 false}
!3 = !{!"../fs/omfs/inode.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_file272, !5, !"__UNIQUE_ID_file272", i1 false, i1 false}
!5 = !{!"../fs/omfs/inode.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_license273, !5, !"__UNIQUE_ID_license273", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias274, !8, !"__UNIQUE_ID_alias274", i1 false, i1 false}
!8 = !{!"../fs/omfs/inode.c", i32 613, i32 1}
!9 = !{ptr @__initcall__kmod_omfs__275_625_init_omfs_fs6, !10, !"__initcall__kmod_omfs__275_625_init_omfs_fs6", i1 false, i1 false}
!10 = !{!"../fs/omfs/inode.c", i32 625, i32 1}
!11 = !{ptr @__exitcall_exit_omfs_fs, !12, !"__exitcall_exit_omfs_fs", i1 false, i1 false}
!12 = !{!"../fs/omfs/inode.c", i32 626, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/omfs/inode.c", i32 125, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__omfs_write_inode._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @__omfs_write_inode._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/omfs/inode.c", i32 608, i32 10}
!21 = !{ptr @omfs_fs_type, !22, !"omfs_fs_type", i1 false, i1 false}
!22 = !{!"../fs/omfs/inode.c", i32 606, i32 32}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../fs/omfs/inode.c", i32 470, i32 15}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../fs/omfs/inode.c", i32 471, i32 15}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/omfs/inode.c", i32 493, i32 4}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @omfs_fill_super._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @omfs_fill_super._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @omfs_fill_super.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../fs/omfs/inode.c", i32 504, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/omfs/inode.c", i32 507, i32 3}
!37 = !{ptr @omfs_fill_super._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @omfs_fill_super._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/omfs/inode.c", i32 513, i32 3}
!41 = !{ptr @omfs_fill_super._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @omfs_fill_super._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/omfs/inode.c", i32 520, i32 3}
!45 = !{ptr @omfs_fill_super._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @omfs_fill_super._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/omfs/inode.c", i32 548, i32 3}
!49 = !{ptr @omfs_fill_super._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @omfs_fill_super._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/omfs/inode.c", i32 557, i32 3}
!53 = !{ptr @omfs_fill_super._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @omfs_fill_super._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/omfs/inode.c", i32 565, i32 3}
!57 = !{ptr @omfs_fill_super._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @omfs_fill_super._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/omfs/inode.c", i32 587, i32 2}
!61 = !{ptr @omfs_fill_super._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @omfs_fill_super._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/omfs/inode.c", i32 412, i32 31}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../fs/omfs/inode.c", i32 422, i32 27}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../fs/omfs/inode.c", i32 429, i32 27}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/omfs/inode.c", i32 395, i32 12}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/omfs/inode.c", i32 396, i32 12}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/omfs/inode.c", i32 397, i32 14}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/omfs/inode.c", i32 398, i32 14}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/omfs/inode.c", i32 399, i32 14}
!79 = !{ptr @tokens, !80, !"tokens", i1 false, i1 false}
!80 = !{!"../fs/omfs/inode.c", i32 394, i32 28}
!81 = !{ptr @omfs_sops, !82, !"omfs_sops", i1 false, i1 false}
!82 = !{!"../fs/omfs/inode.c", i32 321, i32 38}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../fs/omfs/inode.c", i32 301, i32 26}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/omfs/inode.c", i32 302, i32 17}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../fs/omfs/inode.c", i32 304, i32 26}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/omfs/inode.c", i32 305, i32 17}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/omfs/inode.c", i32 310, i32 18}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/omfs/inode.c", i32 313, i32 18}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/omfs/inode.c", i32 315, i32 18}
!97 = !{!"sp"}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i64 713774, i64 713801, i64 713823, i64 713851}
!109 = !{i64 714182, i64 714209, i64 714242, i64 714263, i64 714290, i64 714316}
!110 = !{i32 0, i32 33}
!111 = !{!"branch_weights", i32 1, i32 2000}
