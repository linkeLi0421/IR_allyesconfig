; ModuleID = '/llk/IR_all_yes/fs/hfs/super.c_pt.bc'
source_filename = "../fs/hfs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.match_token = type { i32, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
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
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.substring_t = type { ptr, ptr }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.hfs_cat_rec = type { %struct.hfs_cat_file }
%struct.hfs_cat_file = type <{ i8, i8, i8, i8, %struct.hfs_finfo, i32, i16, i32, i32, i16, i32, i32, i32, i32, i32, %struct.hfs_fxinfo, i16, [3 x %struct.hfs_extent], [3 x %struct.hfs_extent], i32 }>
%struct.hfs_finfo = type { i32, i32, i16, %struct.hfs_point, i16 }
%struct.hfs_point = type { i16, i16 }
%struct.hfs_fxinfo = type { i16, [8 x i8], i16, i32 }
%struct.hfs_extent = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.hfs_inode_info = type { %struct.atomic_t, i32, i32, %struct.hfs_cat_key, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, i16, i16, i64, [3 x %struct.hfs_extent], i16, [3 x %struct.hfs_extent], i16, i16, i64, %struct.inode }
%struct.hfs_cat_key = type <{ i8, i8, i32, %struct.hfs_name }>
%struct.hfs_name = type { i8, [31 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.76 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.hfs_mdb = type <{ i16, i32, i32, i16, i16, i16, i16, i16, i32, i32, i16, i32, i16, [28 x i8], i32, i16, i32, i32, i32, i16, i32, i32, [32 x i8], i16, i32, i32, [3 x %struct.hfs_extent], i32, [3 x %struct.hfs_extent] }>

@__UNIQUE_ID_file285 = internal constant [20 x i8] c"hfs.file=fs/hfs/hfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [16 x i8] c"hfs.license=GPL\00", section ".modinfo", align 1
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@__UNIQUE_ID_alias287 = internal constant [17 x i8] c"hfs.alias=fs-hfs\00", section ".modinfo", align 1
@hfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr null, ptr null, ptr @hfs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@hfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_hfs__288_502_init_hfs_fs6 = internal global ptr @init_hfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_hfs_fs = internal global ptr @exit_hfs_fs, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hfs\00", [28 x i8] zeroinitializer }, align 32
@hfs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sbi->work_lock\00", [16 x i8] zeroinitializer }, align 32
@hfs_fill_super.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&sbi->mdb_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@hfs_fill_super.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&sbi->mdb_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@hfs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hfs: unable to parse mount options\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hfs_fill_super\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/hfs/super.c\00", [17 x i8] zeroinitializer }, align 32
@hfs_fill_super._entry_ptr = internal global ptr @hfs_fill_super._entry, section ".printk_index", align 4
@hfs_super_operations = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @hfs_alloc_inode, ptr null, ptr @hfs_free_inode, ptr null, ptr @hfs_write_inode, ptr null, ptr @hfs_evict_inode, ptr @hfs_put_super, ptr @hfs_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @hfs_statfs, ptr @hfs_remount, ptr null, ptr @hfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hfs_xattr_handlers = external dso_local global [0 x ptr], align 4
@hfs_fill_super.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sbi->bitmap_lock\00", [46 x i8] zeroinitializer }, align 32
@hfs_fill_super._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014hfs: can't find a HFS filesystem on dev %s\0A\00", [50 x i8] zeroinitializer }, align 32
@hfs_fill_super._entry_ptr.13 = internal global ptr @hfs_fill_super._entry.11, section ".printk_index", align 4
@hfs_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@hfs_fill_super._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013hfs: get root inode failed\0A\00", [34 x i8] zeroinitializer }, align 32
@hfs_fill_super._entry_ptr.16 = internal global ptr @hfs_fill_super._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [13 x %struct.match_token], [56 x i8] } { [13 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.68 }, %struct.match_token { i32 1, ptr @.str.69 }, %struct.match_token { i32 2, ptr @.str.70 }, %struct.match_token { i32 3, ptr @.str.71 }, %struct.match_token { i32 4, ptr @.str.72 }, %struct.match_token { i32 5, ptr @.str.73 }, %struct.match_token { i32 6, ptr @.str.74 }, %struct.match_token { i32 7, ptr @.str.75 }, %struct.match_token { i32 8, ptr @.str.76 }, %struct.match_token { i32 9, ptr @.str.77 }, %struct.match_token { i32 10, ptr @.str.78 }, %struct.match_token { i32 11, ptr @.str.79 }, %struct.match_token { i32 12, ptr null }], [56 x i8] zeroinitializer }, align 32
@parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.8, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013hfs: uid requires an argument\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse_options\00", [18 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr = internal global ptr @parse_options._entry, section ".printk_index", align 4
@parse_options._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.8, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013hfs: invalid uid %d\0A\00", [41 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.24 = internal global ptr @parse_options._entry.22, section ".printk_index", align 4
@parse_options._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.8, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013hfs: gid requires an argument\0A\00", [63 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.27 = internal global ptr @parse_options._entry.25, section ".printk_index", align 4
@parse_options._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.8, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013hfs: invalid gid %d\0A\00", [41 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.31 = internal global ptr @parse_options._entry.29, section ".printk_index", align 4
@parse_options._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.20, ptr @.str.8, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013hfs: umask requires a value\0A\00", [33 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.34 = internal global ptr @parse_options._entry.32, section ".printk_index", align 4
@parse_options._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.20, ptr @.str.8, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013hfs: file_umask requires a value\0A\00", [60 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.37 = internal global ptr @parse_options._entry.35, section ".printk_index", align 4
@parse_options._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.20, ptr @.str.8, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013hfs: dir_umask requires a value\0A\00", [61 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.40 = internal global ptr @parse_options._entry.38, section ".printk_index", align 4
@parse_options._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.20, ptr @.str.8, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013hfs: part requires an argument\0A\00", [62 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.43 = internal global ptr @parse_options._entry.41, section ".printk_index", align 4
@parse_options._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.20, ptr @.str.8, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfs: session requires an argument\0A\00", [59 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.46 = internal global ptr @parse_options._entry.44, section ".printk_index", align 4
@parse_options._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.20, ptr @.str.8, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013hfs: type requires a 4 character value\0A\00", [54 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.49 = internal global ptr @parse_options._entry.47, section ".printk_index", align 4
@parse_options._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.20, ptr @.str.8, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013hfs: creator requires a 4 character value\0A\00", [51 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.52 = internal global ptr @parse_options._entry.50, section ".printk_index", align 4
@parse_options._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.20, ptr @.str.8, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013hfs: unable to change codepage\0A\00", [62 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.55 = internal global ptr @parse_options._entry.53, section ".printk_index", align 4
@parse_options._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.20, ptr @.str.8, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfs: unable to load codepage \22%s\22\0A\00", [59 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.58 = internal global ptr @parse_options._entry.56, section ".printk_index", align 4
@parse_options._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.20, ptr @.str.8, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013hfs: unable to change iocharset\0A\00", [61 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.61 = internal global ptr @parse_options._entry.59, section ".printk_index", align 4
@parse_options._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.20, ptr @.str.8, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hfs: unable to load iocharset \22%s\22\0A\00", [58 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.64 = internal global ptr @parse_options._entry.62, section ".printk_index", align 4
@parse_options._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.20, ptr @.str.8, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hfs: unable to load default iocharset\0A\00", [55 x i8] zeroinitializer }, align 32
@parse_options._entry_ptr.67 = internal global ptr @parse_options._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"umask=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"file_umask=%o\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dir_umask=%o\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"part=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"session=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"type=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"creator=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quiet\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codepage=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iocharset=%s\00", [19 x i8] zeroinitializer }, align 32
@hfs_remount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.8, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\014hfs: filesystem was not cleanly unmounted, running fsck.hfs is recommended.  leaving read-only.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hfs_remount\00", [20 x i8] zeroinitializer }, align 32
@hfs_remount._entry_ptr = internal global ptr @hfs_remount._entry, section ".printk_index", align 4
@hfs_remount._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.8, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014hfs: filesystem is marked locked, leaving read-only.\0A\00", [40 x i8] zeroinitializer }, align 32
@hfs_remount._entry_ptr.84 = internal global ptr @hfs_remount._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"creator\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",uid=%u,gid=%u\00", [17 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",file_umask=%o\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",dir_umask=%o\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",part=%u\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",session=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",codepage=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",iocharset=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",quiet\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",= \09\0A\\\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", \09\0A\\\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hfs_inode_cache\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"hfs_fs_type\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 459, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"hfs_inode_cachep\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 29, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 461, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 392, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 393, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 397, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"hfs_super_operations\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 174, i32 38 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 404, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 409, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 447, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 242, i32 31 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 193, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 250, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 255, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 261, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 266, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 272, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 280, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 287, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 294, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 300, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 306, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 312, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 321, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 328, i32 5 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 336, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 343, i32 5 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 357, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 194, i32 13 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 195, i32 13 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 196, i32 15 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 197, i32 20 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 198, i32 19 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 199, i32 14 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 200, i32 17 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 201, i32 14 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 202, i32 17 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 203, i32 15 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 204, i32 18 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 205, i32 19 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 121, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 125, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 138, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 140, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 141, i32 18 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 145, i32 19 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 147, i32 19 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 149, i32 19 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 151, i32 19 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 153, i32 19 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 155, i32 19 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 157, i32 19 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 242, i32 22 }
@___asan_gen_.348 = private unnamed_addr constant [28 x i8] c"../include/linux/seq_file.h\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 245, i32 24 }
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.351 = private constant [18 x i8] c"../fs/hfs/super.c\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 479, i32 39 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_alias287, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__exitcall_exit_hfs_fs, ptr @__initcall__kmod_hfs__288_502_init_hfs_fs6, ptr @exit_hfs_fs, ptr @hfs_fill_super._entry, ptr @hfs_fill_super._entry.11, ptr @hfs_fill_super._entry.14, ptr @hfs_fill_super._entry_ptr, ptr @hfs_fill_super._entry_ptr.13, ptr @hfs_fill_super._entry_ptr.16, ptr @hfs_remount._entry, ptr @hfs_remount._entry.82, ptr @hfs_remount._entry_ptr, ptr @hfs_remount._entry_ptr.84, ptr @parse_options._entry, ptr @parse_options._entry.22, ptr @parse_options._entry.25, ptr @parse_options._entry.29, ptr @parse_options._entry.32, ptr @parse_options._entry.35, ptr @parse_options._entry.38, ptr @parse_options._entry.41, ptr @parse_options._entry.44, ptr @parse_options._entry.47, ptr @parse_options._entry.50, ptr @parse_options._entry.53, ptr @parse_options._entry.56, ptr @parse_options._entry.59, ptr @parse_options._entry.62, ptr @parse_options._entry.65, ptr @parse_options._entry_ptr, ptr @parse_options._entry_ptr.24, ptr @parse_options._entry_ptr.27, ptr @parse_options._entry_ptr.31, ptr @parse_options._entry_ptr.34, ptr @parse_options._entry_ptr.37, ptr @parse_options._entry_ptr.40, ptr @parse_options._entry_ptr.43, ptr @parse_options._entry_ptr.46, ptr @parse_options._entry_ptr.49, ptr @parse_options._entry_ptr.52, ptr @parse_options._entry_ptr.55, ptr @parse_options._entry_ptr.58, ptr @parse_options._entry_ptr.61, ptr @parse_options._entry_ptr.64, ptr @parse_options._entry_ptr.67, ptr @hfs_fs_type, ptr @hfs_inode_cachep, ptr @.str, ptr @hfs_fill_super.__key, ptr @.str.1, ptr @hfs_fill_super.__key.2, ptr @.str.3, ptr @hfs_fill_super.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @hfs_super_operations, ptr @hfs_fill_super.__key.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @tokens, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_fill_super.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_fill_super.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_super_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_fill_super.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_fill_super._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_fill_super._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_options._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_remount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_remount._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_mark_mdb_dirty(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_lock = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_queued = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 34
  %4 = ptrtoint ptr %work_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %work_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else.i, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dirty_writeback_interval to i32))
  %6 = load i32, ptr @dirty_writeback_interval, align 4
  %mul = mul i32 %6, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %7 = load ptr, ptr @system_long_wq, align 4
  %mdb_work = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 35
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %mdb_work, i32 noundef %call2.i) #10
  %8 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %work_queued, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else.i, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_hfs_fs() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @hfs_fs_type) #10
  tail call void @rcu_barrier() #10
  %0 = load ptr, ptr @hfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_hfs_fs() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.97, i32 noundef 1040, i32 noundef 0, i32 noundef 67117056, ptr noundef nonnull @hfs_init_once) #10
  store ptr %call, ptr @hfs_inode_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @hfs_fs_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @hfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hfs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @hfs_fill_super) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %tmp.i = alloca i32, align 4
  %fd = alloca %struct.hfs_find_data, align 4
  %rec = alloca %union.hfs_cat_rec, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd) #10
  %0 = call ptr @memset(ptr %fd, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %rec) #10
  %1 = call ptr @memset(ptr %rec, i32 255, i32 102)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 360) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sb1 = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 33
  %3 = ptrtoint ptr %sb1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sb, ptr %sb1, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %work_lock = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 36
  tail call void @__raw_spin_lock_init(ptr noundef %work_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @hfs_fill_super.__key, i16 noundef signext 3) #10
  %mdb_work = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 35
  tail call void @__init_work(ptr noundef %mdb_work, i32 noundef 0) #10
  %5 = ptrtoint ptr %mdb_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %mdb_work, align 8
  %lockdep_map = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @hfs_fill_super.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry12 = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 1
  %6 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry12, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @flush_mdb, ptr %func, align 4
  %timer = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 35, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @hfs_fill_super.__key.4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %9 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %options.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #10
  %10 = getelementptr inbounds %struct.substring_t, ptr %args.i, i32 0, i32 1
  %11 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %tmp.i, align 4, !annotation !188
  %s_uid.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 23
  %13 = tail call i32 @llvm.read_register.i32(metadata !178) #10
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 99
  %17 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cred.i, align 16
  %uid.i = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %uid.i, align 4
  %21 = ptrtoint ptr %s_uid.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %s_uid.i, align 8
  %s_gid.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 24
  %22 = load ptr, ptr %task.i, align 8
  %cred8.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 99
  %23 = ptrtoint ptr %cred8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cred8.i, align 16
  %gid.i = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gid.i, align 4
  %27 = ptrtoint ptr %s_gid.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %s_gid.i, align 4
  %s_file_umask.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 21
  %28 = ptrtoint ptr %s_file_umask.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 91, ptr %s_file_umask.i, align 4
  %s_dir_umask.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 22
  %29 = ptrtoint ptr %s_dir_umask.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 18, ptr %s_dir_umask.i, align 2
  %s_creator.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 20
  %30 = ptrtoint ptr %s_creator.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1061109567, ptr %s_creator.i, align 8
  %s_type.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %s_type.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1061109567, ptr %s_type.i, align 4
  %s_quiet.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 18
  %32 = ptrtoint ptr %s_quiet.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %s_quiet.i, align 8
  %part.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 26
  %33 = ptrtoint ptr %part.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %part.i, align 4
  %session.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 25
  %34 = ptrtoint ptr %session.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %session.i, align 8
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %if.end.if.end30_crit_edge, label %while.cond.preheader.i

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

while.cond.preheader.i:                           ; preds = %if.end
  %call9303.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.18) #10
  %cmp.not304.i = icmp eq ptr %call9303.i, null
  br i1 %cmp.not304.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %nls_io.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 27
  %nls_disk.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 28
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call9305.i = phi ptr [ %call9303.i, %while.body.lr.ph.i ], [ %call9.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %35 = ptrtoint ptr %call9305.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %call9305.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool10.not.i = icmp eq i8 %36, 0
  br i1 %tobool10.not.i, label %while.body.i.while.cond.backedge.i_crit_edge, label %if.end12.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

if.end12.i:                                       ; preds = %while.body.i
  %call13.i = call i32 @match_token(ptr noundef nonnull %call9305.i, ptr noundef nonnull @tokens, ptr noundef nonnull %args.i) #10
  %37 = zext i32 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13.i, label %if.end12.i.do.end28_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb44.i
    i32 2, label %sw.bb78.i
    i32 3, label %sw.bb92.i
    i32 4, label %sw.bb105.i
    i32 5, label %sw.bb118.i
    i32 6, label %sw.bb130.i
    i32 7, label %sw.bb142.i
    i32 8, label %sw.bb154.i
    i32 9, label %sw.bb166.i
    i32 10, label %sw.bb168.i
    i32 11, label %sw.bb193.i
  ]

if.end12.i.do.end28_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

sw.bb.i:                                          ; preds = %if.end12.i
  %call14.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %do.end19.i

do.end19.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #14
  br label %do.end28

if.end22.i:                                       ; preds = %sw.bb.i
  %38 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i, align 8
  %cred32.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 99
  %40 = ptrtoint ptr %cred32.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cred32.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 25
  %42 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %user_ns.i, align 4
  %44 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tmp.i, align 4
  %call33.i = call i32 @make_kuid(ptr noundef %43, i32 noundef %45) #10
  %46 = ptrtoint ptr %s_uid.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call33.i, ptr %s_uid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33.i)
  %cmp.i.not.i = icmp eq i32 %call33.i, -1
  br i1 %cmp.i.not.i, label %do.end40.i, label %if.end22.i.while.cond.backedge.i_crit_edge

if.end22.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

do.end40.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmp.i, align 4
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %48) #14
  br label %do.end28

sw.bb44.i:                                        ; preds = %if.end12.i
  %call46.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end54.i, label %do.end51.i

do.end51.i:                                       ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #12
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #14
  br label %do.end28

if.end54.i:                                       ; preds = %sw.bb44.i
  %49 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i, align 8
  %cred64.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 99
  %51 = ptrtoint ptr %cred64.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cred64.i, align 16
  %user_ns65.i = getelementptr inbounds %struct.cred, ptr %52, i32 0, i32 25
  %53 = ptrtoint ptr %user_ns65.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %user_ns65.i, align 4
  %55 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tmp.i, align 4
  %call66.i = call i32 @make_kgid(ptr noundef %54, i32 noundef %56) #10
  %57 = ptrtoint ptr %s_gid.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call66.i, ptr %s_gid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call66.i)
  %cmp.i289.not.i = icmp eq i32 %call66.i, -1
  br i1 %cmp.i289.not.i, label %do.end74.i, label %if.end54.i.while.cond.backedge.i_crit_edge

if.end54.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

do.end74.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tmp.i, align 4
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %59) #14
  br label %do.end28

sw.bb78.i:                                        ; preds = %if.end12.i
  %call80.i = call i32 @match_octal(ptr noundef nonnull %args.i, ptr noundef nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end88.i, label %do.end85.i

do.end85.i:                                       ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #12
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #14
  br label %do.end28

if.end88.i:                                       ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tmp.i, align 4
  %conv.i = trunc i32 %61 to i16
  %62 = ptrtoint ptr %s_file_umask.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i, ptr %s_file_umask.i, align 4
  %63 = ptrtoint ptr %s_dir_umask.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i, ptr %s_dir_umask.i, align 2
  br label %while.cond.backedge.i

sw.bb92.i:                                        ; preds = %if.end12.i
  %call94.i = call i32 @match_octal(ptr noundef nonnull %args.i, ptr noundef nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %if.end102.i, label %do.end99.i

do.end99.i:                                       ; preds = %sw.bb92.i
  call void @__sanitizer_cov_trace_pc() #12
  %call101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  br label %do.end28

if.end102.i:                                      ; preds = %sw.bb92.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tmp.i, align 4
  %conv103.i = trunc i32 %65 to i16
  %66 = ptrtoint ptr %s_file_umask.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv103.i, ptr %s_file_umask.i, align 4
  br label %while.cond.backedge.i

sw.bb105.i:                                       ; preds = %if.end12.i
  %call107.i = call i32 @match_octal(ptr noundef nonnull %args.i, ptr noundef nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %tobool108.not.i = icmp eq i32 %call107.i, 0
  br i1 %tobool108.not.i, label %if.end115.i, label %do.end112.i

do.end112.i:                                      ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #12
  %call114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %do.end28

if.end115.i:                                      ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tmp.i, align 4
  %conv116.i = trunc i32 %68 to i16
  %69 = ptrtoint ptr %s_dir_umask.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv116.i, ptr %s_dir_umask.i, align 2
  br label %while.cond.backedge.i

sw.bb118.i:                                       ; preds = %if.end12.i
  %call121.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef %part.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %tobool122.not.i = icmp eq i32 %call121.i, 0
  br i1 %tobool122.not.i, label %sw.bb118.i.while.cond.backedge.i_crit_edge, label %do.end126.i

sw.bb118.i.while.cond.backedge.i_crit_edge:       ; preds = %sw.bb118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

do.end126.i:                                      ; preds = %sw.bb118.i
  call void @__sanitizer_cov_trace_pc() #12
  %call128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #14
  br label %do.end28

sw.bb130.i:                                       ; preds = %if.end12.i
  %call133.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef %session.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %tobool134.not.i = icmp eq i32 %call133.i, 0
  br i1 %tobool134.not.i, label %sw.bb130.i.while.cond.backedge.i_crit_edge, label %do.end138.i

sw.bb130.i.while.cond.backedge.i_crit_edge:       ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

do.end138.i:                                      ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #12
  %call140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #14
  br label %do.end28

sw.bb142.i:                                       ; preds = %if.end12.i
  %70 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %10, align 4
  %72 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %args.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i)
  %cmp.not.i.i = icmp eq i32 %sub.ptr.sub.i.i, 4
  br i1 %cmp.not.i.i, label %match_fourchar.exit.thread.i, label %do.end150.i

match_fourchar.exit.thread.i:                     ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %73, align 1
  %76 = ptrtoint ptr %s_type.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %s_type.i, align 4
  br label %while.cond.backedge.i

do.end150.i:                                      ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #12
  %call152.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #14
  br label %do.end28

sw.bb154.i:                                       ; preds = %if.end12.i
  %77 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %10, align 4
  %79 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %args.i, align 4
  %sub.ptr.lhs.cast.i291.i = ptrtoint ptr %78 to i32
  %sub.ptr.rhs.cast.i292.i = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i293.i = sub i32 %sub.ptr.lhs.cast.i291.i, %sub.ptr.rhs.cast.i292.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i293.i)
  %cmp.not.i294.i = icmp eq i32 %sub.ptr.sub.i293.i, 4
  br i1 %cmp.not.i294.i, label %match_fourchar.exit297.thread.i, label %do.end162.i

match_fourchar.exit297.thread.i:                  ; preds = %sw.bb154.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %80, align 1
  %83 = ptrtoint ptr %s_creator.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %s_creator.i, align 8
  br label %while.cond.backedge.i

do.end162.i:                                      ; preds = %sw.bb154.i
  call void @__sanitizer_cov_trace_pc() #12
  %call164.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #14
  br label %do.end28

sw.bb166.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %s_quiet.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %s_quiet.i, align 8
  br label %while.cond.backedge.i

sw.bb168.i:                                       ; preds = %if.end12.i
  %85 = ptrtoint ptr %nls_disk.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %nls_disk.i, align 4
  %tobool169.not.i = icmp eq ptr %86, null
  br i1 %tobool169.not.i, label %if.end176.i, label %do.end173.i

do.end173.i:                                      ; preds = %sw.bb168.i
  call void @__sanitizer_cov_trace_pc() #12
  %call175.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #14
  br label %do.end28

if.end176.i:                                      ; preds = %sw.bb168.i
  %call178.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #10
  %tobool179.not.i = icmp eq ptr %call178.i, null
  br i1 %tobool179.not.i, label %if.end183thread-pre-split.i, label %if.then180.i

if.then180.i:                                     ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #12
  %call181.i = call ptr @load_nls(ptr noundef nonnull %call178.i) #10
  %87 = ptrtoint ptr %nls_disk.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call181.i, ptr %nls_disk.i, align 4
  br label %if.end183.i

if.end183thread-pre-split.i:                      ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %nls_disk.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr.i = load ptr, ptr %nls_disk.i, align 4
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.end183thread-pre-split.i, %if.then180.i
  %89 = phi ptr [ %.pr.i, %if.end183thread-pre-split.i ], [ %call181.i, %if.then180.i ]
  %tobool185.not.i = icmp eq ptr %89, null
  br i1 %tobool185.not.i, label %do.end189.i, label %if.end192.i

do.end189.i:                                      ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #12
  %call191.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %call178.i) #14
  call void @kfree(ptr noundef %call178.i) #10
  br label %do.end28

if.end192.i:                                      ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %call178.i) #10
  br label %while.cond.backedge.i

sw.bb193.i:                                       ; preds = %if.end12.i
  %90 = ptrtoint ptr %nls_io.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %nls_io.i, align 8
  %tobool194.not.i = icmp eq ptr %91, null
  br i1 %tobool194.not.i, label %if.end201.i, label %do.end198.i

do.end198.i:                                      ; preds = %sw.bb193.i
  call void @__sanitizer_cov_trace_pc() #12
  %call200.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #14
  br label %do.end28

if.end201.i:                                      ; preds = %sw.bb193.i
  %call203.i = call ptr @match_strdup(ptr noundef nonnull %args.i) #10
  %tobool204.not.i = icmp eq ptr %call203.i, null
  br i1 %tobool204.not.i, label %if.end208thread-pre-split.i, label %if.then205.i

if.then205.i:                                     ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #12
  %call206.i = call ptr @load_nls(ptr noundef nonnull %call203.i) #10
  %92 = ptrtoint ptr %nls_io.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call206.i, ptr %nls_io.i, align 8
  br label %if.end208.i

if.end208thread-pre-split.i:                      ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %nls_io.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr302.i = load ptr, ptr %nls_io.i, align 8
  br label %if.end208.i

if.end208.i:                                      ; preds = %if.end208thread-pre-split.i, %if.then205.i
  %94 = phi ptr [ %.pr302.i, %if.end208thread-pre-split.i ], [ %call206.i, %if.then205.i ]
  %tobool210.not.i = icmp eq ptr %94, null
  br i1 %tobool210.not.i, label %do.end214.i, label %if.end217.i

do.end214.i:                                      ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #12
  %call216.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %call203.i) #14
  call void @kfree(ptr noundef %call203.i) #10
  br label %do.end28

if.end217.i:                                      ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef %call203.i) #10
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end217.i, %if.end192.i, %sw.bb166.i, %match_fourchar.exit297.thread.i, %match_fourchar.exit.thread.i, %sw.bb130.i.while.cond.backedge.i_crit_edge, %sw.bb118.i.while.cond.backedge.i_crit_edge, %if.end115.i, %if.end102.i, %if.end88.i, %if.end54.i.while.cond.backedge.i_crit_edge, %if.end22.i.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge
  %call9.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.18) #10
  %cmp.not.i = icmp eq ptr %call9.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.while.end.i_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.backedge.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %nls_disk218.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 28
  %95 = ptrtoint ptr %nls_disk218.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %nls_disk218.i, align 4
  %tobool219.not.i = icmp eq ptr %96, null
  br i1 %tobool219.not.i, label %while.end.i.if.end234.i_crit_edge, label %land.lhs.true.i

while.end.i.if.end234.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end234.i

land.lhs.true.i:                                  ; preds = %while.end.i
  %nls_io220.i = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 27
  %97 = ptrtoint ptr %nls_io220.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %nls_io220.i, align 8
  %tobool221.not.i = icmp eq ptr %98, null
  br i1 %tobool221.not.i, label %if.then222.i, label %land.lhs.true.i.if.end234.i_crit_edge

land.lhs.true.i.if.end234.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end234.i

if.then222.i:                                     ; preds = %land.lhs.true.i
  %call223.i = call ptr @load_nls_default() #10
  %99 = ptrtoint ptr %nls_io220.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call223.i, ptr %nls_io220.i, align 8
  %tobool226.not.i = icmp eq ptr %call223.i, null
  br i1 %tobool226.not.i, label %do.end230.i, label %if.then222.i.if.end234.i_crit_edge

if.then222.i.if.end234.i_crit_edge:               ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end234.i

do.end230.i:                                      ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #12
  %call232.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #14
  br label %do.end28

if.end234.i:                                      ; preds = %if.then222.i.if.end234.i_crit_edge, %land.lhs.true.i.if.end234.i_crit_edge, %while.end.i.if.end234.i_crit_edge
  %100 = ptrtoint ptr %s_dir_umask.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %s_dir_umask.i, align 2
  %102 = and i16 %101, 511
  store i16 %102, ptr %s_dir_umask.i, align 2
  %103 = ptrtoint ptr %s_file_umask.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %s_file_umask.i, align 4
  %105 = and i16 %104, 383
  store i16 %105, ptr %s_file_umask.i, align 4
  br label %if.end30

do.end28:                                         ; preds = %do.end230.i, %do.end214.i, %do.end198.i, %do.end189.i, %do.end173.i, %do.end162.i, %do.end150.i, %do.end138.i, %do.end126.i, %do.end112.i, %do.end99.i, %do.end85.i, %do.end74.i, %do.end51.i, %do.end40.i, %do.end19.i, %if.end12.i.do.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %bail

if.end30:                                         ; preds = %if.end234.i, %if.end.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %106 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @hfs_super_operations, ptr %s_op, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %107 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @hfs_xattr_handlers, ptr %s_xattr, align 16
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %108 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_flags, align 4
  %or = or i32 %109, 2048
  store i32 %or, ptr %s_flags, align 4
  %bitmap_lock = getelementptr inbounds %struct.hfs_sb_info, ptr %call7.i.i, i32 0, i32 29
  call void @__mutex_init(ptr noundef %bitmap_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @hfs_fill_super.__key.9) #10
  %call34 = call i32 @hfs_mdb_get(ptr noundef %sb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end46, label %if.then36

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool37.not = icmp eq i32 %silent, 0
  br i1 %tobool37.not, label %do.end41, label %if.then36.bail_crit_edge

if.then36.bail_crit_edge:                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail

do.end41:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %s_id.i) #14
  br label %bail

if.end46:                                         ; preds = %if.end30
  %110 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_fs_info, align 16
  %cat_tree = getelementptr inbounds %struct.hfs_sb_info, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %cat_tree to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cat_tree, align 4
  %call48 = call i32 @hfs_find_init(ptr noundef %113, ptr noundef nonnull %fd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.do.end75_crit_edge

if.end46.do.end75_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

if.end51:                                         ; preds = %if.end46
  %call52 = call i32 @hfs_cat_find_brec(ptr noundef %sb, i32 noundef 2, ptr noundef nonnull %fd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end51.bail_hfs_find_crit_edge

if.end51.bail_hfs_find_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_hfs_find

if.then54:                                        ; preds = %if.end51
  %entrylength = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 8
  %114 = ptrtoint ptr %entrylength to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %entrylength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %115)
  %cmp = icmp ugt i32 %115, 102
  br i1 %cmp, label %if.then54.bail_hfs_find_crit_edge, label %if.end58

if.then54.bail_hfs_find_crit_edge:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail_hfs_find

if.end58:                                         ; preds = %if.then54
  %bnode = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 3
  %116 = ptrtoint ptr %bnode to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bnode, align 4
  %entryoffset = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 7
  %118 = ptrtoint ptr %entryoffset to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %entryoffset, align 4
  call void @hfs_bnode_read(ptr noundef %117, ptr noundef nonnull %rec, i32 noundef %119, i32 noundef %115) #10
  %search_key = getelementptr inbounds %struct.hfs_find_data, ptr %fd, i32 0, i32 1
  %120 = ptrtoint ptr %search_key to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %search_key, align 4
  %call64 = call ptr @hfs_iget(ptr noundef %sb, ptr noundef %121, ptr noundef nonnull %rec) #10
  call void @hfs_find_exit(ptr noundef nonnull %fd) #10
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %if.end58.do.end75_crit_edge, label %if.end67

if.end58.do.end75_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

if.end67:                                         ; preds = %if.end58
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %122 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @hfs_dentry_operations, ptr %s_d_op, align 8
  %call68 = call ptr @d_make_root(ptr noundef nonnull %call64) #10
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %123 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call68, ptr %s_root, align 64
  %tobool70.not = icmp eq ptr %call68, null
  br i1 %tobool70.not, label %if.end67.do.end75_crit_edge, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67.do.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

bail_hfs_find:                                    ; preds = %if.then54.bail_hfs_find_crit_edge, %if.end51.bail_hfs_find_crit_edge
  %res.0 = phi i32 [ -5, %if.then54.bail_hfs_find_crit_edge ], [ %call52, %if.end51.bail_hfs_find_crit_edge ]
  call void @hfs_find_exit(ptr noundef nonnull %fd) #10
  br label %do.end75

do.end75:                                         ; preds = %bail_hfs_find, %if.end67.do.end75_crit_edge, %if.end58.do.end75_crit_edge, %if.end46.do.end75_crit_edge
  %res.1 = phi i32 [ %call48, %if.end46.do.end75_crit_edge ], [ %res.0, %bail_hfs_find ], [ -12, %if.end67.do.end75_crit_edge ], [ -22, %if.end58.do.end75_crit_edge ]
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %bail

bail:                                             ; preds = %do.end75, %do.end41, %if.then36.bail_crit_edge, %do.end28
  %res.2 = phi i32 [ %res.1, %do.end75 ], [ -22, %do.end28 ], [ -22, %do.end41 ], [ -22, %if.then36.bail_crit_edge ]
  call void @hfs_mdb_put(ptr noundef %sb) #10
  br label %cleanup

cleanup:                                          ; preds = %bail, %if.end67.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.2, %bail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %rec) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flush_mdb(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  %work_lock = getelementptr i8, ptr %work, i32 100
  tail call void @_raw_spin_lock(ptr noundef %work_lock) #10
  %work_queued = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %work_queued to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %work_queued, align 4
  tail call void @_raw_spin_unlock(ptr noundef %work_lock) #10
  tail call void @hfs_mdb_commit(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_mdb_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_cat_find_brec(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfs_iget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_find_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_mdb_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_mdb_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls_default() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @hfs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.hfs_inode_info, ptr %call, i32 0, i32 17
  %spec.select = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hfs_inode_cachep, align 4
  %add.ptr = getelementptr i8, ptr %inode, i32 -256
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_write_inode(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_evict_inode(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfs_put_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %mdb_work = getelementptr inbounds %struct.hfs_sb_info, ptr %1, i32 0, i32 35
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mdb_work) #10
  tail call void @hfs_mdb_close(ptr noundef %sb) #10
  tail call void @hfs_mdb_put(ptr noundef %sb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_sync_fs(ptr noundef %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hfs_mdb_commit(ptr noundef %sb) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %5, 255
  %6 = lshr i32 %5, 12
  %shl.i.i = and i32 %6, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %5, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16964, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %f_bsize, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info, align 16
  %fs_ablocks = getelementptr inbounds %struct.hfs_sb_info, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %fs_ablocks to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fs_ablocks, align 4
  %conv = zext i16 %14 to i32
  %fs_div = getelementptr inbounds %struct.hfs_sb_info, ptr %12, i32 0, i32 32
  %15 = ptrtoint ptr %fs_div to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fs_div, align 4
  %mul = mul i32 %16, %conv
  %conv2 = zext i32 %mul to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %17 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv2, ptr %f_blocks, align 8
  %18 = load ptr, ptr %s_fs_info, align 16
  %free_ablocks = getelementptr inbounds %struct.hfs_sb_info, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %free_ablocks to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %free_ablocks, align 2
  %conv4 = zext i16 %20 to i32
  %fs_div6 = getelementptr inbounds %struct.hfs_sb_info, ptr %18, i32 0, i32 32
  %21 = ptrtoint ptr %fs_div6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fs_div6, align 4
  %mul7 = mul i32 %22, %conv4
  %conv8 = zext i32 %mul7 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %23 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv8, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %24 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv8, ptr %f_bavail, align 8
  %25 = load ptr, ptr %s_fs_info, align 16
  %fs_ablocks11 = getelementptr inbounds %struct.hfs_sb_info, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %fs_ablocks11 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fs_ablocks11, align 4
  %conv12 = zext i16 %27 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %28 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv12, ptr %f_files, align 8
  %29 = load ptr, ptr %s_fs_info, align 16
  %free_ablocks14 = getelementptr inbounds %struct.hfs_sb_info, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %free_ablocks14 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %free_ablocks14, align 2
  %conv15 = zext i16 %31 to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %32 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv15, ptr %f_ffree, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %33 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %34 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 31, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_remount(ptr noundef %sb, ptr nocapture noundef %flags, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 2048
  store i32 %or, ptr %flags, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %4 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  %or.cond = and i1 %tobool.i, %tobool5.not
  br i1 %or.cond, label %if.then6, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then6:                                         ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  %mdb = getelementptr inbounds %struct.hfs_sb_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %mdb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdb, align 4
  %drAtrb = getelementptr inbounds %struct.hfs_mdb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %drAtrb to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %drAtrb, align 1
  %conv7 = zext i16 %10 to i32
  %and8 = and i32 %conv7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then6.return.sink.split_crit_edge, label %if.else

if.then6.return.sink.split_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

if.else:                                          ; preds = %if.then6
  %and18 = and i32 %conv7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else.return_crit_edge, label %if.else.return.sink.split_crit_edge

if.else.return.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return.sink.split:                                ; preds = %if.else.return.sink.split_crit_edge, %if.then6.return.sink.split_crit_edge
  %.str.83.sink = phi ptr [ @.str.80, %if.then6.return.sink.split_crit_edge ], [ @.str.83, %if.else.return.sink.split_crit_edge ]
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.83.sink) #14
  %11 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_flags.i, align 4
  %or26 = or i32 %12, 1
  store i32 %or26, ptr %s_flags.i, align 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or27 = or i32 %14, 1
  store i32 %or27, ptr %flags, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  %val_buf = alloca [5 x i8], align 1
  %val_buf5 = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_creator = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %s_creator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_creator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1061109567, i32 %5)
  %cmp.not = icmp eq i32 %5, 1061109567
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %val_buf) #10
  %6 = getelementptr inbounds [5 x i8], ptr %val_buf, i32 0, i32 4
  %call = call ptr @strncpy(ptr noundef nonnull %val_buf, ptr noundef %s_creator, i32 noundef 4)
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %6, align 1
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 44) #10
  call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull @.str.85, i32 noundef 7, i32 noundef 8, ptr noundef nonnull @.str.95) #10
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 61) #10
  %call.i.i5.i = call i32 @strlen(ptr noundef nonnull %val_buf) #15
  call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull %val_buf, i32 noundef %call.i.i5.i, i32 noundef 8, ptr noundef nonnull @.str.96) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %val_buf) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_type = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1061109567, i32 %9)
  %cmp3.not = icmp eq i32 %9, 1061109567
  br i1 %cmp3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %val_buf5) #10
  %10 = getelementptr inbounds [5 x i8], ptr %val_buf5, i32 0, i32 4
  %call8 = call ptr @strncpy(ptr noundef nonnull %val_buf5, ptr noundef %s_type, i32 noundef 4)
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %10, align 1
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 44) #10
  call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull @.str.86, i32 noundef 4, i32 noundef 8, ptr noundef nonnull @.str.95) #10
  call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 61) #10
  %call.i.i5.i81 = call i32 @strlen(ptr noundef nonnull %val_buf5) #15
  call void @seq_escape_mem(ptr noundef %seq, ptr noundef nonnull %val_buf5, i32 noundef %call.i.i5.i81, i32 noundef 8, ptr noundef nonnull @.str.96) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %val_buf5) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end.if.end11_crit_edge
  %s_uid = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 23
  %12 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %s_uid, align 4
  %13 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call12 = call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %13) #10
  %s_gid = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 24
  %14 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack79 = load i32, ptr %s_gid, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack79, 0
  %call14 = call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %15) #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.87, i32 noundef %call12, i32 noundef %call14) #10
  %s_file_umask = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 21
  %16 = ptrtoint ptr %s_file_umask to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %s_file_umask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 91, i16 %17)
  %cmp15.not = icmp eq i16 %17, 91
  br i1 %cmp15.not, label %if.end11.if.end20_crit_edge, label %if.then17

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %17 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.88, i32 noundef %conv) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end11.if.end20_crit_edge
  %s_dir_umask = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 22
  %18 = ptrtoint ptr %s_dir_umask to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %s_dir_umask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %19)
  %cmp22.not = icmp eq i16 %19, 18
  br i1 %cmp22.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %conv21 = zext i16 %19 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.89, i32 noundef %conv21) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %part = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 26
  %20 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %part, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp28 = icmp sgt i32 %21, -1
  br i1 %cmp28, label %if.then30, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.90, i32 noundef %21) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %session = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 25
  %22 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %session, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp33 = icmp sgt i32 %23, -1
  br i1 %cmp33, label %if.then35, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.91, i32 noundef %23) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %nls_disk = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 28
  %24 = ptrtoint ptr %nls_disk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nls_disk, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.end37.if.end40_crit_edge, label %if.then38

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.92, ptr noundef %27) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end37.if.end40_crit_edge
  %nls_io = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 27
  %28 = ptrtoint ptr %nls_io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nls_io, align 4
  %tobool41.not = icmp eq ptr %29, null
  br i1 %tobool41.not, label %if.end40.if.end45_crit_edge, label %if.then42

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.93, ptr noundef %31) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end40.if.end45_crit_edge
  %s_quiet = getelementptr inbounds %struct.hfs_sb_info, ptr %3, i32 0, i32 18
  %32 = ptrtoint ptr %s_quiet to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_quiet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not = icmp eq i32 %33, 0
  br i1 %tobool46.not, label %if.end45.if.end48_crit_edge, label %if.then47

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.94) #10
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end45.if.end48_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_mdb_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfs_init_once(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.hfs_inode_info, ptr %p, i32 0, i32 17
  tail call void @inode_init_once(ptr noundef %vfs_inode) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176}
!llvm.named.register.sp = !{!178}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__UNIQUE_ID_file285, !1, !"__UNIQUE_ID_file285", i1 false, i1 false}
!1 = !{!"../fs/hfs/super.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_license286, !1, !"__UNIQUE_ID_license286", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias287, !4, !"__UNIQUE_ID_alias287", i1 false, i1 false}
!4 = !{!"../fs/hfs/super.c", i32 466, i32 1}
!5 = !{ptr @__initcall__kmod_hfs__288_502_init_hfs_fs6, !6, !"__initcall__kmod_hfs__288_502_init_hfs_fs6", i1 false, i1 false}
!6 = !{!"../fs/hfs/super.c", i32 502, i32 1}
!7 = !{ptr @__exitcall_exit_hfs_fs, !8, !"__exitcall_exit_hfs_fs", i1 false, i1 false}
!8 = !{!"../fs/hfs/super.c", i32 503, i32 1}
!9 = !{ptr @hfs_inode_cachep, !10, !"hfs_inode_cachep", i1 false, i1 false}
!10 = !{!"../fs/hfs/super.c", i32 29, i32 27}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/hfs/super.c", i32 461, i32 11}
!13 = !{ptr @hfs_fs_type, !14, !"hfs_fs_type", i1 false, i1 false}
!14 = !{!"../fs/hfs/super.c", i32 459, i32 32}
!15 = !{ptr @hfs_fill_super.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/hfs/super.c", i32 392, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hfs_fill_super.__key.2, !19, !"__key", i1 false, i1 false}
!19 = !{!"../fs/hfs/super.c", i32 393, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hfs_fill_super.__key.4, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/hfs/super.c", i32 397, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @hfs_fill_super._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @hfs_fill_super._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @hfs_fill_super.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../fs/hfs/super.c", i32 404, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/hfs/super.c", i32 409, i32 4}
!34 = !{ptr @hfs_fill_super._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hfs_fill_super._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/hfs/super.c", i32 447, i32 2}
!38 = !{ptr @hfs_fill_super._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hfs_fill_super._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../fs/hfs/super.c", i32 230, i32 15}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../fs/hfs/super.c", i32 231, i32 15}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/hfs/super.c", i32 242, i32 31}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/hfs/super.c", i32 250, i32 5}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @parse_options._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @parse_options._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../fs/hfs/super.c", i32 253, i32 27}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/hfs/super.c", i32 255, i32 5}
!55 = !{ptr @parse_options._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @parse_options._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/hfs/super.c", i32 261, i32 5}
!59 = !{ptr @parse_options._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @parse_options._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../fs/hfs/super.c", i32 264, i32 27}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/hfs/super.c", i32 266, i32 5}
!65 = !{ptr @parse_options._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @parse_options._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/hfs/super.c", i32 272, i32 5}
!69 = !{ptr @parse_options._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @parse_options._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/hfs/super.c", i32 280, i32 5}
!73 = !{ptr @parse_options._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @parse_options._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/hfs/super.c", i32 287, i32 5}
!77 = !{ptr @parse_options._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @parse_options._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/hfs/super.c", i32 294, i32 5}
!81 = !{ptr @parse_options._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @parse_options._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/hfs/super.c", i32 300, i32 5}
!85 = !{ptr @parse_options._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @parse_options._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/hfs/super.c", i32 306, i32 5}
!89 = !{ptr @parse_options._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @parse_options._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/hfs/super.c", i32 312, i32 5}
!93 = !{ptr @parse_options._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @parse_options._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/hfs/super.c", i32 321, i32 5}
!97 = !{ptr @parse_options._entry.53, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @parse_options._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/hfs/super.c", i32 328, i32 5}
!101 = !{ptr @parse_options._entry.56, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @parse_options._entry_ptr.58, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/hfs/super.c", i32 336, i32 5}
!105 = !{ptr @parse_options._entry.59, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @parse_options._entry_ptr.61, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/hfs/super.c", i32 343, i32 5}
!109 = !{ptr @parse_options._entry.62, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @parse_options._entry_ptr.64, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.66, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/hfs/super.c", i32 357, i32 4}
!113 = !{ptr @parse_options._entry.65, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @parse_options._entry_ptr.67, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/hfs/super.c", i32 194, i32 13}
!117 = !{ptr @.str.69, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/hfs/super.c", i32 195, i32 13}
!119 = !{ptr @.str.70, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/hfs/super.c", i32 196, i32 15}
!121 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/hfs/super.c", i32 197, i32 20}
!123 = !{ptr @.str.72, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/hfs/super.c", i32 198, i32 19}
!125 = !{ptr @.str.73, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/hfs/super.c", i32 199, i32 14}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/hfs/super.c", i32 200, i32 17}
!129 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/hfs/super.c", i32 201, i32 14}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/hfs/super.c", i32 202, i32 17}
!133 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/hfs/super.c", i32 203, i32 15}
!135 = !{ptr @.str.78, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/hfs/super.c", i32 204, i32 18}
!137 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/hfs/super.c", i32 205, i32 19}
!139 = !{ptr @tokens, !140, !"tokens", i1 false, i1 false}
!140 = !{!"../fs/hfs/super.c", i32 193, i32 28}
!141 = !{ptr @hfs_super_operations, !142, !"hfs_super_operations", i1 false, i1 false}
!142 = !{!"../fs/hfs/super.c", i32 174, i32 38}
!143 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/hfs/super.c", i32 121, i32 4}
!145 = !{ptr @.str.81, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @hfs_remount._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @hfs_remount._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.83, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/hfs/super.c", i32 125, i32 4}
!150 = !{ptr @hfs_remount._entry.82, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @hfs_remount._entry_ptr.84, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.85, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/hfs/super.c", i32 138, i32 3}
!154 = !{ptr @.str.86, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/hfs/super.c", i32 140, i32 3}
!156 = !{ptr @.str.87, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/hfs/super.c", i32 141, i32 18}
!158 = !{ptr @.str.88, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/hfs/super.c", i32 145, i32 19}
!160 = !{ptr @.str.89, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/hfs/super.c", i32 147, i32 19}
!162 = !{ptr @.str.90, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/hfs/super.c", i32 149, i32 19}
!164 = !{ptr @.str.91, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/hfs/super.c", i32 151, i32 19}
!166 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/hfs/super.c", i32 153, i32 19}
!168 = !{ptr @.str.93, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/hfs/super.c", i32 155, i32 19}
!170 = !{ptr @.str.94, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/hfs/super.c", i32 157, i32 19}
!172 = !{ptr @.str.95, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../include/linux/seq_file.h", i32 242, i32 22}
!174 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/linux/seq_file.h", i32 245, i32 24}
!176 = !{ptr @.str.97, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/hfs/super.c", i32 479, i32 39}
!178 = !{!"sp"}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"auto-init"}
