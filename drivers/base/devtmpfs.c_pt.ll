; ModuleID = '/llk/IR_all_yes/drivers/base/devtmpfs.c_pt.bc'
source_filename = "../drivers/base/devtmpfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.21 }
%union.anon.21 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.31, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.req = type { ptr, %struct.completion, i32, ptr, i16, %struct.kuid_t, %struct.kgid_t, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.93, %struct.list_head, %struct.list_head, %union.anon.94 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.93 = type { %struct.list_head }
%union.anon.94 = type { %struct.hlist_node }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.104, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.105, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.106, ptr, %struct.address_space, %struct.list_head, %union.anon.107, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.104 = type { i32 }
%union.anon.105 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.106 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.107 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.84, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.35 }
%struct.llist_node = type { ptr }
%union.anon.35 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.84 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__setup_str_mount_param = internal constant [16 x i8] c"devtmpfs.mount=\00", section ".init.rodata", align 1
@__setup_mount_param = internal global %struct.obs_kernel_param { ptr @__setup_str_mount_param, ptr @mount_param, i32 0 }, section ".init.setup", align 4
@thread = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mount_dev = internal unnamed_addr global i32 1, section ".init.data", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"devtmpfs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@devtmpfs_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016devtmpfs: error mounting %i\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"devtmpfs_mount\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/base/devtmpfs.c\00", [40 x i8] zeroinitializer }, align 32
@devtmpfs_mount._entry_ptr = internal global ptr @devtmpfs_mount._entry, section ".printk_index", align 4
@devtmpfs_mount._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016devtmpfs: mounted\0A\00", [43 x i8] zeroinitializer }, align 32
@devtmpfs_mount._entry_ptr.7 = internal global ptr @devtmpfs_mount._entry.5, section ".printk_index", align 4
@__const.devtmpfs_init.opts = private unnamed_addr constant [10 x i8] c"mode=0755\00", align 1
@internal_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 0, ptr @shmem_init_fs_context, ptr @shmem_fs_parameters, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@devtmpfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013devtmpfs: unable to create devtmpfs %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"devtmpfs_init\00", [18 x i8] zeroinitializer }, align 32
@devtmpfs_init._entry_ptr = internal global ptr @devtmpfs_init._entry, section ".printk_index", align 4
@dev_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 0, ptr null, ptr null, ptr @public_dev_mount, ptr null, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@devtmpfs_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013devtmpfs: unable to register devtmpfs type %i\0A\00", [47 x i8] zeroinitializer }, align 32
@devtmpfs_init._entry_ptr.12 = internal global ptr @devtmpfs_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kdevtmpfs\00", [22 x i8] zeroinitializer }, align 32
@setup_done = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @setup_done, i64 48), ptr getelementptr (i8, ptr @setup_done, i64 48) } } }, section ".init.data", align 4
@devtmpfs_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.4, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013devtmpfs: unable to create devtmpfs %i\0A\00", [54 x i8] zeroinitializer }, align 32
@devtmpfs_init._entry_ptr.16 = internal global ptr @devtmpfs_init._entry.14, section ".printk_index", align 4
@devtmpfs_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.4, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016devtmpfs: initialized\0A\00", [39 x i8] zeroinitializer }, align 32
@devtmpfs_init._entry_ptr.19 = internal global ptr @devtmpfs_init._entry.17, section ".printk_index", align 4
@block_class = external dso_local global %struct.class, align 4
@req_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@requests = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"req_lock\00", [23 x i8] zeroinitializer }, align 32
@shmem_fs_parameters = external dso_local constant [0 x %struct.fs_parameter_spec], align 4
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"/..\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(setup_done).wait.lock\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 38, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 379, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 379, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 381, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 383, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"internal_fs_type\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 80, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant [4 x i8] c"mnt\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 62, i32 25 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 465, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"dev_fs_type\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 92, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 471, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 476, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 485, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 490, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"req_lock\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"requests\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 53, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 87, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 42, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 428, i32 31 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 431, i32 13 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 432, i32 14 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [27 x i8] c"../drivers/base/devtmpfs.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 387, i32 19 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__setup_mount_param, ptr @devtmpfs_init._entry, ptr @devtmpfs_init._entry.10, ptr @devtmpfs_init._entry.14, ptr @devtmpfs_init._entry.17, ptr @devtmpfs_init._entry_ptr, ptr @devtmpfs_init._entry_ptr.12, ptr @devtmpfs_init._entry_ptr.16, ptr @devtmpfs_init._entry_ptr.19, ptr @devtmpfs_mount._entry, ptr @devtmpfs_mount._entry.5, ptr @devtmpfs_mount._entry_ptr, ptr @devtmpfs_mount._entry_ptr.7, ptr @thread, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @internal_fs_type, ptr @mnt, ptr @.str.8, ptr @.str.9, ptr @dev_fs_type, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @req_lock, ptr @requests, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thread to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devtmpfs_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devtmpfs_mount._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @internal_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devtmpfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devtmpfs_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devtmpfs_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devtmpfs_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @requests to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mount_param(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %str, ptr noundef null, i32 noundef 0) #11
  store i32 %call, ptr @mount_dev, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devtmpfs_create_node(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca ptr, align 4
  %req = alloca %struct.req, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tmp, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %req) #11
  %1 = call ptr @memset(ptr %req, i32 255, i32 84)
  %2 = load ptr, ptr @thread, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 4
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %mode, align 4
  %uid = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 5
  %4 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 6
  %5 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %gid, align 4
  %call = call ptr @device_get_devnode(ptr noundef %dev, ptr noundef %mode, ptr noundef %uid, ptr noundef %gid, ptr noundef nonnull %tmp) #11
  %name = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %name, align 4
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp = icmp eq i16 %8, 0
  br i1 %cmp, label %if.then12, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 384, ptr %mode, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %class.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 33
  %10 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class.i, align 4
  %cmp.i.not = icmp eq ptr %11, @block_class
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode, align 4
  %. = select i1 %cmp.i.not, i16 24576, i16 8192
  %14 = or i16 %13, %.
  store i16 %14, ptr %mode, align 4
  %dev26 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 7
  %15 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %dev26, align 4
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tmp, align 4
  %done.i = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #11
  call void @_raw_spin_lock(ptr noundef nonnull @req_lock) #11
  %19 = load ptr, ptr @requests, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %req, align 4
  store ptr %req, ptr @requests, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @req_lock) #11
  %21 = load ptr, ptr @thread, align 4
  %call.i = call i32 @wake_up_process(ptr noundef %21) #11
  call void @wait_for_completion(ptr noundef %done.i) #11
  call void @kfree(ptr noundef %17) #11
  %err.i = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 2
  %22 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %req) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_devnode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devtmpfs_delete_node(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca ptr, align 4
  %req = alloca %struct.req, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #11
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tmp, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %req) #11
  %1 = call ptr @memset(ptr %req, i32 255, i32 80)
  %2 = load ptr, ptr @thread, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @device_get_devnode(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %tmp) #11
  %name = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %name, align 4
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %mode, align 4
  %dev5 = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 7
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev5, align 4
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmp, align 4
  %done.i = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #11
  call void @_raw_spin_lock(ptr noundef nonnull @req_lock) #11
  %9 = load ptr, ptr @requests, align 4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %req, align 4
  store ptr %req, ptr @requests, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @req_lock) #11
  %11 = load ptr, ptr @thread, align 4
  %call.i = call i32 @wake_up_process(ptr noundef %11) #11
  call void @wait_for_completion(ptr noundef %done.i) #11
  call void @kfree(ptr noundef %7) #11
  %err.i = getelementptr inbounds %struct.req, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %req) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devtmpfs_mount() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mount_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @thread, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call i32 @init_mount(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 32778, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end9, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call) #14
  br label %cleanup

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end9 ], [ %call, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mount(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devtmpfs_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %opts = alloca [10 x i8], align 1
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %opts) #11
  %0 = call ptr @memcpy(ptr %opts, ptr @__const.devtmpfs_init.opts, i32 10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #11
  %call = call ptr @vfs_kern_mount(ptr noundef nonnull @internal_fs_type, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %opts) #11
  store ptr %call, ptr @mnt, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call to i32
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %1) #14
  %2 = load ptr, ptr @mnt, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @register_filesystem(ptr noundef nonnull @dev_fs_type) #11
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call5, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call5) #14
  %5 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @devtmpfsd, ptr noundef nonnull %err, i32 noundef -1, ptr noundef nonnull @.str.13) #11
  %cmp.i40 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = call i32 @wake_up_process(ptr noundef %call13) #11
  store ptr %call13, ptr @thread, align 4
  call void @wait_for_completion(ptr noundef nonnull @setup_done) #11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %err, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call13 to i32
  %9 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %err, align 4
  store ptr null, ptr @thread, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then20
  %10 = phi i32 [ %8, %if.else ], [ %.pr, %if.then20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %do.end34, label %do.end27

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %10) #14
  %call30 = call i32 @unregister_filesystem(ptr noundef nonnull @dev_fs_type) #11
  %11 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err, align 4
  br label %cleanup

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %do.end27, %do.end9, %do.end
  %retval.0 = phi i32 [ %3, %do.end ], [ %6, %do.end9 ], [ %12, %do.end27 ], [ 0, %do.end34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %opts) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_kern_mount(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devtmpfsd(ptr nocapture noundef writeonly %p) #5 section ".ref.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @devtmpfs_setup(ptr noundef %p) #15
  tail call void @complete(ptr noundef nonnull @setup_done) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 %call

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @devtmpfs_work_loop() #16
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_init_fs_context(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @public_dev_mount(ptr nocapture noundef readnone %fs_type, i32 noundef %flags, ptr nocapture noundef readnone %dev_name, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mnt, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mnt_sb, align 4
  %s_active = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_active, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %s_active, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_active, ptr %s_active, i32 1, ptr elementtype(i32) %s_active) #11, !srcloc !75
  %s_umount = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 14
  tail call void @down_write(ptr noundef %s_umount) #11
  %call = tail call i32 @reconfigure_single(ptr noundef %2, i32 noundef %flags, ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @deactivate_locked_super(ptr noundef %2) #11
  %4 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_root = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 13
  %5 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %4, %if.then ], [ null, %if.end.cleanup_crit_edge ], [ %6, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reconfigure_single(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devtmpfs_setup(ptr nocapture noundef writeonly %p) unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ksys_unshare(i32 noundef 131072) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @init_mount(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str, i32 noundef 32778, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @init_chdir(ptr noundef nonnull @.str.23) #14
  %call6 = tail call i32 @init_chroot(ptr noundef nonnull @.str.24) #14
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.end.out_crit_edge ], [ 0, %if.end4 ]
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %err.0, ptr %p, align 4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @devtmpfs_work_loop() #8 align 64 {
entry:
  %parent.i.i.i.i = alloca %struct.path, align 4
  %parent.i.i = alloca %struct.path, align 4
  %stat.i.i = alloca %struct.kstat, align 8
  %p.i.i = alloca %struct.path, align 4
  %newattrs.i9.i = alloca %struct.iattr, align 8
  %path.i.i.i.i = alloca %struct.path, align 4
  %path.i.i = alloca %struct.path, align 4
  %newattrs.i.i = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.path, ptr %path.i.i.i.i, i32 0, i32 1
  %ia_mode.i.i = getelementptr inbounds %struct.iattr, ptr %newattrs.i.i, i32 0, i32 1
  %ia_uid.i.i = getelementptr inbounds %struct.iattr, ptr %newattrs.i.i, i32 0, i32 2
  %ia_gid.i.i = getelementptr inbounds %struct.iattr, ptr %newattrs.i.i, i32 0, i32 3
  %2 = getelementptr inbounds %struct.path, ptr %parent.i.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.path, ptr %p.i.i, i32 0, i32 1
  %mode.i.i.i = getelementptr inbounds %struct.kstat, ptr %stat.i.i, i32 0, i32 1
  %rdev.i.i.i = getelementptr inbounds %struct.kstat, ptr %stat.i.i, i32 0, i32 8
  %ia_uid.i16.i = getelementptr inbounds %struct.iattr, ptr %newattrs.i9.i, i32 0, i32 2
  %ia_gid.i17.i = getelementptr inbounds %struct.iattr, ptr %newattrs.i9.i, i32 0, i32 3
  %ia_mode.i18.i = getelementptr inbounds %struct.iattr, ptr %newattrs.i9.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.path, ptr %parent.i.i.i.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %__here, %entry
  call void @_raw_spin_lock(ptr noundef nonnull @req_lock) #11
  %5 = load ptr, ptr @requests, align 4
  %tobool.not74 = icmp eq ptr %5, null
  br i1 %tobool.not74, label %while.body.__here_crit_edge, label %while.body.while.body2_crit_edge

while.body.while.body2_crit_edge:                 ; preds = %while.body
  br label %while.body2

while.body.__here_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

while.body2:                                      ; preds = %while.cond3.while.end_crit_edge.while.body2_crit_edge, %while.body.while.body2_crit_edge
  %6 = phi ptr [ %110, %while.cond3.while.end_crit_edge.while.body2_crit_edge ], [ %5, %while.body.while.body2_crit_edge ]
  store ptr null, ptr @requests, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @req_lock) #11
  br label %while.body5

while.body5:                                      ; preds = %handle.exit.while.body5_crit_edge, %while.body2
  %req.073 = phi ptr [ %6, %while.body2 ], [ %8, %handle.exit.while.body5_crit_edge ]
  %7 = ptrtoint ptr %req.073 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req.073, align 4
  %name = getelementptr inbounds %struct.req, ptr %req.073, i32 0, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %mode = getelementptr inbounds %struct.req, ptr %req.073, i32 0, i32 4
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mode, align 4
  %uid = getelementptr inbounds %struct.req, ptr %req.073, i32 0, i32 5
  %gid = getelementptr inbounds %struct.req, ptr %req.073, i32 0, i32 6
  %dev = getelementptr inbounds %struct.req, ptr %req.073, i32 0, i32 7
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %uid, align 4
  %16 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack71 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #11
  %17 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 4, !annotation !76
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !76
  %call.i.i = call ptr @kern_path_create(i32 noundef -100, ptr noundef %10, ptr noundef nonnull %path.i.i, i32 noundef 0) #11
  %cmp.i.i = icmp eq ptr %call.i.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i.i = call noalias ptr @kstrdup(ptr noundef %10, i32 noundef 3264) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.create_path.exit.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.then.i.i.create_path.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_path.exit.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.then.i.i
  %call11.i.i.i = call ptr @strchr(ptr noundef nonnull %call.i.i.i, i32 noundef 47) #11
  %tobool2.not2.i.i.i = icmp eq ptr %call11.i.i.i, null
  br i1 %tobool2.not2.i.i.i, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.if.end4.i.i.i_crit_edge

for.cond.preheader.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %if.end4.i.i.i

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end8.i.i.i.if.end4.i.i.i_crit_edge, %for.cond.preheader.i.i.i.if.end4.i.i.i_crit_edge
  %call13.i.i.i = phi ptr [ %call1.i.i.i, %if.end8.i.i.i.if.end4.i.i.i_crit_edge ], [ %call11.i.i.i, %for.cond.preheader.i.i.i.if.end4.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %call13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %call13.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i.i.i) #11
  %20 = ptrtoint ptr %path.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i.i.i, align 4, !annotation !76
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !76
  %call.i.i.i.i = call ptr @kern_path_create(i32 noundef -100, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %path.i.i.i.i, i32 noundef 2) #11
  %cmp.i.i.i.i.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %call.i.i.i.i to i32
  br label %dev_mkdir.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i.i.i
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %d_inode.i.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i.i.i.i.i, align 8
  %call5.i.i.i.i = call i32 @vfs_mkdir(ptr noundef nonnull @init_user_ns, ptr noundef %26, ptr noundef %call.i.i.i.i, i16 noundef zeroext 493) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call5.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then6.i.i.i.i, label %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i.i

if.then6.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %d_inode.i1.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %call.i.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode.i1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i1.i.i.i.i, align 8
  %i_private.i.i.i.i = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 54
  %29 = ptrtoint ptr %i_private.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @thread, ptr %i_private.i.i.i.i, align 4
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then6.i.i.i.i, %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge
  call void @done_path_create(ptr noundef nonnull %path.i.i.i.i, ptr noundef %call.i.i.i.i) #11
  br label %dev_mkdir.exit.i.i.i

dev_mkdir.exit.i.i.i:                             ; preds = %if.end8.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %22, %if.then.i.i.i.i ], [ %call5.i.i.i.i, %if.end8.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i.i.i) #11
  %30 = zext i32 %retval.0.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i.i.i.i, label %dev_mkdir.exit.i.i.i.for.end.i.i.i_crit_edge [
    i32 0, label %dev_mkdir.exit.i.i.i.if.end8.i.i.i_crit_edge
    i32 -17, label %dev_mkdir.exit.i.i.i.if.end8.i.i.i_crit_edge75
  ]

dev_mkdir.exit.i.i.i.if.end8.i.i.i_crit_edge75:   ; preds = %dev_mkdir.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

dev_mkdir.exit.i.i.i.if.end8.i.i.i_crit_edge:     ; preds = %dev_mkdir.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

dev_mkdir.exit.i.i.i.for.end.i.i.i_crit_edge:     ; preds = %dev_mkdir.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

if.end8.i.i.i:                                    ; preds = %dev_mkdir.exit.i.i.i.if.end8.i.i.i_crit_edge, %dev_mkdir.exit.i.i.i.if.end8.i.i.i_crit_edge75
  %31 = ptrtoint ptr %call13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 47, ptr %call13.i.i.i, align 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %call13.i.i.i, i32 1
  %call1.i.i.i = call ptr @strchr(ptr noundef %incdec.ptr.i.i.i, i32 noundef 47) #11
  %tobool2.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.end8.i.i.i.for.end.i.i.i_crit_edge, label %if.end8.i.i.i.if.end4.i.i.i_crit_edge

if.end8.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end8.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %if.end8.i.i.i.for.end.i.i.i_crit_edge, %dev_mkdir.exit.i.i.i.for.end.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call.i.i.i) #11
  br label %create_path.exit.i.i

create_path.exit.i.i:                             ; preds = %for.end.i.i.i, %if.then.i.i.create_path.exit.i.i_crit_edge
  %call4.i.i = call ptr @kern_path_create(i32 noundef -100, ptr noundef %10, ptr noundef nonnull %path.i.i, i32 noundef 0) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %create_path.exit.i.i, %if.then.i.if.end.i.i_crit_edge
  %dentry.0.i.i = phi ptr [ %call4.i.i, %create_path.exit.i.i ], [ %call.i.i, %if.then.i.if.end.i.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %dentry.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then6.i.i, label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dentry.0.i.i to i32
  br label %handle_create.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %0, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i.i.i, align 8
  %devt.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 29
  %37 = ptrtoint ptr %devt.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %devt.i.i, align 8
  %call11.i.i = call i32 @vfs_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %36, ptr noundef %dentry.0.i.i, i16 noundef zeroext %12, i32 noundef %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool.not.i.i, label %if.then12.i.i, label %if.end8.i.i.if.end17.i.i_crit_edge

if.end8.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs.i.i) #11
  %39 = call ptr @memset(ptr %newattrs.i.i, i32 255, i32 80)
  %40 = ptrtoint ptr %ia_mode.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %12, ptr %ia_mode.i.i, align 4
  %41 = ptrtoint ptr %ia_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.unpack, ptr %ia_uid.i.i, align 8
  %42 = ptrtoint ptr %ia_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.unpack71, ptr %ia_gid.i.i, align 4
  %43 = ptrtoint ptr %newattrs.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 7, ptr %newattrs.i.i, align 8
  %d_inode.i32.i.i = getelementptr inbounds %struct.dentry, ptr %dentry.0.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %d_inode.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i32.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.i) #11
  %call14.i.i = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %dentry.0.i.i, ptr noundef nonnull %newattrs.i.i, ptr noundef null) #11
  %46 = ptrtoint ptr %d_inode.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_inode.i32.i.i, align 8
  %i_rwsem.i34.i.i = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i34.i.i) #11
  %48 = ptrtoint ptr %d_inode.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_inode.i32.i.i, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 54
  %50 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @thread, ptr %i_private.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs.i.i) #11
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then12.i.i, %if.end8.i.i.if.end17.i.i_crit_edge
  call void @done_path_create(ptr noundef nonnull %path.i.i, ptr noundef %dentry.0.i.i) #11
  br label %handle_create.exit.i

handle_create.exit.i:                             ; preds = %if.end17.i.i, %if.then6.i.i
  %retval.0.i.i = phi i32 [ %32, %if.then6.i.i ], [ %call11.i.i, %if.end17.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #11
  br label %handle.exit

if.else.i:                                        ; preds = %while.body5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent.i.i) #11
  %51 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent.i.i, align 4, !annotation !76
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !76
  %call.i10.i = call ptr @kern_path_locked(ptr noundef %10, ptr noundef nonnull %parent.i.i) #11
  %cmp.i.i11.i = icmp ugt ptr %call.i10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i11.i, label %if.then.i12.i, label %if.end.i14.i

if.then.i12.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %call.i10.i to i32
  br label %handle_remove.exit.i

if.end.i14.i:                                     ; preds = %if.else.i
  %d_inode.i.i13.i = getelementptr inbounds %struct.dentry, ptr %call.i10.i, i32 0, i32 5
  %54 = ptrtoint ptr %d_inode.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_inode.i.i13.i, align 8
  %cmp.i53.not.i.i = icmp eq ptr %55, null
  br i1 %cmp.i53.not.i.i, label %if.end.i14.i.if.end26.i.i_crit_edge, label %if.then4.i.i

if.end.i14.i.if.end26.i.i_crit_edge:              ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i

if.then4.i.i:                                     ; preds = %if.end.i14.i
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i.i) #11
  %56 = call ptr @memset(ptr %stat.i.i, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i.i) #11
  %57 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parent.i.i, align 4
  %59 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %p.i.i, align 4
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i10.i, ptr %3, align 4
  %call7.i.i = call i32 @vfs_getattr(ptr noundef nonnull %p.i.i, ptr noundef nonnull %stat.i.i, i32 noundef 3, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i15.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i15.i, label %land.lhs.true.i.i, label %if.then4.i.i.if.end25.i.i_crit_edge

if.then4.i.i.if.end25.i.i_crit_edge:              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

land.lhs.true.i.i:                                ; preds = %if.then4.i.i
  %61 = ptrtoint ptr %d_inode.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d_inode.i.i13.i, align 8
  %i_private.i.i.i = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 54
  %63 = ptrtoint ptr %i_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_private.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %64, @thread
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.if.end25.i.i_crit_edge

land.lhs.true.i.i.if.end25.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i
  %class.i.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 33
  %65 = ptrtoint ptr %class.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %class.i.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %66, @block_class
  %67 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mode.i.i.i, align 4
  %69 = and i16 %68, -4096
  br i1 %cmp.i.not.i.i.i, label %if.then1.i.i.i, label %if.else.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %69)
  %cmp2.i.i.i = icmp eq i16 %69, 24576
  br i1 %cmp2.i.i.i, label %if.then1.i.i.i.dev_mynode.exit.i.i_crit_edge, label %if.then1.i.i.i.if.end25.i.i_crit_edge

if.then1.i.i.i.if.end25.i.i_crit_edge:            ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

if.then1.i.i.i.dev_mynode.exit.i.i_crit_edge:     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_mynode.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %69)
  %cmp9.i.i.i = icmp eq i16 %69, 8192
  br i1 %cmp9.i.i.i, label %if.else.i.i.i.dev_mynode.exit.i.i_crit_edge, label %if.else.i.i.i.if.end25.i.i_crit_edge

if.else.i.i.i.if.end25.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

if.else.i.i.i.dev_mynode.exit.i.i_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_mynode.exit.i.i

dev_mynode.exit.i.i:                              ; preds = %if.else.i.i.i.dev_mynode.exit.i.i_crit_edge, %if.then1.i.i.i.dev_mynode.exit.i.i_crit_edge
  %70 = ptrtoint ptr %rdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rdev.i.i.i, align 4
  %devt.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 29
  %72 = ptrtoint ptr %devt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %devt.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp14.not.i.not.i.i = icmp eq i32 %71, %73
  br i1 %cmp14.not.i.not.i.i, label %if.then11.i.i, label %dev_mynode.exit.i.i.if.end25.i.i_crit_edge

dev_mynode.exit.i.i.if.end25.i.i_crit_edge:       ; preds = %dev_mynode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i.i

if.then11.i.i:                                    ; preds = %dev_mynode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs.i9.i) #11
  %74 = call ptr @memset(ptr %newattrs.i9.i, i32 255, i32 80)
  %75 = ptrtoint ptr %ia_uid.i16.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %ia_uid.i16.i, align 8
  %76 = ptrtoint ptr %ia_gid.i17.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %ia_gid.i17.i, align 4
  %77 = and i16 %68, -512
  %78 = ptrtoint ptr %ia_mode.i18.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %ia_mode.i18.i, align 4
  %79 = ptrtoint ptr %newattrs.i9.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 7, ptr %newattrs.i9.i, align 8
  %80 = ptrtoint ptr %d_inode.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d_inode.i.i13.i, align 8
  %i_rwsem.i.i19.i = getelementptr inbounds %struct.inode, ptr %81, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i19.i) #11
  %call16.i.i = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %call.i10.i, ptr noundef nonnull %newattrs.i9.i, ptr noundef null) #11
  %82 = ptrtoint ptr %d_inode.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %d_inode.i.i13.i, align 8
  %i_rwsem.i57.i.i = getelementptr inbounds %struct.inode, ptr %83, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i57.i.i) #11
  %84 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %2, align 4
  %d_inode.i58.i.i = getelementptr inbounds %struct.dentry, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %d_inode.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %d_inode.i58.i.i, align 8
  %call20.i.i = call i32 @vfs_unlink(ptr noundef nonnull @init_user_ns, ptr noundef %87, ptr noundef %call.i10.i, ptr noundef null) #11
  %88 = add i32 %call20.i.i, 2
  %switch.and.i.i = and i32 %88, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  %89 = zext i1 %switch.selectcmp.i.i to i32
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs.i9.i) #11
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then11.i.i, %dev_mynode.exit.i.i.if.end25.i.i_crit_edge, %if.else.i.i.i.if.end25.i.i_crit_edge, %if.then1.i.i.i.if.end25.i.i_crit_edge, %land.lhs.true.i.i.if.end25.i.i_crit_edge, %if.then4.i.i.if.end25.i.i_crit_edge
  %deleted.1.i.i = phi i32 [ 0, %if.then4.i.i.if.end25.i.i_crit_edge ], [ %89, %if.then11.i.i ], [ 0, %dev_mynode.exit.i.i.if.end25.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.end25.i.i_crit_edge ], [ 0, %if.then1.i.i.i.if.end25.i.i_crit_edge ], [ 0, %if.else.i.i.i.if.end25.i.i_crit_edge ]
  %err.0.i.i = phi i32 [ %call7.i.i, %if.then4.i.i.if.end25.i.i_crit_edge ], [ %call20.i.i, %if.then11.i.i ], [ 0, %dev_mynode.exit.i.i.if.end25.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.if.end25.i.i_crit_edge ], [ 0, %if.then1.i.i.i.if.end25.i.i_crit_edge ], [ 0, %if.else.i.i.i.if.end25.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i.i) #11
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i.i) #11
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.end.i14.i.if.end26.i.i_crit_edge
  %deleted.2.i.i = phi i32 [ %deleted.1.i.i, %if.end25.i.i ], [ 0, %if.end.i14.i.if.end26.i.i_crit_edge ]
  %err.1.i.i = phi i32 [ %err.0.i.i, %if.end25.i.i ], [ -2, %if.end.i14.i.if.end26.i.i_crit_edge ]
  call void @dput(ptr noundef %call.i10.i) #11
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %2, align 4
  %d_inode.i59.i.i = getelementptr inbounds %struct.dentry, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %d_inode.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %d_inode.i59.i.i, align 8
  %i_rwsem.i60.i.i = getelementptr inbounds %struct.inode, ptr %93, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i60.i.i) #11
  call void @path_put(ptr noundef nonnull %parent.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deleted.2.i.i)
  %tobool29.not.i.i = icmp eq i32 %deleted.2.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end26.i.i.handle_remove.exit.i_crit_edge, label %land.lhs.true30.i.i

if.end26.i.i.handle_remove.exit.i_crit_edge:      ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_remove.exit.i

land.lhs.true30.i.i:                              ; preds = %if.end26.i.i
  %call31.i.i = call ptr @strchr(ptr noundef %10, i32 noundef 47) #11
  %tobool32.not.i.i = icmp eq ptr %call31.i.i, null
  br i1 %tobool32.not.i.i, label %land.lhs.true30.i.i.handle_remove.exit.i_crit_edge, label %if.then33.i.i

land.lhs.true30.i.i.handle_remove.exit.i_crit_edge: ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_remove.exit.i

if.then33.i.i:                                    ; preds = %land.lhs.true30.i.i
  %call.i.i20.i = call noalias ptr @kstrdup(ptr noundef %10, i32 noundef 3264) #11
  %tobool.not.i.i21.i = icmp eq ptr %call.i.i20.i, null
  br i1 %tobool.not.i.i21.i, label %if.then33.i.i.handle_remove.exit.i_crit_edge, label %if.then33.i.i.for.cond.i.i.i_crit_edge

if.then33.i.i.for.cond.i.i.i_crit_edge:           ; preds = %if.then33.i.i
  br label %for.cond.i.i.i

if.then33.i.i.handle_remove.exit.i_crit_edge:     ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_remove.exit.i

for.cond.i.i.i:                                   ; preds = %dev_rmdir.exit.i.i.i.for.cond.i.i.i_crit_edge, %if.then33.i.i.for.cond.i.i.i_crit_edge
  %call1.i.i23.i = call ptr @strrchr(ptr noundef nonnull %call.i.i20.i, i32 noundef 47) #11
  %tobool2.not.i.i24.i = icmp eq ptr %call1.i.i23.i, null
  br i1 %tobool2.not.i.i24.i, label %for.cond.i.i.i.for.end.i.i32.i_crit_edge, label %if.end4.i.i27.i

for.cond.i.i.i.for.end.i.i32.i_crit_edge:         ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i32.i

if.end4.i.i27.i:                                  ; preds = %for.cond.i.i.i
  %94 = ptrtoint ptr %call1.i.i23.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %call1.i.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent.i.i.i.i) #11
  %95 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent.i.i.i.i, align 4, !annotation !76
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !76
  %call.i.i.i25.i = call ptr @kern_path_locked(ptr noundef nonnull %call.i.i20.i, ptr noundef nonnull %parent.i.i.i.i) #11
  %cmp.i.i.i.i26.i = icmp ugt ptr %call.i.i.i25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i26.i, label %dev_rmdir.exit.thread.i.i.i, label %if.end.i.i.i29.i

dev_rmdir.exit.thread.i.i.i:                      ; preds = %if.end4.i.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent.i.i.i.i) #11
  br label %for.end.i.i32.i

if.end.i.i.i29.i:                                 ; preds = %if.end4.i.i27.i
  %d_inode.i.i.i.i28.i = getelementptr inbounds %struct.dentry, ptr %call.i.i.i25.i, i32 0, i32 5
  %97 = ptrtoint ptr %d_inode.i.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %d_inode.i.i.i.i28.i, align 8
  %cmp.i22.not.i.i.i.i = icmp eq ptr %98, null
  br i1 %cmp.i22.not.i.i.i.i, label %if.end.i.i.i29.i.dev_rmdir.exit.i.i.i_crit_edge, label %if.then4.i.i.i.i

if.end.i.i.i29.i.dev_rmdir.exit.i.i.i_crit_edge:  ; preds = %if.end.i.i.i29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_rmdir.exit.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i.i29.i
  %i_private.i.i.i30.i = getelementptr inbounds %struct.inode, ptr %98, i32 0, i32 54
  %99 = ptrtoint ptr %i_private.i.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_private.i.i.i30.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %100, @thread
  br i1 %cmp.i.i.i.i, label %if.then6.i.i.i31.i, label %if.then4.i.i.i.i.dev_rmdir.exit.i.i.i_crit_edge

if.then4.i.i.i.i.dev_rmdir.exit.i.i.i_crit_edge:  ; preds = %if.then4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_rmdir.exit.i.i.i

if.then6.i.i.i31.i:                               ; preds = %if.then4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %4, align 4
  %d_inode.i24.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %d_inode.i24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %d_inode.i24.i.i.i.i, align 8
  %call9.i.i.i.i = call i32 @vfs_rmdir(ptr noundef nonnull @init_user_ns, ptr noundef %104, ptr noundef %call.i.i.i25.i) #11
  br label %dev_rmdir.exit.i.i.i

dev_rmdir.exit.i.i.i:                             ; preds = %if.then6.i.i.i31.i, %if.then4.i.i.i.i.dev_rmdir.exit.i.i.i_crit_edge, %if.end.i.i.i29.i.dev_rmdir.exit.i.i.i_crit_edge
  %err.0.i.i.i.i = phi i32 [ %call9.i.i.i.i, %if.then6.i.i.i31.i ], [ -1, %if.then4.i.i.i.i.dev_rmdir.exit.i.i.i_crit_edge ], [ -1, %if.end.i.i.i29.i.dev_rmdir.exit.i.i.i_crit_edge ]
  call void @dput(ptr noundef %call.i.i.i25.i) #11
  %105 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %4, align 4
  %d_inode.i25.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %d_inode.i25.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %d_inode.i25.i.i.i.i, align 8
  %i_rwsem.i.i.i.i.i = getelementptr inbounds %struct.inode, ptr %108, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i.i.i.i.i) #11
  call void @path_put(ptr noundef nonnull %parent.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent.i.i.i.i) #11
  %tobool6.not.i.i.i = icmp eq i32 %err.0.i.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %dev_rmdir.exit.i.i.i.for.cond.i.i.i_crit_edge, label %dev_rmdir.exit.i.i.i.for.end.i.i32.i_crit_edge

dev_rmdir.exit.i.i.i.for.end.i.i32.i_crit_edge:   ; preds = %dev_rmdir.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i32.i

dev_rmdir.exit.i.i.i.for.cond.i.i.i_crit_edge:    ; preds = %dev_rmdir.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.i

for.end.i.i32.i:                                  ; preds = %dev_rmdir.exit.i.i.i.for.end.i.i32.i_crit_edge, %dev_rmdir.exit.thread.i.i.i, %for.cond.i.i.i.for.end.i.i32.i_crit_edge
  call void @kfree(ptr noundef nonnull %call.i.i20.i) #11
  br label %handle_remove.exit.i

handle_remove.exit.i:                             ; preds = %for.end.i.i32.i, %if.then33.i.i.handle_remove.exit.i_crit_edge, %land.lhs.true30.i.i.handle_remove.exit.i_crit_edge, %if.end26.i.i.handle_remove.exit.i_crit_edge, %if.then.i12.i
  %retval.0.i33.i = phi i32 [ %53, %if.then.i12.i ], [ %err.1.i.i, %land.lhs.true30.i.i.handle_remove.exit.i_crit_edge ], [ %err.1.i.i, %if.end26.i.i.handle_remove.exit.i_crit_edge ], [ %err.1.i.i, %if.then33.i.i.handle_remove.exit.i_crit_edge ], [ %err.1.i.i, %for.end.i.i32.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent.i.i) #11
  br label %handle.exit

handle.exit:                                      ; preds = %handle_remove.exit.i, %handle_create.exit.i
  %retval.0.i = phi i32 [ %retval.0.i.i, %handle_create.exit.i ], [ %retval.0.i33.i, %handle_remove.exit.i ]
  %err = getelementptr inbounds %struct.req, ptr %req.073, i32 0, i32 2
  %109 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %retval.0.i, ptr %err, align 4
  %done = getelementptr inbounds %struct.req, ptr %req.073, i32 0, i32 1
  call void @complete(ptr noundef %done) #11
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %while.cond3.while.end_crit_edge, label %handle.exit.while.body5_crit_edge

handle.exit.while.body5_crit_edge:                ; preds = %handle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body5

while.cond3.while.end_crit_edge:                  ; preds = %handle.exit
  call void @_raw_spin_lock(ptr noundef nonnull @req_lock) #11
  %110 = load ptr, ptr @requests, align 4
  %tobool.not = icmp eq ptr %110, null
  br i1 %tobool.not, label %while.cond3.while.end_crit_edge.__here_crit_edge, label %while.cond3.while.end_crit_edge.while.body2_crit_edge

while.cond3.while.end_crit_edge.while.body2_crit_edge: ; preds = %while.cond3.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body2

while.cond3.while.end_crit_edge.__here_crit_edge: ; preds = %while.cond3.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %while.cond3.while.end_crit_edge.__here_crit_edge, %while.body.__here_crit_edge
  %111 = call i32 @llvm.read_register.i32(metadata !65) #11
  %and.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 212
  %115 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 ptrtoint (ptr blockaddress(@devtmpfs_work_loop, %__here) to i32), ptr %task_state_change, align 4
  %116 = load ptr, ptr %task, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 1, ptr %116, align 128
  call void @_raw_spin_unlock(ptr noundef nonnull @req_lock) #11
  call void @schedule() #11
  br label %while.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_unshare(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chdir(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chroot(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_path_create(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @done_path_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_path_locked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rmdir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { cold }
attributes #16 = { noreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__setup_mount_param, !1, !"__setup_mount_param", i1 false, i1 false}
!1 = !{!"../drivers/base/devtmpfs.c", i32 60, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/base/devtmpfs.c", i32 379, i32 19}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/base/devtmpfs.c", i32 379, i32 31}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/base/devtmpfs.c", i32 381, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @devtmpfs_mount._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @devtmpfs_mount._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/base/devtmpfs.c", i32 383, i32 3}
!14 = !{ptr @devtmpfs_mount._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @devtmpfs_mount._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/base/devtmpfs.c", i32 465, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @devtmpfs_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @devtmpfs_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/base/devtmpfs.c", i32 471, i32 3}
!23 = !{ptr @devtmpfs_init._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @devtmpfs_init._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/base/devtmpfs.c", i32 476, i32 11}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/base/devtmpfs.c", i32 485, i32 3}
!29 = !{ptr @devtmpfs_init._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @devtmpfs_init._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/base/devtmpfs.c", i32 490, i32 2}
!33 = !{ptr @devtmpfs_init._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @devtmpfs_init._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @thread, !36, !"thread", i1 false, i1 false}
!36 = !{!"../drivers/base/devtmpfs.c", i32 38, i32 28}
!37 = !{ptr @mnt, !38, !"mnt", i1 false, i1 false}
!38 = !{!"../drivers/base/devtmpfs.c", i32 62, i32 25}
!39 = !{ptr @__setup_str_mount_param, !1, !"__setup_str_mount_param", i1 false, i1 false}
!40 = !{ptr @init_completion.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/completion.h", i32 87, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/base/devtmpfs.c", i32 42, i32 8}
!45 = !{ptr @req_lock, !44, !"req_lock", i1 false, i1 false}
!46 = !{ptr @requests, !47, !"requests", i1 false, i1 false}
!47 = !{!"../drivers/base/devtmpfs.c", i32 53, i32 4}
!48 = !{ptr @mount_dev, !49, !"mount_dev", i1 false, i1 false}
!49 = !{!"../drivers/base/devtmpfs.c", i32 40, i32 23}
!50 = !{ptr @internal_fs_type, !51, !"internal_fs_type", i1 false, i1 false}
!51 = !{!"../drivers/base/devtmpfs.c", i32 80, i32 32}
!52 = !{ptr @dev_fs_type, !53, !"dev_fs_type", i1 false, i1 false}
!53 = !{!"../drivers/base/devtmpfs.c", i32 92, i32 32}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/base/devtmpfs.c", i32 428, i32 31}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/base/devtmpfs.c", i32 431, i32 13}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/base/devtmpfs.c", i32 432, i32 14}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/base/devtmpfs.c", i32 415, i32 3}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/base/devtmpfs.c", i32 387, i32 19}
!64 = !{ptr @setup_done, !63, !"setup_done", i1 false, i1 false}
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
!75 = !{i64 2148218294, i64 2148218320, i64 2148218349, i64 2148218383, i64 2148218414, i64 2148218437}
!76 = !{!"auto-init"}
