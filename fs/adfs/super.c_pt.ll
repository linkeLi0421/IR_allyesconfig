; ModuleID = '/llk/IR_all_yes/fs/adfs/super.c_pt.bc'
source_filename = "../fs/adfs/super.c"
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
%struct.adfs_dir_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
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
%struct.object_info = type { i32, i32, i32, i32, i32, i8, i32, [260 x i8] }
%struct.adfs_sb_info = type { %union.anon.81, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.substring_t = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.adfs_discrecord = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i16, [10 x i8], i32, i32, i16, i8, i8, i32, i32, [8 x i8] }
%struct.adfs_inode_info = type { i64, i32, i32, i32, i32, i32, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.75 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.76 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { %struct.spinlock, i32 }
%union.anon.78 = type { %struct.list_head }
%union.anon.79 = type { %struct.hlist_node }
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

@__adfs_error._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, align 1
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012ADFS-fs error (device %s)%s%s: %pV\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__adfs_error\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/adfs/super.c\00", [16 x i8] zeroinitializer }, align 32
@__adfs_error._entry_ptr = internal global ptr @__adfs_error._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c": \00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@adfs_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sADFS-fs (%s): %pV\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adfs_msg\00", [23 x i8] zeroinitializer }, align 32
@adfs_msg._entry_ptr = internal global ptr @adfs_msg._entry, section ".printk_index", align 4
@__UNIQUE_ID_alias270 = internal constant [19 x i8] c"adfs.alias=fs-adfs\00", section ".modinfo", align 1
@adfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.7, i32 1, ptr null, ptr null, ptr @adfs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_adfs__271_492_init_adfs_fs6 = internal global ptr @init_adfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_adfs_fs = internal global ptr @exit_adfs_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file272 = internal constant [23 x i8] c"adfs.file=fs/adfs/adfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [17 x i8] c"adfs.license=GPL\00", section ".modinfo", align 1
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"adfs\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error: can't find an ADFS filesystem on dev %s.\00", [48 x i8] zeroinitializer }, align 32
@adfs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @adfs_alloc_inode, ptr null, ptr @adfs_free_inode, ptr null, ptr @adfs_write_inode, ptr @adfs_drop_inode, ptr null, ptr @adfs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adfs_statfs, ptr @adfs_remount, ptr null, ptr @adfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@adfs_fplus_dir_ops = external dso_local constant %struct.adfs_dir_ops, align 4
@adfs_f_dir_ops = external dso_local constant %struct.adfs_dir_ops, align 4
@adfs_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@__func__.adfs_fill_super = private unnamed_addr constant [16 x i8] c"adfs_fill_super\00", align 1
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get root inode failed\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [6 x %struct.match_token], [48 x i8] } { [6 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.14 }, %struct.match_token { i32 1, ptr @.str.15 }, %struct.match_token { i32 2, ptr @.str.16 }, %struct.match_token { i32 3, ptr @.str.17 }, %struct.match_token { i32 4, ptr @.str.18 }, %struct.match_token { i32 5, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unrecognised mount option \22%s\22 or missing value\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ownmask=%o\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"othmask=%o\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ftsuffix=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error: unsupported blocksize\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: unable to read block %u, try %d\00", [57 x i8] zeroinitializer }, align 32
@adfs_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",ownmask=%o\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",othmask=%o\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",ftsuffix=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adfs_inode_cache\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 34, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 49, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"adfs_fs_type\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 462, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 464, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 398, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 399, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"adfs_sops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 269, i32 38 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 444, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 138, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 120, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 177, i32 6 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 121, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 122, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 123, i32 16 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 124, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 125, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 297, i32 7 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 305, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"adfs_inode_cachep\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 218, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 105, i32 19 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 107, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 109, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 111, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 113, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [19 x i8] c"../fs/adfs/super.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 249, i32 40 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias270, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__adfs_error._entry, ptr @__adfs_error._entry_ptr, ptr @__exitcall_exit_adfs_fs, ptr @__initcall__kmod_adfs__271_492_init_adfs_fs6, ptr @adfs_msg._entry, ptr @adfs_msg._entry_ptr, ptr @exit_adfs_fs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adfs_fs_type, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @adfs_sops, ptr @.str.10, ptr @.str.11, ptr @tokens, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @adfs_inode_cachep, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adfs_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adfs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adfs_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__adfs_error(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #12
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !83
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %tobool.not = icmp eq ptr %function, null
  %spec.select = select i1 %tobool.not, ptr @.str.4, ptr @.str.3
  %spec.select6 = select i1 %tobool.not, ptr @.str.4, ptr %function
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id, ptr noundef nonnull %spec.select, ptr noundef nonnull %spec.select6, ptr noundef nonnull %vaf) #15
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #12
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adfs_msg(ptr noundef %sb, ptr noundef %pfx, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #12
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !83
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %pfx, ptr noundef %s_id, ptr noundef nonnull %vaf) #15
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_adfs_fs() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @adfs_fs_type) #12
  tail call void @rcu_barrier() #12
  %0 = load ptr, ptr @adfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_adfs_fs() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.26, i32 noundef 816, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #12
  store ptr %call.i, ptr @adfs_inode_cachep, align 4
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @adfs_fs_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcu_barrier() #12
  %0 = load ptr, ptr @adfs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @adfs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @adfs_fill_super) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_fill_super(ptr noundef %sb, ptr noundef %data, i32 noundef %silent) #0 align 64 {
entry:
  %root_obj = alloca %struct.object_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %root_obj) #12
  %0 = call ptr @memset(ptr %root_obj, i32 255, i32 288)
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %1 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_flags, align 4
  %or = or i32 %2, 1024
  store i32 %or, ptr %s_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %5 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 44533, ptr %s_magic, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %6 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10000000, ptr %s_time_gran, align 4
  %s_uid = getelementptr inbounds %struct.adfs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %s_uid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %s_uid, align 8
  %s_gid = getelementptr inbounds %struct.adfs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %s_gid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %s_gid, align 4
  %s_owner_mask = getelementptr inbounds %struct.adfs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %s_owner_mask to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 448, ptr %s_owner_mask, align 8
  %s_other_mask = getelementptr inbounds %struct.adfs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %s_other_mask to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 63, ptr %s_other_mask, align 2
  %s_ftsuffix = getelementptr inbounds %struct.adfs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %s_ftsuffix to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %s_ftsuffix, align 4
  %call3 = tail call fastcc i32 @parse_options(ptr noundef %sb, ptr noundef nonnull %call7.i.i, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @adfs_probe(ptr noundef %sb, i32 noundef 3072, i32 noundef 1, ptr noundef nonnull @adfs_validate_bblk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %call7)
  %cmp = icmp eq i32 %call7, -84
  br i1 %cmp, label %if.end10, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end10:                                         ; preds = %if.end6
  %call9 = tail call fastcc i32 @adfs_probe(ptr noundef %sb, i32 noundef 0, i32 noundef %silent, ptr noundef nonnull @adfs_validate_dr0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %call9)
  %cmp11 = icmp eq i32 %call9, -84
  br i1 %cmp11, label %if.then12, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool13.not = icmp eq i32 %silent, 0
  br i1 %tobool13.not, label %if.then14, label %if.then12.error_crit_edge

if.then12.error_crit_edge:                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  tail call void (ptr, ptr, ptr, ...) @adfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %s_id)
  br label %error

if.end16:                                         ; preds = %if.end10.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end10.if.end16_crit_edge ], [ %call7, %if.end6.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool17.not = icmp eq i32 %ret.1, 0
  br i1 %tobool17.not, label %if.end19, label %if.end16.error_crit_edge

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end19:                                         ; preds = %if.end16
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %12 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @adfs_sops, ptr %s_op, align 4
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data.i, align 4
  %root21 = getelementptr i8, ptr %18, i32 16
  %19 = ptrtoint ptr %root21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %root21, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %indaddr = getelementptr inbounds %struct.object_info, ptr %root_obj, i32 0, i32 1
  %22 = ptrtoint ptr %indaddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %indaddr, align 4
  %23 = ptrtoint ptr %root_obj to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %root_obj, align 4
  %name_len = getelementptr inbounds %struct.object_info, ptr %root_obj, i32 0, i32 6
  %24 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %name_len, align 4
  %loadaddr = getelementptr inbounds %struct.object_info, ptr %root_obj, i32 0, i32 2
  %25 = ptrtoint ptr %loadaddr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1048513, ptr %loadaddr, align 4
  %execaddr = getelementptr inbounds %struct.object_info, ptr %root_obj, i32 0, i32 3
  %26 = ptrtoint ptr %execaddr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -333266944, ptr %execaddr, align 4
  %size = getelementptr inbounds %struct.object_info, ptr %root_obj, i32 0, i32 4
  %27 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2048, ptr %size, align 4
  %attr = getelementptr inbounds %struct.object_info, ptr %root_obj, i32 0, i32 5
  %28 = ptrtoint ptr %attr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 43, ptr %attr, align 4
  %format_version = getelementptr i8, ptr %18, i32 48
  %29 = ptrtoint ptr %format_version to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %format_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool22.not = icmp eq i32 %30, 0
  br i1 %tobool22.not, label %if.end19.if.end27_crit_edge, label %if.then23

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %root_size = getelementptr i8, ptr %18, i32 52
  %31 = ptrtoint ptr %root_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %root_size, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %size, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end19.if.end27_crit_edge
  %adfs_fplus_dir_ops.sink = phi ptr [ @adfs_fplus_dir_ops, %if.then23 ], [ @adfs_f_dir_ops, %if.end19.if.end27_crit_edge ]
  %.sink = phi i32 [ 255, %if.then23 ], [ 10, %if.end19.if.end27_crit_edge ]
  %35 = getelementptr inbounds %struct.anon.82, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %adfs_fplus_dir_ops.sink, ptr %35, align 4
  %37 = getelementptr inbounds %struct.adfs_sb_info, ptr %call7.i.i, i32 0, i32 11
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %37, align 4
  %39 = ptrtoint ptr %s_ftsuffix to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_ftsuffix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool29.not = icmp eq i32 %40, 0
  br i1 %tobool29.not, label %if.end27.if.end32_crit_edge, label %if.then30

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %37, align 4
  %add = add i32 %42, 4
  store i32 %add, ptr %37, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 45
  %43 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @adfs_dentry_operations, ptr %s_d_op, align 8
  %call33 = call ptr @adfs_iget(ptr noundef %sb, ptr noundef nonnull %root_obj) #12
  %call34 = call ptr @d_make_root(ptr noundef %call33) #12
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %44 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call34, ptr %s_root, align 64
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.then37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  call void @adfs_free_map(ptr noundef %sb) #12
  call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_fill_super, ptr noundef nonnull @.str.10)
  br label %error

error:                                            ; preds = %if.then37, %if.end16.error_crit_edge, %if.then14, %if.then12.error_crit_edge, %if.end.error_crit_edge
  %ret.2 = phi i32 [ -22, %if.end.error_crit_edge ], [ %ret.1, %if.end16.error_crit_edge ], [ -5, %if.then37 ], [ -22, %if.then14 ], [ -22, %if.then12.error_crit_edge ]
  %45 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %s_fs_info, align 16
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %root_obj) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_options(ptr noundef %sb, ptr nocapture noundef writeonly %asb, ptr noundef %options) unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %option = alloca i32, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #12
  %1 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %option, align 4, !annotation !83
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup62_crit_edge, label %while.cond.preheader

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup62

while.cond.preheader:                             ; preds = %entry
  %call77 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.11) #12
  %cmp.not78 = icmp eq ptr %call77, null
  br i1 %cmp.not78, label %while.cond.preheader.cleanup62_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup62_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup62

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %s_ftsuffix = getelementptr inbounds %struct.adfs_sb_info, ptr %asb, i32 0, i32 5
  %s_other_mask = getelementptr inbounds %struct.adfs_sb_info, ptr %asb, i32 0, i32 4
  %s_owner_mask = getelementptr inbounds %struct.adfs_sb_info, ptr %asb, i32 0, i32 3
  %s_gid = getelementptr inbounds %struct.adfs_sb_info, ptr %asb, i32 0, i32 2
  %s_uid = getelementptr inbounds %struct.adfs_sb_info, ptr %asb, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call79 = phi ptr [ %call77, %while.body.lr.ph ], [ %call, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #12
  %2 = call ptr @memset(ptr %args, i32 255, i32 24)
  %3 = ptrtoint ptr %call79 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %if.end3

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %while.body
  %call4 = call i32 @match_token(ptr noundef nonnull %call79, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #12
  %5 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb42
    i32 3, label %sw.bb48
    i32 4, label %sw.bb55
  ]

sw.bb:                                            ; preds = %if.end3
  %call6 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb.cleanup.thread_crit_edge

sw.bb.cleanup.thread_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end9:                                          ; preds = %sw.bb
  %6 = call i32 @llvm.read_register.i32(metadata !73) #12
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
  %call13 = call i32 @make_kuid(ptr noundef %13, i32 noundef %15) #12
  %16 = ptrtoint ptr %s_uid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call13, ptr %s_uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp.i.not = icmp eq i32 %call13, -1
  br i1 %cmp.i.not, label %if.end9.cleanup.thread_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9.cleanup.thread_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

sw.bb19:                                          ; preds = %if.end3
  %call21 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %sw.bb19.cleanup.thread_crit_edge

sw.bb19.cleanup.thread_crit_edge:                 ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end24:                                         ; preds = %sw.bb19
  %17 = call i32 @llvm.read_register.i32(metadata !73) #12
  %and.i72 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i72 to ptr
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
  %call35 = call i32 @make_kgid(ptr noundef %24, i32 noundef %26) #12
  %27 = ptrtoint ptr %s_gid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call35, ptr %s_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call35)
  %cmp.i73.not = icmp eq i32 %call35, -1
  br i1 %cmp.i73.not, label %if.end24.cleanup.thread_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24.cleanup.thread_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

sw.bb42:                                          ; preds = %if.end3
  %call44 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %option) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %sw.bb42.cleanup.thread_crit_edge

sw.bb42.cleanup.thread_crit_edge:                 ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end47:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %option, align 4
  %conv = trunc i32 %29 to i16
  %30 = ptrtoint ptr %s_owner_mask to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %s_owner_mask, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %if.end3
  %call50 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %option) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %sw.bb48.cleanup.thread_crit_edge

sw.bb48.cleanup.thread_crit_edge:                 ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end53:                                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %option, align 4
  %conv54 = trunc i32 %32 to i16
  %33 = ptrtoint ptr %s_other_mask to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv54, ptr %s_other_mask, align 2
  br label %cleanup

sw.bb55:                                          ; preds = %if.end3
  %call57 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %sw.bb55.cleanup.thread_crit_edge

sw.bb55.cleanup.thread_crit_edge:                 ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end60:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %option, align 4
  %36 = ptrtoint ptr %s_ftsuffix to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %s_ftsuffix, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @adfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13, ptr noundef nonnull %call79)
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.default, %sw.bb55.cleanup.thread_crit_edge, %sw.bb48.cleanup.thread_crit_edge, %sw.bb42.cleanup.thread_crit_edge, %if.end24.cleanup.thread_crit_edge, %sw.bb19.cleanup.thread_crit_edge, %if.end9.cleanup.thread_crit_edge, %sw.bb.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #12
  br label %cleanup62

cleanup:                                          ; preds = %if.end60, %if.end53, %if.end47, %if.end24.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %while.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #12
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.11) #12
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %cleanup.cleanup62_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.cleanup62_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup62

cleanup62:                                        ; preds = %cleanup.cleanup62_crit_edge, %cleanup.thread, %while.cond.preheader.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup62_crit_edge ], [ -22, %cleanup.thread ], [ 0, %while.cond.preheader.cleanup62_crit_edge ], [ 0, %cleanup.cleanup62_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #12
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adfs_probe(ptr noundef %sb, i32 noundef %offset, i32 noundef %silent, ptr nocapture noundef readonly %validate) unnamed_addr #0 align 64 {
entry:
  %dr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dr) #12
  %2 = ptrtoint ptr %dr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dr, align 4, !annotation !83
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %3 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %4)
  %cmp1.not = icmp eq i32 %4, 1024
  br i1 %cmp1.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 1024) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.1.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool3.not = icmp eq i32 %silent, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @adfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19)
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %5 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %6 to i32
  %shr = lshr i32 %offset, %conv
  %conv6 = zext i32 %shr to i64
  %7 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_bdev.i, align 4
  %9 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %8, i64 noundef %conv6, i32 noundef %10, i32 noundef 8) #12
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.if.then9_crit_edge, label %if.end13

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %if.end5.1.if.then9_crit_edge, %if.end5.if.then9_crit_edge
  %try.069.lcssa70 = phi i32 [ 0, %if.end5.if.then9_crit_edge ], [ 1, %if.end5.1.if.then9_crit_edge ]
  %11 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s_blocksize_bits, align 4
  %conv11 = zext i8 %12 to i32
  %shr12 = lshr i32 %offset, %conv11
  call void (ptr, ptr, ptr, ...) @adfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.20, i32 noundef %shr12, i32 noundef %try.069.lcssa70)
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = call i32 %validate(ptr noundef %sb, ptr noundef nonnull %call.i, ptr noundef nonnull %dr) #12, !callees !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.brelse.exit_crit_edge

if.end13.brelse.exit_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.end13.1.brelse.exit_crit_edge, %if.end13.brelse.exit_crit_edge
  %call14.lcssa = phi i32 [ %call14, %if.end13.brelse.exit_crit_edge ], [ %call14.1, %if.end13.1.brelse.exit_crit_edge ]
  %call.i.lcssa74 = phi ptr [ %call.i, %if.end13.brelse.exit_crit_edge ], [ %call.i.1, %if.end13.1.brelse.exit_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call.i.lcssa74) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %dr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dr, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %conv18 = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv18
  %17 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %shl)
  %cmp20 = icmp eq i32 %18, %shl
  br i1 %cmp20, label %if.end17.brelse.exit55_crit_edge, label %brelse.exit58

if.end17.brelse.exit55_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit55

brelse.exit55:                                    ; preds = %if.end17.1.brelse.exit55_crit_edge, %if.end17.brelse.exit55_crit_edge
  %.lcssa = phi ptr [ %14, %if.end17.brelse.exit55_crit_edge ], [ %32, %if.end17.1.brelse.exit55_crit_edge ]
  %call.i.lcssa75 = phi ptr [ %call.i, %if.end17.brelse.exit55_crit_edge ], [ %call.i.1, %if.end17.1.brelse.exit55_crit_edge ]
  %call23 = call ptr @adfs_read_map(ptr noundef %sb, ptr noundef %.lcssa) #12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call23, ptr %1, align 4
  call void @__brelse(ptr noundef nonnull %call.i.lcssa75) #12
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %cmp.i.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %21 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %22, i32 0
  br label %cleanup

brelse.exit58:                                    ; preds = %if.end17
  call void @__brelse(ptr noundef nonnull %call.i) #12
  %23 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %shl)
  %cmp1.not.1 = icmp eq i32 %24, %shl
  br i1 %cmp1.not.1, label %brelse.exit58.if.end5.1_crit_edge, label %land.lhs.true.1

brelse.exit58.if.end5.1_crit_edge:                ; preds = %brelse.exit58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.1

land.lhs.true.1:                                  ; preds = %brelse.exit58
  %call2.1 = call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %shl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool.not.1, label %land.lhs.true.1.if.then_crit_edge, label %land.lhs.true.1.if.end5.1_crit_edge

land.lhs.true.1.if.end5.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.1

land.lhs.true.1.if.then_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end5.1:                                        ; preds = %land.lhs.true.1.if.end5.1_crit_edge, %brelse.exit58.if.end5.1_crit_edge
  %25 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %s_blocksize_bits, align 4
  %conv.1 = zext i8 %26 to i32
  %shr.1 = lshr i32 %offset, %conv.1
  %conv6.1 = zext i32 %shr.1 to i64
  %27 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_bdev.i, align 4
  %29 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize, align 16
  %call.i.1 = call ptr @__bread_gfp(ptr noundef %28, i64 noundef %conv6.1, i32 noundef %30, i32 noundef 8) #12
  %tobool8.not.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool8.not.1, label %if.end5.1.if.then9_crit_edge, label %if.end13.1

if.end5.1.if.then9_crit_edge:                     ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end13.1:                                       ; preds = %if.end5.1
  %call14.1 = call i32 %validate(ptr noundef %sb, ptr noundef nonnull %call.i.1, ptr noundef nonnull %dr) #12, !callees !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %tobool15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool15.not.1, label %if.end17.1, label %if.end13.1.brelse.exit_crit_edge

if.end13.1.brelse.exit_crit_edge:                 ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.end17.1:                                       ; preds = %if.end13.1
  %31 = ptrtoint ptr %dr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dr, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv18.1 = zext i8 %34 to i32
  %shl.1 = shl nuw i32 1, %conv18.1
  %35 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %shl.1)
  %cmp20.1 = icmp eq i32 %36, %shl.1
  br i1 %cmp20.1, label %if.end17.1.brelse.exit55_crit_edge, label %brelse.exit58.1

if.end17.1.brelse.exit55_crit_edge:               ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit55

brelse.exit58.1:                                  ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %call.i.1) #12
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit58.1, %brelse.exit55, %brelse.exit, %if.then9, %if.then4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14.lcssa, %brelse.exit ], [ %spec.select.i, %brelse.exit55 ], [ -5, %if.then9 ], [ -22, %if.then4 ], [ -22, %if.then.cleanup_crit_edge ], [ -5, %brelse.exit58.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dr) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_validate_bblk(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %bh, ptr nocapture noundef writeonly %drp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data1 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data1, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %rem = urem i32 3072, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %rem
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 511
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %result.0.i = phi i32 [ 0, %entry ], [ %add1.i, %do.body.i.do.body.i_crit_edge ]
  %p.0.i = phi ptr [ %add.ptr.i, %entry ], [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %and.i = and i32 %result.0.i, 255
  %shr.i = lshr i32 %result.0.i, 8
  %add.i = add nuw nsw i32 %and.i, %shr.i
  %incdec.ptr.i = getelementptr i8, ptr %p.0.i, i32 -1
  %4 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr.i, align 1
  %conv.i = zext i8 %5 to i32
  %add1.i = add nuw nsw i32 %add.i, %conv.i
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %add.ptr
  br i1 %cmp.not.i, label %adfs_checkbblk.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

adfs_checkbblk.exit:                              ; preds = %do.body.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 1
  %8 = trunc i32 %add1.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %8)
  %cmp5.i.not = icmp eq i8 %7, %8
  br i1 %cmp5.i.not, label %if.end, label %adfs_checkbblk.exit.cleanup_crit_edge

adfs_checkbblk.exit.cleanup_crit_edge:            ; preds = %adfs_checkbblk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %adfs_checkbblk.exit
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 448
  %9 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr2, align 4
  %.off.i = add i8 %10, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %idlen.i = getelementptr inbounds %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 4
  %11 = ptrtoint ptr %idlen.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %idlen.i, align 4
  %conv11.i = zext i8 %12 to i32
  %conv13.i = zext i8 %10 to i32
  %add.i10 = add nuw nsw i32 %conv13.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i10, i32 %conv11.i)
  %cmp14.i = icmp ugt i32 %add.i10, %conv11.i
  br i1 %cmp14.i, label %if.end.i.cleanup_crit_edge, label %if.end17.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17.i:                                       ; preds = %if.end.i
  %disc_size_high.i = getelementptr inbounds %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 16
  %13 = ptrtoint ptr %disc_size_high.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %disc_size_high.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %shr.i11 = lshr i32 %15, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i11)
  %tobool.not.i = icmp eq i32 %shr.i11, 0
  br i1 %tobool.not.i, label %if.end21.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21.i:                                       ; preds = %if.end17.i
  %format_version.i = getelementptr inbounds %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 20
  %16 = ptrtoint ptr %format_version.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not.i = icmp eq i32 %17, 0
  %cond.i = select i1 %tobool22.not.i, i32 16, i32 19
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv11.i)
  %cmp25.i = icmp ult i32 %cond.i, %conv11.i
  br i1 %cmp25.i, label %if.end21.i.cleanup_crit_edge, label %for.body.preheader.i

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end21.i
  %arrayidx.i = getelementptr %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 22, i32 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp32.not.i = icmp eq i8 %19, 0
  br i1 %cmp32.not.i, label %for.cond.i, label %for.body.preheader.i.cleanup_crit_edge

for.body.preheader.i.cleanup_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 22, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp32.not.1.i = icmp eq i8 %21, 0
  br i1 %cmp32.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 22, i32 2
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp32.not.2.i = icmp eq i8 %23, 0
  br i1 %cmp32.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cleanup_crit_edge

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 22, i32 3
  %24 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp32.not.3.i = icmp eq i8 %25, 0
  br i1 %cmp32.not.3.i, label %for.cond.3.i, label %for.cond.2.i.cleanup_crit_edge

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 22, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp32.not.4.i = icmp eq i8 %27, 0
  br i1 %cmp32.not.4.i, label %for.cond.4.i, label %for.cond.3.i.cleanup_crit_edge

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 22, i32 5
  %28 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp32.not.5.i = icmp eq i8 %29, 0
  br i1 %cmp32.not.5.i, label %for.cond.5.i, label %for.cond.4.i.cleanup_crit_edge

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 22, i32 6
  %30 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp32.not.6.i = icmp eq i8 %31, 0
  br i1 %cmp32.not.6.i, label %adfs_checkdiscrecord.exit, label %for.cond.5.i.cleanup_crit_edge

for.cond.5.i.cleanup_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

adfs_checkdiscrecord.exit:                        ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr %struct.adfs_discrecord, ptr %add.ptr2, i32 0, i32 22, i32 7
  %32 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp32.not.7.i.not = icmp eq i8 %33, 0
  br i1 %cmp32.not.7.i.not, label %if.end6, label %adfs_checkdiscrecord.exit.cleanup_crit_edge

adfs_checkdiscrecord.exit.cleanup_crit_edge:      ; preds = %adfs_checkdiscrecord.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %adfs_checkdiscrecord.exit
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %drp to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr2, ptr %drp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %adfs_checkdiscrecord.exit.cleanup_crit_edge, %for.cond.5.i.cleanup_crit_edge, %for.cond.4.i.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.body.preheader.i.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %adfs_checkbblk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -84, %adfs_checkbblk.exit.cleanup_crit_edge ], [ -84, %adfs_checkdiscrecord.exit.cleanup_crit_edge ], [ -84, %if.end.cleanup_crit_edge ], [ -84, %if.end.i.cleanup_crit_edge ], [ -84, %if.end17.i.cleanup_crit_edge ], [ -84, %if.end21.i.cleanup_crit_edge ], [ -84, %for.body.preheader.i.cleanup_crit_edge ], [ -84, %for.cond.i.cleanup_crit_edge ], [ -84, %for.cond.1.i.cleanup_crit_edge ], [ -84, %for.cond.2.i.cleanup_crit_edge ], [ -84, %for.cond.3.i.cleanup_crit_edge ], [ -84, %for.cond.4.i.cleanup_crit_edge ], [ -84, %for.cond.5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adfs_validate_dr0(ptr nocapture noundef readnone %sb, ptr nocapture noundef readonly %bh, ptr nocapture noundef writeonly %drp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 4
  %.off.i = add i8 %3, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %idlen.i = getelementptr i8, ptr %1, i32 8
  %4 = ptrtoint ptr %idlen.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %idlen.i, align 4
  %conv11.i = zext i8 %5 to i32
  %conv13.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv13.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv11.i)
  %cmp14.i = icmp ugt i32 %add.i, %conv11.i
  br i1 %cmp14.i, label %if.end.i.cleanup_crit_edge, label %if.end17.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17.i:                                       ; preds = %if.end.i
  %disc_size_high.i = getelementptr i8, ptr %1, i32 40
  %6 = ptrtoint ptr %disc_size_high.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %disc_size_high.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  %shr.i = lshr i32 %8, %conv13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i = icmp eq i32 %shr.i, 0
  br i1 %tobool.not.i, label %if.end21.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21.i:                                       ; preds = %if.end17.i
  %format_version.i = getelementptr i8, ptr %1, i32 48
  %9 = ptrtoint ptr %format_version.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not.i = icmp eq i32 %10, 0
  %cond.i = select i1 %tobool22.not.i, i32 16, i32 19
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv11.i)
  %cmp25.i = icmp ult i32 %cond.i, %conv11.i
  br i1 %cmp25.i, label %if.end21.i.cleanup_crit_edge, label %for.body.preheader.i

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end21.i
  %arrayidx.i = getelementptr i8, ptr %1, i32 56
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp32.not.i = icmp eq i8 %12, 0
  br i1 %cmp32.not.i, label %for.cond.i, label %for.body.preheader.i.cleanup_crit_edge

for.body.preheader.i.cleanup_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr i8, ptr %1, i32 57
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp32.not.1.i = icmp eq i8 %14, 0
  br i1 %cmp32.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr i8, ptr %1, i32 58
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp32.not.2.i = icmp eq i8 %16, 0
  br i1 %cmp32.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cleanup_crit_edge

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr i8, ptr %1, i32 59
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp32.not.3.i = icmp eq i8 %18, 0
  br i1 %cmp32.not.3.i, label %for.cond.3.i, label %for.cond.2.i.cleanup_crit_edge

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr i8, ptr %1, i32 60
  %19 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp32.not.4.i = icmp eq i8 %20, 0
  br i1 %cmp32.not.4.i, label %for.cond.4.i, label %for.cond.3.i.cleanup_crit_edge

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr i8, ptr %1, i32 61
  %21 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp32.not.5.i = icmp eq i8 %22, 0
  br i1 %cmp32.not.5.i, label %for.cond.5.i, label %for.cond.4.i.cleanup_crit_edge

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr i8, ptr %1, i32 62
  %23 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp32.not.6.i = icmp eq i8 %24, 0
  br i1 %cmp32.not.6.i, label %adfs_checkdiscrecord.exit, label %for.cond.5.i.cleanup_crit_edge

for.cond.5.i.cleanup_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

adfs_checkdiscrecord.exit:                        ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr i8, ptr %1, i32 63
  %25 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp32.not.7.i.not = icmp eq i8 %26, 0
  br i1 %cmp32.not.7.i.not, label %lor.lhs.false, label %adfs_checkdiscrecord.exit.cleanup_crit_edge

adfs_checkdiscrecord.exit.cleanup_crit_edge:      ; preds = %adfs_checkdiscrecord.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %adfs_checkdiscrecord.exit
  %nzones_high = getelementptr i8, ptr %1, i32 46
  %27 = ptrtoint ptr %nzones_high to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nzones_high, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.not = icmp eq i8 %28, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %nzones = getelementptr i8, ptr %1, i32 13
  %29 = ptrtoint ptr %nzones to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nzones, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp.not = icmp eq i8 %30, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %drp to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr, ptr %drp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %adfs_checkdiscrecord.exit.cleanup_crit_edge, %for.cond.5.i.cleanup_crit_edge, %for.cond.4.i.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.body.preheader.i.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -84, %lor.lhs.false2.cleanup_crit_edge ], [ -84, %lor.lhs.false.cleanup_crit_edge ], [ -84, %adfs_checkdiscrecord.exit.cleanup_crit_edge ], [ -84, %entry.cleanup_crit_edge ], [ -84, %if.end.i.cleanup_crit_edge ], [ -84, %if.end17.i.cleanup_crit_edge ], [ -84, %if.end21.i.cleanup_crit_edge ], [ -84, %for.body.preheader.i.cleanup_crit_edge ], [ -84, %for.cond.i.cleanup_crit_edge ], [ -84, %for.cond.1.i.cleanup_crit_edge ], [ -84, %for.cond.2.i.cleanup_crit_edge ], [ -84, %for.cond.3.i.cleanup_crit_edge ], [ -84, %for.cond.4.i.cleanup_crit_edge ], [ -84, %for.cond.5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adfs_iget(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @adfs_free_map(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adfs_read_map(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @adfs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @adfs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call, null
  %vfs_inode = getelementptr inbounds %struct.adfs_inode_info, ptr %call, i32 0, i32 6
  %retval.0 = select i1 %tobool.not, ptr null, ptr %vfs_inode
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adfs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @adfs_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -32
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_write_inode(ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adfs_drop_inode(ptr nocapture noundef readonly %inode) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %3, 1
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adfs_put_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @adfs_free_map(ptr noundef %sb) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_statfs(ptr nocapture noundef readonly %dentry, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void @adfs_map_statfs(ptr noundef %1, ptr noundef %buf) #12
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 44533, ptr %buf, align 8
  %s_namelen = getelementptr inbounds %struct.adfs_sb_info, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %s_namelen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_namelen, align 4
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %12 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %f_namelen, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %15 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %f_bsize, align 4
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %16 = ptrtoint ptr %f_bfree to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %f_bfree, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %18 = ptrtoint ptr %f_files to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %f_files, align 8
  %mul = mul i64 %19, %17
  %conv = trunc i64 %mul to i32
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %20 = ptrtoint ptr %f_blocks to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %f_blocks, align 8
  %conv2 = trunc i64 %21 to i32
  %div = sdiv i32 %conv, %conv2
  %conv3 = sext i32 %div to i64
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %22 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv3, ptr %f_ffree, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %23 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_remount(ptr noundef %sb, ptr nocapture noundef %flags, ptr noundef %data) #0 align 64 {
entry:
  %temp_asb = alloca %struct.adfs_sb_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %temp_asb) #12
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #12
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 1024
  store i32 %or, ptr %flags, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = call ptr @memcpy(ptr %temp_asb, ptr %3, i32 48)
  %call2 = call fastcc i32 @parse_options(ptr noundef %sb, ptr noundef nonnull %temp_asb, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %7 = call ptr @memcpy(ptr %6, ptr %temp_asb, i32 48)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %temp_asb) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_uid = getelementptr inbounds %struct.adfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %s_uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call5 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %5) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.21, i32 noundef %call5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_gid = getelementptr inbounds %struct.adfs_sb_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack48 = load i32, ptr %s_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack48)
  %cmp.i50 = icmp eq i32 %.unpack48, 0
  br i1 %cmp.i50, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = insertvalue [1 x i32] undef, i32 %.unpack48, 0
  %call14 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %7) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.22, i32 noundef %call14) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %s_owner_mask = getelementptr inbounds %struct.adfs_sb_info, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %s_owner_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_owner_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 448, i16 %9)
  %cmp.not = icmp eq i16 %9, 448
  br i1 %cmp.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.23, i32 noundef %conv) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %s_other_mask = getelementptr inbounds %struct.adfs_sb_info, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %s_other_mask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %s_other_mask, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %11)
  %cmp22.not = icmp eq i16 %11, 63
  br i1 %cmp22.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %conv21 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.24, i32 noundef %conv21) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %s_ftsuffix = getelementptr inbounds %struct.adfs_sb_info, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %s_ftsuffix to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_ftsuffix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp28.not = icmp eq i32 %13, 0
  br i1 %cmp28.not, label %if.end27.if.end32_crit_edge, label %if.then30

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, i32 noundef %13) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @adfs_map_statfs(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #5

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
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.adfs_inode_info, ptr %foo, i32 0, i32 6
  tail call void @inode_init_once(ptr noundef %vfs_inode) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.named.register.sp = !{!73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/adfs/super.c", i32 34, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__adfs_error._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__adfs_error._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/adfs/super.c", i32 49, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @adfs_msg._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @adfs_msg._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias270, !14, !"__UNIQUE_ID_alias270", i1 false, i1 false}
!14 = !{!"../fs/adfs/super.c", i32 469, i32 1}
!15 = !{ptr @__initcall__kmod_adfs__271_492_init_adfs_fs6, !16, !"__initcall__kmod_adfs__271_492_init_adfs_fs6", i1 false, i1 false}
!16 = !{!"../fs/adfs/super.c", i32 492, i32 1}
!17 = !{ptr @__exitcall_exit_adfs_fs, !18, !"__exitcall_exit_adfs_fs", i1 false, i1 false}
!18 = !{!"../fs/adfs/super.c", i32 493, i32 1}
!19 = !{ptr @__UNIQUE_ID_file272, !20, !"__UNIQUE_ID_file272", i1 false, i1 false}
!20 = !{!"../fs/adfs/super.c", i32 494, i32 1}
!21 = !{ptr @__UNIQUE_ID_license273, !20, !"__UNIQUE_ID_license273", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/adfs/super.c", i32 464, i32 11}
!24 = !{ptr @adfs_fs_type, !25, !"adfs_fs_type", i1 false, i1 false}
!25 = !{!"../fs/adfs/super.c", i32 462, i32 32}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/adfs/super.c", i32 398, i32 17}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/adfs/super.c", i32 399, i32 6}
!30 = !{ptr @__func__.adfs_fill_super, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/adfs/super.c", i32 444, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/adfs/super.c", i32 138, i32 31}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../fs/adfs/super.c", i32 149, i32 27}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../fs/adfs/super.c", i32 156, i32 27}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/adfs/super.c", i32 177, i32 6}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/adfs/super.c", i32 121, i32 12}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/adfs/super.c", i32 122, i32 12}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/adfs/super.c", i32 123, i32 16}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/adfs/super.c", i32 124, i32 16}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/adfs/super.c", i32 125, i32 17}
!51 = !{ptr @tokens, !52, !"tokens", i1 false, i1 false}
!52 = !{!"../fs/adfs/super.c", i32 120, i32 28}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/adfs/super.c", i32 297, i32 7}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/adfs/super.c", i32 305, i32 6}
!57 = !{ptr @adfs_sops, !58, !"adfs_sops", i1 false, i1 false}
!58 = !{!"../fs/adfs/super.c", i32 269, i32 38}
!59 = !{ptr @adfs_inode_cachep, !60, !"adfs_inode_cachep", i1 false, i1 false}
!60 = !{!"../fs/adfs/super.c", i32 218, i32 27}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/adfs/super.c", i32 105, i32 19}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/adfs/super.c", i32 107, i32 19}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/adfs/super.c", i32 109, i32 19}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/adfs/super.c", i32 111, i32 19}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/adfs/super.c", i32 113, i32 19}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/adfs/super.c", i32 249, i32 40}
!73 = !{!"sp"}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{ptr @adfs_validate_bblk, ptr @adfs_validate_dr0}
