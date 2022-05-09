; ModuleID = '/llk/IR_all_yes/fs/ubifs/super.c_pt.bc'
source_filename = "../fs/ubifs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.match_token = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fscrypt_operations = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.ubifs_key = type { [1 x i64] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.79 = type { ptr }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.84, i32, i32, i32, [64 x i8] }
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
%struct.ubifs_compressor = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.ubifs_bud = type { i32, i32, i32, %struct.list_head, %struct.rb_node, ptr }
%struct.ubifs_orphan = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, i8 }
%struct.substring_t = type { ptr, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.62 = type { %struct.work_struct }
%struct.ubifs_sb_node = type { %struct.ubifs_ch, [2 x i8], i8, i8, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i16, [2 x i8], i32, i32, i64, i32, [16 x i8], i32, [64 x i8], [64 x i8], i16, [64 x i8], [3774 x i8] }

@ubifs_default_version = dso_local global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_str_default_version = internal constant [22 x i8] c"ubifs.default_version\00", align 1
@ubifs_default_version_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @ubifs_default_version_set, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_default_version = internal constant %struct.kernel_param { ptr @__param_str_default_version, ptr null, ptr @ubifs_default_version_ops, i16 384, i8 -1, i8 0, %union.anon.74 { ptr @ubifs_default_version } }, section "__param", align 4
@ubifs_iget.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ubifs\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ubifs_iget\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ubifs/super.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UBIFS DBG gen (pid %d): inode %lu\0A\00", [61 x i8] zeroinitializer }, align 32
@ubifs_file_address_operations = external dso_local constant %struct.address_space_operations, align 4
@ubifs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ubifs_file_operations = external dso_local constant %struct.file_operations, align 4
@ubifs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ubifs_dir_operations = external dso_local constant %struct.file_operations, align 4
@ubifs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"inode %lu validation failed, error %d\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read inode %lu, error %d\00", [61 x i8] zeroinitializer }, align 32
@ubifs_super_operations = dso_local constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @ubifs_alloc_inode, ptr null, ptr @ubifs_free_inode, ptr @ubifs_dirty_inode, ptr @ubifs_write_inode, ptr @ubifs_drop_inode, ptr @ubifs_evict_inode, ptr @ubifs_put_super, ptr @ubifs_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_statfs, ptr @ubifs_remount_fs, ptr null, ptr @ubifs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias316 = internal constant [21 x i8] c"ubifs.alias=fs-ubifs\00", section ".modinfo", align 1
@__initcall__kmod_ubifs__348_2467_ubifs_init7 = internal global ptr @ubifs_init, section ".initcall7.init", align 4
@ubifs_infos = external dso_local global %struct.list_head, align 4
@ubifs_clean_zn_cnt = external dso_local global %struct.atomic_t, align 4
@ubifs_shrinker_info = internal global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @ubifs_shrink_count, ptr @ubifs_shrink_scan, i32 0, i32 2, i32 0, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@ubifs_inode_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ubifs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 0, ptr null, ptr null, ptr @ubifs_mount, ptr @kill_ubifs_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ubifs_exit = internal global ptr @ubifs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file349 = internal constant [26 x i8] c"ubifs.file=fs/ubifs/ubifs\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [18 x i8] c"ubifs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version351 = internal constant [16 x i8] c"ubifs.version=1\00", section ".modinfo", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.7 }, section "__modver", align 4
@__UNIQUE_ID_author352 = internal constant [45 x i8] c"ubifs.author=Artem Bityutskiy, Adrian Hunter\00", section ".modinfo", align 1
@__UNIQUE_ID_description353 = internal constant [42 x i8] c"ubifs.description=UBIFS - UBI File System\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"inode is too large (%lld)\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"inode %lu uses '%s' compression, but it was not compiled in\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ubifs/misc.h\00", [16 x i8] zeroinitializer }, align 32
@ubifs_compressors = external dso_local local_unnamed_addr global [4 x ptr], align 4
@ubifs_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ui->ui_mutex\00", [18 x i8] zeroinitializer }, align 32
@ubifs_alloc_inode.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ui->xattr_sem\00", [17 x i8] zeroinitializer }, align 32
@ubifs_alloc_inode.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ui->ui_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mutex_is_locked(&ui->ui_mutex)\00", [33 x i8] zeroinitializer }, align 32
@ubifs_dirty_inode.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.3, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubifs_dirty_inode\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"!ui->xattr\00", [21 x i8] zeroinitializer }, align 32
@ubifs_write_inode.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubifs_write_inode\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBIFS DBG gen (pid %d): inode %lu, mode %#x, nlink %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't write inode %lu, error %d\00", [32 x i8] zeroinitializer }, align 32
@ubifs_evict_inode.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubifs_evict_inode\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBIFS DBG gen (pid %d): inode %lu, mode %#x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"!atomic_read(&inode->i_count)\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't delete inode %lu, error %d\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"un-mount UBI device %d\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"c->bi.idx_growth == 0\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c->bi.dd_growth == 0\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"c->bi.data_growth == 0\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to write master node, error %d\00", [58 x i8] zeroinitializer }, align 32
@ubifs_umount.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ubifs_umount\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"UBIFS DBG gen (pid %d): un-mounting UBI device %d, volume %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ubifs_infos_lock = external dso_local global %struct.spinlock, align 4
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"orphan list not empty at unmount\00", [63 x i8] zeroinitializer }, align 32
@ubifs_statfs.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ubifs_statfs\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"UBIFS DBG gen (pid %d): free space %lld bytes (%lld blocks)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"buf->f_bfree <= c->block_cnt\00", [35 x i8] zeroinitializer }, align 32
@ubifs_remount_fs.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_remount_fs\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBIFS DBG gen (pid %d): old flags %#lx, new flags %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid or unknown remount parameter\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot re-mount R/W due to prior errors\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot re-mount R/W - UBI volume is R/O\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot re-mount R/O due to prior errors\00", [56 x i8] zeroinitializer }, align 32
@ubifs_remount_fs.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.45, i8 1, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBIFS DBG gen (pid %d): disable bulk-read\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"c->lst.taken_empty_lebs > 0\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [13 x %struct.match_token], [56 x i8] } { [13 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.58 }, %struct.match_token { i32 1, ptr @.str.59 }, %struct.match_token { i32 2, ptr @.str.60 }, %struct.match_token { i32 3, ptr @.str.61 }, %struct.match_token { i32 4, ptr @.str.62 }, %struct.match_token { i32 5, ptr @.str.63 }, %struct.match_token { i32 6, ptr @.str.64 }, %struct.match_token { i32 8, ptr @.str.65 }, %struct.match_token { i32 9, ptr @.str.66 }, %struct.match_token { i32 10, ptr @.str.67 }, %struct.match_token { i32 10, ptr @.str.68 }, %struct.match_token { i32 7, ptr @.str.69 }, %struct.match_token { i32 11, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lzo\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zlib\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zstd\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown compressor \22%s\22\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"report\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown assert action \22%s\22\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unrecognized mount option \22%s\22 or missing value\00", [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fast_unmount\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"norm_unmount\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bulk_read\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no_bulk_read\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chk_data_crc\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no_chk_data_crc\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"compr=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"auth_key=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auth_hash_name=%s\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ubi=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vol=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"assert=%s\00", [22 x i8] zeroinitializer }, align 32
@parse_standard_option._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\015UBIFS: parse %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parse_standard_option\00", [42 x i8] zeroinitializer }, align 32
@parse_standard_option._entry_ptr = internal global ptr @parse_standard_option._entry, section ".printk_index", align 4
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"the file-system is not R/W-compatible\00", [58 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"on-flash format version is w%d/r%d, but software only supports up to version w%d/r%d\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"completing deferred recovery\00", [35 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c->tot_orphans == 0\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot spawn \22%s\22, error %d\00", [36 x i8] zeroinitializer }, align 32
@ubifs_remount_rw.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 1, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_remount_rw\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UBIFS DBG gen (pid %d): re-mounted read-write\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"deferred recovery completed\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c->dark_wm > 0\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"insufficient free space to mount in R/W mode\00", [51 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"!c->need_recovery\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"!c->ro_mount\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"c->bulk_read == 1\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"cannot allocate %d bytes of memory for bulk-read, disabling it\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",fast_unmount\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",norm_unmount\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",bulk_read\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",no_bulk_read\00", [18 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",chk_data_crc\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c",no_chk_data_crc\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",compr=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",assert=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",ubi=%d,vol=%d\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubifs_inode_slab\00", [47 x i8] zeroinitializer }, align 32
@ubifs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 2450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013UBIFS error (pid %d): cannot register file system, error %d\00", [34 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ubifs_init\00", [21 x i8] zeroinitializer }, align 32
@ubifs_init._entry_ptr = internal global ptr @ubifs_init._entry, section ".printk_index", align 4
@ubifs_mount.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 2, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ubifs_mount\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBIFS DBG gen (pid %d): name %s, flags %#x\0A\00", [52 x i8] zeroinitializer }, align 32
@ubifs_mount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 2289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013UBIFS error (pid: %d): cannot open \22%s\22, error %d\00", [44 x i8] zeroinitializer }, align 32
@ubifs_mount._entry_ptr = internal global ptr @ubifs_mount._entry, section ".printk_index", align 4
@ubifs_mount.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.103, i8 2, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBIFS DBG gen (pid %d): opened ubi%d_%d\0A\00", [55 x i8] zeroinitializer }, align 32
@ubifs_mount.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.104, i8 2, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UBIFS DBG gen (pid %d): this ubi volume is already mounted\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"full atime support is enabled.\00", [33 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&c->cnt_lock\00", [19 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.107 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&c->cs_lock\00", [20 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.109 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&c->buds_lock\00", [18 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.111 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&c->space_lock\00", [17 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.113 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&c->orphan_lock\00", [16 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.115 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&c->commit_sem\00", [17 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.117 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&c->lp_mutex\00", [19 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.119 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&c->tnc_mutex\00", [18 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.121 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&c->log_mutex\00", [18 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.123 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&c->umount_mutex\00", [47 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.125 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&c->bu_mutex\00", [19 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.127 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&c->write_reserve_mutex\00", [40 x i8] zeroinitializer }, align 32
@alloc_ubifs_info.__key.129 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&c->cmt_wq\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ubifs_%d_%d\00", [20 x i8] zeroinitializer }, align 32
@ubifs_xattr_handlers = external dso_local global [0 x ptr], align 4
@ubifs_crypt_operations = external dso_local constant %struct.fscrypt_operations, align 4
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"err < 0\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"can't format empty UBI volume: read-only %s\00", [52 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UBI volume\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mount\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot mount read-write - read-only media\00", [54 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"'compressor \22%s\22 is not compiled in\00", [60 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ubifs_bgt%d_%d\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"recovery needed\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"recovery deferred\00", [46 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"recovery completed\00", [45 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UBIFS: mounted UBI device %d, volume %d, name \22%s\22%s\00", [43 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c", R/O mode\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.145 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"LEB size: %d bytes (%d KiB), min./max. I/O unit sizes: %d bytes/%d bytes\00", [55 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"FS size: %lld bytes (%lld MiB, %d LEBs), max %d LEBs, journal size %lld bytes (%lld MiB, %d LEBs)\00", [62 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"reserved for root: %llu bytes (%llu KiB)\00", [55 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"media format: w%d/r%d (latest is w%d/r%d), UUID %pUB%s\00", [41 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c", big LPT model\00", [16 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c", small LPT model\00", [46 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.152, i8 1, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mount_ubifs\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): default compressor:  %s\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.153, i8 1, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): data journal heads:  %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.154, i8 1, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBIFS DBG gen (pid %d): log LEBs:            %d (%d - %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.155, i8 1, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBIFS DBG gen (pid %d): LPT area LEBs:       %d (%d - %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.156, i8 1, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBIFS DBG gen (pid %d): orphan area LEBs:    %d (%d - %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.157, i8 1, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UBIFS DBG gen (pid %d): main area LEBs:      %d (%d - %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.158, i8 1, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): index LEBs:          %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.159, i8 1, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UBIFS DBG gen (pid %d): total index bytes:   %llu (%llu KiB, %llu MiB)\0A\00", [56 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.160, i8 1, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): key hash type:       %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.161, i8 1, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): tree fanout:         %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.162, i8 1, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): reserved GC LEB:     %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.163, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): max. znode size      %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.164, i8 1, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): max. index node size %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.165, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"UBIFS DBG gen (pid %d): node sizes:          data %zu, inode %zu, dentry %zu\0A\00", [50 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.166, i8 1, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"UBIFS DBG gen (pid %d): node sizes:          trun %zu, sb %zu, master %zu\0A\00", [53 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.167, i8 1, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"UBIFS DBG gen (pid %d): node sizes:          ref %zu, cmt. start %zu, orph %zu\0A\00", [48 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.168, i8 1, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"UBIFS DBG gen (pid %d): max. node sizes:     data %zu, inode %zu dentry %zu, idx %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.169, i8 1, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): dead watermark:      %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.170, i8 1, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): dark watermark:      %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.171, i8 1, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBIFS DBG gen (pid %d): LEB overhead:        %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.172, i8 1, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UBIFS DBG gen (pid %d): max. dark space:     %lld (%lld KiB, %lld MiB)\0A\00", [56 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.173, i8 1, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UBIFS DBG gen (pid %d): maximum bud bytes:   %lld (%lld KiB, %lld MiB)\0A\00", [56 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.174, i8 1, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UBIFS DBG gen (pid %d): BG commit bud bytes: %lld (%lld KiB, %lld MiB)\0A\00", [56 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.175, i8 1, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UBIFS DBG gen (pid %d): current bud bytes    %lld (%lld KiB, %lld MiB)\0A\00", [56 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.176, i8 1, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBIFS DBG gen (pid %d): max. seq. number:    %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.177, i8 1, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.177 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBIFS DBG gen (pid %d): commit number:       %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.178, i8 1, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBIFS DBG gen (pid %d): max. xattrs per inode: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mount_ubifs.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.151, ptr @.str.2, ptr @.str.179, i8 1, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBIFS DBG gen (pid %d): max orphans:           %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBI volume is corrupted - read-only mode\00", [55 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read-only UBI device\00", [43 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"static UBI volume - read-only mode\00", [61 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"too small LEBs (%d bytes), min. is %d bytes\00", [52 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"too few LEBs (%d), min. is %d\00", [34 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad min. I/O size %d\00", [43 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bad write buffer size %d for %d min. I/O unit\00", [50 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"too small LEB size %d, at least %d needed\00", [54 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"too small log %d LEBs, required min. %d LEBs\00", [51 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no LEB for GC\00", [18 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max_xattrs < c->max_orphans\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.195 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 8, i64 33, i64 58]
@__sancov_gen_cov_switch_values.197 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 33, i64 58, i64 95]
@___asan_gen_.198 = private unnamed_addr constant [22 x i8] c"ubifs_default_version\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 44, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant [26 x i8] c"ubifs_default_version_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 39, i32 38 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 116, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 255, i32 15 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 262, i32 15 }
@___asan_gen_.222 = private unnamed_addr constant [23 x i8] c"ubifs_super_operations\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2048, i32 31 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c"ubifs_shrinker_info\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 57, i32 24 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"ubifs_inode_slab\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 54, i32 27 }
@___asan_gen_.231 = private unnamed_addr constant [14 x i8] c"ubifs_fs_type\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2348, i32 32 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2490, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 79, i32 16 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 99, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 103, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 277, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 278, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 279, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 403, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 406, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 302, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 323, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 328, i32 17 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 364, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 365, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 382, i32 16 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1925, i32 15 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1933, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1934, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1935, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1984, i32 18 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1664, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 902, i32 16 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 417, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 433, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2004, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2008, i32 16 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2014, i32 17 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2018, i32 17 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2026, i32 17 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2035, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2043, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1036, i32 31 }
@___asan_gen_.357 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 980, i32 28 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1077, i32 22 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1079, i32 27 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1081, i32 27 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1083, i32 27 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1086, i32 18 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1101, i32 21 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1103, i32 26 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1105, i32 26 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1108, i32 18 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1140, i32 18 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 981, i32 21 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 982, i32 21 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 983, i32 18 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 984, i32 21 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 985, i32 21 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 986, i32 24 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 987, i32 23 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 988, i32 17 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 989, i32 23 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 990, i32 15 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 991, i32 15 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 992, i32 15 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1012, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1013, i32 22 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1708, i32 16 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1709, i32 16 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1731, i32 16 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1748, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1789, i32 11 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1793, i32 16 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1830, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1835, i32 16 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1232, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1234, i32 16 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1882, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1883, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1201, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1215, i32 17 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 442, i32 15 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 444, i32 15 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 447, i32 15 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 449, i32 15 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 452, i32 15 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 454, i32 15 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 457, i32 17 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 461, i32 16 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 462, i32 16 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2426, i32 39 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2449, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2278, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2288, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2299, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2312, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2324, i32 17 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2133, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2134, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2135, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2136, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2137, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2138, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2139, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2140, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2141, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2142, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2143, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2144, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2145, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2202, i32 33 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 2223, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1280, i32 16 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1281, i32 20 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1281, i32 35 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1287, i32 16 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1350, i32 16 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1371, i32 23 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1391, i32 16 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1529, i32 17 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1532, i32 17 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1551, i32 15 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1553, i32 19 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1553, i32 34 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1556, i32 15 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1559, i32 15 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1562, i32 15 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1564, i32 15 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1567, i32 18 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1567, i32 38 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1569, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1570, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1572, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1574, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1576, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1578, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1580, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1581, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1584, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1585, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1586, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1587, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1588, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1589, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1591, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1593, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1595, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1598, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1599, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1600, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1602, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1604, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1607, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1610, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1612, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1613, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1614, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 1615, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 516, i32 17 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 521, i32 16 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 526, i32 16 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 540, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 546, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 552, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 563, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 698, i32 16 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 713, i32 16 }
@___asan_gen_.796 = private constant [20 x i8] c"../fs/ubifs/super.c\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 805, i32 16 }
@___asan_gen_.798 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.799 = private unnamed_addr constant [19 x i8] c"../fs/ubifs/misc.h\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 283, i32 2 }
@llvm.compiler.used = appending global [215 x ptr] [ptr @__UNIQUE_ID_alias316, ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_license350, ptr @__UNIQUE_ID_version351, ptr @__exitcall_ubifs_exit, ptr @__initcall__kmod_ubifs__348_2467_ubifs_init7, ptr @__modver_attr, ptr @__param_default_version, ptr @parse_standard_option._entry, ptr @parse_standard_option._entry_ptr, ptr @ubifs_exit, ptr @ubifs_init._entry, ptr @ubifs_init._entry_ptr, ptr @ubifs_mount._entry, ptr @ubifs_mount._entry_ptr, ptr @ubifs_default_version, ptr @ubifs_default_version_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ubifs_super_operations, ptr @ubifs_shrinker_info, ptr @ubifs_inode_slab, ptr @ubifs_fs_type, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @ubifs_alloc_inode.__key, ptr @.str.13, ptr @ubifs_alloc_inode.__key.14, ptr @.str.15, ptr @ubifs_alloc_inode.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @tokens, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @alloc_ubifs_info.__key, ptr @.str.106, ptr @alloc_ubifs_info.__key.107, ptr @.str.108, ptr @alloc_ubifs_info.__key.109, ptr @.str.110, ptr @alloc_ubifs_info.__key.111, ptr @.str.112, ptr @alloc_ubifs_info.__key.113, ptr @.str.114, ptr @alloc_ubifs_info.__key.115, ptr @.str.116, ptr @alloc_ubifs_info.__key.117, ptr @.str.118, ptr @alloc_ubifs_info.__key.119, ptr @.str.120, ptr @alloc_ubifs_info.__key.121, ptr @.str.122, ptr @alloc_ubifs_info.__key.123, ptr @.str.124, ptr @alloc_ubifs_info.__key.125, ptr @.str.126, ptr @alloc_ubifs_info.__key.127, ptr @.str.128, ptr @alloc_ubifs_info.__key.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190], section "llvm.metadata"
@0 = internal global [201 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_default_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_default_version_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_super_operations to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_shrinker_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_inode_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_alloc_inode.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_alloc_inode.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_standard_option._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubifs_mount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_ubifs_info.__key.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubifs_iget(ptr noundef %sb, i32 noundef %inum) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.ubifs_key, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #13
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %key, align 8, !annotation !443
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_iget.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_iget, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !444

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_iget.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.3, i32 noundef %8, i32 noundef %inum) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %inum) #13
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup147_crit_edge, label %if.end8

do.end.cleanup147_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup147

if.end8:                                          ; preds = %do.end
  %i_state = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 24
  %9 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state, align 8
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.cleanup147_crit_edge, label %if.end11

if.end8.cleanup147_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup147

if.end11:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3136, i32 noundef 4256) #16
  %tobool14.not = icmp eq ptr %call7.i, null
  br i1 %tobool14.not, label %if.end11.out_crit_edge, label %if.end16

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end16:                                         ; preds = %if.end11
  %i_ino = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %14 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %key, align 8
  %arrayidx1.i = getelementptr inbounds [2 x i32], ptr %key, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx1.i, align 4
  %call.i = call i32 @ubifs_tnc_locate(ptr noundef %2, ptr noundef nonnull %key, ptr noundef nonnull %call7.i, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_ino_crit_edge

if.end16.out_ino_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_ino

if.end20:                                         ; preds = %if.end16
  %i_flags = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 4
  %16 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_flags, align 4
  %or = or i32 %17, 128
  store i32 %or, ptr %i_flags, align 4
  %nlink = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 10
  %18 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlink, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  call void @set_nlink(ptr noundef nonnull %call4, i32 noundef %20) #13
  %uid = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 11
  %21 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %uid, align 8
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = call i32 @make_kuid(ptr noundef %27, i32 noundef %23) #13
  %28 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %gid = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 12
  %29 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gid, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 3
  %32 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i308 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 53
  %34 = ptrtoint ptr %s_user_ns.i.i308 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_user_ns.i.i308, align 8
  %call1.i309 = call i32 @make_kgid(ptr noundef %35, i32 noundef %31) #13
  %36 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call1.i309, ptr %i_gid.i, align 8
  %atime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 4
  %37 = ptrtoint ptr %atime_sec to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %atime_sec, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38)
  %i_atime = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 15
  %40 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %i_atime, align 8
  %atime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 7
  %41 = ptrtoint ptr %atime_nsec to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %atime_nsec, align 8
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 15, i32 1
  %44 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tv_nsec, align 8
  %mtime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 6
  %45 = ptrtoint ptr %mtime_sec to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %mtime_sec, align 8
  %47 = call i64 @llvm.bswap.i64(i64 %46)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 16
  %48 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %i_mtime, align 8
  %mtime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 9
  %49 = ptrtoint ptr %mtime_nsec to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mtime_nsec, align 8
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %tv_nsec24 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 16, i32 1
  %52 = ptrtoint ptr %tv_nsec24 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tv_nsec24, align 8
  %ctime_sec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 5
  %53 = ptrtoint ptr %ctime_sec to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ctime_sec, align 8
  %55 = call i64 @llvm.bswap.i64(i64 %54)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 17
  %56 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %i_ctime, align 8
  %ctime_nsec = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 8
  %57 = ptrtoint ptr %ctime_nsec to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctime_nsec, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %tv_nsec27 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 17, i32 1
  %60 = ptrtoint ptr %tv_nsec27 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tv_nsec27, align 8
  %mode = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 13
  %61 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mode, align 8
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %conv = trunc i32 %63 to i16
  %64 = ptrtoint ptr %call4 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv, ptr %call4, align 8
  %size = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 3
  %65 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %size, align 8
  %67 = call i64 @llvm.bswap.i64(i64 %66)
  %i_size = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 14
  %68 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %i_size, align 8
  %data_len = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 15
  %69 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_len, align 8
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %data_len28 = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 15
  %72 = ptrtoint ptr %data_len28 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %data_len28, align 4
  %flags = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 14
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %flags29 = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 12
  %76 = ptrtoint ptr %flags29 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %flags29, align 8
  %compr_type = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 20
  %77 = ptrtoint ptr %compr_type to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %compr_type, align 4
  %compr_type31 = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 6
  %79 = ptrtoint ptr %compr_type31 to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load = load i8, ptr %compr_type31, align 4
  %sh.diff = lshr i16 %78, 5
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, 24
  %bf.clear = and i8 %bf.load, -25
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %compr_type31, align 4
  %creat_sqnum = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 2
  %80 = ptrtoint ptr %creat_sqnum to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %creat_sqnum, align 8
  %82 = call i64 @llvm.bswap.i64(i64 %81)
  %creat_sqnum32 = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 1
  %83 = ptrtoint ptr %creat_sqnum32 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %creat_sqnum32, align 8
  %xattr_cnt = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 16
  %84 = ptrtoint ptr %xattr_cnt to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xattr_cnt, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %xattr_cnt33 = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 4
  %87 = ptrtoint ptr %xattr_cnt33 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %xattr_cnt33, align 4
  %xattr_size = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 17
  %88 = ptrtoint ptr %xattr_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %xattr_size, align 8
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  %xattr_size34 = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 3
  %91 = ptrtoint ptr %xattr_size34 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %xattr_size34, align 8
  %xattr_names = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 19
  %92 = ptrtoint ptr %xattr_names to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %xattr_names, align 8
  %94 = call i32 @llvm.bswap.i32(i32 %93)
  %xattr_names35 = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 5
  %95 = ptrtoint ptr %xattr_names35 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %xattr_names35, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 11
  %96 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %67, ptr %ui_size, align 8
  %synced_i_size = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 10
  %97 = ptrtoint ptr %synced_i_size to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %67, ptr %synced_i_size, align 8
  %98 = trunc i32 %75 to i8
  %99 = shl i8 %98, 1
  %bf.shl42 = and i8 %99, 64
  %bf.clear43 = and i8 %bf.set, -65
  %bf.set44 = or i8 %bf.clear43, %bf.shl42
  %100 = ptrtoint ptr %compr_type31 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %bf.set44, ptr %compr_type31, align 4
  %max_inode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %2, i32 0, i32 93
  %101 = ptrtoint ptr %max_inode_sz.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %max_inode_sz.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %102)
  %cmp.i310 = icmp sgt i64 %67, %102
  br i1 %cmp.i310, label %if.then.i311, label %if.end.i312

if.then.i311:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %2, ptr noundef nonnull @.str.8, i64 noundef %67) #13
  br label %out_invalid

if.end.i312:                                      ; preds = %if.end20
  %add.i = add i32 %94, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp10.i = icmp ugt i32 %add.i, 65536
  br i1 %cmp10.i, label %if.end.i312.out_invalid_crit_edge, label %if.end12.i

if.end.i312.out_invalid_crit_edge:                ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_invalid

if.end12.i:                                       ; preds = %if.end.i312
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %71)
  %103 = icmp ugt i32 %71, 4096
  br i1 %103, label %if.end12.i.out_invalid_crit_edge, label %if.end17.i

if.end12.i.out_invalid_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_invalid

if.end17.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl42)
  %tobool.not.i = icmp eq i8 %bf.shl42, 0
  %104 = and i16 %conv, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %104)
  %cmp22.i = icmp eq i16 %104, -32768
  %or.cond327 = select i1 %tobool.not.i, i1 true, i1 %cmp22.i
  br i1 %or.cond327, label %if.end25.i, label %if.end17.i.out_invalid_crit_edge

if.end17.i.out_invalid_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_invalid

if.end25.i:                                       ; preds = %if.end17.i
  %bf.lshr28.i = lshr exact i8 %bf.shl, 3
  %bf.cast30.i = zext i8 %bf.lshr28.i to i32
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @ubifs_compressors, i32 0, i32 %bf.cast30.i
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i, align 4
  %capi_name.i.i = getelementptr inbounds %struct.ubifs_compressor, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %capi_name.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %capi_name.i.i, align 4
  %tobool4.i.not.i = icmp eq ptr %108, null
  br i1 %tobool4.i.not.i, label %if.then33.i, label %if.end25.i.validate_inode.exit_crit_edge

if.end25.i.validate_inode.exit_crit_edge:         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %validate_inode.exit

if.then33.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %i_ino, align 8
  %name.i.i = getelementptr inbounds %struct.ubifs_compressor, ptr %106, i32 0, i32 4
  %111 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %110, ptr noundef %112) #13
  br label %validate_inode.exit

validate_inode.exit:                              ; preds = %if.then33.i, %if.end25.i.validate_inode.exit_crit_edge
  %call41.i = call i32 @dbg_check_dir(ptr noundef %2, ptr noundef nonnull %call4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool47.not = icmp eq i32 %call41.i, 0
  br i1 %tobool47.not, label %if.end49, label %validate_inode.exit.out_invalid_crit_edge

validate_inode.exit.out_invalid_crit_edge:        ; preds = %validate_inode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_invalid

if.end49:                                         ; preds = %validate_inode.exit
  %113 = ptrtoint ptr %call4 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %call4, align 8
  %115 = and i16 %114, -4096
  %and52 = zext i16 %115 to i32
  %116 = add nsw i32 %and52, -4096
  %117 = lshr exact i32 %116, 12
  %118 = zext i32 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values)
  switch i32 %117, label %if.end49.out_invalid_crit_edge [
    i32 7, label %sw.bb
    i32 3, label %sw.bb74
    i32 9, label %sw.bb81
    i32 5, label %if.end49.sw.bb106_crit_edge
    i32 1, label %if.end49.sw.bb106_crit_edge330
    i32 11, label %if.end49.sw.bb136_crit_edge
    i32 0, label %if.end49.sw.bb136_crit_edge331
  ]

if.end49.sw.bb136_crit_edge331:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb136

if.end49.sw.bb136_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb136

if.end49.sw.bb106_crit_edge330:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb106

if.end49.sw.bb106_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb106

if.end49.out_invalid_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_invalid

sw.bb:                                            ; preds = %if.end49
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 9
  %119 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %120, i32 0, i32 9
  %121 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @ubifs_file_address_operations, ptr %a_ops, align 4
  %i_op = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 7
  %122 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @ubifs_file_inode_operations, ptr %i_op, align 8
  %123 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 44
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @ubifs_file_operations, ptr %123, align 8
  %125 = ptrtoint ptr %compr_type31 to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load54 = load i8, ptr %compr_type31, align 4
  %126 = and i8 %bf.load54, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool56.not = icmp eq i8 %126, 0
  %127 = ptrtoint ptr %data_len28 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %data_len28, align 4
  br i1 %tobool56.not, label %if.else, label %if.end8.i

if.end8.i:                                        ; preds = %sw.bb
  %add = add i32 %128, 1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3136) #17
  %data = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 16
  %129 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call9.i, ptr %data, align 8
  %tobool61.not = icmp eq ptr %call9.i, null
  br i1 %tobool61.not, label %if.end8.i.out_ino_crit_edge, label %if.end63

if.end8.i.out_ino_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_ino

if.end63:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %data65 = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 22
  %130 = ptrtoint ptr %data_len28 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %data_len28, align 4
  %132 = call ptr @memcpy(ptr %call9.i, ptr %data65, i32 %131)
  %133 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data, align 8
  %135 = load i32, ptr %data_len28, align 4
  %arrayidx = getelementptr i8, ptr %134, i32 %135
  %136 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %arrayidx, align 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp.not = icmp eq i32 %128, 0
  br i1 %cmp.not, label %if.else.sw.epilog_crit_edge, label %if.else.out_invalid_crit_edge

if.else.out_invalid_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_invalid

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end49
  %i_op75 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 7
  %137 = ptrtoint ptr %i_op75 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @ubifs_dir_inode_operations, ptr %i_op75, align 8
  %138 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 44
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @ubifs_dir_operations, ptr %138, align 8
  %140 = ptrtoint ptr %data_len28 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %data_len28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp77.not = icmp eq i32 %141, 0
  br i1 %cmp77.not, label %sw.bb74.sw.epilog_crit_edge, label %sw.bb74.out_invalid_crit_edge

sw.bb74.out_invalid_crit_edge:                    ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_invalid

sw.bb74.sw.epilog_crit_edge:                      ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end49
  %i_op82 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 7
  %142 = ptrtoint ptr %i_op82 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @ubifs_symlink_inode_operations, ptr %i_op82, align 8
  %143 = ptrtoint ptr %data_len28 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %data_len28, align 4
  %145 = add i32 %144, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %145)
  %146 = icmp ult i32 %145, -4096
  br i1 %146, label %sw.bb81.out_invalid_crit_edge, label %if.end8.i296

sw.bb81.out_invalid_crit_edge:                    ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_invalid

if.end8.i296:                                     ; preds = %sw.bb81
  %add92 = add nuw nsw i32 %144, 1
  %call9.i295 = call noalias align 128 ptr @__kmalloc(i32 noundef %add92, i32 noundef 3136) #17
  %data94 = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 16
  %147 = ptrtoint ptr %data94 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call9.i295, ptr %data94, align 8
  %tobool96.not = icmp eq ptr %call9.i295, null
  br i1 %tobool96.not, label %if.end8.i296.out_ino_crit_edge, label %if.end98

if.end8.i296.out_ino_crit_edge:                   ; preds = %if.end8.i296
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_ino

if.end98:                                         ; preds = %if.end8.i296
  call void @__sanitizer_cov_trace_pc() #15
  %data100 = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 22
  %148 = ptrtoint ptr %data_len28 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %data_len28, align 4
  %150 = call ptr @memcpy(ptr %call9.i295, ptr %data100, i32 %149)
  %151 = ptrtoint ptr %data94 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data94, align 8
  %153 = load i32, ptr %data_len28, align 4
  %arrayidx105 = getelementptr i8, ptr %152, i32 %153
  %154 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %arrayidx105, align 1
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.end49.sw.bb106_crit_edge, %if.end49.sw.bb106_crit_edge330
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %155 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i305 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %155, i32 noundef 3136, i32 noundef 8) #16
  %data108 = getelementptr inbounds %struct.ubifs_inode, ptr %call4, i32 0, i32 16
  %156 = ptrtoint ptr %data108 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call7.i305, ptr %data108, align 8
  %tobool110.not = icmp eq ptr %call7.i305, null
  br i1 %tobool110.not, label %sw.bb106.out_ino_crit_edge, label %if.end112

sw.bb106.out_ino_crit_edge:                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_ino

if.end112:                                        ; preds = %sw.bb106
  %data113 = getelementptr inbounds %struct.ubifs_ino_node, ptr %call7.i, i32 0, i32 22
  %157 = ptrtoint ptr %data_len28 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %data_len28, align 4
  %159 = zext i32 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %158, label %if.end112.out_invalid_crit_edge [
    i32 4, label %if.then118
    i32 8, label %if.then124
  ]

if.end112.out_invalid_crit_edge:                  ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_invalid

if.then118:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %160 = ptrtoint ptr %data113 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %data113, align 8
  %162 = call i32 @llvm.bswap.i32(i32 %161)
  br label %cleanup.thread

if.then124:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %163 = ptrtoint ptr %data113 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %data113, align 8
  %165 = call i64 @llvm.bswap.i64(i64 %164)
  %conv.i = trunc i64 %165 to i32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then124, %if.then118
  %.sink329 = phi i32 [ %162, %if.then118 ], [ %conv.i, %if.then124 ]
  %and1.i = and i32 %.sink329, 255
  %shr2.i = lshr i32 %.sink329, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %166 = shl i32 %.sink329, 12
  %shl.i = and i32 %166, -1048576
  %or4.i = or i32 %or.i, %shl.i
  %167 = call ptr @memcpy(ptr %call7.i305, ptr %data113, i32 %158)
  %i_op133 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 7
  %168 = ptrtoint ptr %i_op133 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @ubifs_file_inode_operations, ptr %i_op133, align 8
  %169 = ptrtoint ptr %call4 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %call4, align 8
  call void @init_special_inode(ptr noundef nonnull %call4, i16 noundef zeroext %170, i32 noundef %or4.i) #13
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end49.sw.bb136_crit_edge, %if.end49.sw.bb136_crit_edge331
  %i_op137 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 7
  %171 = ptrtoint ptr %i_op137 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @ubifs_file_inode_operations, ptr %i_op137, align 8
  call void @init_special_inode(ptr noundef nonnull %call4, i16 noundef zeroext %114, i32 noundef 0) #13
  %172 = ptrtoint ptr %data_len28 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %data_len28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp140.not = icmp eq i32 %173, 0
  br i1 %cmp140.not, label %sw.bb136.sw.epilog_crit_edge, label %sw.bb136.out_invalid_crit_edge

sw.bb136.out_invalid_crit_edge:                   ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_invalid

sw.bb136.sw.epilog_crit_edge:                     ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb136.sw.epilog_crit_edge, %cleanup.thread, %if.end98, %sw.bb74.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %if.end63
  call void @kfree(ptr noundef nonnull %call7.i) #13
  call void @ubifs_set_inode_flags(ptr noundef nonnull %call4) #13
  call void @unlock_new_inode(ptr noundef nonnull %call4) #13
  br label %cleanup147

out_invalid:                                      ; preds = %sw.bb136.out_invalid_crit_edge, %if.end112.out_invalid_crit_edge, %sw.bb81.out_invalid_crit_edge, %sw.bb74.out_invalid_crit_edge, %if.else.out_invalid_crit_edge, %if.end49.out_invalid_crit_edge, %validate_inode.exit.out_invalid_crit_edge, %if.end17.i.out_invalid_crit_edge, %if.end12.i.out_invalid_crit_edge, %if.end.i312.out_invalid_crit_edge, %if.then.i311
  %err.1 = phi i32 [ %call41.i, %validate_inode.exit.out_invalid_crit_edge ], [ 10, %if.else.out_invalid_crit_edge ], [ 11, %sw.bb74.out_invalid_crit_edge ], [ 12, %sw.bb81.out_invalid_crit_edge ], [ 14, %sw.bb136.out_invalid_crit_edge ], [ 15, %if.end49.out_invalid_crit_edge ], [ 4, %if.end12.i.out_invalid_crit_edge ], [ 3, %if.end.i312.out_invalid_crit_edge ], [ 1, %if.then.i311 ], [ 13, %if.end112.out_invalid_crit_edge ], [ 5, %if.end17.i.out_invalid_crit_edge ]
  %174 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %175, i32 noundef %err.1) #13
  call void @ubifs_dump_node(ptr noundef %2, ptr noundef nonnull %call7.i, i32 noundef 4256) #13
  call void @ubifs_dump_inode(ptr noundef %2, ptr noundef nonnull %call4) #13
  br label %out_ino

out_ino:                                          ; preds = %out_invalid, %sw.bb106.out_ino_crit_edge, %if.end8.i296.out_ino_crit_edge, %if.end8.i.out_ino_crit_edge, %if.end16.out_ino_crit_edge
  %err.2 = phi i32 [ %call.i, %if.end16.out_ino_crit_edge ], [ -22, %out_invalid ], [ -12, %if.end8.i.out_ino_crit_edge ], [ -12, %if.end8.i296.out_ino_crit_edge ], [ -12, %sw.bb106.out_ino_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %out

out:                                              ; preds = %out_ino, %if.end11.out_crit_edge
  %err.3 = phi i32 [ %err.2, %out_ino ], [ -12, %if.end11.out_crit_edge ]
  %i_ino145 = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 11
  %176 = ptrtoint ptr %i_ino145 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %i_ino145, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %177, i32 noundef %err.3) #13
  call void @iget_failed(ptr noundef nonnull %call4) #13
  %178 = inttoptr i32 %err.3 to ptr
  br label %cleanup147

cleanup147:                                       ; preds = %out, %sw.epilog, %if.end8.cleanup147_crit_edge, %do.end.cleanup147_crit_edge
  %retval.0 = phi ptr [ %178, %out ], [ %call4, %sw.epilog ], [ %call4, %if.end8.cleanup147_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end.cleanup147_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #13
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ubifs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ubifs_inode_slab, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %call, i32 784
  %1 = call ptr @memset(ptr %add.ptr, i32 0, i32 304)
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %ui_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @ubifs_alloc_inode.__key) #13
  %xattr_sem = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 8
  tail call void @__init_rwsem(ptr noundef %xattr_sem, ptr noundef nonnull @.str.15, ptr noundef nonnull @ubifs_alloc_inode.__key.14) #13
  %ui_lock = getelementptr inbounds %struct.ubifs_inode, ptr %call, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %ui_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @ubifs_alloc_inode.__key.16, i16 noundef signext 3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ubifs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 16
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  tail call void @kfree(ptr noundef %1) #13
  tail call void @fscrypt_free_inode(ptr noundef %inode) #13
  %2 = load ptr, ptr @ubifs_inode_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %inode) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ubifs_dirty_inode(ptr noundef %inode, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 7
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ui_mutex) #13
  br i1 %call1, label %entry.do.end_crit_edge, label %if.then, !prof !445

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, i32 noundef 403) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %dirty = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %4 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end22_crit_edge

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set = or i8 %bf.load, -128
  %5 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set, ptr %dirty, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_dirty_inode.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_dirty_inode, %if.then17)) #13
          to label %if.end22 [label %if.then17], !srcloc !444

if.then17:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %6 = tail call i32 @llvm.read_register.i32(metadata !433) #13
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
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_dirty_inode.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.then5, %do.end.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_write_inode(ptr noundef %inode, ptr nocapture noundef readnone %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %xattr = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %4 = ptrtoint ptr %xattr to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %xattr, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !445

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 302) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call5 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #13
  br i1 %call5, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %ui_mutex = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ui_mutex, i32 noundef 0) #13
  %6 = ptrtoint ptr %xattr to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load8 = load i8, ptr %xattr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load8)
  %tobool11.not = icmp sgt i8 %bf.load8, -1
  br i1 %tobool11.not, label %if.then12, label %do.body15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %ui_mutex) #13
  br label %cleanup

do.body15:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_write_inode.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_write_inode, %if.then24)) #13
          to label %do.end28 [label %if.then24], !srcloc !444

if.then24:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  %7 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino, align 8
  %15 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %inode, align 8
  %conv = zext i16 %16 to i32
  %17 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_write_inode.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.22, i32 noundef %12, i32 noundef %14, i32 noundef %conv, i32 noundef %19) #13
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body15
  %20 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool29.not = icmp eq i32 %22, 0
  br i1 %tobool29.not, label %do.end28.if.end37_crit_edge, label %if.then30

do.end28.if.end37_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then30:                                        ; preds = %do.end28
  %call31 = tail call i32 @ubifs_jnl_write_inode(ptr noundef %3, ptr noundef %inode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino34 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino34, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %24, i32 noundef %call31) #13
  br label %if.end37

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %25 = ptrtoint ptr %ui_size to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ui_size, align 8
  %call35 = tail call i32 @dbg_check_inode_size(ptr noundef %3, ptr noundef %inode, i64 noundef %26) #13
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then33, %do.end28.if.end37_crit_edge
  %err.0 = phi i32 [ %call31, %if.then33 ], [ %call35, %if.else ], [ 0, %do.end28.if.end37_crit_edge ]
  %27 = ptrtoint ptr %xattr to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load39 = load i8, ptr %xattr, align 4
  %bf.clear40 = and i8 %bf.load39, 127
  store i8 %bf.clear40, ptr %xattr, align 4
  tail call void @mutex_unlock(ptr noundef %ui_mutex) #13
  tail call void @ubifs_release_dirty_inode_budget(ptr noundef %3, ptr noundef %inode) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end37 ], [ 0, %if.then12 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_drop_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %generic_drop_inode.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

generic_drop_inode.exit:                          ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %3 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.not, label %generic_drop_inode.exit.if.end_crit_edge, label %if.then

generic_drop_inode.exit.if.end_crit_edge:         ; preds = %generic_drop_inode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %generic_drop_inode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @fscrypt_drop_inode(ptr noundef %inode) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %generic_drop_inode.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %drop.0 = phi i32 [ 1, %generic_drop_inode.exit.if.end_crit_edge ], [ %call1, %if.then ], [ 1, %entry.if.end_crit_edge ]
  ret i32 %drop.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ubifs_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %xattr = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 6
  %4 = ptrtoint ptr %xattr to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %xattr, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_evict_inode.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_evict_inode, %if.then5)) #13
          to label %do.body8 [label %if.then5], !srcloc !444

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = tail call i32 @llvm.read_register.i32(metadata !433) #13
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
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %14 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %inode, align 8
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_evict_inode.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.25, i32 noundef %11, i32 noundef %13, i32 noundef %conv) #13
  br label %do.body8

do.body8:                                         ; preds = %if.then5, %do.body
  %i_count = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #13
  %16 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %do.body8.do.end24_crit_edge, label %if.then21, !prof !445

do.body8.do.end24_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24

if.then21:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 365) #13
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body8.do.end24_crit_edge
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #13
  %18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not = icmp eq i32 %20, 0
  br i1 %tobool25.not, label %if.end27, label %do.end24.done_crit_edge

do.end24.done_crit_edge:                          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end27:                                         ; preds = %do.end24
  %call28 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #13
  br i1 %call28, label %if.end27.outthread-pre-split_crit_edge, label %if.end30

if.end27.outthread-pre-split_crit_edge:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %outthread-pre-split

if.end30:                                         ; preds = %if.end27
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %21 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %i_size, align 8
  %ui_size = getelementptr inbounds %struct.ubifs_inode, ptr %inode, i32 0, i32 11
  %22 = ptrtoint ptr %ui_size to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %ui_size, align 8
  %call31 = tail call i32 @ubifs_jnl_delete_inode(ptr noundef %3, ptr noundef %inode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.outthread-pre-split_crit_edge, label %if.then33

if.end30.outthread-pre-split_crit_edge:           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %outthread-pre-split

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %i_ino34 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino34, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %24, i32 noundef %call31) #13
  br label %outthread-pre-split

outthread-pre-split:                              ; preds = %if.then33, %if.end30.outthread-pre-split_crit_edge, %if.end27.outthread-pre-split_crit_edge
  %25 = ptrtoint ptr %xattr to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load36.pr = load i8, ptr %xattr, align 4
  br label %out

out:                                              ; preds = %outthread-pre-split, %entry.out_crit_edge
  %bf.load36 = phi i8 [ %bf.load36.pr, %outthread-pre-split ], [ %bf.load, %entry.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load36)
  %tobool39.not = icmp sgt i8 %bf.load36, -1
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_release_dirty_inode_budget(ptr noundef %3, ptr noundef %inode) #13
  br label %done

if.else:                                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %nospace_rp = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 87, i32 6
  %26 = ptrtoint ptr %nospace_rp to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load41 = load i8, ptr %nospace_rp, align 4
  %bf.clear45 = and i8 %bf.load41, 63
  store i8 %bf.clear45, ptr %nospace_rp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !446
  br label %done

done:                                             ; preds = %if.else, %if.then40, %do.end24.done_crit_edge
  tail call void @clear_inode(ptr noundef %inode) #13
  tail call void @fscrypt_put_encryption_info(ptr noundef %inode) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ubifs_put_super(ptr nocapture noundef readonly %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %vi = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 102
  %2 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vi, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %3) #13
  %ro_error = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 81
  %4 = ptrtoint ptr %ro_error to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ro_error, align 8
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.body:                                          ; preds = %entry
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 87
  %6 = ptrtoint ptr %bi to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.not = icmp eq i64 %7, 0
  br i1 %cmp.not, label %do.body.do.body5_crit_edge, label %if.then4, !prof !445

do.body.do.body5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 1933) #13
  br label %do.body5

do.body5:                                         ; preds = %if.then4, %do.body.do.body5_crit_edge
  %dd_growth = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 87, i32 2
  %8 = ptrtoint ptr %dd_growth to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %dd_growth, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp7.not = icmp eq i64 %9, 0
  br i1 %cmp7.not, label %do.body5.do.body20_crit_edge, label %if.then16, !prof !445

do.body5.do.body20_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body20

if.then16:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef 1934) #13
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %do.body5.do.body20_crit_edge
  %data_growth = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 87, i32 1
  %10 = ptrtoint ptr %data_growth to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %data_growth, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp22.not = icmp eq i64 %11, 0
  br i1 %cmp22.not, label %do.body20.if.end35_crit_edge, label %if.then31, !prof !445

do.body20.if.end35_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then31:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, i32 noundef 1935) #13
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %do.body20.if.end35_crit_edge, %entry.if.end35_crit_edge
  %umount_mutex = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 128
  tail call void @mutex_lock_nested(ptr noundef %umount_mutex, i32 noundef 0) #13
  %12 = ptrtoint ptr %ro_error to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load36 = load i8, ptr %ro_error, align 8
  %13 = and i8 %bf.load36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool40.not = icmp eq i8 %13, 0
  br i1 %tobool40.not, label %if.then41, label %if.end35.if.end79_crit_edge

if.end35.if.end79_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then41:                                        ; preds = %if.end35
  %bgt = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 117
  %14 = ptrtoint ptr %bgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bgt, align 8
  %tobool42.not = icmp eq ptr %15, null
  br i1 %tobool42.not, label %if.then41.if.end46_crit_edge, label %if.then43

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then43:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @kthread_stop(ptr noundef nonnull %15) #13
  %16 = ptrtoint ptr %bgt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bgt, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.then41.if.end46_crit_edge
  %17 = ptrtoint ptr %ro_error to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load48 = load i8, ptr %ro_error, align 8
  %18 = and i8 %bf.load48, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool52.not = icmp eq i8 %18, 0
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp54119 = icmp sgt i32 %20, 0
  br i1 %tobool52.not, label %for.cond.preheader, label %for.cond67.preheader

for.cond67.preheader:                             ; preds = %if.end46
  br i1 %cmp54119, label %for.body70.lr.ph, label %for.cond67.preheader.if.end79_crit_edge

for.cond67.preheader.if.end79_crit_edge:          ; preds = %for.cond67.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

for.body70.lr.ph:                                 ; preds = %for.cond67.preheader
  %jheads71 = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 19
  br label %for.body70

for.cond.preheader:                               ; preds = %if.end46
  br i1 %cmp54119, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %22, i32 %i.0120
  %io_mutex.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 9
  %jhead.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 7
  %23 = ptrtoint ptr %jhead.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %jhead.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i, i32 noundef %24) #13
  %call.i = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx) #13
  tail call void @mutex_unlock(ptr noundef %io_mutex.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not = icmp eq i32 %call.i, 0
  br i1 %tobool56.not, label %for.body.for.inc_crit_edge, label %if.then57

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then57:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_ro_mode(ptr noundef %1, i32 noundef %call.i) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then57, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %25 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %jhead_cnt, align 4
  %cmp54 = icmp slt i32 %inc, %26
  br i1 %cmp54, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mst_node = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 46
  %27 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mst_node, align 4
  %flags = getelementptr inbounds %struct.ubifs_mst_node, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %flags, align 1
  %and = and i32 %30, -16777217
  store i32 %and, ptr %flags, align 1
  %31 = load ptr, ptr %mst_node, align 4
  %flags60 = getelementptr inbounds %struct.ubifs_mst_node, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %flags60 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %flags60, align 1
  %or = or i32 %33, 33554432
  store i32 %or, ptr %flags60, align 1
  %gc_lnum = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 121
  %34 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gc_lnum, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mst_node, align 4
  %gc_lnum62 = getelementptr inbounds %struct.ubifs_mst_node, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %gc_lnum62 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %36, ptr %gc_lnum62, align 1
  %call63 = tail call i32 @ubifs_write_master(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %for.end.if.end79_crit_edge, label %if.then65

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then65:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %call63) #13
  br label %if.end79

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.body70.lr.ph
  %i.1118 = phi i32 [ 0, %for.body70.lr.ph ], [ %inc76, %for.body70.for.body70_crit_edge ]
  %40 = ptrtoint ptr %jheads71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %jheads71, align 8
  %timer = getelementptr %struct.ubifs_jhead, ptr %41, i32 %i.1118, i32 0, i32 11
  %call74 = tail call i32 @hrtimer_cancel(ptr noundef %timer) #13
  %inc76 = add nuw nsw i32 %i.1118, 1
  %42 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %jhead_cnt, align 4
  %cmp69 = icmp slt i32 %inc76, %43
  br i1 %cmp69, label %for.body70.for.body70_crit_edge, label %for.body70.if.end79_crit_edge

for.body70.if.end79_crit_edge:                    ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body70

if.end79:                                         ; preds = %for.body70.if.end79_crit_edge, %if.then65, %for.end.if.end79_crit_edge, %for.cond67.preheader.if.end79_crit_edge, %if.end35.if.end79_crit_edge
  tail call fastcc void @ubifs_umount(ptr noundef %1)
  %ubi = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 100
  %44 = ptrtoint ptr %ubi to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ubi, align 4
  tail call void @ubi_close_volume(ptr noundef %45) #13
  tail call void @mutex_unlock(ptr noundef %umount_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_sync_fs(ptr nocapture noundef readonly %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19 = icmp sgt i32 %3, 0
  br i1 %cmp19, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 19
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.020, 1
  %4 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jhead_cnt, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %6 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jheads, align 8
  %arrayidx = getelementptr %struct.ubifs_jhead, ptr %7, i32 %i.020
  %io_mutex.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 9
  %jhead.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx, i32 0, i32 7
  %8 = ptrtoint ptr %jhead.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jhead.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i, i32 noundef %9) #13
  %call.i = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx) #13
  tail call void @mutex_unlock(ptr noundef %io_mutex.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call4 = tail call i32 @ubifs_run_commit(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %vi = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 102
  %10 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vi, align 8
  %call8 = tail call i32 @ubi_sync(i32 noundef %11) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %for.end.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %uuid1 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 8
  %call = tail call i64 @ubifs_get_free_space(ptr noundef %3) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_statfs.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_statfs, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !444

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  %shr = lshr i64 %call, 12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_statfs.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.37, i32 noundef %9, i64 noundef %call, i64 noundef %shr) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 604313861, ptr %buf, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %11 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %f_bsize, align 4
  %block_cnt = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 98
  %12 = ptrtoint ptr %block_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block_cnt, align 8
  %conv = sext i32 %13 to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %14 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %f_blocks, align 8
  %shr6 = lshr i64 %call, 12
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %15 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %shr6, ptr %f_bfree, align 8
  %report_rp_size = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 176
  %16 = ptrtoint ptr %report_rp_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %report_rp_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %17)
  %cmp = icmp ugt i64 %call, %17
  %sub = sub i64 %call, %17
  %shr10 = lshr i64 %sub, 12
  %.sink = select i1 %cmp, i64 %shr10, i64 0
  %18 = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %.sink, ptr %18, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %20 = call ptr @memset(ptr %f_files, i32 0, i32 16)
  %21 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 255, ptr %f_namelen, align 8
  %22 = ptrtoint ptr %uuid1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uuid1, align 4
  %arrayidx13 = getelementptr %struct.ubifs_info, ptr %3, i32 0, i32 8, i32 8
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx13, align 4
  %26 = xor i32 %25, %23
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %28 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %f_fsid, align 8
  %arrayidx15 = getelementptr %struct.ubifs_info, ptr %3, i32 0, i32 8, i32 4
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr %struct.ubifs_info, ptr %3, i32 0, i32 8, i32 12
  %31 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx16, align 4
  %33 = xor i32 %32, %30
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %arrayidx20 = getelementptr %struct.kstatfs, ptr %buf, i32 0, i32 7, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx20, align 4
  %36 = ptrtoint ptr %block_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %block_cnt, align 8
  %conv24 = sext i32 %37 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr6, i64 %conv24)
  %cmp25.not = icmp ugt i64 %shr6, %conv24
  br i1 %cmp25.not, label %if.then35, label %do.end.do.end38_crit_edge, !prof !447

do.end.do.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

if.then35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 433) #13
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %do.end.do.end38_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_remount_fs(ptr noundef %sb, ptr nocapture noundef readonly %flags, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %call = tail call i32 @sync_filesystem(ptr noundef %sb) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_remount_fs.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_remount_fs, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !444

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags, align 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_remount_fs.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.40, i32 noundef %7, i32 noundef %9, i32 noundef %11) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call fastcc i32 @ubifs_parse_options(ptr noundef %1, ptr noundef %data, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %1, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 81
  %12 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %ro_mount, align 8
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and36 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool9.not, label %land.lhs.true35, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  br i1 %tobool37.not, label %if.then11, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then11:                                        ; preds = %land.lhs.true
  %16 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %1, ptr noundef nonnull @.str.42) #13
  br label %cleanup

if.end18:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool22.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %1, ptr noundef nonnull @.str.43) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %call25 = tail call fastcc i32 @ubifs_remount_rw(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.if.end48_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24.if.end48_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

land.lhs.true35:                                  ; preds = %if.end8
  br i1 %tobool37.not, label %land.lhs.true35.if.end48_crit_edge, label %if.then38

land.lhs.true35.if.end48_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then38:                                        ; preds = %land.lhs.true35
  %17 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool44.not = icmp eq i8 %17, 0
  br i1 %tobool44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %1, ptr noundef nonnull @.str.44) #13
  br label %cleanup

if.end46:                                         ; preds = %if.then38
  %need_recovery.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 186
  %18 = ptrtoint ptr %need_recovery.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %need_recovery.i, align 4
  %19 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end46.do.body5.i_crit_edge, label %if.then.i, !prof !445

if.end46.do.body5.i_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body5.i

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.2, i32 noundef 1882) #13
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %if.end46.do.body5.i_crit_edge
  %20 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load6.i = load i8, ptr %ro_mount, align 8
  %21 = and i8 %bf.load6.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool10.not.i = icmp eq i8 %21, 0
  br i1 %tobool10.not.i, label %do.body5.i.do.end24.i_crit_edge, label %if.then21.i, !prof !445

do.body5.i.do.end24.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end24.i

if.then21.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.2, i32 noundef 1883) #13
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then21.i, %do.body5.i.do.end24.i_crit_edge
  %umount_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 128
  tail call void @mutex_lock_nested(ptr noundef %umount_mutex.i, i32 noundef 0) #13
  %bgt.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 117
  %22 = ptrtoint ptr %bgt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bgt.i, align 8
  %tobool25.not.i = icmp eq ptr %23, null
  br i1 %tobool25.not.i, label %do.end24.i.if.end29.i_crit_edge, label %if.then26.i

do.end24.i.if.end29.i_crit_edge:                  ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then26.i:                                      ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %23) #13
  %24 = ptrtoint ptr %bgt.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %bgt.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %do.end24.i.if.end29.i_crit_edge
  tail call void @dbg_save_space_info(ptr noundef %1) #13
  %jhead_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %jhead_cnt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %jhead_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp88.i = icmp sgt i32 %26, 0
  br i1 %cmp88.i, label %for.body.lr.ph.i, label %if.end29.i.for.end.i_crit_edge

if.end29.i.for.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end29.i
  %jheads.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.089.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %jheads.i, align 8
  %arrayidx.i = getelementptr %struct.ubifs_jhead, ptr %28, i32 %i.089.i
  %io_mutex.i.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx.i, i32 0, i32 9
  %jhead.i.i = getelementptr inbounds %struct.ubifs_wbuf, ptr %arrayidx.i, i32 0, i32 7
  %29 = ptrtoint ptr %jhead.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %jhead.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %io_mutex.i.i, i32 noundef %30) #13
  %call.i.i = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %arrayidx.i) #13
  tail call void @mutex_unlock(ptr noundef %io_mutex.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool31.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool31.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then32.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then32.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_ro_mode(ptr noundef %1, i32 noundef %call.i.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then32.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.089.i, 1
  %31 = ptrtoint ptr %jhead_cnt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %jhead_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %32
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end29.i.for.end.i_crit_edge
  %mst_node.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 46
  %33 = ptrtoint ptr %mst_node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mst_node.i, align 4
  %flags.i = getelementptr inbounds %struct.ubifs_mst_node, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %flags.i, align 1
  %and.i130 = and i32 %36, -16777217
  store i32 %and.i130, ptr %flags.i, align 1
  %37 = load ptr, ptr %mst_node.i, align 4
  %flags35.i = getelementptr inbounds %struct.ubifs_mst_node, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %flags35.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %flags35.i, align 1
  %or.i = or i32 %39, 33554432
  store i32 %or.i, ptr %flags35.i, align 1
  %gc_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 121
  %40 = ptrtoint ptr %gc_lnum.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gc_lnum.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #13
  %43 = ptrtoint ptr %mst_node.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mst_node.i, align 4
  %gc_lnum37.i = getelementptr inbounds %struct.ubifs_mst_node, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %gc_lnum37.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %42, ptr %gc_lnum37.i, align 1
  %call38.i = tail call i32 @ubifs_write_master(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %for.end.i.if.end41.i_crit_edge, label %if.then40.i

for.end.i.if.end41.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then40.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_ro_mode(ptr noundef %1, i32 noundef %call38.i) #13
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then40.i, %for.end.i.if.end41.i_crit_edge
  %orph_buf.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 109
  %46 = ptrtoint ptr %orph_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %orph_buf.i, align 8
  tail call void @vfree(ptr noundef %47) #13
  %48 = ptrtoint ptr %orph_buf.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %orph_buf.i, align 8
  %write_reserve_buf.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 52
  %49 = ptrtoint ptr %write_reserve_buf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_reserve_buf.i, align 4
  tail call void @kfree(ptr noundef %50) #13
  %51 = ptrtoint ptr %write_reserve_buf.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %write_reserve_buf.i, align 4
  %ileb_buf.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 37
  %52 = ptrtoint ptr %ileb_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ileb_buf.i, align 8
  tail call void @vfree(ptr noundef %53) #13
  %54 = ptrtoint ptr %ileb_buf.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %ileb_buf.i, align 8
  tail call void @ubifs_lpt_free(ptr noundef %1, i32 noundef 1) #13
  %55 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load46.i = load i8, ptr %ro_mount, align 8
  %bf.set.i = or i8 %bf.load46.i, 64
  store i8 %bf.set.i, ptr %ro_mount, align 8
  %call48.i = tail call i32 @dbg_check_space_info(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end41.i.ubifs_remount_ro.exit_crit_edge, label %if.then50.i

if.end41.i.ubifs_remount_ro.exit_crit_edge:       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ubifs_remount_ro.exit

if.then50.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_ro_mode(ptr noundef %1, i32 noundef %call48.i) #13
  br label %ubifs_remount_ro.exit

ubifs_remount_ro.exit:                            ; preds = %if.then50.i, %if.end41.i.ubifs_remount_ro.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %umount_mutex.i) #13
  br label %if.end48

if.end48:                                         ; preds = %ubifs_remount_ro.exit, %land.lhs.true35.if.end48_crit_edge, %if.end24.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge
  %bulk_read = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 30
  %56 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load49 = load i16, ptr %bulk_read, align 8
  %57 = and i16 %bf.load49, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp.not = icmp eq i16 %57, 0
  br i1 %cmp.not, label %do.body55, label %do.end.i

do.end.i:                                         ; preds = %if.end48
  %buf.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 50, i32 2
  %58 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf.i, align 8
  %tobool3.not.i = icmp eq ptr %59, null
  br i1 %tobool3.not.i, label %again.preheader.i, label %do.end.i.if.end77_crit_edge

do.end.i.if.end77_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

again.preheader.i:                                ; preds = %do.end.i
  %max_bu_buf_len.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 48
  %60 = ptrtoint ptr %max_bu_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr.i = load i32, ptr %max_bu_buf_len.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then14.i, %again.preheader.i
  %61 = phi i32 [ %.pr.i, %again.preheader.i ], [ 131072, %if.then14.i ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %61, i32 noundef 11456) #17
  %62 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call9.i.i, ptr %buf.i, align 8
  %tobool10.not.i133 = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i133, label %if.then11.i, label %if.end8.i.i.if.end77_crit_edge

if.end8.i.i.if.end77_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then11.i:                                      ; preds = %if.end8.i.i
  %63 = ptrtoint ptr %max_bu_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_bu_buf_len.i, align 4
  %cmp13.i = icmp sgt i32 %64, 131072
  br i1 %cmp13.i, label %if.then14.i, label %if.end16.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %max_bu_buf_len.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 131072, ptr %max_bu_buf_len.i, align 4
  br label %if.end8.i.i

if.end16.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %64) #13
  %mount_opts.i = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 193
  %66 = ptrtoint ptr %mount_opts.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load18.i = load i16, ptr %mount_opts.i, align 8
  %bf.clear19.i = and i16 %bf.load18.i, -12289
  %bf.set.i134 = or i16 %bf.clear19.i, 4096
  store i16 %bf.set.i134, ptr %mount_opts.i, align 8
  %67 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load21.i = load i16, ptr %bulk_read, align 8
  %bf.clear22.i = and i16 %bf.load21.i, -1025
  store i16 %bf.clear22.i, ptr %bulk_read, align 8
  br label %if.end77

do.body55:                                        ; preds = %if.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_remount_fs.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_remount_fs, %if.then67)) #13
          to label %do.end73 [label %if.then67], !srcloc !444

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #15
  %68 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i135 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i135 to ptr
  %task69 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task69, align 8
  %pid70 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 68
  %72 = ptrtoint ptr %pid70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pid70, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_remount_fs.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.45, i32 noundef %73) #13
  br label %do.end73

do.end73:                                         ; preds = %if.then67, %do.body55
  %bu_mutex = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %bu_mutex, i32 noundef 0) #13
  %buf = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 50, i32 2
  %74 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buf, align 8
  tail call void @kfree(ptr noundef %75) #13
  %76 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %buf, align 8
  tail call void @mutex_unlock(ptr noundef %bu_mutex) #13
  br label %if.end77

if.end77:                                         ; preds = %do.end73, %if.end16.i, %if.end8.i.i.if.end77_crit_edge, %do.end.i.if.end77_crit_edge
  %need_recovery = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 186
  %77 = ptrtoint ptr %need_recovery to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load78 = load i8, ptr %need_recovery, align 4
  %78 = and i8 %bf.load78, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool82.not = icmp eq i8 %78, 0
  br i1 %tobool82.not, label %do.body84, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body84:                                        ; preds = %if.end77
  %taken_empty_lebs = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 86, i32 1
  %79 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %taken_empty_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp85 = icmp slt i32 %80, 1
  br i1 %cmp85, label %if.then94, label %do.body84.cleanup_crit_edge, !prof !447

do.body84.cleanup_crit_edge:                      ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then94:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.2, i32 noundef 2043) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %do.body84.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.then45, %if.end24.cleanup_crit_edge, %if.then23, %if.then17, %if.then7
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ -30, %if.then45 ], [ -30, %if.then17 ], [ -30, %if.then23 ], [ %call25, %if.end24.cleanup_crit_edge ], [ 0, %do.body84.cleanup_crit_edge ], [ 0, %if.then94 ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_show_options(ptr noundef %s, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %mount_opts = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 193
  %4 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %mount_opts, align 8
  %bf.lshr = lshr i16 %bf.load, 14
  %trunc = trunc i16 %bf.lshr to i2
  %5 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.192)
  switch i2 %trunc, label %entry.if.end7_crit_edge [
    i2 -2, label %entry.if.end7.sink.split_crit_edge
    i2 1, label %if.then6
  ]

entry.if.end7.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.sink.split

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then6, %entry.if.end7.sink.split_crit_edge
  %.str.89.sink = phi ptr [ @.str.89, %if.then6 ], [ @.str.88, %entry.if.end7.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.89.sink) #13
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %entry.if.end7_crit_edge
  %6 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load9 = load i16, ptr %mount_opts, align 8
  %bf.lshr10 = lshr i16 %bf.load9, 12
  %trunc74 = trunc i16 %bf.lshr10 to i2
  %7 = zext i2 %trunc74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.193)
  switch i2 %trunc74, label %if.end7.if.end23_crit_edge [
    i2 -2, label %if.end7.if.end23.sink.split_crit_edge
    i2 1, label %if.then21
  ]

if.end7.if.end23.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.sink.split

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.then21, %if.end7.if.end23.sink.split_crit_edge
  %.str.91.sink = phi ptr [ @.str.91, %if.then21 ], [ @.str.90, %if.end7.if.end23.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.91.sink) #13
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.end7.if.end23_crit_edge
  %8 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load25 = load i16, ptr %mount_opts, align 8
  %bf.lshr26 = lshr i16 %bf.load25, 10
  %trunc75 = trunc i16 %bf.lshr26 to i2
  %9 = zext i2 %trunc75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.194)
  switch i2 %trunc75, label %if.end23.if.end40_crit_edge [
    i2 -2, label %if.end23.if.end40.sink.split_crit_edge
    i2 1, label %if.then38
  ]

if.end23.if.end40.sink.split_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.sink.split

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then38:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %if.then38, %if.end23.if.end40.sink.split_crit_edge
  %.str.93.sink = phi ptr [ @.str.93, %if.then38 ], [ @.str.92, %if.end23.if.end40.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.93.sink) #13
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.end23.if.end40_crit_edge
  %10 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load42 = load i16, ptr %mount_opts, align 8
  %11 = and i16 %bf.load42, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.end40.if.end52_crit_edge, label %if.then46

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %bf.lshr49 = lshr i16 %bf.load42, 7
  %bf.clear50 = and i16 %bf.lshr49, 3
  %bf.cast51 = zext i16 %bf.clear50 to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr @ubifs_compressors, i32 0, i32 %bf.cast51
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %name.i = getelementptr inbounds %struct.ubifs_compressor, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.94, ptr noundef %15) #13
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end40.if.end52_crit_edge
  %call53 = tail call ptr @ubifs_assert_action_name(ptr noundef %3) #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.95, ptr noundef %call53) #13
  %vi = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 102
  %16 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vi, align 8
  %vol_id = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 102, i32 1
  %18 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.96, i32 noundef %17, i32 noundef %19) #13
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.97, i32 noundef 1088, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @inode_slab_ctor) #13
  store ptr %call, ptr @ubifs_inode_slab, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call91 = tail call i32 @register_shrinker(ptr noundef nonnull @ubifs_shrinker_info) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end.out_slab_crit_edge

if.end.out_slab_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_slab

if.end94:                                         ; preds = %if.end
  %call95 = tail call i32 @ubifs_compressors_init() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end94.out_shrinker_crit_edge

if.end94.out_shrinker_crit_edge:                  ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_shrinker

if.end98:                                         ; preds = %if.end94
  tail call void @dbg_debugfs_init() #13
  %call99 = tail call i32 @ubifs_sysfs_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end98.out_dbg_crit_edge

if.end98.out_dbg_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dbg

if.end102:                                        ; preds = %if.end98
  %call103 = tail call i32 @register_filesystem(ptr noundef nonnull @ubifs_fs_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end102.cleanup_crit_edge, label %do.end108

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %5, i32 noundef %call103) #18
  tail call void @ubifs_sysfs_exit() #13
  br label %out_dbg

out_dbg:                                          ; preds = %do.end108, %if.end98.out_dbg_crit_edge
  %err.0 = phi i32 [ %call99, %if.end98.out_dbg_crit_edge ], [ %call103, %do.end108 ]
  tail call void @dbg_debugfs_exit() #13
  tail call void @ubifs_compressors_exit() #13
  br label %out_shrinker

out_shrinker:                                     ; preds = %out_dbg, %if.end94.out_shrinker_crit_edge
  %err.1 = phi i32 [ %call95, %if.end94.out_shrinker_crit_edge ], [ %err.0, %out_dbg ]
  tail call void @unregister_shrinker(ptr noundef nonnull @ubifs_shrinker_info) #13
  br label %out_slab

out_slab:                                         ; preds = %out_shrinker, %if.end.out_slab_crit_edge
  %err.2 = phi i32 [ %call91, %if.end.out_slab_crit_edge ], [ %err.1, %out_shrinker ]
  %6 = load ptr, ptr @ubifs_inode_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #13
  br label %cleanup

cleanup:                                          ; preds = %out_slab, %if.end102.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_slab ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end102.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ubifs_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubifs_infos to i32))
  %0 = load volatile ptr, ptr @ubifs_infos, align 4
  %cmp.i.not = icmp eq ptr %0, @ubifs_infos
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !445

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2471, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ubifs_clean_zn_cnt, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubifs_clean_zn_cnt to i32))
  %1 = load volatile i32, ptr @ubifs_clean_zn_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !445

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2472, i32 noundef 9, ptr noundef null) #13
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  tail call void @dbg_debugfs_exit() #13
  tail call void @ubifs_sysfs_exit() #13
  tail call void @ubifs_compressors_exit() #13
  tail call void @unregister_shrinker(ptr noundef nonnull @ubifs_shrinker_info) #13
  tail call void @rcu_barrier() #13
  %2 = load ptr, ptr @ubifs_inode_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #13
  %call52 = tail call i32 @unregister_filesystem(ptr noundef nonnull @ubifs_fs_type) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_debugfs_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_sysfs_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_compressors_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ubifs_default_version_set(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #13
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %n, align 4
  %call = call i32 @kstrtoint(ptr noundef %val, i32 noundef 10, ptr noundef nonnull %n) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  %3 = add i32 %2, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %4 = icmp ult i32 %3, -2
  br i1 %4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = call i32 @param_set_int(ptr noundef %val, ptr noundef %kp) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_locate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_free_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_write_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_inode_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_dirty_inode_budget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_drop_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_delete_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_put_encryption_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ubifs_umount(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_umount.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_umount, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !444

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %vi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102
  %6 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vi, align 8
  %vol_id = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 1
  %8 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_umount.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.34, i32 noundef %5, i32 noundef %7, i32 noundef %9) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @dbg_debugfs_exit_fs(ptr noundef %c) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #13
  %infos_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 127
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %infos_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 127, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %infos_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %infos_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %infos_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %infos_list, align 4
  %prev.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 127, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubifs_infos_lock) #13
  %bgt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 117
  %18 = ptrtoint ptr %bgt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bgt, align 8
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %list_del.exit.if.end9_crit_edge, label %if.then6

list_del.exit.if.end9_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then6:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @kthread_stop(ptr noundef nonnull %19) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %list_del.exit.if.end9_crit_edge
  tail call fastcc void @destroy_journal(ptr noundef %c)
  %jheads.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %20 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %jheads.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end9.free_wbufs.exit_crit_edge, label %for.cond.preheader.i

if.end9.free_wbufs.exit_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_wbufs.exit

for.cond.preheader.i:                             ; preds = %if.end9
  %jhead_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %22 = ptrtoint ptr %jhead_cnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %jhead_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp19.i = icmp sgt i32 %23, 0
  br i1 %cmp19.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %jheads.i, align 8
  %buf.i = getelementptr %struct.ubifs_jhead, ptr %25, i32 %i.020.i, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %27) #13
  %28 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %jheads.i, align 8
  %inodes.i = getelementptr %struct.ubifs_jhead, ptr %29, i32 %i.020.i, i32 0, i32 14
  %30 = ptrtoint ptr %inodes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %inodes.i, align 8
  tail call void @kfree(ptr noundef %31) #13
  %32 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %jheads.i, align 8
  %log_hash.i = getelementptr %struct.ubifs_jhead, ptr %33, i32 %i.020.i, i32 3
  %34 = ptrtoint ptr %log_hash.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %log_hash.i, align 4
  tail call void @kfree(ptr noundef %35) #13
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %36 = ptrtoint ptr %jhead_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %jhead_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %37
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %38 = ptrtoint ptr %jheads.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %jheads.i, align 8
  tail call void @kfree(ptr noundef %39) #13
  %40 = ptrtoint ptr %jheads.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %jheads.i, align 8
  br label %free_wbufs.exit

free_wbufs.exit:                                  ; preds = %for.end.i, %if.end9.free_wbufs.exit_crit_edge
  tail call fastcc void @free_orphans(ptr noundef %c)
  tail call void @ubifs_lpt_free(ptr noundef %c, i32 noundef 0) #13
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %41 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %42 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i32 = icmp eq i16 %42, 0
  br i1 %tobool.not.i32, label %free_wbufs.exit.ubifs_exit_authentication.exit_crit_edge, label %if.then.i

free_wbufs.exit.ubifs_exit_authentication.exit_crit_edge: ; preds = %free_wbufs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ubifs_exit_authentication.exit

if.then.i:                                        ; preds = %free_wbufs.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__ubifs_exit_authentication(ptr noundef %c) #13
  br label %ubifs_exit_authentication.exit

ubifs_exit_authentication.exit:                   ; preds = %if.then.i, %free_wbufs.exit.ubifs_exit_authentication.exit_crit_edge
  %auth_key_name.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 182
  %43 = ptrtoint ptr %auth_key_name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %auth_key_name.i, align 4
  tail call void @kfree(ptr noundef %44) #13
  %45 = ptrtoint ptr %auth_key_name.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %auth_key_name.i, align 4
  %auth_hash_name.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 183
  %46 = ptrtoint ptr %auth_hash_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %auth_hash_name.i, align 8
  tail call void @kfree(ptr noundef %47) #13
  %48 = ptrtoint ptr %auth_hash_name.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %auth_hash_name.i, align 8
  %cbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 36
  %49 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cbuf, align 4
  tail call void @kfree(ptr noundef %50) #13
  %rcvrd_mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 191
  %51 = ptrtoint ptr %rcvrd_mst_node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rcvrd_mst_node, align 8
  tail call void @kfree(ptr noundef %52) #13
  %mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %53 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mst_node, align 4
  tail call void @kfree(ptr noundef %54) #13
  %write_reserve_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 52
  %55 = ptrtoint ptr %write_reserve_buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reserve_buf, align 4
  tail call void @kfree(ptr noundef %56) #13
  %buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 50, i32 2
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf, align 8
  tail call void @kfree(ptr noundef %58) #13
  %ileb_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 37
  %59 = ptrtoint ptr %ileb_buf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ileb_buf, align 8
  tail call void @vfree(ptr noundef %60) #13
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %61 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sbuf, align 8
  tail call void @vfree(ptr noundef %62) #13
  %bottom_up_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 45
  %63 = ptrtoint ptr %bottom_up_buf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bottom_up_buf, align 8
  tail call void @kfree(ptr noundef %64) #13
  %sup_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 1
  %65 = ptrtoint ptr %sup_node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sup_node, align 4
  tail call void @kfree(ptr noundef %66) #13
  tail call void @ubifs_debugging_exit(ptr noundef %c) #13
  tail call void @ubifs_sysfs_unregister(ptr noundef %c) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_close_volume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_debugfs_exit_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_journal(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %unclean_leb_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 190
  %0 = ptrtoint ptr %unclean_leb_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %unclean_leb_list, align 4
  %cmp.i.not31 = icmp eq ptr %1, %unclean_leb_list
  br i1 %cmp.i.not31, label %entry.while.cond2.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader

while.cond2.preheader:                            ; preds = %list_del.exit.while.cond2.preheader_crit_edge, %entry.while.cond2.preheader_crit_edge
  %old_buds = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 22
  %2 = ptrtoint ptr %old_buds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %old_buds, align 4
  %cmp.i23.not32 = icmp eq ptr %3, %old_buds
  br i1 %cmp.i23.not32, label %while.cond2.preheader.while.end13_crit_edge, label %while.cond2.preheader.while.body6_crit_edge

while.cond2.preheader.while.body6_crit_edge:      ; preds = %while.cond2.preheader
  br label %while.body6

while.cond2.preheader.while.end13_crit_edge:      ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end13

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %14, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %4) #13
  %13 = ptrtoint ptr %unclean_leb_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %unclean_leb_list, align 4
  %cmp.i.not = icmp eq ptr %14, %unclean_leb_list
  br i1 %cmp.i.not, label %list_del.exit.while.cond2.preheader_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del.exit.while.cond2.preheader_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader

while.body6:                                      ; preds = %list_del.exit30.while.body6_crit_edge, %while.cond2.preheader.while.body6_crit_edge
  %15 = phi ptr [ %25, %list_del.exit30.while.body6_crit_edge ], [ %3, %while.cond2.preheader.while.body6_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %15, i32 -12
  %call.i.i25 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #13
  br i1 %call.i.i25, label %if.end.i.i28, label %while.body6.list_del.exit30_crit_edge

while.body6.list_del.exit30_crit_edge:            ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit30

if.end.i.i28:                                     ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i26 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i26, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i27 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i27, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit30

list_del.exit30:                                  ; preds = %if.end.i.i28, %while.body6.list_del.exit30_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i29 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i29, align 4
  tail call void @kfree(ptr noundef %add.ptr11) #13
  %24 = ptrtoint ptr %old_buds to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %old_buds, align 4
  %cmp.i23.not = icmp eq ptr %25, %old_buds
  br i1 %cmp.i23.not, label %list_del.exit30.while.end13_crit_edge, label %list_del.exit30.while.body6_crit_edge

list_del.exit30.while.body6_crit_edge:            ; preds = %list_del.exit30
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body6

list_del.exit30.while.end13_crit_edge:            ; preds = %list_del.exit30
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end13

while.end13:                                      ; preds = %list_del.exit30.while.end13_crit_edge, %while.cond2.preheader.while.end13_crit_edge
  tail call void @ubifs_destroy_idx_gc(ptr noundef %c) #13
  tail call void @ubifs_destroy_size_tree(ptr noundef %c) #13
  tail call void @ubifs_tnc_close(ptr noundef %c) #13
  %buds.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 15
  %call.i = tail call ptr @rb_first_postorder(ptr noundef %buds.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool2.not2325.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not23.i = or i1 %tobool.not.i, %tobool2.not2325.i
  br i1 %tobool2.not23.i, label %while.end13.free_buds.exit_crit_edge, label %while.end13.land.rhs.i_crit_edge

while.end13.land.rhs.i_crit_edge:                 ; preds = %while.end13
  br label %land.rhs.i

while.end13.free_buds.exit_crit_edge:             ; preds = %while.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_buds.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %while.end13.land.rhs.i_crit_edge
  %bud.024.i = phi ptr [ %add.ptr10.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %while.end13.land.rhs.i_crit_edge ]
  %rb.i = getelementptr inbounds %struct.ubifs_bud, ptr %bud.024.i, i32 0, i32 4
  %call4.i = tail call ptr @rb_next_postorder(ptr noundef %rb.i) #13
  %tobool6.not.i = icmp eq ptr %call4.i, null
  %add.ptr10.i = getelementptr i8, ptr %call4.i, i32 -20
  tail call void @kfree(ptr noundef nonnull %bud.024.i) #13
  %tobool2.not26.i = icmp eq ptr %add.ptr10.i, null
  %tobool2.not.i = or i1 %tobool6.not.i, %tobool2.not26.i
  br i1 %tobool2.not.i, label %land.rhs.i.free_buds.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

land.rhs.i.free_buds.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_buds.exit

free_buds.exit:                                   ; preds = %land.rhs.i.free_buds.exit_crit_edge, %while.end13.free_buds.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_wbufs(ptr nocapture noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %0 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jheads, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %2 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19 = icmp sgt i32 %3, 0
  br i1 %cmp19, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jheads, align 8
  %buf = getelementptr %struct.ubifs_jhead, ptr %5, i32 %i.020, i32 0, i32 1
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jheads, align 8
  %inodes = getelementptr %struct.ubifs_jhead, ptr %9, i32 %i.020, i32 0, i32 14
  %10 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inodes, align 8
  tail call void @kfree(ptr noundef %11) #13
  %12 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %jheads, align 8
  %log_hash = getelementptr %struct.ubifs_jhead, ptr %13, i32 %i.020, i32 3
  %14 = ptrtoint ptr %log_hash to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log_hash, align 4
  tail call void @kfree(ptr noundef %15) #13
  %inc = add nuw nsw i32 %i.020, 1
  %16 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %jhead_cnt, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %18 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %jheads, align 8
  tail call void @kfree(ptr noundef %19) #13
  %20 = ptrtoint ptr %jheads to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %jheads, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_orphans(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %orph_dnext = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 107
  %0 = ptrtoint ptr %orph_dnext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %orph_dnext, align 8
  %tobool.not27 = icmp eq ptr %1, null
  br i1 %tobool.not27, label %entry.while.cond3.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %list_del.exit.while.cond3.preheader_crit_edge, %entry.while.cond3.preheader_crit_edge
  %orph_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 104
  %2 = ptrtoint ptr %orph_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %orph_list, align 4
  %cmp.i.not28 = icmp eq ptr %3, %orph_list
  br i1 %cmp.i.not28, label %while.cond3.preheader.while.end8_crit_edge, label %while.cond3.preheader.while.body5_crit_edge

while.cond3.preheader.while.body5_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body5

while.cond3.preheader.while.end8_crit_edge:       ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end8

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %17, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %dnext = getelementptr inbounds %struct.ubifs_orphan, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %dnext to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dnext, align 4
  %7 = ptrtoint ptr %orph_dnext to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %orph_dnext, align 8
  %list = getelementptr inbounds %struct.ubifs_orphan, ptr %4, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.ubifs_orphan, ptr %4, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ubifs_orphan, ptr %4, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %4) #13
  %16 = ptrtoint ptr %orph_dnext to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %orph_dnext, align 8
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %list_del.exit.while.cond3.preheader_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_del.exit.while.cond3.preheader_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond3.preheader

while.body5:                                      ; preds = %list_del.exit26.while.body5_crit_edge, %while.cond3.preheader.while.body5_crit_edge
  %18 = phi ptr [ %28, %list_del.exit26.while.body5_crit_edge ], [ %3, %while.cond3.preheader.while.body5_crit_edge ]
  %add.ptr = getelementptr i8, ptr %18, i32 -12
  %call.i.i21 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #13
  br i1 %call.i.i21, label %if.end.i.i24, label %while.body5.list_del.exit26_crit_edge

while.body5.list_del.exit26_crit_edge:            ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit26

if.end.i.i24:                                     ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i22 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i22, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i23, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit26

list_del.exit26:                                  ; preds = %if.end.i.i24, %while.body5.list_del.exit26_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i25 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i25, align 4
  tail call void @kfree(ptr noundef %add.ptr) #13
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.35) #13
  %27 = ptrtoint ptr %orph_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %orph_list, align 4
  %cmp.i.not = icmp eq ptr %28, %orph_list
  br i1 %cmp.i.not, label %list_del.exit26.while.end8_crit_edge, label %list_del.exit26.while.body5_crit_edge

list_del.exit26.while.body5_crit_edge:            ; preds = %list_del.exit26
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body5

list_del.exit26.while.end8_crit_edge:             ; preds = %list_del.exit26
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end8

while.end8:                                       ; preds = %list_del.exit26.while.end8_crit_edge, %while.cond3.preheader.while.end8_crit_edge
  %orph_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 109
  %29 = ptrtoint ptr %orph_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %orph_buf, align 8
  tail call void @vfree(ptr noundef %30) #13
  %31 = ptrtoint ptr %orph_buf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %orph_buf, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_lpt_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_debugging_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_sysfs_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_destroy_idx_gc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_destroy_size_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_tnc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ubifs_exit_authentication(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_run_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_sync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ubifs_get_free_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ubifs_parse_options(ptr noundef %c, ptr noundef %options, i32 noundef %is_remount) unnamed_addr #0 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #13
  %tobool.not = icmp eq ptr %options, null
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  br i1 %tobool.not, label %entry.cleanup159_crit_edge, label %while.cond.preheader

entry.cleanup159_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

while.cond.preheader:                             ; preds = %entry
  %call224 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.47) #13
  %tobool1.not225 = icmp eq ptr %call224, null
  br i1 %tobool1.not225, label %while.cond.preheader.cleanup159_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup159_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_remount)
  %tobool140.not = icmp eq i32 %is_remount, 0
  %auth_hash_name = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 183
  %auth_key_name = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 182
  %assert_action119 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %mount_opts76 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 193
  br label %while.body

while.body:                                       ; preds = %cleanup157.while.body_crit_edge, %while.body.lr.ph
  %call226 = phi ptr [ %call224, %while.body.lr.ph ], [ %call, %cleanup157.while.body_crit_edge ]
  %2 = ptrtoint ptr %call226 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call226, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %while.body.cleanup157_crit_edge, label %if.end4

while.body.cleanup157_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @match_token(ptr noundef nonnull %call226, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #13
  %4 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %call5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb11
    i32 3, label %sw.bb19
    i32 4, label %sw.bb28
    i32 5, label %sw.bb36
    i32 6, label %sw.bb45
    i32 7, label %sw.bb95
    i32 8, label %sw.bb129
    i32 9, label %sw.bb139
    i32 10, label %if.end4.cleanup157_crit_edge
  ]

if.end4.cleanup157_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %mount_opts76, align 8
  %bf.clear = and i16 %bf.load, 16383
  %bf.set = or i16 %bf.clear, -32768
  store i16 %bf.set, ptr %mount_opts76, align 8
  br label %cleanup157

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load8 = load i16, ptr %mount_opts76, align 8
  %bf.clear9 = and i16 %bf.load8, 16383
  %bf.set10 = or i16 %bf.clear9, 16384
  store i16 %bf.set10, ptr %mount_opts76, align 8
  br label %cleanup157

sw.bb11:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load13 = load i16, ptr %mount_opts76, align 8
  %bf.clear14 = and i16 %bf.load13, -12289
  %bf.set15 = or i16 %bf.clear14, 8192
  store i16 %bf.set15, ptr %mount_opts76, align 8
  %8 = ptrtoint ptr %assert_action119 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load16 = load i16, ptr %assert_action119, align 8
  %bf.set18 = or i16 %bf.load16, 1024
  store i16 %bf.set18, ptr %assert_action119, align 8
  br label %cleanup157

sw.bb19:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load21 = load i16, ptr %mount_opts76, align 8
  %bf.clear22 = and i16 %bf.load21, -12289
  %bf.set23 = or i16 %bf.clear22, 4096
  store i16 %bf.set23, ptr %mount_opts76, align 8
  %10 = ptrtoint ptr %assert_action119 to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load25 = load i16, ptr %assert_action119, align 8
  %bf.clear26 = and i16 %bf.load25, -1025
  store i16 %bf.clear26, ptr %assert_action119, align 8
  br label %cleanup157

sw.bb28:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load30 = load i16, ptr %mount_opts76, align 8
  %bf.clear31 = and i16 %bf.load30, -3073
  %bf.set32 = or i16 %bf.clear31, 2048
  store i16 %bf.set32, ptr %mount_opts76, align 8
  %12 = ptrtoint ptr %assert_action119 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load33 = load i16, ptr %assert_action119, align 8
  %bf.clear34 = and i16 %bf.load33, -2049
  store i16 %bf.clear34, ptr %assert_action119, align 8
  br label %cleanup157

sw.bb36:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load38 = load i16, ptr %mount_opts76, align 8
  %bf.clear39 = and i16 %bf.load38, -3073
  %bf.set40 = or i16 %bf.clear39, 1024
  store i16 %bf.set40, ptr %mount_opts76, align 8
  %14 = ptrtoint ptr %assert_action119 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load42 = load i16, ptr %assert_action119, align 8
  %bf.set44 = or i16 %bf.load42, 2048
  store i16 %bf.set44, ptr %assert_action119, align 8
  br label %cleanup157

sw.bb45:                                          ; preds = %if.end4
  %call46 = call ptr @match_strdup(ptr noundef nonnull %args) #13
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %sw.bb45.cleanup159_crit_edge, label %if.end49

sw.bb45.cleanup159_crit_edge:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end49:                                         ; preds = %sw.bb45
  %call50 = call i32 @strcmp(ptr noundef nonnull %call46, ptr noundef nonnull dereferenceable(5) @.str.48) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load54 = load i16, ptr %mount_opts76, align 8
  %bf.clear55 = and i16 %bf.load54, -385
  br label %cleanup

if.else:                                          ; preds = %if.end49
  %call57 = call i32 @strcmp(ptr noundef nonnull %call46, ptr noundef nonnull dereferenceable(4) @.str.49) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.else64

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load61 = load i16, ptr %mount_opts76, align 8
  %bf.clear62 = and i16 %bf.load61, -385
  %bf.set63 = or i16 %bf.clear62, 128
  br label %cleanup

if.else64:                                        ; preds = %if.else
  %call65 = call i32 @strcmp(ptr noundef nonnull %call46, ptr noundef nonnull dereferenceable(5) @.str.50) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.else72

if.then67:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load69 = load i16, ptr %mount_opts76, align 8
  %bf.clear70 = and i16 %bf.load69, -385
  %bf.set71 = or i16 %bf.clear70, 256
  br label %cleanup

if.else72:                                        ; preds = %if.else64
  %call73 = call i32 @strcmp(ptr noundef nonnull %call46, ptr noundef nonnull dereferenceable(5) @.str.51) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.else80

if.then75:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load77 = load i16, ptr %mount_opts76, align 8
  %bf.set79 = or i16 %bf.load77, 384
  br label %cleanup

if.else80:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.52, ptr noundef nonnull %call46) #13
  call void @kfree(ptr noundef nonnull %call46) #13
  br label %cleanup159

cleanup:                                          ; preds = %if.then75, %if.then67, %if.then59, %if.then52
  %bf.clear55.sink = phi i16 [ %bf.clear55, %if.then52 ], [ %bf.set71, %if.then67 ], [ %bf.set79, %if.then75 ], [ %bf.set63, %if.then59 ]
  %19 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.clear55.sink, ptr %mount_opts76, align 8
  call void @kfree(ptr noundef nonnull %call46) #13
  %20 = ptrtoint ptr %mount_opts76 to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load86 = load i16, ptr %mount_opts76, align 8
  %bf.set88 = or i16 %bf.load86, 512
  store i16 %bf.set88, ptr %mount_opts76, align 8
  %21 = ptrtoint ptr %assert_action119 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load92 = load i16, ptr %assert_action119, align 8
  %22 = shl i16 %bf.load86, 1
  %bf.shl = and i16 %22, 768
  %bf.clear93 = and i16 %bf.load92, -769
  %bf.set94 = or i16 %bf.clear93, %bf.shl
  store i16 %bf.set94, ptr %assert_action119, align 8
  br label %cleanup157

sw.bb95:                                          ; preds = %if.end4
  %call97 = call ptr @match_strdup(ptr noundef nonnull %args) #13
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %sw.bb95.cleanup159_crit_edge, label %if.end100

sw.bb95.cleanup159_crit_edge:                     ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

if.end100:                                        ; preds = %sw.bb95
  %call101 = call i32 @strcmp(ptr noundef nonnull %call97, ptr noundef nonnull dereferenceable(7) @.str.53) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then103, label %if.else107

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %assert_action119 to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load104 = load i16, ptr %assert_action119, align 8
  %bf.clear105 = and i16 %bf.load104, -97
  br label %cleanup127

if.else107:                                       ; preds = %if.end100
  %call108 = call i32 @strcmp(ptr noundef nonnull %call97, ptr noundef nonnull dereferenceable(10) @.str.54) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then110, label %if.else115

if.then110:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %assert_action119 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load112 = load i16, ptr %assert_action119, align 8
  %bf.clear113 = and i16 %bf.load112, -97
  %bf.set114 = or i16 %bf.clear113, 32
  br label %cleanup127

if.else115:                                       ; preds = %if.else107
  %call116 = call i32 @strcmp(ptr noundef nonnull %call97, ptr noundef nonnull dereferenceable(6) @.str.55) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then118, label %if.else123

if.then118:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %assert_action119 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load120 = load i16, ptr %assert_action119, align 8
  %bf.clear121 = and i16 %bf.load120, -97
  %bf.set122 = or i16 %bf.clear121, 64
  br label %cleanup127

if.else123:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.56, ptr noundef nonnull %call97) #13
  call void @kfree(ptr noundef nonnull %call97) #13
  br label %cleanup159

cleanup127:                                       ; preds = %if.then118, %if.then110, %if.then103
  %bf.clear105.sink = phi i16 [ %bf.clear105, %if.then103 ], [ %bf.set122, %if.then118 ], [ %bf.set114, %if.then110 ]
  %26 = ptrtoint ptr %assert_action119 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.clear105.sink, ptr %assert_action119, align 8
  call void @kfree(ptr noundef nonnull %call97) #13
  br label %cleanup157

sw.bb129:                                         ; preds = %if.end4
  br i1 %tobool140.not, label %if.then131, label %sw.bb129.cleanup157_crit_edge

sw.bb129.cleanup157_crit_edge:                    ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

if.then131:                                       ; preds = %sw.bb129
  %27 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args, align 4
  %call133 = call noalias ptr @kstrdup(ptr noundef %28, i32 noundef 3264) #13
  %29 = ptrtoint ptr %auth_key_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call133, ptr %auth_key_name, align 4
  %tobool135.not = icmp eq ptr %call133, null
  br i1 %tobool135.not, label %if.then131.cleanup159_crit_edge, label %if.then131.cleanup157_crit_edge

if.then131.cleanup157_crit_edge:                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

if.then131.cleanup159_crit_edge:                  ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

sw.bb139:                                         ; preds = %if.end4
  br i1 %tobool140.not, label %if.then141, label %sw.bb139.cleanup157_crit_edge

sw.bb139.cleanup157_crit_edge:                    ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

if.then141:                                       ; preds = %sw.bb139
  %30 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %args, align 4
  %call144 = call noalias ptr @kstrdup(ptr noundef %31, i32 noundef 3264) #13
  %32 = ptrtoint ptr %auth_hash_name to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call144, ptr %auth_hash_name, align 8
  %tobool146.not = icmp eq ptr %call144, null
  br i1 %tobool146.not, label %if.then141.cleanup159_crit_edge, label %if.then141.cleanup157_crit_edge

if.then141.cleanup157_crit_edge:                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

if.then141.cleanup159_crit_edge:                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

sw.default:                                       ; preds = %if.end4
  %33 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %c, align 8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull %call226) #18
  %call1.i = call i32 @strcmp(ptr noundef nonnull %call226, ptr noundef nonnull dereferenceable(5) @.str.72) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %cleanup154, label %cleanup154.thread

cleanup154.thread:                                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.57, ptr noundef nonnull %call226) #13
  br label %cleanup159

cleanup154:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  %s_flags = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_flags, align 4
  %or = or i32 %36, 16
  store i32 %or, ptr %s_flags, align 4
  br label %cleanup157

cleanup157:                                       ; preds = %cleanup154, %if.then141.cleanup157_crit_edge, %sw.bb139.cleanup157_crit_edge, %if.then131.cleanup157_crit_edge, %sw.bb129.cleanup157_crit_edge, %cleanup127, %cleanup, %sw.bb36, %sw.bb28, %sw.bb19, %sw.bb11, %sw.bb6, %sw.bb, %if.end4.cleanup157_crit_edge, %while.body.cleanup157_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.47) #13
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %cleanup157.cleanup159_crit_edge, label %cleanup157.while.body_crit_edge

cleanup157.while.body_crit_edge:                  ; preds = %cleanup157
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup157.cleanup159_crit_edge:                  ; preds = %cleanup157
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup159

cleanup159:                                       ; preds = %cleanup157.cleanup159_crit_edge, %cleanup154.thread, %if.then141.cleanup159_crit_edge, %if.then131.cleanup159_crit_edge, %if.else123, %sw.bb95.cleanup159_crit_edge, %if.else80, %sw.bb45.cleanup159_crit_edge, %while.cond.preheader.cleanup159_crit_edge, %entry.cleanup159_crit_edge
  %retval.6 = phi i32 [ 0, %entry.cleanup159_crit_edge ], [ -22, %cleanup154.thread ], [ -22, %if.else80 ], [ -22, %if.else123 ], [ 0, %while.cond.preheader.cleanup159_crit_edge ], [ 0, %cleanup157.cleanup159_crit_edge ], [ -12, %if.then131.cleanup159_crit_edge ], [ -12, %if.then141.cleanup159_crit_edge ], [ -12, %sw.bb45.cleanup159_crit_edge ], [ -12, %sw.bb95.cleanup159_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #13
  ret i32 %retval.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ubifs_remount_rw(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rw_incompat = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %rw_incompat to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %rw_incompat, align 8
  %1 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.73) #13
  %fmt_version = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 6
  %2 = ptrtoint ptr %fmt_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt_version, align 4
  %ro_compat_version = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 7
  %4 = ptrtoint ptr %ro_compat_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ro_compat_version, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.74, i32 noundef %3, i32 noundef %5, i32 noundef 5, i32 noundef 0) #13
  br label %cleanup207

if.end:                                           ; preds = %entry
  %umount_mutex = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 128
  tail call void @mutex_lock_nested(ptr noundef %umount_mutex, i32 noundef 0) #13
  tail call void @dbg_save_space_info(ptr noundef %c) #13
  %remounting_rw = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %6 = ptrtoint ptr %remounting_rw to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load1 = load i8, ptr %remounting_rw, align 4
  %bf.set = or i8 %bf.load1, 8
  store i8 %bf.set, ptr %remounting_rw, align 4
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %7 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load3 = load i8, ptr %ro_mount, align 8
  %bf.clear4 = and i8 %bf.load3, -65
  store i8 %bf.clear4, ptr %ro_mount, align 8
  %8 = ptrtoint ptr %rw_incompat to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load6 = load i16, ptr %rw_incompat, align 8
  %9 = and i16 %bf.load6, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool10.not = icmp eq i16 %9, 0
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then11:                                        ; preds = %if.end
  %call = tail call i32 @ubifs_fixup_free_space(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then11.if.end15_crit_edge, label %if.then11.out_crit_edge

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %if.then11.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %dark_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %10 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dark_wm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp slt i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.end15.do.end.i_crit_edge, !prof !447

if.end15.do.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.2, i32 noundef 1232) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end15.do.end.i_crit_edge
  %total_free.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 3
  %12 = ptrtoint ptr %total_free.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %total_free.i, align 8
  %total_dirty.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 4
  %14 = ptrtoint ptr %total_dirty.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %total_dirty.i, align 8
  %add.i = add i64 %15, %13
  %16 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dark_wm.i, align 4
  %conv.i = sext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp5.i = icmp slt i64 %add.i, %conv.i
  br i1 %cmp5.i, label %check_free_space.exit, label %if.end19

check_free_space.exit:                            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.83) #13
  %bi.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %c, ptr noundef %bi.i) #13
  tail call void @ubifs_dump_lprops(ptr noundef %c) #13
  br label %out

if.end19:                                         ; preds = %do.end.i
  %18 = ptrtoint ptr %remounting_rw to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load20 = load i8, ptr %remounting_rw, align 4
  %19 = and i8 %bf.load20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp eq i8 %19, 0
  br i1 %tobool24.not, label %do.body, label %if.then25

if.then25:                                        ; preds = %if.end19
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.75) #13
  %call26 = tail call i32 @ubifs_write_rcvrd_mst_node(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then25.out_crit_edge

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end29:                                         ; preds = %if.then25
  %20 = ptrtoint ptr %rw_incompat to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %rw_incompat, align 8
  %21 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool31.not = icmp eq i16 %21, 0
  br i1 %tobool31.not, label %if.then32, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then32:                                        ; preds = %if.end29
  %call33 = tail call i32 @ubifs_recover_size(ptr noundef %c, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end37_crit_edge, label %if.then32.out_crit_edge

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end37:                                         ; preds = %if.then32.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %22 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sbuf, align 8
  %call38 = tail call i32 @ubifs_clean_lebs(ptr noundef %c, ptr noundef %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end41:                                         ; preds = %if.end37
  %24 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sbuf, align 8
  %call43 = tail call i32 @ubifs_recover_inl_heads(ptr noundef %c, ptr noundef %25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end41.if.end56_crit_edge, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end41.if.end56_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

do.body:                                          ; preds = %if.end19
  %tot_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 112
  %26 = ptrtoint ptr %tot_orphans to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tot_orphans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %do.body.do.end_crit_edge, label %if.then50, !prof !445

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.2, i32 noundef 1748) #13
  br label %do.end

do.end:                                           ; preds = %if.then50, %do.body.do.end_crit_edge
  %call52 = tail call i32 @ubifs_clear_orphans(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.end.if.end56_crit_edge, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end.if.end56_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.end56:                                         ; preds = %do.end.if.end56_crit_edge, %if.end41.if.end56_crit_edge
  %mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %28 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mst_node, align 4
  %flags = getelementptr inbounds %struct.ubifs_mst_node, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %flags, align 1
  %and = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.then58, label %if.end56.if.end65_crit_edge

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then58:                                        ; preds = %if.end56
  %or = or i32 %31, 16777216
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %or, ptr %flags, align 1
  %call61 = tail call i32 @ubifs_write_master(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then58.if.end65_crit_edge, label %if.then58.out_crit_edge

if.then58.out_crit_edge:                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then58.if.end65_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.end65:                                         ; preds = %if.then58.if.end65_crit_edge, %if.end56.if.end65_crit_edge
  %33 = ptrtoint ptr %rw_incompat to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load66 = load i16, ptr %rw_incompat, align 8
  %34 = and i16 %bf.load66, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool70.not = icmp eq i16 %34, 0
  br i1 %tobool70.not, label %if.end65.if.end80_crit_edge, label %if.then71

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then71:                                        ; preds = %if.end65
  %sup_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 1
  %35 = ptrtoint ptr %sup_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sup_node, align 4
  %call72 = tail call i32 @ubifs_write_sb_node(ptr noundef %c, ptr noundef %36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cleanup.thread, label %if.then71.out_crit_edge

if.then71.out_crit_edge:                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

cleanup.thread:                                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %rw_incompat to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load77 = load i16, ptr %rw_incompat, align 8
  %bf.clear78 = and i16 %bf.load77, -9
  store i16 %bf.clear78, ptr %rw_incompat, align 8
  br label %if.end80

if.end80:                                         ; preds = %cleanup.thread, %if.end65.if.end80_crit_edge
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %38 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %leb_size, align 8
  %call81 = tail call noalias ptr @vmalloc(i32 noundef %39) #17
  %ileb_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 37
  %40 = ptrtoint ptr %ileb_buf to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call81, ptr %ileb_buf, align 8
  %tobool83.not = icmp eq ptr %call81, null
  br i1 %tobool83.not, label %if.end80.out_crit_edge, label %if.end85

if.end80.out_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end85:                                         ; preds = %if.end80
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8256, i32 noundef 3264, i32 noundef 2) #17
  %write_reserve_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 52
  %41 = ptrtoint ptr %write_reserve_buf to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call1.i.i, ptr %write_reserve_buf, align 4
  %tobool88.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool88.not, label %if.end85.out_crit_edge, label %if.end90

if.end85.out_crit_edge:                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end90:                                         ; preds = %if.end85
  %call91 = tail call i32 @ubifs_lpt_init(ptr noundef %c, i32 noundef 0, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.out_crit_edge

if.end90.out_crit_edge:                           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end94:                                         ; preds = %if.end90
  %bgt_name = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 118
  %call95 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ubifs_bg_thread, ptr noundef %c, i32 noundef -1, ptr noundef nonnull @.str.77, ptr noundef %bgt_name) #13
  %cmp.i306 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i306, label %if.then102, label %if.end108

if.then102:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  %bgt315 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 117
  %42 = ptrtoint ptr %call95 to i32
  %43 = ptrtoint ptr %bgt315 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %bgt315, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.78, ptr noundef %bgt_name, i32 noundef %42) #13
  br label %out

if.end108:                                        ; preds = %if.end94
  %call98 = tail call i32 @wake_up_process(ptr noundef %call95) #13
  %bgt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 117
  %44 = ptrtoint ptr %bgt to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call95, ptr %bgt, align 8
  %45 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %leb_size, align 8
  %call110 = tail call noalias ptr @vmalloc(i32 noundef %46) #17
  %orph_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 109
  %47 = ptrtoint ptr %orph_buf to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call110, ptr %orph_buf, align 8
  %tobool112.not = icmp eq ptr %call110, null
  br i1 %tobool112.not, label %if.end108.out_crit_edge, label %if.end114

if.end108.out_crit_edge:                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end114:                                        ; preds = %if.end108
  %lhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  %48 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lhead_lnum, align 4
  %add = add i32 %49, 1
  %log_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 53
  %50 = ptrtoint ptr %log_lebs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %log_lebs, align 8
  %add115 = add i32 %51, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add115)
  %cmp116.not = icmp slt i32 %add, %add115
  %spec.store.select = select i1 %cmp116.not, i32 %add, i32 3
  %ltail_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %52 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ltail_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %53)
  %cmp119 = icmp eq i32 %spec.store.select, %53
  br i1 %cmp119, label %if.then120, label %if.end114.if.end125_crit_edge

if.end114.if.end125_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then120:                                       ; preds = %if.end114
  %call121 = tail call i32 @ubifs_consolidate_log(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.then120.if.end125_crit_edge, label %if.then120.out_crit_edge

if.then120.out_crit_edge:                         ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then120.if.end125_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.end125:                                        ; preds = %if.then120.if.end125_crit_edge, %if.end114.if.end125_crit_edge
  %54 = ptrtoint ptr %remounting_rw to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load127 = load i8, ptr %remounting_rw, align 4
  %55 = and i8 %bf.load127, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool131.not = icmp eq i8 %55, 0
  br i1 %tobool131.not, label %if.end147, label %if.then132

if.then132:                                       ; preds = %if.end125
  %call133 = tail call i32 @ubifs_rcvry_gc_commit(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.then132.out_crit_edge

if.then132.out_crit_edge:                         ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end136:                                        ; preds = %if.then132
  %56 = ptrtoint ptr %rw_incompat to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i309 = load i16, ptr %rw_incompat, align 8
  %57 = and i16 %bf.load.i309, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool138.not = icmp eq i16 %57, 0
  br i1 %tobool138.not, label %if.end136.do.body151_crit_edge, label %if.then139

if.end136.do.body151_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body151

if.then139:                                       ; preds = %if.end136
  %call140 = tail call i32 @ubifs_recover_size(ptr noundef %c, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.then139.do.body151_crit_edge, label %if.then139.out_crit_edge

if.then139.out_crit_edge:                         ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then139.do.body151_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body151

if.end147:                                        ; preds = %if.end125
  %gc_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %58 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gc_lnum, align 4
  %call146 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %59) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool148.not = icmp eq i32 %call146, 0
  br i1 %tobool148.not, label %if.end147.do.body151_crit_edge, label %if.end147.out_crit_edge

if.end147.out_crit_edge:                          ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end147.do.body151_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body151

do.body151:                                       ; preds = %if.end147.do.body151_crit_edge, %if.then139.do.body151_crit_edge, %if.end136.do.body151_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_remount_rw.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_remount_rw, %if.then161)) #13
          to label %do.end165 [label %if.then161], !srcloc !444

if.then161:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #15
  %60 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_remount_rw.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.80, i32 noundef %65) #13
  br label %do.end165

do.end165:                                        ; preds = %if.then161, %do.body151
  %66 = ptrtoint ptr %remounting_rw to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load167 = load i8, ptr %remounting_rw, align 4
  %bf.clear168 = and i8 %bf.load167, -9
  store i8 %bf.clear168, ptr %remounting_rw, align 4
  %67 = and i8 %bf.load167, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool175.not = icmp eq i8 %67, 0
  br i1 %tobool175.not, label %if.else181, label %if.then176

if.then176:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear179 = and i8 %bf.load167, -73
  %68 = ptrtoint ptr %remounting_rw to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %bf.clear179, ptr %remounting_rw, align 4
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.81) #13
  br label %if.end183

if.else181:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #15
  %call182 = tail call i32 @dbg_check_space_info(ptr noundef %c) #13
  br label %if.end183

if.end183:                                        ; preds = %if.else181, %if.then176
  %err.1 = phi i32 [ 0, %if.then176 ], [ %call182, %if.else181 ]
  tail call void @mutex_unlock(ptr noundef %umount_mutex) #13
  br label %cleanup207

out:                                              ; preds = %if.end147.out_crit_edge, %if.then139.out_crit_edge, %if.then132.out_crit_edge, %if.then120.out_crit_edge, %if.end108.out_crit_edge, %if.then102, %if.end90.out_crit_edge, %if.end85.out_crit_edge, %if.end80.out_crit_edge, %if.then71.out_crit_edge, %if.then58.out_crit_edge, %do.end.out_crit_edge, %if.end41.out_crit_edge, %if.end37.out_crit_edge, %if.then32.out_crit_edge, %if.then25.out_crit_edge, %check_free_space.exit, %if.then11.out_crit_edge
  %err.2 = phi i32 [ %call, %if.then11.out_crit_edge ], [ -28, %check_free_space.exit ], [ %call26, %if.then25.out_crit_edge ], [ %call38, %if.end37.out_crit_edge ], [ %call43, %if.end41.out_crit_edge ], [ %call91, %if.end90.out_crit_edge ], [ %42, %if.then102 ], [ %call121, %if.then120.out_crit_edge ], [ %call133, %if.then132.out_crit_edge ], [ %call140, %if.then139.out_crit_edge ], [ %call146, %if.end147.out_crit_edge ], [ %call61, %if.then58.out_crit_edge ], [ %call33, %if.then32.out_crit_edge ], [ %call52, %do.end.out_crit_edge ], [ -12, %if.end80.out_crit_edge ], [ -12, %if.end85.out_crit_edge ], [ -12, %if.end108.out_crit_edge ], [ %call72, %if.then71.out_crit_edge ]
  %69 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load186 = load i8, ptr %ro_mount, align 8
  %bf.set188 = or i8 %bf.load186, 64
  store i8 %bf.set188, ptr %ro_mount, align 8
  %orph_buf189 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 109
  %70 = ptrtoint ptr %orph_buf189 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %orph_buf189, align 8
  tail call void @vfree(ptr noundef %71) #13
  %72 = ptrtoint ptr %orph_buf189 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %orph_buf189, align 8
  %bgt191 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 117
  %73 = ptrtoint ptr %bgt191 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bgt191, align 8
  %tobool192.not = icmp eq ptr %74, null
  br i1 %tobool192.not, label %out.if.end197_crit_edge, label %if.then193

out.if.end197_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end197

if.then193:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %call195 = tail call i32 @kthread_stop(ptr noundef nonnull %74) #13
  %75 = ptrtoint ptr %bgt191 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %bgt191, align 8
  br label %if.end197

if.end197:                                        ; preds = %if.then193, %out.if.end197_crit_edge
  %write_reserve_buf198 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 52
  %76 = ptrtoint ptr %write_reserve_buf198 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write_reserve_buf198, align 4
  tail call void @kfree(ptr noundef %77) #13
  %78 = ptrtoint ptr %write_reserve_buf198 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %write_reserve_buf198, align 4
  %ileb_buf200 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 37
  %79 = ptrtoint ptr %ileb_buf200 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ileb_buf200, align 8
  tail call void @vfree(ptr noundef %80) #13
  %81 = ptrtoint ptr %ileb_buf200 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %ileb_buf200, align 8
  tail call void @ubifs_lpt_free(ptr noundef %c, i32 noundef 1) #13
  %82 = ptrtoint ptr %remounting_rw to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load203 = load i8, ptr %remounting_rw, align 4
  %bf.clear204 = and i8 %bf.load203, -9
  store i8 %bf.clear204, ptr %remounting_rw, align 4
  tail call void @mutex_unlock(ptr noundef %umount_mutex) #13
  br label %cleanup207

cleanup207:                                       ; preds = %if.end197, %if.end183, %if.then
  %retval.0 = phi i32 [ -30, %if.then ], [ %err.2, %if.end197 ], [ %err.1, %if.end183 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bu_init(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk_read = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %0 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %bulk_read, align 8
  %1 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %if.then, label %entry.do.end_crit_edge, !prof !447

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.2, i32 noundef 1201) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 50, i32 2
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %again.preheader, label %do.end.if.end24_crit_edge

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

again.preheader:                                  ; preds = %do.end
  %max_bu_buf_len = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 48
  %4 = ptrtoint ptr %max_bu_buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %max_bu_buf_len, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then14, %again.preheader
  %5 = phi i32 [ %.pr, %again.preheader ], [ 131072, %if.then14 ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 11456) #17
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %buf, align 8
  %tobool10.not = icmp eq ptr %call9.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end8.i.if.end24_crit_edge

if.end8.i.if.end24_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then11:                                        ; preds = %if.end8.i
  %7 = ptrtoint ptr %max_bu_buf_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_bu_buf_len, align 4
  %cmp13 = icmp sgt i32 %8, 131072
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %max_bu_buf_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 131072, ptr %max_bu_buf_len, align 4
  br label %if.end8.i

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.87, i32 noundef %8) #13
  %mount_opts = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 193
  %10 = ptrtoint ptr %mount_opts to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load18 = load i16, ptr %mount_opts, align 8
  %bf.clear19 = and i16 %bf.load18, -12289
  %bf.set = or i16 %bf.clear19, 4096
  store i16 %bf.set, ptr %mount_opts, align 8
  %11 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load21 = load i16, ptr %bulk_read, align 8
  %bf.clear22 = and i16 %bf.load21, -1025
  store i16 %bf.clear22, ptr %bulk_read, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end16, %if.end8.i.if.end24_crit_edge, %do.end.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_save_space_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fixup_free_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_free_space(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dark_wm = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %0 = ptrtoint ptr %dark_wm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dark_wm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge, !prof !447

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.2, i32 noundef 1232) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %total_free = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 3
  %2 = ptrtoint ptr %total_free to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %total_free, align 8
  %total_dirty = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 4
  %4 = ptrtoint ptr %total_dirty to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %total_dirty, align 8
  %add = add i64 %5, %3
  %6 = ptrtoint ptr %dark_wm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dark_wm, align 4
  %conv = sext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp5 = icmp slt i64 %add, %conv
  br i1 %cmp5, label %if.then7, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.83) #13
  %bi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %c, ptr noundef %bi) #13
  tail call void @ubifs_dump_lprops(ptr noundef %c) #13
  br label %return

return:                                           ; preds = %if.then7, %do.end.return_crit_edge
  %retval.0 = phi i32 [ -28, %if.then7 ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_rcvrd_mst_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_recover_size(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_clean_lebs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_recover_inl_heads(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_clear_orphans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_sb_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_bg_thread(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_consolidate_log(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_rcvry_gc_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_space_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_budg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lprops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_assert_action_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inode_slab_ctor(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inode_init_once(ptr noundef %obj) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ubifs_compressors_init() local_unnamed_addr #9 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_debugfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_sysfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_shrink_count(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_shrink_scan(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ubifs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %name, ptr noundef %data) #0 align 64 {
entry:
  %endptr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_mount.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_mount, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !444

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_mount.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.101, i32 noundef %5, ptr noundef %name, i32 noundef %flags) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endptr.i) #13
  %6 = ptrtoint ptr %endptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %endptr.i, align 4, !annotation !443
  %tobool.not.i = icmp eq ptr %name, null
  br i1 %tobool.not.i, label %do.end.open_ubi.exit.thread_crit_edge, label %lor.lhs.false.i

do.end.open_ubi.exit.thread_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit.thread

lor.lhs.false.i:                                  ; preds = %do.end
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.open_ubi.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.open_ubi.exit.thread_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = tail call ptr @ubi_open_volume_path(ptr noundef nonnull %name, i32 noundef 1) #13
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end5.i, label %if.end.i.open_ubi.exit_crit_edge

if.end.i.open_ubi.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit

if.end5.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %10)
  %cmp.not.i = icmp eq i8 %10, 117
  br i1 %cmp.not.i, label %lor.lhs.false7.i, label %if.end5.i.open_ubi.exit.thread_crit_edge

if.end5.i.open_ubi.exit.thread_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit.thread

lor.lhs.false7.i:                                 ; preds = %if.end5.i
  %arrayidx8.i = getelementptr i8, ptr %name, i32 1
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %12)
  %cmp10.not.i = icmp eq i8 %12, 98
  br i1 %cmp10.not.i, label %lor.lhs.false12.i, label %lor.lhs.false7.i.open_ubi.exit.thread_crit_edge

lor.lhs.false7.i.open_ubi.exit.thread_crit_edge:  ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit.thread

lor.lhs.false12.i:                                ; preds = %lor.lhs.false7.i
  %arrayidx13.i = getelementptr i8, ptr %name, i32 2
  %13 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %14)
  %cmp15.not.i = icmp eq i8 %14, 105
  br i1 %cmp15.not.i, label %if.end19.i, label %lor.lhs.false12.i.open_ubi.exit.thread_crit_edge

lor.lhs.false12.i.open_ubi.exit.thread_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit.thread

if.end19.i:                                       ; preds = %lor.lhs.false12.i
  %arrayidx20.i = getelementptr i8, ptr %name, i32 3
  %15 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20.i, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.196)
  switch i8 %16, label %if.end19.i.if.end35.i_crit_edge [
    i8 58, label %if.end19.i.land.lhs.true.i_crit_edge
    i8 33, label %if.end19.i.land.lhs.true.i_crit_edge153
  ]

if.end19.i.land.lhs.true.i_crit_edge153:          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.end19.i.land.lhs.true.i_crit_edge:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.end19.i.if.end35.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %if.end19.i.land.lhs.true.i_crit_edge, %if.end19.i.land.lhs.true.i_crit_edge153
  %arrayidx29.i = getelementptr i8, ptr %name, i32 4
  %18 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp31.not.i = icmp eq i8 %19, 0
  br i1 %cmp31.not.i, label %land.lhs.true.i.if.end35.i_crit_edge, label %if.then33.i

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call34.i = tail call ptr @ubi_open_volume_nm(i32 noundef 0, ptr noundef %arrayidx29.i, i32 noundef 1) #13
  br label %open_ubi.exit

if.end35.i:                                       ; preds = %land.lhs.true.i.if.end35.i_crit_edge, %if.end19.i.if.end35.i_crit_edge
  %conv37.i = zext i8 %16 to i32
  %20 = add nsw i32 %conv37.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %20)
  %21 = icmp ult i32 %20, -10
  br i1 %21, label %if.end35.i.open_ubi.exit.thread_crit_edge, label %if.end42.i

if.end35.i.open_ubi.exit.thread_crit_edge:        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit.thread

if.end42.i:                                       ; preds = %if.end35.i
  %call44.i = call i32 @simple_strtoul(ptr noundef %arrayidx20.i, ptr noundef nonnull %endptr.i, i32 noundef 0) #13
  %22 = ptrtoint ptr %endptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %endptr.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.197)
  switch i8 %25, label %if.end42.i.open_ubi.exit.thread_crit_edge [
    i8 0, label %if.then48.i
    i8 95, label %land.lhs.true54.i
    i8 58, label %if.end42.i.land.lhs.true77.i_crit_edge
    i8 33, label %if.end42.i.land.lhs.true77.i_crit_edge154
  ]

if.end42.i.land.lhs.true77.i_crit_edge154:        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true77.i

if.end42.i.land.lhs.true77.i_crit_edge:           ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true77.i

if.end42.i.open_ubi.exit.thread_crit_edge:        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit.thread

if.then48.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  %call49.i = call ptr @ubi_open_volume(i32 noundef 0, i32 noundef %call44.i, i32 noundef 1) #13
  br label %open_ubi.exit

land.lhs.true54.i:                                ; preds = %if.end42.i
  %arrayidx55.i = getelementptr i8, ptr %23, i32 1
  %27 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx55.i, align 1
  %conv56.i = zext i8 %28 to i32
  %29 = add nsw i32 %conv56.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %29)
  %30 = icmp ult i32 %29, -10
  br i1 %30, label %land.lhs.true54.i.open_ubi.exit.thread_crit_edge, label %if.then59.i

land.lhs.true54.i.open_ubi.exit.thread_crit_edge: ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit.thread

if.then59.i:                                      ; preds = %land.lhs.true54.i
  %call61.i = call i32 @simple_strtoul(ptr noundef %arrayidx55.i, ptr noundef nonnull %endptr.i, i32 noundef 0) #13
  %31 = ptrtoint ptr %endptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %endptr.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp63.not.i = icmp eq i8 %34, 0
  br i1 %cmp63.not.i, label %if.end67.i, label %if.then59.i.open_ubi.exit.thread_crit_edge

if.then59.i.open_ubi.exit.thread_crit_edge:       ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit.thread

if.end67.i:                                       ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #15
  %call68.i = call ptr @ubi_open_volume(i32 noundef %call44.i, i32 noundef %call61.i, i32 noundef 1) #13
  br label %open_ubi.exit

land.lhs.true77.i:                                ; preds = %if.end42.i.land.lhs.true77.i_crit_edge, %if.end42.i.land.lhs.true77.i_crit_edge154
  %arrayidx78.i = getelementptr i8, ptr %23, i32 1
  %35 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx78.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp80.not.i = icmp eq i8 %36, 0
  br i1 %cmp80.not.i, label %land.lhs.true77.i.open_ubi.exit.thread_crit_edge, label %if.then82.i

land.lhs.true77.i.open_ubi.exit.thread_crit_edge: ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %open_ubi.exit.thread

if.then82.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %endptr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx78.i, ptr %endptr.i, align 4
  %call83.i = call ptr @ubi_open_volume_nm(i32 noundef %call44.i, ptr noundef %arrayidx78.i, i32 noundef 1) #13
  br label %open_ubi.exit

open_ubi.exit.thread:                             ; preds = %land.lhs.true77.i.open_ubi.exit.thread_crit_edge, %if.then59.i.open_ubi.exit.thread_crit_edge, %land.lhs.true54.i.open_ubi.exit.thread_crit_edge, %if.end42.i.open_ubi.exit.thread_crit_edge, %if.end35.i.open_ubi.exit.thread_crit_edge, %lor.lhs.false12.i.open_ubi.exit.thread_crit_edge, %lor.lhs.false7.i.open_ubi.exit.thread_crit_edge, %if.end5.i.open_ubi.exit.thread_crit_edge, %lor.lhs.false.i.open_ubi.exit.thread_crit_edge, %do.end.open_ubi.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endptr.i) #13
  br label %if.then6

open_ubi.exit:                                    ; preds = %if.then82.i, %if.end67.i, %if.then48.i, %if.then33.i, %if.end.i.open_ubi.exit_crit_edge
  %retval.0.i125 = phi ptr [ %call34.i, %if.then33.i ], [ %call49.i, %if.then48.i ], [ %call68.i, %if.end67.i ], [ %call83.i, %if.then82.i ], [ %call2.i, %if.end.i.open_ubi.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endptr.i) #13
  %cmp.i = icmp ugt ptr %retval.0.i125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %open_ubi.exit.if.then6_crit_edge, label %if.end20

open_ubi.exit.if.then6_crit_edge:                 ; preds = %open_ubi.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %open_ubi.exit.if.then6_crit_edge, %open_ubi.exit.thread
  %retval.0.i125147 = phi ptr [ inttoptr (i32 -22 to ptr), %open_ubi.exit.thread ], [ %retval.0.i125, %open_ubi.exit.if.then6_crit_edge ]
  %and = and i32 %flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end11, label %if.then6.cleanup89_crit_edge

if.then6.cleanup89_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

do.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %38 = call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i126 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i126 to ptr
  %task14 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task14, align 8
  %pid15 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid15, align 8
  %44 = ptrtoint ptr %retval.0.i125147 to i32
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %43, ptr noundef %name, i32 noundef %44) #18
  br label %cleanup89

if.end20:                                         ; preds = %open_ubi.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 5288) #16
  %tobool.not.i127 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i127, label %if.end20.out_close_crit_edge, label %do.body25

if.end20.out_close_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_close

do.body25:                                        ; preds = %if.end20
  %cnt_lock.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %cnt_lock.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @alloc_ubifs_info.__key, i16 noundef signext 3) #13
  %cs_lock.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 26
  call void @__raw_spin_lock_init(ptr noundef %cs_lock.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @alloc_ubifs_info.__key.107, i16 noundef signext 3) #13
  %buds_lock.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 17
  call void @__raw_spin_lock_init(ptr noundef %buds_lock.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @alloc_ubifs_info.__key.109, i16 noundef signext 3) #13
  %space_lock.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 85
  call void @__raw_spin_lock_init(ptr noundef %space_lock.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @alloc_ubifs_info.__key.111, i16 noundef signext 3) #13
  %orphan_lock.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 108
  call void @__raw_spin_lock_init(ptr noundef %orphan_lock.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @alloc_ubifs_info.__key.113, i16 noundef signext 3) #13
  %commit_sem.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 24
  call void @__init_rwsem(ptr noundef %commit_sem.i, ptr noundef nonnull @.str.116, ptr noundef nonnull @alloc_ubifs_info.__key.115) #13
  %lp_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 144
  call void @__mutex_init(ptr noundef %lp_mutex.i, ptr noundef nonnull @.str.118, ptr noundef nonnull @alloc_ubifs_info.__key.117) #13
  %tnc_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 31
  call void @__mutex_init(ptr noundef %tnc_mutex.i, ptr noundef nonnull @.str.120, ptr noundef nonnull @alloc_ubifs_info.__key.119) #13
  %log_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 12
  call void @__mutex_init(ptr noundef %log_mutex.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @alloc_ubifs_info.__key.121) #13
  %umount_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 128
  call void @__mutex_init(ptr noundef %umount_mutex.i, ptr noundef nonnull @.str.124, ptr noundef nonnull @alloc_ubifs_info.__key.123) #13
  %bu_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 49
  call void @__mutex_init(ptr noundef %bu_mutex.i, ptr noundef nonnull @.str.126, ptr noundef nonnull @alloc_ubifs_info.__key.125) #13
  %write_reserve_mutex.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 51
  call void @__mutex_init(ptr noundef %write_reserve_mutex.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @alloc_ubifs_info.__key.127) #13
  %cmt_wq.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 27
  call void @__init_waitqueue_head(ptr noundef %cmt_wq.i, ptr noundef nonnull @.str.130, ptr noundef nonnull @alloc_ubifs_info.__key.129) #13
  %buds.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 15
  %46 = ptrtoint ptr %buds.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %buds.i, align 8
  %old_idx.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 44
  %47 = ptrtoint ptr %old_idx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %old_idx.i, align 4
  %size_tree.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 192
  %48 = ptrtoint ptr %size_tree.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %size_tree.i, align 4
  %orph_tree.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 103
  %49 = ptrtoint ptr %orph_tree.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %orph_tree.i, align 8
  %infos_list.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 127
  %50 = ptrtoint ptr %infos_list.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %infos_list.i, ptr %infos_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 127, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %infos_list.i, ptr %prev.i.i, align 4
  %idx_gc.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 123
  %52 = ptrtoint ptr %idx_gc.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %idx_gc.i, ptr %idx_gc.i, align 4
  %prev.i91.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 123, i32 1
  %53 = ptrtoint ptr %prev.i91.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %idx_gc.i, ptr %prev.i91.i, align 8
  %replay_list.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 187
  %54 = ptrtoint ptr %replay_list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %replay_list.i, ptr %replay_list.i, align 8
  %prev.i92.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 187, i32 1
  %55 = ptrtoint ptr %prev.i92.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %replay_list.i, ptr %prev.i92.i, align 4
  %replay_buds.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 188
  %56 = ptrtoint ptr %replay_buds.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %replay_buds.i, ptr %replay_buds.i, align 8
  %prev.i93.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 188, i32 1
  %57 = ptrtoint ptr %prev.i93.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %replay_buds.i, ptr %prev.i93.i, align 4
  %uncat_list.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 160
  %58 = ptrtoint ptr %uncat_list.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %uncat_list.i, ptr %uncat_list.i, align 8
  %prev.i94.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 160, i32 1
  %59 = ptrtoint ptr %prev.i94.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %uncat_list.i, ptr %prev.i94.i, align 4
  %empty_list.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 161
  %60 = ptrtoint ptr %empty_list.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %empty_list.i, ptr %empty_list.i, align 8
  %prev.i95.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 161, i32 1
  %61 = ptrtoint ptr %prev.i95.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %empty_list.i, ptr %prev.i95.i, align 4
  %freeable_list.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 162
  %62 = ptrtoint ptr %freeable_list.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %freeable_list.i, ptr %freeable_list.i, align 8
  %prev.i96.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 162, i32 1
  %63 = ptrtoint ptr %prev.i96.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %freeable_list.i, ptr %prev.i96.i, align 4
  %frdi_idx_list.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 163
  %64 = ptrtoint ptr %frdi_idx_list.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %frdi_idx_list.i, ptr %frdi_idx_list.i, align 8
  %prev.i97.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 163, i32 1
  %65 = ptrtoint ptr %prev.i97.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %frdi_idx_list.i, ptr %prev.i97.i, align 4
  %unclean_leb_list.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 190
  %66 = ptrtoint ptr %unclean_leb_list.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %unclean_leb_list.i, ptr %unclean_leb_list.i, align 8
  %prev.i98.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 190, i32 1
  %67 = ptrtoint ptr %prev.i98.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %unclean_leb_list.i, ptr %prev.i98.i, align 4
  %old_buds.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 22
  %68 = ptrtoint ptr %old_buds.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %old_buds.i, ptr %old_buds.i, align 8
  %prev.i99.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 22, i32 1
  %69 = ptrtoint ptr %prev.i99.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %old_buds.i, ptr %prev.i99.i, align 4
  %orph_list.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 104
  %70 = ptrtoint ptr %orph_list.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %orph_list.i, ptr %orph_list.i, align 4
  %prev.i100.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 104, i32 1
  %71 = ptrtoint ptr %prev.i100.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %orph_list.i, ptr %prev.i100.i, align 8
  %orph_new.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 105
  %72 = ptrtoint ptr %orph_new.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %orph_new.i, ptr %orph_new.i, align 4
  %prev.i101.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 105, i32 1
  %73 = ptrtoint ptr %prev.i101.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %orph_new.i, ptr %prev.i101.i, align 8
  %no_chk_data_crc.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 30
  %74 = ptrtoint ptr %no_chk_data_crc.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load.i = load i16, ptr %no_chk_data_crc.i, align 8
  %bf.set.i = and i16 %bf.load.i, -2145
  %bf.set50.i = or i16 %bf.set.i, 2080
  store i16 %bf.set50.i, ptr %no_chk_data_crc.i, align 8
  %highest_inum.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %highest_inum.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 64, ptr %highest_inum.i, align 8
  %ltail_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 11
  %76 = ptrtoint ptr %ltail_lnum.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3, ptr %ltail_lnum.i, align 4
  %lhead_lnum.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 9
  %77 = ptrtoint ptr %lhead_lnum.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %lhead_lnum.i, align 4
  %vi.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 102
  call void @ubi_get_volume_info(ptr noundef %retval.0.i125, ptr noundef %vi.i) #13
  %78 = ptrtoint ptr %vi.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vi.i, align 8
  %di.i = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 101
  %call52.i = call i32 @ubi_get_device_info(i32 noundef %79, ptr noundef %di.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_mount.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_mount, %if.then37)) #13
          to label %do.end44 [label %if.then37], !srcloc !444

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  %80 = call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i129 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i129 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task39, align 8
  %pid40 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 68
  %84 = ptrtoint ptr %pid40 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pid40, align 8
  %86 = ptrtoint ptr %vi.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vi.i, align 8
  %vol_id = getelementptr inbounds %struct.ubifs_info, ptr %call7.i.i.i, i32 0, i32 102, i32 1
  %88 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vol_id, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_mount.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.103, i32 noundef %85, i32 noundef %87, i32 noundef %89) #13
  br label %do.end44

do.end44:                                         ; preds = %if.then37, %do.body25
  %call45 = call ptr @sget(ptr noundef %fs_type, ptr noundef nonnull @sb_test, ptr noundef nonnull @sb_set, i32 noundef %flags, ptr noundef nonnull %call7.i.i.i) #13
  %cmp.i130 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then47, label %if.end49

if.then47:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %call45 to i32
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %out_close

if.end49:                                         ; preds = %do.end44
  %s_root = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 13
  %91 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_root, align 64
  %tobool50.not = icmp eq ptr %92, null
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 33
  %93 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_fs_info.i, align 16
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end49
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubifs_mount.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubifs_mount, %if.then64)) #13
          to label %do.end70 [label %if.then64], !srcloc !444

if.then64:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  %95 = call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i131 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i131 to ptr
  %task66 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task66 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task66, align 8
  %pid67 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 68
  %99 = ptrtoint ptr %pid67 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pid67, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubifs_mount.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.104, i32 noundef %100) #13
  br label %do.end70

do.end70:                                         ; preds = %if.then64, %if.then51
  %and71 = and i32 %flags, 1
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %94, i32 0, i32 81
  %101 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load = load i8, ptr %ro_mount, align 8
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and71, i32 %bf.cast)
  %cmp.not = icmp eq i32 %and71, %bf.cast
  br i1 %cmp.not, label %do.end70.if.end85_crit_edge, label %do.end70.out_deact_crit_edge

do.end70.out_deact_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_deact

do.end70.if.end85_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.else:                                          ; preds = %if.end49
  %102 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call45, ptr %94, align 8
  %vi.i132 = getelementptr inbounds %struct.ubifs_info, ptr %94, i32 0, i32 102
  %103 = ptrtoint ptr %vi.i132 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vi.i132, align 8
  %vol_id.i = getelementptr inbounds %struct.ubifs_info, ptr %94, i32 0, i32 102, i32 1
  %105 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vol_id.i, align 4
  %call.i = call ptr @ubi_open_volume(i32 noundef %104, i32 noundef %106, i32 noundef 2) #13
  %ubi.i = getelementptr inbounds %struct.ubifs_info, ptr %94, i32 0, i32 100
  %107 = ptrtoint ptr %ubi.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i, ptr %ubi.i, align 4
  %cmp.i.i133 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i133, label %if.then.i, label %if.end.i135

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %call.i to i32
  br label %ubifs_fill_super.exit

if.end.i135:                                      ; preds = %if.else
  %call6.i = call fastcc i32 @ubifs_parse_options(ptr noundef %94, ptr noundef %data, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i134 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i134, label %if.end8.i, label %if.end.i135.out_close.i_crit_edge

if.end.i135.out_close.i_crit_edge:                ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_close.i

if.end8.i:                                        ; preds = %if.end.i135
  %109 = ptrtoint ptr %vi.i132 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vi.i132, align 8
  %111 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vol_id.i, align 4
  %call13.i = call i32 (ptr, ptr, ...) @super_setup_bdi_name(ptr noundef %call45, ptr noundef nonnull @.str.131, i32 noundef %110, i32 noundef %112) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end8.i.out_close.i_crit_edge

if.end8.i.out_close.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_close.i

if.end16.i:                                       ; preds = %if.end8.i
  %s_bdi.i = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 27
  %113 = ptrtoint ptr %s_bdi.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s_bdi.i, align 8
  %ra_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %ra_pages.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %ra_pages.i, align 4
  %116 = load ptr, ptr %s_bdi.i, align 8
  %io_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %io_pages.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %io_pages.i, align 8
  %118 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %94, ptr %s_fs_info.i, align 16
  %s_magic.i = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 12
  %119 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 604313861, ptr %s_magic.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 3
  %120 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 4096, ptr %s_blocksize.i, align 16
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 2
  %121 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 12, ptr %s_blocksize_bits.i, align 4
  %key_fmt.i.i = getelementptr inbounds %struct.ubifs_info, ptr %94, i32 0, i32 67
  %122 = ptrtoint ptr %key_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %key_fmt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cond.i.i = icmp eq i32 %123, 0
  %..i.i = select i1 %cond.i.i, i64 2199023255552, i64 0
  %max_inode_sz.i = getelementptr inbounds %struct.ubifs_info, ptr %94, i32 0, i32 93
  %124 = ptrtoint ptr %max_inode_sz.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %..i.i, ptr %max_inode_sz.i, align 8
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 4
  %125 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %..i.i, ptr %s_maxbytes.i, align 8
  %126 = load i64, ptr %max_inode_sz.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186040320, i64 %126)
  %cmp.i136 = icmp sgt i64 %126, 17592186040320
  br i1 %cmp.i136, label %if.then21.i, label %if.end16.i.if.end24.i_crit_edge

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  %127 = ptrtoint ptr %max_inode_sz.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 17592186040320, ptr %max_inode_sz.i, align 8
  %128 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 17592186040320, ptr %s_maxbytes.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end16.i.if.end24.i_crit_edge
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 6
  %129 = ptrtoint ptr %s_op.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @ubifs_super_operations, ptr %s_op.i, align 4
  %s_xattr.i = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 18
  %130 = ptrtoint ptr %s_xattr.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @ubifs_xattr_handlers, ptr %s_xattr.i, align 16
  %s_cop1.i.i = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 19
  %131 = ptrtoint ptr %s_cop1.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @ubifs_crypt_operations, ptr %s_cop1.i.i, align 4
  %umount_mutex.i137 = getelementptr inbounds %struct.ubifs_info, ptr %94, i32 0, i32 128
  call void @mutex_lock_nested(ptr noundef %umount_mutex.i137, i32 noundef 0) #13
  %call25.i = call fastcc i32 @mount_ubifs(ptr noundef %94) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end34.i, label %do.body.i138

do.body.i138:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25.i)
  %cmp28.i = icmp sgt i32 %call25.i, -1
  br i1 %cmp28.i, label %if.then32.i, label %do.body.i138.out_unlock.i_crit_edge, !prof !447

do.body.i138.out_unlock.i_crit_edge:              ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i

if.then32.i:                                      ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #15
  call void @ubifs_assert_failed(ptr noundef %94, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.2, i32 noundef 2223) #13
  br label %out_unlock.i

if.end34.i:                                       ; preds = %if.end24.i
  %call35.i = call ptr @ubifs_iget(ptr noundef %call45, i32 noundef 1) #13
  %cmp.i1.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.then37.i, label %if.end39.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  %132 = ptrtoint ptr %call35.i to i32
  br label %out_umount.i

if.end39.i:                                       ; preds = %if.end34.i
  %call40.i = call ptr @d_make_root(ptr noundef %call35.i) #13
  %133 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call40.i, ptr %s_root, align 64
  %tobool42.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool42.not.i, label %if.end39.i.out_umount.i_crit_edge, label %ubifs_fill_super.exit.thread

if.end39.i.out_umount.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_umount.i

ubifs_fill_super.exit.thread:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %s_uuid.i = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 40
  %uuid.i = getelementptr inbounds %struct.ubifs_info, ptr %94, i32 0, i32 8
  %134 = call ptr @memcpy(ptr %s_uuid.i, ptr %uuid.i, i32 16)
  call void @mutex_unlock(ptr noundef %umount_mutex.i137) #13
  br label %if.end84

out_umount.i:                                     ; preds = %if.end39.i.out_umount.i_crit_edge, %if.then37.i
  %err.0.i = phi i32 [ %132, %if.then37.i ], [ -12, %if.end39.i.out_umount.i_crit_edge ]
  call fastcc void @ubifs_umount(ptr noundef %94) #13
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %out_umount.i, %if.then32.i, %do.body.i138.out_unlock.i_crit_edge
  %err.1.i = phi i32 [ %call25.i, %if.then32.i ], [ %call25.i, %do.body.i138.out_unlock.i_crit_edge ], [ %err.0.i, %out_umount.i ]
  call void @mutex_unlock(ptr noundef %umount_mutex.i137) #13
  br label %out_close.i

out_close.i:                                      ; preds = %out_unlock.i, %if.end8.i.out_close.i_crit_edge, %if.end.i135.out_close.i_crit_edge
  %err.2.i = phi i32 [ %call6.i, %if.end.i135.out_close.i_crit_edge ], [ %call13.i, %if.end8.i.out_close.i_crit_edge ], [ %err.1.i, %out_unlock.i ]
  %auth_key_name.i.i = getelementptr inbounds %struct.ubifs_info, ptr %94, i32 0, i32 182
  %135 = ptrtoint ptr %auth_key_name.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %auth_key_name.i.i, align 4
  call void @kfree(ptr noundef %136) #13
  %137 = ptrtoint ptr %auth_key_name.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %auth_key_name.i.i, align 4
  %auth_hash_name.i.i = getelementptr inbounds %struct.ubifs_info, ptr %94, i32 0, i32 183
  %138 = ptrtoint ptr %auth_hash_name.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %auth_hash_name.i.i, align 8
  call void @kfree(ptr noundef %139) #13
  %140 = ptrtoint ptr %auth_hash_name.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %auth_hash_name.i.i, align 8
  %141 = ptrtoint ptr %ubi.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ubi.i, align 4
  call void @ubi_close_volume(ptr noundef %142) #13
  br label %ubifs_fill_super.exit

ubifs_fill_super.exit:                            ; preds = %out_close.i, %if.then.i
  %retval.0.i139 = phi i32 [ %108, %if.then.i ], [ %err.2.i, %out_close.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i139)
  %tobool82.not = icmp eq i32 %retval.0.i139, 0
  br i1 %tobool82.not, label %ubifs_fill_super.exit.if.end84_crit_edge, label %ubifs_fill_super.exit.out_deact_crit_edge

ubifs_fill_super.exit.out_deact_crit_edge:        ; preds = %ubifs_fill_super.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_deact

ubifs_fill_super.exit.if.end84_crit_edge:         ; preds = %ubifs_fill_super.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.end84:                                         ; preds = %ubifs_fill_super.exit.if.end84_crit_edge, %ubifs_fill_super.exit.thread
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call45, i32 0, i32 10
  %143 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %s_flags, align 4
  %or = or i32 %144, 1073741824
  store i32 %or, ptr %s_flags, align 4
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.105) #13
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %do.end70.if.end85_crit_edge
  call void @ubi_close_volume(ptr noundef %retval.0.i125) #13
  %145 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %s_root, align 64
  %tobool.not.i140 = icmp eq ptr %146, null
  br i1 %tobool.not.i140, label %if.end85.cleanup89_crit_edge, label %if.then.i141

if.end85.cleanup89_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup89

if.then.i141:                                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %146, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #13
  br label %cleanup89

out_deact:                                        ; preds = %ubifs_fill_super.exit.out_deact_crit_edge, %do.end70.out_deact_crit_edge
  %err.1 = phi i32 [ -16, %do.end70.out_deact_crit_edge ], [ %retval.0.i139, %ubifs_fill_super.exit.out_deact_crit_edge ]
  call void @deactivate_locked_super(ptr noundef %call45) #13
  br label %out_close

out_close:                                        ; preds = %out_deact, %if.then47, %if.end20.out_close_crit_edge
  %err.2 = phi i32 [ %90, %if.then47 ], [ %err.1, %out_deact ], [ -12, %if.end20.out_close_crit_edge ]
  call void @ubi_close_volume(ptr noundef %retval.0.i125) #13
  %147 = inttoptr i32 %err.2 to ptr
  br label %cleanup89

cleanup89:                                        ; preds = %out_close, %if.then.i141, %if.end85.cleanup89_crit_edge, %do.end11, %if.then6.cleanup89_crit_edge
  %retval.0 = phi ptr [ %147, %out_close ], [ %retval.0.i125147, %do.end11 ], [ %retval.0.i125147, %if.then6.cleanup89_crit_edge ], [ null, %if.end85.cleanup89_crit_edge ], [ %146, %if.then.i141 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kill_ubifs_super(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  tail call void @kill_anon_super(ptr noundef %s) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sb_test(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %cdev = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 102, i32 12
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cdev, align 8
  %cdev2 = getelementptr inbounds %struct.ubifs_info, ptr %data, i32 0, i32 102, i32 12
  %4 = ptrtoint ptr %cdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cdev2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sb_set(ptr noundef %sb, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %s_fs_info, align 16
  %call = tail call i32 @set_anon_super(ptr noundef %sb, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume_nm(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_get_volume_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_get_device_info(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mount_ubifs(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags.i, align 4
  %ro_mount = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 81
  %4 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ro_mount, align 8
  %5 = trunc i32 %3 to i8
  %6 = shl i8 %5, 6
  %7 = and i8 %6, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %7, %bf.clear
  store i8 %bf.set, ptr %ro_mount, align 8
  %8 = load i32, ptr %s_flags.i, align 4
  %probing = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 186
  %9 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load7 = load i8, ptr %probing, align 4
  %sh.diff = lshr i32 %8, 13
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl9 = and i8 %tr.sh.diff, 4
  %bf.clear10 = and i8 %bf.load7, -5
  %bf.set11 = or i8 %bf.shl9, %bf.clear10
  store i8 %bf.set11, ptr %probing, align 4
  %corrupted.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 6
  %10 = ptrtoint ptr %corrupted.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %corrupted.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %entry.if.end.i1430_crit_edge, label %if.then.i1429

entry.if.end.i1430_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i1430

if.then.i1429:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %c, ptr noundef nonnull @.str.180) #13
  %12 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %ro_mount, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ro_mount, align 8
  br label %if.end.i1430

if.end.i1430:                                     ; preds = %if.then.i1429, %entry.if.end.i1430_crit_edge
  %ro_mode.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 101, i32 5
  %13 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ro_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i, label %if.end.i1430.if.end7.i_crit_edge, label %if.then2.i

if.end.i1430.if.end7.i_crit_edge:                 ; preds = %if.end.i1430
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i1430
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.181) #13
  %15 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load4.i = load i8, ptr %ro_mount, align 8
  %bf.set6.i = or i8 %bf.load4.i, -128
  store i8 %bf.set6.i, ptr %ro_mount, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %if.end.i1430.if.end7.i_crit_edge
  %vol_type.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 5
  %16 = ptrtoint ptr %vol_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vol_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp.i1431 = icmp eq i32 %17, 4
  br i1 %cmp.i1431, label %if.then9.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.182) #13
  %18 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load11.i = load i8, ptr %ro_mount, align 8
  %bf.set13.i = or i8 %bf.load11.i, -128
  store i8 %bf.set13.i, ptr %ro_mount, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end14.i_crit_edge
  %size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 2
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 8
  %leb_cnt.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 79
  %21 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %leb_cnt.i, align 8
  %usable_leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 9
  %22 = ptrtoint ptr %usable_leb_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usable_leb_size.i, align 4
  %leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %24 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %leb_size.i, align 8
  %leb_start.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 101, i32 2
  %25 = ptrtoint ptr %leb_start.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %leb_start.i, align 8
  %leb_start18.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 76
  %27 = ptrtoint ptr %leb_start18.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %leb_start18.i, align 4
  %div.i = sdiv i32 %23, 2
  %half_leb_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 77
  %28 = ptrtoint ptr %half_leb_size.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i, ptr %half_leb_size.i, align 8
  %min_io_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 101, i32 3
  %29 = ptrtoint ptr %min_io_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %min_io_size.i, align 4
  %min_io_size21.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %31 = ptrtoint ptr %min_io_size21.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %min_io_size21.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i1432 = icmp eq i32 %30, 0
  %32 = tail call i32 @llvm.ctlz.i32(i32 %30, i1 true) #13, !range !448
  %sub.i.op.i = xor i32 %32, 31
  %sub.i = select i1 %tobool.not.i.i1432, i32 -1, i32 %sub.i.op.i
  %min_io_shift.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 72
  %33 = ptrtoint ptr %min_io_shift.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.i, ptr %min_io_shift.i, align 4
  %max_write_size.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 101, i32 4
  %34 = ptrtoint ptr %max_write_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_write_size.i, align 8
  %max_write_size24.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 73
  %36 = ptrtoint ptr %max_write_size24.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %max_write_size24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i297.i = icmp eq i32 %35, 0
  %37 = tail call i32 @llvm.ctlz.i32(i32 %35, i1 true) #13, !range !448
  %sub.i298.op.i = xor i32 %37, 31
  %sub27.i = select i1 %tobool.not.i297.i, i32 -1, i32 %sub.i298.op.i
  %max_write_shift.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 74
  %38 = ptrtoint ptr %max_write_shift.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub27.i, ptr %max_write_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15360, i32 %23)
  %cmp29.i = icmp slt i32 %23, 15360
  br i1 %cmp29.i, label %do.body.i, label %if.end37.i

do.body.i:                                        ; preds = %if.end14.i
  %39 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load31.i = load i8, ptr %probing, align 4
  %40 = and i8 %bf.load31.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool33.not.i = icmp eq i8 %40, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %do.body.i.cleanup1085_crit_edge

do.body.i.cleanup1085_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup1085

if.then34.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.183, i32 noundef %23, i32 noundef 15360) #13
  br label %cleanup1085

if.end37.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %20)
  %cmp39.i = icmp slt i32 %20, 17
  br i1 %cmp39.i, label %do.body41.i, label %if.end52.i

do.body41.i:                                      ; preds = %if.end37.i
  %41 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load43.i = load i8, ptr %probing, align 4
  %42 = and i8 %bf.load43.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool47.not.i = icmp eq i8 %42, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %do.body41.i.cleanup1085_crit_edge

do.body41.i.cleanup1085_crit_edge:                ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup1085

if.then48.i:                                      ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.184, i32 noundef %20, i32 noundef 17) #13
  br label %cleanup1085

if.end52.i:                                       ; preds = %if.end37.i
  %43 = tail call i32 @llvm.ctpop.i32(i32 %30) #13, !range !448
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %.not.i = icmp eq i32 %43, 1
  br i1 %.not.i, label %if.end67.i, label %do.body56.i

do.body56.i:                                      ; preds = %if.end52.i
  %44 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load58.i = load i8, ptr %probing, align 4
  %45 = and i8 %bf.load58.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool62.not.i = icmp eq i8 %45, 0
  br i1 %tobool62.not.i, label %if.then63.i, label %do.body56.i.cleanup1085_crit_edge

do.body56.i.cleanup1085_crit_edge:                ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup1085

if.then63.i:                                      ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.185, i32 noundef %30) #13
  br label %cleanup1085

if.end67.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %30)
  %cmp70.i = icmp slt i32 %35, %30
  br i1 %cmp70.i, label %if.end67.i.do.body78.i_crit_edge, label %lor.lhs.false.i

if.end67.i.do.body78.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body78.i

lor.lhs.false.i:                                  ; preds = %if.end67.i
  %rem.i = srem i32 %35, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool73.not.i = icmp ne i32 %rem.i, 0
  %brmerge.i = or i1 %tobool.not.i297.i, %tobool73.not.i
  %brmerge.not.i = xor i1 %brmerge.i, true
  %46 = tail call i32 @llvm.ctpop.i32(i32 %35) #13, !range !448
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp1.i301.i = icmp ult i32 %46, 2
  %or.cond304.i = select i1 %brmerge.not.i, i1 %cmp1.i301.i, i1 false
  br i1 %or.cond304.i, label %if.end90.i, label %lor.lhs.false.i.do.body78.i_crit_edge

lor.lhs.false.i.do.body78.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body78.i

do.body78.i:                                      ; preds = %lor.lhs.false.i.do.body78.i_crit_edge, %if.end67.i.do.body78.i_crit_edge
  %47 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load80.i = load i8, ptr %probing, align 4
  %48 = and i8 %bf.load80.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool84.not.i = icmp eq i8 %48, 0
  br i1 %tobool84.not.i, label %if.then85.i, label %do.body78.i.cleanup1085_crit_edge

do.body78.i.cleanup1085_crit_edge:                ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup1085

if.then85.i:                                      ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.186, i32 noundef %35, i32 noundef %30) #13
  br label %cleanup1085

if.end90.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %30)
  %cmp92.i = icmp slt i32 %30, 8
  br i1 %cmp92.i, label %if.then93.i, label %if.end90.i.if.end_crit_edge

if.end90.i.if.end_crit_edge:                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then93.i:                                      ; preds = %if.end90.i
  %49 = ptrtoint ptr %min_io_size21.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 8, ptr %min_io_size21.i, align 8
  %50 = ptrtoint ptr %min_io_shift.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %min_io_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %35)
  %cmp98.i = icmp slt i32 %35, 8
  br i1 %cmp98.i, label %if.then99.i, label %if.then93.i.if.end_crit_edge

if.then93.i.if.end_crit_edge:                     ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then99.i:                                      ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %max_write_size24.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %max_write_size24.i, align 8
  %52 = ptrtoint ptr %max_write_shift.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %max_write_shift.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then99.i, %if.then93.i.if.end_crit_edge, %if.end90.i.if.end_crit_edge
  %53 = ptrtoint ptr %min_io_size21.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %min_io_size21.i, align 8
  %add.i = add i32 %54, 63
  %neg.i = sub i32 0, %54
  %and.i1433 = and i32 %add.i, %neg.i
  %ref_node_alsz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 89
  %55 = ptrtoint ptr %ref_node_alsz.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and.i1433, ptr %ref_node_alsz.i, align 8
  %add112.i = add i32 %54, 511
  %and116.i = and i32 %add112.i, %neg.i
  %mst_node_alsz.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 90
  %56 = ptrtoint ptr %mst_node_alsz.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and116.i, ptr %mst_node_alsz.i, align 4
  %ranges.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 99
  %arrayidx.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 5
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 28, ptr %arrayidx.i, align 4
  %arrayidx118.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 6
  %58 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4096, ptr %arrayidx118.i, align 4
  %arrayidx120.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 7
  %59 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 512, ptr %arrayidx120.i, align 4
  %arrayidx122.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 8
  %60 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 64, ptr %arrayidx122.i, align 4
  %arrayidx124.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 4
  %61 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 56, ptr %arrayidx124.i, align 4
  %arrayidx126.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 10
  %62 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 32, ptr %arrayidx126.i, align 4
  %arrayidx128.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 12
  %63 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 24, ptr %arrayidx128.i, align 4
  %max_len.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 12, i32 1
  %64 = ptrtoint ptr %max_len.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 88, ptr %max_len.i, align 4
  %arrayidx132.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 13
  %65 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 64, ptr %arrayidx132.i, align 4
  %sub134.i = add nsw i32 %23, -4096
  %max_len137.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 13, i32 1
  %66 = ptrtoint ptr %max_len137.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub134.i, ptr %max_len137.i, align 4
  %67 = ptrtoint ptr %ranges.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 160, ptr %ranges.i, align 4
  %max_len142.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 0, i32 1
  %68 = ptrtoint ptr %max_len142.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4256, ptr %max_len142.i, align 4
  %arrayidx144.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 11
  %69 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 40, ptr %arrayidx144.i, align 4
  %max_len148.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 11, i32 1
  %70 = ptrtoint ptr %max_len148.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %23, ptr %max_len148.i, align 4
  %arrayidx150.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 2
  %71 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 56, ptr %arrayidx150.i, align 4
  %max_len153.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 2, i32 1
  %72 = ptrtoint ptr %max_len153.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 312, ptr %max_len153.i, align 4
  %arrayidx155.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 3
  %73 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 56, ptr %arrayidx155.i, align 4
  %max_len158.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 3, i32 1
  %74 = ptrtoint ptr %max_len158.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 312, ptr %max_len158.i, align 4
  %arrayidx160.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 1
  %75 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 48, ptr %arrayidx160.i, align 4
  %max_len163.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 1, i32 1
  %76 = ptrtoint ptr %max_len163.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4144, ptr %max_len163.i, align 4
  %arrayidx165.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 9
  %77 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 40, ptr %arrayidx165.i, align 4
  %max_len168.i = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 9, i32 1
  %78 = ptrtoint ptr %max_len168.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2147483647, ptr %max_len168.i, align 4
  %add171.i = add i32 %54, 55
  %and175.i = and i32 %add171.i, %neg.i
  %dead_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 96
  %79 = ptrtoint ptr %dead_wm.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and175.i, ptr %dead_wm.i, align 8
  %add178.i = add i32 %54, 4255
  %and182.i = and i32 %add178.i, %neg.i
  %dark_wm.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 97
  %80 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and182.i, ptr %dark_wm.i, align 4
  %rem184.i = urem i32 %23, 4144
  %leb_overhead.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 95
  %81 = ptrtoint ptr %leb_overhead.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %rem184.i, ptr %leb_overhead.i, align 4
  %max_bu_buf_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 48
  %82 = tail call i32 @llvm.umin.i32(i32 %23, i32 132608) #13
  %83 = ptrtoint ptr %max_bu_buf_len.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %max_bu_buf_len.i, align 4
  %min_log_bytes.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 13
  %84 = ptrtoint ptr %min_log_bytes.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %23, ptr %min_log_bytes.i, align 4
  %call15 = tail call i32 @ubifs_debugging_init(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end.cleanup1085_crit_edge

if.end.cleanup1085_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup1085

if.end18:                                         ; preds = %if.end
  %call19 = tail call i32 @ubifs_sysfs_register(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_debugging_crit_edge

if.end18.out_debugging_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_debugging

if.end22:                                         ; preds = %if.end18
  %85 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i1435 = load i8, ptr %probing, align 4
  %bf.set.i1436 = or i8 %bf.load.i1435, -128
  store i8 %bf.set.i1436, ptr %probing, align 4
  %86 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %leb_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp19.i = icmp sgt i32 %87, 0
  br i1 %cmp19.i, label %if.end22.for.body.i_crit_edge, label %if.end22.land.lhs.true_crit_edge

if.end22.land.lhs.true_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end22.for.body.i_crit_edge:                    ; preds = %if.end22
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %if.end22.for.body.i_crit_edge
  %lnum.020.i = phi i32 [ %inc.i, %if.end9.i.for.body.i_crit_edge ], [ 0, %if.end22.for.body.i_crit_edge ]
  %call.i = tail call i32 @ubifs_is_mapped(ptr noundef %c, i32 noundef %lnum.020.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %for.body.i.out_free_crit_edge, label %if.end.i1438, !prof !447

for.body.i.out_free_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i1438:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 1
  br i1 %cmp3.i, label %if.end26.thread, label %if.end9.i

if.end26.thread:                                  ; preds = %if.end.i1438
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load6.i = load i8, ptr %probing, align 4
  %bf.clear7.i = and i8 %bf.load6.i, 127
  store i8 %bf.clear7.i, ptr %probing, align 4
  br label %if.end45

if.end9.i:                                        ; preds = %if.end.i1438
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 944, i32 noundef 0) #13
  %call.i.i = tail call i32 @__cond_resched() #13
  %inc.i = add nuw nsw i32 %lnum.020.i, 1
  %89 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %leb_cnt.i, align 8
  %cmp.i1439 = icmp slt i32 %inc.i, %90
  br i1 %cmp.i1439, label %if.end9.i.for.body.i_crit_edge, label %if.end26

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end26:                                         ; preds = %if.end9.i
  %91 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load27.pr = load i8, ptr %probing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load27.pr)
  %tobool28.not = icmp sgt i8 %bf.load27.pr, -1
  br i1 %tobool28.not, label %if.end26.if.end45_crit_edge, label %if.end26.land.lhs.true_crit_edge

if.end26.land.lhs.true_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end26.if.end45_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end26.land.lhs.true_crit_edge, %if.end22.land.lhs.true_crit_edge
  %92 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load30 = load i8, ptr %ro_mount, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load30)
  %93 = icmp ult i8 %bf.load30, 64
  br i1 %93, label %land.lhs.true.if.end45_crit_edge, label %if.then39

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load30)
  %tobool38.not = icmp sgt i8 %bf.load30, -1
  %cond = select i1 %tobool38.not, ptr @.str.135, ptr @.str.134
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.133, ptr noundef nonnull %cond) #13
  br label %out_free

if.end45:                                         ; preds = %land.lhs.true.if.end45_crit_edge, %if.end26.if.end45_crit_edge, %if.end26.thread
  %94 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load47 = load i8, ptr %ro_mount, align 8
  %95 = and i8 %bf.load47, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %95)
  %96 = icmp eq i8 %95, -128
  br i1 %96, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.136) #13
  br label %out_free

if.end59:                                         ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3264, i32 noundef 256) #16
  %bottom_up_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 45
  %98 = ptrtoint ptr %bottom_up_buf to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call7.i.i, ptr %bottom_up_buf, align 8
  %tobool62.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool62.not, label %if.end59.out_free_crit_edge, label %if.end64

if.end59.out_free_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end64:                                         ; preds = %if.end59
  %99 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %leb_size.i, align 8
  %call65 = tail call noalias ptr @vmalloc(i32 noundef %100) #17
  %sbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %101 = ptrtoint ptr %sbuf to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call65, ptr %sbuf, align 8
  %tobool67.not = icmp eq ptr %call65, null
  br i1 %tobool67.not, label %if.end64.out_free_crit_edge, label %if.end69

if.end64.out_free_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end69:                                         ; preds = %if.end64
  %102 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load71 = load i8, ptr %ro_mount, align 8
  %103 = and i8 %bf.load71, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool75.not = icmp eq i8 %103, 0
  br i1 %tobool75.not, label %if.then76, label %if.end69.if.end83_crit_edge

if.end69.if.end83_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then76:                                        ; preds = %if.end69
  %104 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %leb_size.i, align 8
  %call78 = tail call noalias ptr @vmalloc(i32 noundef %105) #17
  %ileb_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 37
  %106 = ptrtoint ptr %ileb_buf to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call78, ptr %ileb_buf, align 8
  %tobool80.not = icmp eq ptr %call78, null
  br i1 %tobool80.not, label %if.then76.out_free_crit_edge, label %if.then76.if.end83_crit_edge

if.then76.if.end83_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then76.out_free_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end83:                                         ; preds = %if.then76.if.end83_crit_edge, %if.end69.if.end83_crit_edge
  %bulk_read = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  %107 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load84 = load i16, ptr %bulk_read, align 8
  %108 = and i16 %bf.load84, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp.not = icmp eq i16 %108, 0
  br i1 %cmp.not, label %if.end83.if.end89_crit_edge, label %if.then88

if.end83.if.end89_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @bu_init(ptr noundef %c)
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end83.if.end89_crit_edge
  %109 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load91 = load i8, ptr %ro_mount, align 8
  %110 = and i8 %bf.load91, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool95.not = icmp eq i8 %110, 0
  br i1 %tobool95.not, label %if.then96, label %if.end89.if.end102_crit_edge

if.end89.if.end102_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then96:                                        ; preds = %if.end89
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8256, i32 noundef 3264, i32 noundef 2) #17
  %write_reserve_buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 52
  %111 = ptrtoint ptr %write_reserve_buf to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call1.i.i, ptr %write_reserve_buf, align 4
  %tobool99.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool99.not, label %if.then96.out_free_crit_edge, label %if.then96.if.end102_crit_edge

if.then96.if.end102_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then96.out_free_crit_edge:                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end102:                                        ; preds = %if.then96.if.end102_crit_edge, %if.end89.if.end102_crit_edge
  %112 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load103 = load i8, ptr %probing, align 4
  %bf.set105 = or i8 %bf.load103, 16
  store i8 %bf.set105, ptr %probing, align 4
  %auth_key_name = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 182
  %113 = ptrtoint ptr %auth_key_name to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %auth_key_name, align 4
  %tobool106.not = icmp eq ptr %114, null
  br i1 %tobool106.not, label %if.end102.if.end112_crit_edge, label %if.then107

if.end102.if.end112_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.then107:                                       ; preds = %if.end102
  %call108 = tail call i32 @ubifs_init_authentication(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then107.if.end112_crit_edge, label %if.then107.out_free_crit_edge

if.then107.out_free_crit_edge:                    ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then107.if.end112_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112

if.end112:                                        ; preds = %if.then107.if.end112_crit_edge, %if.end102.if.end112_crit_edge
  %call113 = tail call i32 @ubifs_read_superblock(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end112.out_auth_crit_edge

if.end112.out_auth_crit_edge:                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_auth

if.end116:                                        ; preds = %if.end112
  %115 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load118 = load i8, ptr %probing, align 4
  %bf.clear119 = and i8 %bf.load118, -5
  store i8 %bf.clear119, ptr %probing, align 4
  %116 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load121 = load i16, ptr %bulk_read, align 8
  %bf.lshr122 = lshr i16 %bf.load121, 8
  %bf.clear123 = and i16 %bf.lshr122, 3
  %bf.cast124 = zext i16 %bf.clear123 to i32
  %arrayidx.i1444 = getelementptr [4 x ptr], ptr @ubifs_compressors, i32 0, i32 %bf.cast124
  %117 = ptrtoint ptr %arrayidx.i1444 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i1444, align 4
  %capi_name.i = getelementptr inbounds %struct.ubifs_compressor, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %capi_name.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %capi_name.i, align 4
  %tobool4.i.not = icmp eq ptr %120, null
  br i1 %tobool4.i.not, label %if.then127, label %if.end134

if.then127:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.ubifs_compressor, ptr %118, i32 0, i32 4
  %121 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.137, ptr noundef %122) #13
  br label %out_auth

if.end134:                                        ; preds = %if.end116
  %call135 = tail call fastcc i32 @init_constants_sb(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.end134.out_auth_crit_edge

if.end134.out_auth_crit_edge:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_auth

if.end138:                                        ; preds = %if.end134
  %max_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %123 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_idx_node_sz, align 4
  %sub = add i32 %124, 2147483647
  %125 = ptrtoint ptr %min_io_size21.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %min_io_size21.i, align 8
  %add = add i32 %sub, %126
  %neg = sub i32 0, %126
  %and141 = and i32 %add, %neg
  %mul = shl i32 %and141, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3136) #17
  %cbuf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 36
  %127 = ptrtoint ptr %cbuf to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call9.i, ptr %cbuf, align 4
  %tobool144.not = icmp eq ptr %call9.i, null
  br i1 %tobool144.not, label %if.end138.out_auth_crit_edge, label %if.end146

if.end138.out_auth_crit_edge:                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_auth

if.end146:                                        ; preds = %if.end138
  %call147 = tail call fastcc i32 @alloc_wbufs(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end146.out_cbuf_crit_edge

if.end146.out_cbuf_crit_edge:                     ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_cbuf

if.end150:                                        ; preds = %if.end146
  %bgt_name = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 118
  %vi = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102
  %128 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %vi, align 8
  %vol_id = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 1
  %130 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %vol_id, align 4
  %call152 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bgt_name, ptr noundef nonnull @.str.138, i32 noundef %129, i32 noundef %131)
  %132 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load154 = load i8, ptr %ro_mount, align 8
  %133 = and i8 %bf.load154, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool158.not = icmp eq i8 %133, 0
  br i1 %tobool158.not, label %if.then159, label %if.end150.if.end176_crit_edge

if.end150.if.end176_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end176

if.then159:                                       ; preds = %if.end150
  %call162 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ubifs_bg_thread, ptr noundef %c, i32 noundef -1, ptr noundef nonnull @.str.77, ptr noundef %bgt_name) #13
  %cmp.i1446 = icmp ugt ptr %call162, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1446, label %if.then169, label %if.end166

if.end166:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #15
  %call165 = tail call i32 @wake_up_process(ptr noundef %call162) #13
  %bgt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 117
  %134 = ptrtoint ptr %bgt to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call162, ptr %bgt, align 8
  br label %if.end176

if.then169:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #15
  %bgt1506 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 117
  %135 = ptrtoint ptr %call162 to i32
  %136 = ptrtoint ptr %bgt1506 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %bgt1506, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.78, ptr noundef %bgt_name, i32 noundef %135) #13
  br label %out_wbufs

if.end176:                                        ; preds = %if.end166, %if.end150.if.end176_crit_edge
  %call177 = tail call i32 @ubifs_read_master(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %if.end176.out_master_crit_edge

if.end176.out_master_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_master

if.end180:                                        ; preds = %if.end176
  tail call fastcc void @init_constants_master(ptr noundef %c)
  %mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %137 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mst_node, align 4
  %flags = getelementptr inbounds %struct.ubifs_mst_node, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %flags, align 1
  %and181 = and i32 %140, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %cmp182.not = icmp eq i32 %and181, 0
  br i1 %cmp182.not, label %if.end180.if.end187_crit_edge, label %if.then183

if.end180.if.end187_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end187

if.then183:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.139) #13
  %141 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load184 = load i8, ptr %probing, align 4
  %bf.set186 = or i8 %bf.load184, 64
  store i8 %bf.set186, ptr %probing, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then183, %if.end180.if.end187_crit_edge
  %142 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load189 = load i8, ptr %probing, align 4
  %143 = and i8 %bf.load189, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool193.not = icmp eq i8 %143, 0
  br i1 %tobool193.not, label %if.end187.if.end207_crit_edge, label %land.lhs.true194

if.end187.if.end207_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

land.lhs.true194:                                 ; preds = %if.end187
  %144 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load196 = load i8, ptr %ro_mount, align 8
  %145 = and i8 %bf.load196, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool200.not = icmp eq i8 %145, 0
  br i1 %tobool200.not, label %if.then201, label %land.lhs.true194.if.end207_crit_edge

land.lhs.true194.if.end207_crit_edge:             ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

if.then201:                                       ; preds = %land.lhs.true194
  %146 = ptrtoint ptr %sbuf to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sbuf, align 8
  %call203 = tail call i32 @ubifs_recover_inl_heads(ptr noundef %c, ptr noundef %147) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.then201.if.end207_crit_edge, label %if.then201.out_master_crit_edge

if.then201.out_master_crit_edge:                  ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_master

if.then201.if.end207_crit_edge:                   ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

if.end207:                                        ; preds = %if.then201.if.end207_crit_edge, %land.lhs.true194.if.end207_crit_edge, %if.end187.if.end207_crit_edge
  %148 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load209 = load i8, ptr %ro_mount, align 8
  %149 = lshr i8 %bf.load209, 6
  %.lobit = and i8 %149, 1
  %150 = xor i8 %.lobit, 1
  %151 = zext i8 %150 to i32
  %call216 = tail call i32 @ubifs_lpt_init(ptr noundef %c, i32 noundef 1, i32 noundef %151) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end219, label %if.end207.out_master_crit_edge

if.end207.out_master_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_master

if.end219:                                        ; preds = %if.end207
  %152 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load221 = load i8, ptr %ro_mount, align 8
  %153 = and i8 %bf.load221, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool225.not = icmp eq i8 %153, 0
  br i1 %tobool225.not, label %land.lhs.true226, label %if.end219.if.end237_crit_edge

if.end219.if.end237_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

land.lhs.true226:                                 ; preds = %if.end219
  %154 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %154)
  %bf.load227 = load i16, ptr %bulk_read, align 8
  %155 = and i16 %bf.load227, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool231.not = icmp eq i16 %155, 0
  br i1 %tobool231.not, label %land.lhs.true226.if.end237_crit_edge, label %if.then232

land.lhs.true226.if.end237_crit_edge:             ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.then232:                                       ; preds = %land.lhs.true226
  %call233 = tail call i32 @ubifs_fixup_free_space(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.then232.if.end237_crit_edge, label %if.then232.out_lpt_crit_edge

if.then232.out_lpt_crit_edge:                     ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lpt

if.then232.if.end237_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end237

if.end237:                                        ; preds = %if.then232.if.end237_crit_edge, %land.lhs.true226.if.end237_crit_edge, %if.end219.if.end237_crit_edge
  %156 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %156)
  %bf.load239 = load i8, ptr %ro_mount, align 8
  %157 = and i8 %bf.load239, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool243.not = icmp eq i8 %157, 0
  br i1 %tobool243.not, label %land.lhs.true244, label %if.end237.if.end258_crit_edge

if.end237.if.end258_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end258

land.lhs.true244:                                 ; preds = %if.end237
  %158 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load246 = load i8, ptr %probing, align 4
  %159 = and i8 %bf.load246, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool250.not = icmp eq i8 %159, 0
  br i1 %tobool250.not, label %if.then251, label %land.lhs.true244.if.end258_crit_edge

land.lhs.true244.if.end258_crit_edge:             ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end258

if.then251:                                       ; preds = %land.lhs.true244
  %160 = ptrtoint ptr %mst_node to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mst_node, align 4
  %flags253 = getelementptr inbounds %struct.ubifs_mst_node, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %flags253 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %flags253, align 1
  %or = or i32 %163, 16777216
  store i32 %or, ptr %flags253, align 1
  %call254 = tail call i32 @ubifs_write_master(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %if.then251.if.end258_crit_edge, label %if.then251.out_lpt_crit_edge

if.then251.out_lpt_crit_edge:                     ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lpt

if.then251.if.end258_crit_edge:                   ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end258

if.end258:                                        ; preds = %if.then251.if.end258_crit_edge, %land.lhs.true244.if.end258_crit_edge, %if.end237.if.end258_crit_edge
  %164 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %164)
  %bf.load.i1448 = load i16, ptr %bulk_read, align 8
  %165 = and i16 %bf.load.i1448, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool260.not = icmp eq i16 %165, 0
  br i1 %tobool260.not, label %if.end258.if.end274_crit_edge, label %land.lhs.true261

if.end258.if.end274_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end274

land.lhs.true261:                                 ; preds = %if.end258
  %sup_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 1
  %166 = ptrtoint ptr %sup_node to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sup_node, align 4
  %hmac = getelementptr inbounds %struct.ubifs_sb_node, ptr %167, i32 0, i32 25
  %call263 = tail call zeroext i1 @ubifs_hmac_zero(ptr noundef %c, ptr noundef %hmac) #13
  br i1 %call263, label %if.then264, label %land.lhs.true261.if.end274_crit_edge

land.lhs.true261.if.end274_crit_edge:             ; preds = %land.lhs.true261
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end274

if.then264:                                       ; preds = %land.lhs.true261
  %168 = ptrtoint ptr %sup_node to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %sup_node, align 4
  %hmac_wkm = getelementptr inbounds %struct.ubifs_sb_node, ptr %169, i32 0, i32 26
  %call267 = tail call i32 @ubifs_hmac_wkm(ptr noundef %c, ptr noundef %hmac_wkm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.end270, label %if.then264.out_lpt_crit_edge

if.then264.out_lpt_crit_edge:                     ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lpt

if.end270:                                        ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #15
  %170 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %170)
  %bf.load271 = load i16, ptr %bulk_read, align 8
  %bf.set273 = or i16 %bf.load271, 8
  store i16 %bf.set273, ptr %bulk_read, align 8
  br label %if.end274

if.end274:                                        ; preds = %if.end270, %land.lhs.true261.if.end274_crit_edge, %if.end258.if.end274_crit_edge
  %171 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %171)
  %bf.load276 = load i8, ptr %ro_mount, align 8
  %172 = and i8 %bf.load276, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool280.not = icmp eq i8 %172, 0
  br i1 %tobool280.not, label %land.lhs.true281, label %if.end274.if.end298_crit_edge

if.end274.if.end298_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end298

land.lhs.true281:                                 ; preds = %if.end274
  %173 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %173)
  %bf.load283 = load i16, ptr %bulk_read, align 8
  %174 = and i16 %bf.load283, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %174)
  %tobool287.not = icmp eq i16 %174, 0
  br i1 %tobool287.not, label %land.lhs.true281.if.end298_crit_edge, label %if.then288

land.lhs.true281.if.end298_crit_edge:             ; preds = %land.lhs.true281
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end298

if.then288:                                       ; preds = %land.lhs.true281
  %sup_node289 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 1
  %175 = ptrtoint ptr %sup_node289 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sup_node289, align 4
  %call290 = tail call i32 @ubifs_write_sb_node(ptr noundef %c, ptr noundef %176) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290)
  %tobool291.not = icmp eq i32 %call290, 0
  br i1 %tobool291.not, label %if.end293, label %if.then288.out_lpt_crit_edge

if.then288.out_lpt_crit_edge:                     ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lpt

if.end293:                                        ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #15
  %177 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %177)
  %bf.load295 = load i16, ptr %bulk_read, align 8
  %bf.clear296 = and i16 %bf.load295, -9
  store i16 %bf.clear296, ptr %bulk_read, align 8
  br label %if.end298

if.end298:                                        ; preds = %if.end293, %land.lhs.true281.if.end298_crit_edge, %if.end274.if.end298_crit_edge
  %old_idx_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 4
  %178 = ptrtoint ptr %old_idx_sz to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %old_idx_sz, align 8
  %call299 = tail call i32 @dbg_check_idx_size(ptr noundef %c, i64 noundef %179) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %if.end302, label %if.end298.out_lpt_crit_edge

if.end298.out_lpt_crit_edge:                      ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lpt

if.end302:                                        ; preds = %if.end298
  %call303 = tail call i32 @ubifs_replay_journal(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.end306, label %if.end302.out_journal_crit_edge

if.end302.out_journal_crit_edge:                  ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_journal

if.end306:                                        ; preds = %if.end302
  %call307 = tail call i32 @ubifs_calc_min_idx_lebs(ptr noundef %c) #13
  %min_idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %180 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %call307, ptr %min_idx_lebs, align 8
  %181 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %181)
  %bf.load310 = load i8, ptr %probing, align 4
  %bf.lshr311 = lshr i8 %bf.load310, 6
  %bf.clear312 = and i8 %bf.lshr311, 1
  %bf.cast313 = zext i8 %bf.clear312 to i32
  %182 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load315 = load i8, ptr %ro_mount, align 8
  %bf.lshr316 = lshr i8 %bf.load315, 6
  %bf.clear317 = and i8 %bf.lshr316, 1
  %bf.cast318 = zext i8 %bf.clear317 to i32
  %call319 = tail call i32 @ubifs_mount_orphans(ptr noundef %c, i32 noundef %bf.cast313, i32 noundef %bf.cast318) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.end322, label %if.end306.out_orphans_crit_edge

if.end306.out_orphans_crit_edge:                  ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.end322:                                        ; preds = %if.end306
  %183 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load324 = load i8, ptr %ro_mount, align 8
  %184 = and i8 %bf.load324, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool328.not = icmp eq i8 %184, 0
  br i1 %tobool328.not, label %if.then329, label %if.else386

if.then329:                                       ; preds = %if.end322
  %call330 = tail call fastcc i32 @check_free_space(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %if.end333, label %if.then329.out_orphans_crit_edge

if.then329.out_orphans_crit_edge:                 ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.end333:                                        ; preds = %if.then329
  %lhead_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 9
  %185 = ptrtoint ptr %lhead_lnum to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %lhead_lnum, align 4
  %add334 = add i32 %186, 1
  %log_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 53
  %187 = ptrtoint ptr %log_lebs to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %log_lebs, align 8
  %add335 = add i32 %188, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add334, i32 %add335)
  %cmp336.not = icmp slt i32 %add334, %add335
  %spec.store.select = select i1 %cmp336.not, i32 %add334, i32 3
  %ltail_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 11
  %189 = ptrtoint ptr %ltail_lnum to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ltail_lnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %190)
  %cmp339 = icmp eq i32 %spec.store.select, %190
  br i1 %cmp339, label %if.then340, label %if.end333.if.end345_crit_edge

if.end333.if.end345_crit_edge:                    ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end345

if.then340:                                       ; preds = %if.end333
  %call341 = tail call i32 @ubifs_consolidate_log(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %if.then340.if.end345_crit_edge, label %if.then340.out_orphans_crit_edge

if.then340.out_orphans_crit_edge:                 ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.then340.if.end345_crit_edge:                   ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end345

if.end345:                                        ; preds = %if.then340.if.end345_crit_edge, %if.end333.if.end345_crit_edge
  %191 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %191)
  %bf.load347 = load i8, ptr %probing, align 4
  %192 = and i8 %bf.load347, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool351.not = icmp eq i8 %192, 0
  br i1 %tobool351.not, label %if.else, label %if.then352

if.then352:                                       ; preds = %if.end345
  %193 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %193)
  %bf.load.i1450 = load i16, ptr %bulk_read, align 8
  %194 = and i16 %bf.load.i1450, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %tobool354.not = icmp eq i16 %194, 0
  br i1 %tobool354.not, label %if.then355, label %if.then352.if.end360_crit_edge

if.then352.if.end360_crit_edge:                   ; preds = %if.then352
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end360

if.then355:                                       ; preds = %if.then352
  %call356 = tail call i32 @ubifs_recover_size(ptr noundef %c, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call356)
  %tobool357.not = icmp eq i32 %call356, 0
  br i1 %tobool357.not, label %if.then355.if.end360_crit_edge, label %if.then355.out_orphans_crit_edge

if.then355.out_orphans_crit_edge:                 ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.then355.if.end360_crit_edge:                   ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end360

if.end360:                                        ; preds = %if.then355.if.end360_crit_edge, %if.then352.if.end360_crit_edge
  %call361 = tail call i32 @ubifs_rcvry_gc_commit(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %tobool362.not = icmp eq i32 %call361, 0
  br i1 %tobool362.not, label %if.end364, label %if.end360.out_orphans_crit_edge

if.end360.out_orphans_crit_edge:                  ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.end364:                                        ; preds = %if.end360
  %195 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %195)
  %bf.load.i1453 = load i16, ptr %bulk_read, align 8
  %196 = and i16 %bf.load.i1453, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %tobool366.not = icmp eq i16 %196, 0
  br i1 %tobool366.not, label %if.end364.if.end381_crit_edge, label %if.then367

if.end364.if.end381_crit_edge:                    ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end381

if.then367:                                       ; preds = %if.end364
  %call368 = tail call i32 @ubifs_recover_size(ptr noundef %c, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call368)
  %tobool369.not = icmp eq i32 %call368, 0
  br i1 %tobool369.not, label %if.then367.if.end381_crit_edge, label %if.then367.out_orphans_crit_edge

if.then367.out_orphans_crit_edge:                 ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.then367.if.end381_crit_edge:                   ; preds = %if.then367
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end381

if.else:                                          ; preds = %if.end345
  %call373 = tail call fastcc i32 @take_gc_lnum(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.end376, label %if.else.out_orphans_crit_edge

if.else.out_orphans_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.end376:                                        ; preds = %if.else
  %gc_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %197 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %gc_lnum, align 4
  %call377 = tail call i32 @ubifs_leb_unmap(ptr noundef %c, i32 noundef %198) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call377)
  %tobool378.not = icmp eq i32 %call377, 0
  br i1 %tobool378.not, label %if.end376.if.end381_crit_edge, label %if.end376.out_orphans_crit_edge

if.end376.out_orphans_crit_edge:                  ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.end376.if.end381_crit_edge:                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end381

if.end381:                                        ; preds = %if.end376.if.end381_crit_edge, %if.then367.if.end381_crit_edge, %if.end364.if.end381_crit_edge
  %call382 = tail call i32 @dbg_check_lprops(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.end381.if.end404_crit_edge, label %if.end381.out_orphans_crit_edge

if.end381.out_orphans_crit_edge:                  ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.end381.if.end404_crit_edge:                    ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end404

if.else386:                                       ; preds = %if.end322
  %199 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %199)
  %bf.load388 = load i8, ptr %probing, align 4
  %200 = and i8 %bf.load388, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool392.not = icmp eq i8 %200, 0
  br i1 %tobool392.not, label %if.else398, label %if.then393

if.then393:                                       ; preds = %if.else386
  %call394 = tail call i32 @ubifs_recover_size(ptr noundef %c, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call394)
  %tobool395.not = icmp eq i32 %call394, 0
  br i1 %tobool395.not, label %if.then393.if.end404_crit_edge, label %if.then393.out_orphans_crit_edge

if.then393.out_orphans_crit_edge:                 ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.then393.if.end404_crit_edge:                   ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end404

if.else398:                                       ; preds = %if.else386
  %call399 = tail call fastcc i32 @take_gc_lnum(ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call399)
  %tobool400.not = icmp eq i32 %call399, 0
  br i1 %tobool400.not, label %if.else398.if.end404_crit_edge, label %if.else398.out_orphans_crit_edge

if.else398.out_orphans_crit_edge:                 ; preds = %if.else398
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_orphans

if.else398.if.end404_crit_edge:                   ; preds = %if.else398
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end404

if.end404:                                        ; preds = %if.else398.if.end404_crit_edge, %if.then393.if.end404_crit_edge, %if.end381.if.end404_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #13
  %infos_list = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  %call.i.i1455 = tail call zeroext i1 @__list_add_valid(ptr noundef %infos_list, ptr noundef %201, ptr noundef nonnull @ubifs_infos) #13
  br i1 %call.i.i1455, label %if.end.i.i1456, label %if.end404.list_add_tail.exit_crit_edge

if.end404.list_add_tail.exit_crit_edge:           ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i1456:                                   ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1) to i32))
  store ptr %infos_list, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  %202 = ptrtoint ptr %infos_list to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @ubifs_infos, ptr %infos_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 127, i32 1
  %203 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %201, ptr %prev3.i.i, align 4
  %204 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %infos_list, ptr %201, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i1456, %if.end404.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubifs_infos_lock) #13
  %205 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %205)
  %bf.load406 = load i8, ptr %probing, align 4
  %206 = and i8 %bf.load406, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool410.not = icmp eq i8 %206, 0
  br i1 %tobool410.not, label %do.body436, label %if.then411

if.then411:                                       ; preds = %list_add_tail.exit
  %207 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %207)
  %bf.load413 = load i8, ptr %ro_mount, align 8
  %208 = and i8 %bf.load413, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool417.not = icmp eq i8 %208, 0
  br i1 %tobool417.not, label %if.else419, label %if.then418

if.then418:                                       ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.140) #13
  br label %if.end452

if.else419:                                       ; preds = %if.then411
  %bf.clear422 = and i8 %bf.load406, -65
  %209 = ptrtoint ptr %probing to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %bf.clear422, ptr %probing, align 4
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.141) #13
  %taken_empty_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %210 = ptrtoint ptr %taken_empty_lebs to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %taken_empty_lebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %211)
  %cmp424 = icmp slt i32 %211, 1
  br i1 %cmp424, label %if.then432, label %if.else419.if.end452_crit_edge, !prof !447

if.else419.if.end452_crit_edge:                   ; preds = %if.else419
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end452

if.then432:                                       ; preds = %if.else419
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.2, i32 noundef 1538) #13
  br label %if.end452

do.body436:                                       ; preds = %list_add_tail.exit
  %taken_empty_lebs438 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 1
  %212 = ptrtoint ptr %taken_empty_lebs438 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %taken_empty_lebs438, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %213)
  %cmp439 = icmp slt i32 %213, 1
  br i1 %cmp439, label %if.then448, label %do.body436.if.end452_crit_edge, !prof !447

do.body436.if.end452_crit_edge:                   ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end452

if.then448:                                       ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.2, i32 noundef 1541) #13
  br label %if.end452

if.end452:                                        ; preds = %if.then448, %do.body436.if.end452_crit_edge, %if.then432, %if.else419.if.end452_crit_edge, %if.then418
  %call453 = tail call i32 @dbg_check_filesystem(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call453)
  %tobool454.not = icmp eq i32 %call453, 0
  br i1 %tobool454.not, label %if.end456, label %out_infos

if.end456:                                        ; preds = %if.end452
  tail call void @dbg_debugfs_init_fs(ptr noundef %c) #13
  %214 = ptrtoint ptr %probing to i32
  call void @__asan_load1_noabort(i32 %214)
  %bf.load458 = load i8, ptr %probing, align 4
  %bf.clear459 = and i8 %bf.load458, -17
  store i8 %bf.clear459, ptr %probing, align 4
  %215 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %vi, align 8
  %217 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %vol_id, align 4
  %name = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 102, i32 11
  %219 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %name, align 4
  %221 = ptrtoint ptr %ro_mount to i32
  call void @__asan_load1_noabort(i32 %221)
  %bf.load467 = load i8, ptr %ro_mount, align 8
  %222 = and i8 %bf.load467, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool471.not = icmp eq i8 %222, 0
  %cond472 = select i1 %tobool471.not, ptr @.str.144, ptr @.str.143
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.142, i32 noundef %216, i32 noundef %218, ptr noundef %220, ptr noundef nonnull %cond472) #13
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %223 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %main_lebs, align 4
  %conv = sext i32 %224 to i64
  %225 = ptrtoint ptr %leb_size.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %leb_size.i, align 8
  %conv474 = sext i32 %226 to i64
  %mul475 = mul nsw i64 %conv474, %conv
  %log_lebs476 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 53
  %227 = ptrtoint ptr %log_lebs476 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %log_lebs476, align 8
  %conv477 = sext i32 %228 to i64
  %mul480 = mul nsw i64 %conv477, %conv474
  %max_bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 20
  %229 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %max_bud_bytes, align 8
  %add481 = add i64 %mul480, %230
  %shr = ashr i32 %226, 10
  %231 = ptrtoint ptr %min_io_size21.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %min_io_size21.i, align 8
  %233 = ptrtoint ptr %max_write_size24.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %max_write_size24.i, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.145, i32 noundef %226, i32 noundef %shr, i32 noundef %232, i32 noundef %234) #13
  %shr485 = ashr i64 %mul475, 20
  %235 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %main_lebs, align 4
  %max_leb_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 80
  %237 = ptrtoint ptr %max_leb_cnt to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %max_leb_cnt, align 4
  %shr487 = ashr i64 %add481, 20
  %239 = ptrtoint ptr %log_lebs476 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %log_lebs476, align 8
  %max_bud_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 23
  %241 = ptrtoint ptr %max_bud_cnt to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %max_bud_cnt, align 8
  %add489 = add i32 %242, %240
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.146, i64 noundef %mul475, i64 noundef %shr485, i32 noundef %236, i32 noundef %238, i64 noundef %add481, i64 noundef %shr487, i32 noundef %add489) #13
  %report_rp_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 176
  %243 = ptrtoint ptr %report_rp_size to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %report_rp_size, align 8
  %shr491 = ashr i64 %244, 10
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.147, i64 noundef %244, i64 noundef %shr491) #13
  %fmt_version = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 6
  %245 = ptrtoint ptr %fmt_version to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %fmt_version, align 4
  %ro_compat_version = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 7
  %247 = ptrtoint ptr %ro_compat_version to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %ro_compat_version, align 8
  %uuid = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 8
  %249 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %249)
  %bf.load493 = load i16, ptr %bulk_read, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load493)
  %tobool496.not = icmp sgt i16 %bf.load493, -1
  %cond497 = select i1 %tobool496.not, ptr @.str.150, ptr @.str.149
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %c, ptr noundef nonnull @.str.148, i32 noundef %246, i32 noundef %248, i32 noundef 5, i32 noundef 0, ptr noundef %uuid, ptr noundef nonnull %cond497) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then508)) #13
          to label %do.body519 [label %if.then508], !srcloc !444

if.then508:                                       ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #15
  %250 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1457 = and i32 %250, -16384
  %251 = inttoptr i32 %and.i1457 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %251, i32 0, i32 2
  %252 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %253, i32 0, i32 68
  %254 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %pid, align 8
  %256 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %256)
  %bf.load511 = load i16, ptr %bulk_read, align 8
  %bf.lshr512 = lshr i16 %bf.load511, 8
  %bf.clear513 = and i16 %bf.lshr512, 3
  %bf.cast514 = zext i16 %bf.clear513 to i32
  %arrayidx.i1458 = getelementptr [4 x ptr], ptr @ubifs_compressors, i32 0, i32 %bf.cast514
  %257 = ptrtoint ptr %arrayidx.i1458 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %arrayidx.i1458, align 4
  %name.i1459 = getelementptr inbounds %struct.ubifs_compressor, ptr %258, i32 0, i32 4
  %259 = ptrtoint ptr %name.i1459 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %name.i1459, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.152, i32 noundef %255, ptr noundef %260) #13
  br label %do.body519

do.body519:                                       ; preds = %if.then508, %if.end456
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then531)) #13
          to label %do.body539 [label %if.then531], !srcloc !444

if.then531:                                       ; preds = %do.body519
  call void @__sanitizer_cov_trace_pc() #15
  %261 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1460 = and i32 %261, -16384
  %262 = inttoptr i32 %and.i1460 to ptr
  %task533 = getelementptr inbounds %struct.thread_info, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %task533 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %task533, align 8
  %pid534 = getelementptr inbounds %struct.task_struct, ptr %264, i32 0, i32 68
  %265 = ptrtoint ptr %pid534 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %pid534, align 8
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %267 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %jhead_cnt, align 4
  %sub535 = add i32 %268, -2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.153, i32 noundef %266, i32 noundef %sub535) #13
  br label %do.body539

do.body539:                                       ; preds = %if.then531, %do.body519
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then551)) #13
          to label %do.body559 [label %if.then551], !srcloc !444

if.then551:                                       ; preds = %do.body539
  call void @__sanitizer_cov_trace_pc() #15
  %269 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1461 = and i32 %269, -16384
  %270 = inttoptr i32 %and.i1461 to ptr
  %task553 = getelementptr inbounds %struct.thread_info, ptr %270, i32 0, i32 2
  %271 = ptrtoint ptr %task553 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %task553, align 8
  %pid554 = getelementptr inbounds %struct.task_struct, ptr %272, i32 0, i32 68
  %273 = ptrtoint ptr %pid554 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %pid554, align 8
  %275 = ptrtoint ptr %log_lebs476 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %log_lebs476, align 8
  %log_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 55
  %277 = ptrtoint ptr %log_last to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %log_last, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.154, i32 noundef %274, i32 noundef %276, i32 noundef 3, i32 noundef %278) #13
  br label %do.body559

do.body559:                                       ; preds = %if.then551, %do.body539
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then571)) #13
          to label %do.body578 [label %if.then571], !srcloc !444

if.then571:                                       ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #15
  %279 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1462 = and i32 %279, -16384
  %280 = inttoptr i32 %and.i1462 to ptr
  %task573 = getelementptr inbounds %struct.thread_info, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %task573 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %task573, align 8
  %pid574 = getelementptr inbounds %struct.task_struct, ptr %282, i32 0, i32 68
  %283 = ptrtoint ptr %pid574 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %pid574, align 8
  %lpt_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 56
  %285 = ptrtoint ptr %lpt_lebs to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %lpt_lebs, align 4
  %lpt_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 57
  %287 = ptrtoint ptr %lpt_first to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %lpt_first, align 8
  %lpt_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 58
  %289 = ptrtoint ptr %lpt_last to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %lpt_last, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.155, i32 noundef %284, i32 noundef %286, i32 noundef %288, i32 noundef %290) #13
  br label %do.body578

do.body578:                                       ; preds = %if.then571, %do.body559
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then590)) #13
          to label %do.body597 [label %if.then590], !srcloc !444

if.then590:                                       ; preds = %do.body578
  call void @__sanitizer_cov_trace_pc() #15
  %291 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1463 = and i32 %291, -16384
  %292 = inttoptr i32 %and.i1463 to ptr
  %task592 = getelementptr inbounds %struct.thread_info, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %task592 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %task592, align 8
  %pid593 = getelementptr inbounds %struct.task_struct, ptr %294, i32 0, i32 68
  %295 = ptrtoint ptr %pid593 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %pid593, align 8
  %orph_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 59
  %297 = ptrtoint ptr %orph_lebs to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %orph_lebs, align 8
  %orph_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 60
  %299 = ptrtoint ptr %orph_first to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %orph_first, align 4
  %orph_last = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 61
  %301 = ptrtoint ptr %orph_last to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %orph_last, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.156, i32 noundef %296, i32 noundef %298, i32 noundef %300, i32 noundef %302) #13
  br label %do.body597

do.body597:                                       ; preds = %if.then590, %do.body578
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then609)) #13
          to label %do.body618 [label %if.then609], !srcloc !444

if.then609:                                       ; preds = %do.body597
  call void @__sanitizer_cov_trace_pc() #15
  %303 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1464 = and i32 %303, -16384
  %304 = inttoptr i32 %and.i1464 to ptr
  %task611 = getelementptr inbounds %struct.thread_info, ptr %304, i32 0, i32 2
  %305 = ptrtoint ptr %task611 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %task611, align 8
  %pid612 = getelementptr inbounds %struct.task_struct, ptr %306, i32 0, i32 68
  %307 = ptrtoint ptr %pid612 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %pid612, align 8
  %309 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %main_lebs, align 4
  %main_first = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 63
  %311 = ptrtoint ptr %main_first to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %main_first, align 8
  %313 = ptrtoint ptr %leb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %leb_cnt.i, align 8
  %sub614 = add i32 %314, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.157, i32 noundef %308, i32 noundef %310, i32 noundef %312, i32 noundef %sub614) #13
  br label %do.body618

do.body618:                                       ; preds = %if.then609, %do.body597
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then630)) #13
          to label %do.body638 [label %if.then630], !srcloc !444

if.then630:                                       ; preds = %do.body618
  call void @__sanitizer_cov_trace_pc() #15
  %315 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1465 = and i32 %315, -16384
  %316 = inttoptr i32 %and.i1465 to ptr
  %task632 = getelementptr inbounds %struct.thread_info, ptr %316, i32 0, i32 2
  %317 = ptrtoint ptr %task632 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %task632, align 8
  %pid633 = getelementptr inbounds %struct.task_struct, ptr %318, i32 0, i32 68
  %319 = ptrtoint ptr %pid633 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %pid633, align 8
  %idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 86, i32 2
  %321 = ptrtoint ptr %idx_lebs to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %idx_lebs, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.158, i32 noundef %320, i32 noundef %322) #13
  br label %do.body638

do.body638:                                       ; preds = %if.then630, %do.body618
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then650)) #13
          to label %do.body665 [label %if.then650], !srcloc !444

if.then650:                                       ; preds = %do.body638
  call void @__sanitizer_cov_trace_pc() #15
  %323 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1466 = and i32 %323, -16384
  %324 = inttoptr i32 %and.i1466 to ptr
  %task652 = getelementptr inbounds %struct.thread_info, ptr %324, i32 0, i32 2
  %325 = ptrtoint ptr %task652 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %task652, align 8
  %pid653 = getelementptr inbounds %struct.task_struct, ptr %326, i32 0, i32 68
  %327 = ptrtoint ptr %pid653 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %pid653, align 8
  %329 = ptrtoint ptr %old_idx_sz to i32
  call void @__asan_load8_noabort(i32 %329)
  %330 = load i64, ptr %old_idx_sz, align 8
  %shr658 = lshr i64 %330, 10
  %shr661 = lshr i64 %330, 20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.159, i32 noundef %328, i64 noundef %330, i64 noundef %shr658, i64 noundef %shr661) #13
  br label %do.body665

do.body665:                                       ; preds = %if.then650, %do.body638
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then677)) #13
          to label %do.body685 [label %if.then677], !srcloc !444

if.then677:                                       ; preds = %do.body665
  call void @__sanitizer_cov_trace_pc() #15
  %331 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1467 = and i32 %331, -16384
  %332 = inttoptr i32 %and.i1467 to ptr
  %task679 = getelementptr inbounds %struct.thread_info, ptr %332, i32 0, i32 2
  %333 = ptrtoint ptr %task679 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %task679, align 8
  %pid680 = getelementptr inbounds %struct.task_struct, ptr %334, i32 0, i32 68
  %335 = ptrtoint ptr %pid680 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %pid680, align 8
  %key_hash_type = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 65
  %337 = ptrtoint ptr %key_hash_type to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %key_hash_type, align 8
  %conv681 = zext i8 %338 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.160, i32 noundef %336, i32 noundef %conv681) #13
  br label %do.body685

do.body685:                                       ; preds = %if.then677, %do.body665
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then697)) #13
          to label %do.body704 [label %if.then697], !srcloc !444

if.then697:                                       ; preds = %do.body685
  call void @__sanitizer_cov_trace_pc() #15
  %339 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1468 = and i32 %339, -16384
  %340 = inttoptr i32 %and.i1468 to ptr
  %task699 = getelementptr inbounds %struct.thread_info, ptr %340, i32 0, i32 2
  %341 = ptrtoint ptr %task699 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %task699, align 8
  %pid700 = getelementptr inbounds %struct.task_struct, ptr %342, i32 0, i32 68
  %343 = ptrtoint ptr %pid700 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %pid700, align 8
  %fanout = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %345 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %fanout, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.161, i32 noundef %344, i32 noundef %346) #13
  br label %do.body704

do.body704:                                       ; preds = %if.then697, %do.body685
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then716)) #13
          to label %do.body724 [label %if.then716], !srcloc !444

if.then716:                                       ; preds = %do.body704
  call void @__sanitizer_cov_trace_pc() #15
  %347 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1469 = and i32 %347, -16384
  %348 = inttoptr i32 %and.i1469 to ptr
  %task718 = getelementptr inbounds %struct.thread_info, ptr %348, i32 0, i32 2
  %349 = ptrtoint ptr %task718 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %task718, align 8
  %pid719 = getelementptr inbounds %struct.task_struct, ptr %350, i32 0, i32 68
  %351 = ptrtoint ptr %pid719 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %pid719, align 8
  %gc_lnum720 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %353 = ptrtoint ptr %gc_lnum720 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %gc_lnum720, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.162, i32 noundef %352, i32 noundef %354) #13
  br label %do.body724

do.body724:                                       ; preds = %if.then716, %do.body704
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then736)) #13
          to label %do.body743 [label %if.then736], !srcloc !444

if.then736:                                       ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #15
  %355 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1470 = and i32 %355, -16384
  %356 = inttoptr i32 %and.i1470 to ptr
  %task738 = getelementptr inbounds %struct.thread_info, ptr %356, i32 0, i32 2
  %357 = ptrtoint ptr %task738 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %task738, align 8
  %pid739 = getelementptr inbounds %struct.task_struct, ptr %358, i32 0, i32 68
  %359 = ptrtoint ptr %pid739 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %pid739, align 8
  %max_znode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 94
  %361 = ptrtoint ptr %max_znode_sz to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %max_znode_sz, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.163, i32 noundef %360, i32 noundef %362) #13
  br label %do.body743

do.body743:                                       ; preds = %if.then736, %do.body724
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then755)) #13
          to label %do.body763 [label %if.then755], !srcloc !444

if.then755:                                       ; preds = %do.body743
  call void @__sanitizer_cov_trace_pc() #15
  %363 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1471 = and i32 %363, -16384
  %364 = inttoptr i32 %and.i1471 to ptr
  %task757 = getelementptr inbounds %struct.thread_info, ptr %364, i32 0, i32 2
  %365 = ptrtoint ptr %task757 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %task757, align 8
  %pid758 = getelementptr inbounds %struct.task_struct, ptr %366, i32 0, i32 68
  %367 = ptrtoint ptr %pid758 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %pid758, align 8
  %369 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %max_idx_node_sz, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.164, i32 noundef %368, i32 noundef %370) #13
  br label %do.body763

do.body763:                                       ; preds = %if.then755, %do.body743
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then775)) #13
          to label %do.body782 [label %if.then775], !srcloc !444

if.then775:                                       ; preds = %do.body763
  call void @__sanitizer_cov_trace_pc() #15
  %371 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1472 = and i32 %371, -16384
  %372 = inttoptr i32 %and.i1472 to ptr
  %task777 = getelementptr inbounds %struct.thread_info, ptr %372, i32 0, i32 2
  %373 = ptrtoint ptr %task777 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %task777, align 8
  %pid778 = getelementptr inbounds %struct.task_struct, ptr %374, i32 0, i32 68
  %375 = ptrtoint ptr %pid778 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %pid778, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.165, i32 noundef %376, i32 noundef 48, i32 noundef 160, i32 noundef 56) #13
  br label %do.body782

do.body782:                                       ; preds = %if.then775, %do.body763
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then794)) #13
          to label %do.body801 [label %if.then794], !srcloc !444

if.then794:                                       ; preds = %do.body782
  call void @__sanitizer_cov_trace_pc() #15
  %377 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1473 = and i32 %377, -16384
  %378 = inttoptr i32 %and.i1473 to ptr
  %task796 = getelementptr inbounds %struct.thread_info, ptr %378, i32 0, i32 2
  %379 = ptrtoint ptr %task796 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %task796, align 8
  %pid797 = getelementptr inbounds %struct.task_struct, ptr %380, i32 0, i32 68
  %381 = ptrtoint ptr %pid797 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %pid797, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.166, i32 noundef %382, i32 noundef 56, i32 noundef 4096, i32 noundef 512) #13
  br label %do.body801

do.body801:                                       ; preds = %if.then794, %do.body782
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then813)) #13
          to label %do.body820 [label %if.then813], !srcloc !444

if.then813:                                       ; preds = %do.body801
  call void @__sanitizer_cov_trace_pc() #15
  %383 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1474 = and i32 %383, -16384
  %384 = inttoptr i32 %and.i1474 to ptr
  %task815 = getelementptr inbounds %struct.thread_info, ptr %384, i32 0, i32 2
  %385 = ptrtoint ptr %task815 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %task815, align 8
  %pid816 = getelementptr inbounds %struct.task_struct, ptr %386, i32 0, i32 68
  %387 = ptrtoint ptr %pid816 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %pid816, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.167, i32 noundef %388, i32 noundef 64, i32 noundef 32, i32 noundef 32) #13
  br label %do.body820

do.body820:                                       ; preds = %if.then813, %do.body801
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then832)) #13
          to label %do.body841 [label %if.then832], !srcloc !444

if.then832:                                       ; preds = %do.body820
  call void @__sanitizer_cov_trace_pc() #15
  %389 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1475 = and i32 %389, -16384
  %390 = inttoptr i32 %and.i1475 to ptr
  %task834 = getelementptr inbounds %struct.thread_info, ptr %390, i32 0, i32 2
  %391 = ptrtoint ptr %task834 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %task834, align 8
  %pid835 = getelementptr inbounds %struct.task_struct, ptr %392, i32 0, i32 68
  %393 = ptrtoint ptr %pid835 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %pid835, align 8
  %fanout836 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %395 = ptrtoint ptr %fanout836 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %fanout836, align 4
  %key_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %397 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %key_len.i, align 4
  %add.i1476 = add i32 %398, 12
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %399 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %hash_len.i, align 8
  %add1.i = add i32 %add.i1476, %400
  %mul.i = mul i32 %add1.i, %396
  %add2.i = add i32 %mul.i, 28
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.168, i32 noundef %394, i32 noundef 4144, i32 noundef 4256, i32 noundef 312, i32 noundef %add2.i) #13
  br label %do.body841

do.body841:                                       ; preds = %if.then832, %do.body820
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then853)) #13
          to label %do.body860 [label %if.then853], !srcloc !444

if.then853:                                       ; preds = %do.body841
  call void @__sanitizer_cov_trace_pc() #15
  %401 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1477 = and i32 %401, -16384
  %402 = inttoptr i32 %and.i1477 to ptr
  %task855 = getelementptr inbounds %struct.thread_info, ptr %402, i32 0, i32 2
  %403 = ptrtoint ptr %task855 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %task855, align 8
  %pid856 = getelementptr inbounds %struct.task_struct, ptr %404, i32 0, i32 68
  %405 = ptrtoint ptr %pid856 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %pid856, align 8
  %407 = ptrtoint ptr %dead_wm.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %dead_wm.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.169, i32 noundef %406, i32 noundef %408) #13
  br label %do.body860

do.body860:                                       ; preds = %if.then853, %do.body841
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then872)) #13
          to label %do.body879 [label %if.then872], !srcloc !444

if.then872:                                       ; preds = %do.body860
  call void @__sanitizer_cov_trace_pc() #15
  %409 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1478 = and i32 %409, -16384
  %410 = inttoptr i32 %and.i1478 to ptr
  %task874 = getelementptr inbounds %struct.thread_info, ptr %410, i32 0, i32 2
  %411 = ptrtoint ptr %task874 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %task874, align 8
  %pid875 = getelementptr inbounds %struct.task_struct, ptr %412, i32 0, i32 68
  %413 = ptrtoint ptr %pid875 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %pid875, align 8
  %415 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %dark_wm.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.170, i32 noundef %414, i32 noundef %416) #13
  br label %do.body879

do.body879:                                       ; preds = %if.then872, %do.body860
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then891)) #13
          to label %do.end897 [label %if.then891], !srcloc !444

if.then891:                                       ; preds = %do.body879
  call void @__sanitizer_cov_trace_pc() #15
  %417 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1479 = and i32 %417, -16384
  %418 = inttoptr i32 %and.i1479 to ptr
  %task893 = getelementptr inbounds %struct.thread_info, ptr %418, i32 0, i32 2
  %419 = ptrtoint ptr %task893 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %task893, align 8
  %pid894 = getelementptr inbounds %struct.task_struct, ptr %420, i32 0, i32 68
  %421 = ptrtoint ptr %pid894 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %pid894, align 8
  %423 = ptrtoint ptr %leb_overhead.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %leb_overhead.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.171, i32 noundef %422, i32 noundef %424) #13
  br label %do.end897

do.end897:                                        ; preds = %if.then891, %do.body879
  %425 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %main_lebs, align 4
  %427 = ptrtoint ptr %dark_wm.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %dark_wm.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then915)) #13
          to label %do.body924 [label %if.then915], !srcloc !444

if.then915:                                       ; preds = %do.end897
  call void @__sanitizer_cov_trace_pc() #15
  %conv899 = sext i32 %426 to i64
  %conv901 = sext i32 %428 to i64
  %mul902 = mul nsw i64 %conv901, %conv899
  %429 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1480 = and i32 %429, -16384
  %430 = inttoptr i32 %and.i1480 to ptr
  %task917 = getelementptr inbounds %struct.thread_info, ptr %430, i32 0, i32 2
  %431 = ptrtoint ptr %task917 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %task917, align 8
  %pid918 = getelementptr inbounds %struct.task_struct, ptr %432, i32 0, i32 68
  %433 = ptrtoint ptr %pid918 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %pid918, align 8
  %shr919 = ashr i64 %mul902, 10
  %shr920 = ashr i64 %mul902, 20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.172, i32 noundef %434, i64 noundef %mul902, i64 noundef %shr919, i64 noundef %shr920) #13
  br label %do.body924

do.body924:                                       ; preds = %if.then915, %do.end897
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then936)) #13
          to label %do.body948 [label %if.then936], !srcloc !444

if.then936:                                       ; preds = %do.body924
  call void @__sanitizer_cov_trace_pc() #15
  %435 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1481 = and i32 %435, -16384
  %436 = inttoptr i32 %and.i1481 to ptr
  %task938 = getelementptr inbounds %struct.thread_info, ptr %436, i32 0, i32 2
  %437 = ptrtoint ptr %task938 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %task938, align 8
  %pid939 = getelementptr inbounds %struct.task_struct, ptr %438, i32 0, i32 68
  %439 = ptrtoint ptr %pid939 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %pid939, align 8
  %441 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %441)
  %442 = load i64, ptr %max_bud_bytes, align 8
  %shr942 = ashr i64 %442, 10
  %shr944 = ashr i64 %442, 20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.173, i32 noundef %440, i64 noundef %442, i64 noundef %shr942, i64 noundef %shr944) #13
  br label %do.body948

do.body948:                                       ; preds = %if.then936, %do.body924
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then960)) #13
          to label %do.body971 [label %if.then960], !srcloc !444

if.then960:                                       ; preds = %do.body948
  call void @__sanitizer_cov_trace_pc() #15
  %443 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1482 = and i32 %443, -16384
  %444 = inttoptr i32 %and.i1482 to ptr
  %task962 = getelementptr inbounds %struct.thread_info, ptr %444, i32 0, i32 2
  %445 = ptrtoint ptr %task962 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %task962, align 8
  %pid963 = getelementptr inbounds %struct.task_struct, ptr %446, i32 0, i32 68
  %447 = ptrtoint ptr %pid963 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %pid963, align 8
  %bg_bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 21
  %449 = ptrtoint ptr %bg_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %449)
  %450 = load i64, ptr %bg_bud_bytes, align 8
  %shr965 = ashr i64 %450, 10
  %shr967 = ashr i64 %450, 20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.174, i32 noundef %448, i64 noundef %450, i64 noundef %shr965, i64 noundef %shr967) #13
  br label %do.body971

do.body971:                                       ; preds = %if.then960, %do.body948
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then983)) #13
          to label %do.body994 [label %if.then983], !srcloc !444

if.then983:                                       ; preds = %do.body971
  call void @__sanitizer_cov_trace_pc() #15
  %451 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1483 = and i32 %451, -16384
  %452 = inttoptr i32 %and.i1483 to ptr
  %task985 = getelementptr inbounds %struct.thread_info, ptr %452, i32 0, i32 2
  %453 = ptrtoint ptr %task985 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %task985, align 8
  %pid986 = getelementptr inbounds %struct.task_struct, ptr %454, i32 0, i32 68
  %455 = ptrtoint ptr %pid986 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %pid986, align 8
  %bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 16
  %457 = ptrtoint ptr %bud_bytes to i32
  call void @__asan_load8_noabort(i32 %457)
  %458 = load i64, ptr %bud_bytes, align 8
  %shr988 = ashr i64 %458, 10
  %shr990 = ashr i64 %458, 20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.175, i32 noundef %456, i64 noundef %458, i64 noundef %shr988, i64 noundef %shr990) #13
  br label %do.body994

do.body994:                                       ; preds = %if.then983, %do.body971
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then1006)) #13
          to label %do.body1013 [label %if.then1006], !srcloc !444

if.then1006:                                      ; preds = %do.body994
  call void @__sanitizer_cov_trace_pc() #15
  %459 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1484 = and i32 %459, -16384
  %460 = inttoptr i32 %and.i1484 to ptr
  %task1008 = getelementptr inbounds %struct.thread_info, ptr %460, i32 0, i32 2
  %461 = ptrtoint ptr %task1008 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %task1008, align 8
  %pid1009 = getelementptr inbounds %struct.task_struct, ptr %462, i32 0, i32 68
  %463 = ptrtoint ptr %pid1009 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %pid1009, align 8
  %max_sqnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 3
  %465 = ptrtoint ptr %max_sqnum to i32
  call void @__asan_load8_noabort(i32 %465)
  %466 = load i64, ptr %max_sqnum, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.176, i32 noundef %464, i64 noundef %466) #13
  br label %do.body1013

do.body1013:                                      ; preds = %if.then1006, %do.body994
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then1025)) #13
          to label %do.body1032 [label %if.then1025], !srcloc !444

if.then1025:                                      ; preds = %do.body1013
  call void @__sanitizer_cov_trace_pc() #15
  %467 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1485 = and i32 %467, -16384
  %468 = inttoptr i32 %and.i1485 to ptr
  %task1027 = getelementptr inbounds %struct.thread_info, ptr %468, i32 0, i32 2
  %469 = ptrtoint ptr %task1027 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %task1027, align 8
  %pid1028 = getelementptr inbounds %struct.task_struct, ptr %470, i32 0, i32 68
  %471 = ptrtoint ptr %pid1028 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %pid1028, align 8
  %cmt_no = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 4
  %473 = ptrtoint ptr %cmt_no to i32
  call void @__asan_load8_noabort(i32 %473)
  %474 = load i64, ptr %cmt_no, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.177, i32 noundef %472, i64 noundef %474) #13
  br label %do.body1032

do.body1032:                                      ; preds = %if.then1025, %do.body1013
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then1044)) #13
          to label %do.body1052 [label %if.then1044], !srcloc !444

if.then1044:                                      ; preds = %do.body1032
  call void @__sanitizer_cov_trace_pc() #15
  %475 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1486 = and i32 %475, -16384
  %476 = inttoptr i32 %and.i1486 to ptr
  %task1046 = getelementptr inbounds %struct.thread_info, ptr %476, i32 0, i32 2
  %477 = ptrtoint ptr %task1046 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %task1046, align 8
  %pid1047 = getelementptr inbounds %struct.task_struct, ptr %478, i32 0, i32 68
  %479 = ptrtoint ptr %pid1047 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %pid1047, align 8
  %call1048 = tail call fastcc i32 @ubifs_xattr_max_cnt(ptr noundef %c), !range !449
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.178, i32 noundef %480, i32 noundef %call1048) #13
  br label %do.body1052

do.body1052:                                      ; preds = %if.then1044, %do.body1032
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mount_ubifs.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mount_ubifs, %if.then1064)) #13
          to label %cleanup1085 [label %if.then1064], !srcloc !444

if.then1064:                                      ; preds = %do.body1052
  call void @__sanitizer_cov_trace_pc() #15
  %481 = tail call i32 @llvm.read_register.i32(metadata !433) #13
  %and.i1487 = and i32 %481, -16384
  %482 = inttoptr i32 %and.i1487 to ptr
  %task1066 = getelementptr inbounds %struct.thread_info, ptr %482, i32 0, i32 2
  %483 = ptrtoint ptr %task1066 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %task1066, align 8
  %pid1067 = getelementptr inbounds %struct.task_struct, ptr %484, i32 0, i32 68
  %485 = ptrtoint ptr %pid1067 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %pid1067, align 8
  %max_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 113
  %487 = ptrtoint ptr %max_orphans to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %max_orphans, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mount_ubifs.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.179, i32 noundef %486, i32 noundef %488) #13
  br label %cleanup1085

out_infos:                                        ; preds = %if.end452
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #13
  %call.i.i1488 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %infos_list) #13
  br i1 %call.i.i1488, label %if.end.i.i1489, label %out_infos.list_del.exit_crit_edge

out_infos.list_del.exit_crit_edge:                ; preds = %out_infos
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i1489:                                   ; preds = %out_infos
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 127, i32 1
  %489 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %prev.i.i, align 4
  %491 = ptrtoint ptr %infos_list to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %infos_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %492, i32 0, i32 1
  %493 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr %490, ptr %prev1.i.i.i, align 4
  %494 = ptrtoint ptr %490 to i32
  call void @__asan_store4_noabort(i32 %494)
  store volatile ptr %492, ptr %490, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i1489, %out_infos.list_del.exit_crit_edge
  %495 = ptrtoint ptr %infos_list to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr inttoptr (i32 256 to ptr), ptr %infos_list, align 4
  %prev.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 127, i32 1
  %496 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ubifs_infos_lock) #13
  br label %out_orphans

out_orphans:                                      ; preds = %list_del.exit, %if.else398.out_orphans_crit_edge, %if.then393.out_orphans_crit_edge, %if.end381.out_orphans_crit_edge, %if.end376.out_orphans_crit_edge, %if.else.out_orphans_crit_edge, %if.then367.out_orphans_crit_edge, %if.end360.out_orphans_crit_edge, %if.then355.out_orphans_crit_edge, %if.then340.out_orphans_crit_edge, %if.then329.out_orphans_crit_edge, %if.end306.out_orphans_crit_edge
  %err.1 = phi i32 [ %call319, %if.end306.out_orphans_crit_edge ], [ %call394, %if.then393.out_orphans_crit_edge ], [ %call453, %list_del.exit ], [ %call399, %if.else398.out_orphans_crit_edge ], [ %call382, %if.end381.out_orphans_crit_edge ], [ %call377, %if.end376.out_orphans_crit_edge ], [ %call373, %if.else.out_orphans_crit_edge ], [ %call368, %if.then367.out_orphans_crit_edge ], [ %call361, %if.end360.out_orphans_crit_edge ], [ %call356, %if.then355.out_orphans_crit_edge ], [ %call341, %if.then340.out_orphans_crit_edge ], [ %call330, %if.then329.out_orphans_crit_edge ]
  tail call fastcc void @free_orphans(ptr noundef %c)
  br label %out_journal

out_journal:                                      ; preds = %out_orphans, %if.end302.out_journal_crit_edge
  %err.2 = phi i32 [ %call303, %if.end302.out_journal_crit_edge ], [ %err.1, %out_orphans ]
  tail call fastcc void @destroy_journal(ptr noundef %c)
  br label %out_lpt

out_lpt:                                          ; preds = %out_journal, %if.end298.out_lpt_crit_edge, %if.then288.out_lpt_crit_edge, %if.then264.out_lpt_crit_edge, %if.then251.out_lpt_crit_edge, %if.then232.out_lpt_crit_edge
  %err.3 = phi i32 [ %call267, %if.then264.out_lpt_crit_edge ], [ %call299, %if.end298.out_lpt_crit_edge ], [ %err.2, %out_journal ], [ %call290, %if.then288.out_lpt_crit_edge ], [ %call254, %if.then251.out_lpt_crit_edge ], [ %call233, %if.then232.out_lpt_crit_edge ]
  tail call void @ubifs_lpt_free(ptr noundef %c, i32 noundef 0) #13
  br label %out_master

out_master:                                       ; preds = %out_lpt, %if.end207.out_master_crit_edge, %if.then201.out_master_crit_edge, %if.end176.out_master_crit_edge
  %err.4 = phi i32 [ %call177, %if.end176.out_master_crit_edge ], [ %call216, %if.end207.out_master_crit_edge ], [ %err.3, %out_lpt ], [ %call203, %if.then201.out_master_crit_edge ]
  %mst_node1072 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 46
  %497 = ptrtoint ptr %mst_node1072 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %mst_node1072, align 4
  tail call void @kfree(ptr noundef %498) #13
  %rcvrd_mst_node = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 191
  %499 = ptrtoint ptr %rcvrd_mst_node to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %rcvrd_mst_node, align 8
  tail call void @kfree(ptr noundef %500) #13
  %bgt1073 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 117
  %501 = ptrtoint ptr %bgt1073 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %bgt1073, align 8
  %tobool1074.not = icmp eq ptr %502, null
  br i1 %tobool1074.not, label %out_master.out_wbufs_crit_edge, label %if.then1075

out_master.out_wbufs_crit_edge:                   ; preds = %out_master
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_wbufs

if.then1075:                                      ; preds = %out_master
  call void @__sanitizer_cov_trace_pc() #15
  %call1077 = tail call i32 @kthread_stop(ptr noundef nonnull %502) #13
  br label %out_wbufs

out_wbufs:                                        ; preds = %if.then1075, %out_master.out_wbufs_crit_edge, %if.then169
  %err.5 = phi i32 [ %err.4, %if.then1075 ], [ %err.4, %out_master.out_wbufs_crit_edge ], [ %135, %if.then169 ]
  tail call fastcc void @free_wbufs(ptr noundef %c)
  br label %out_cbuf

out_cbuf:                                         ; preds = %out_wbufs, %if.end146.out_cbuf_crit_edge
  %err.6 = phi i32 [ %call147, %if.end146.out_cbuf_crit_edge ], [ %err.5, %out_wbufs ]
  %503 = ptrtoint ptr %cbuf to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %cbuf, align 4
  tail call void @kfree(ptr noundef %504) #13
  br label %out_auth

out_auth:                                         ; preds = %out_cbuf, %if.end138.out_auth_crit_edge, %if.end134.out_auth_crit_edge, %if.then127, %if.end112.out_auth_crit_edge
  %err.7 = phi i32 [ %call113, %if.end112.out_auth_crit_edge ], [ %call135, %if.end134.out_auth_crit_edge ], [ %err.6, %out_cbuf ], [ -524, %if.then127 ], [ -12, %if.end138.out_auth_crit_edge ]
  %505 = ptrtoint ptr %bulk_read to i32
  call void @__asan_load2_noabort(i32 %505)
  %bf.load.i.i = load i16, ptr %bulk_read, align 8
  %506 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %506)
  %tobool.not.i1490 = icmp eq i16 %506, 0
  br i1 %tobool.not.i1490, label %out_auth.out_free_crit_edge, label %if.then.i1491

out_auth.out_free_crit_edge:                      ; preds = %out_auth
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then.i1491:                                    ; preds = %out_auth
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__ubifs_exit_authentication(ptr noundef %c) #13
  br label %out_free

out_free:                                         ; preds = %if.then.i1491, %out_auth.out_free_crit_edge, %if.then107.out_free_crit_edge, %if.then96.out_free_crit_edge, %if.then76.out_free_crit_edge, %if.end64.out_free_crit_edge, %if.end59.out_free_crit_edge, %if.then58, %if.then39, %for.body.i.out_free_crit_edge
  %err.8 = phi i32 [ -30, %if.then39 ], [ %call108, %if.then107.out_free_crit_edge ], [ -12, %if.then96.out_free_crit_edge ], [ -12, %if.then76.out_free_crit_edge ], [ -12, %if.end64.out_free_crit_edge ], [ -12, %if.end59.out_free_crit_edge ], [ -30, %if.then58 ], [ %err.7, %out_auth.out_free_crit_edge ], [ %err.7, %if.then.i1491 ], [ %call.i, %for.body.i.out_free_crit_edge ]
  %write_reserve_buf1080 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 52
  %507 = ptrtoint ptr %write_reserve_buf1080 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %write_reserve_buf1080, align 4
  tail call void @kfree(ptr noundef %508) #13
  %buf = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 50, i32 2
  %509 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %buf, align 8
  tail call void @kfree(ptr noundef %510) #13
  %ileb_buf1081 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 37
  %511 = ptrtoint ptr %ileb_buf1081 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %ileb_buf1081, align 8
  tail call void @vfree(ptr noundef %512) #13
  %sbuf1082 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 122
  %513 = ptrtoint ptr %sbuf1082 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %sbuf1082, align 8
  tail call void @vfree(ptr noundef %514) #13
  %bottom_up_buf1083 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 45
  %515 = ptrtoint ptr %bottom_up_buf1083 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %bottom_up_buf1083, align 8
  tail call void @kfree(ptr noundef %516) #13
  %sup_node1084 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 1
  %517 = ptrtoint ptr %sup_node1084 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %sup_node1084, align 4
  tail call void @kfree(ptr noundef %518) #13
  tail call void @ubifs_sysfs_unregister(ptr noundef %c) #13
  br label %out_debugging

out_debugging:                                    ; preds = %out_free, %if.end18.out_debugging_crit_edge
  %err.9 = phi i32 [ %call19, %if.end18.out_debugging_crit_edge ], [ %err.8, %out_free ]
  tail call void @ubifs_debugging_exit(ptr noundef %c) #13
  br label %cleanup1085

cleanup1085:                                      ; preds = %out_debugging, %if.then1064, %do.body1052, %if.end.cleanup1085_crit_edge, %if.then85.i, %do.body78.i.cleanup1085_crit_edge, %if.then63.i, %do.body56.i.cleanup1085_crit_edge, %if.then48.i, %do.body41.i.cleanup1085_crit_edge, %if.then34.i, %do.body.i.cleanup1085_crit_edge
  %retval.0 = phi i32 [ %err.9, %out_debugging ], [ %call15, %if.end.cleanup1085_crit_edge ], [ 0, %if.then1064 ], [ 0, %do.body1052 ], [ -22, %do.body.i.cleanup1085_crit_edge ], [ -22, %if.then34.i ], [ -22, %do.body41.i.cleanup1085_crit_edge ], [ -22, %if.then48.i ], [ -22, %do.body56.i.cleanup1085_crit_edge ], [ -22, %if.then63.i ], [ -22, %do.body78.i.cleanup1085_crit_edge ], [ -22, %if.then85.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_debugging_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_sysfs_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_init_authentication(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_superblock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_constants_sb(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %0 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %main_lebs, align 4
  %conv = sext i32 %1 to i64
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %2 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size, align 8
  %conv1 = sext i32 %3 to i64
  %mul = mul nsw i64 %conv1, %conv
  %main_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 64
  %4 = ptrtoint ptr %main_bytes to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %mul, ptr %main_bytes, align 8
  %fanout = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 70
  %5 = ptrtoint ptr %fanout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fanout, align 4
  %mul2 = mul i32 %6, 88
  %add = add i32 %mul2, 64
  %max_znode_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 94
  %7 = ptrtoint ptr %max_znode_sz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %max_znode_sz, align 8
  %key_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 68
  %8 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_len.i, align 4
  %add.i = add i32 %9, 12
  %hash_len.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 69
  %10 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_len.i, align 8
  %add1.i = add i32 %add.i, %11
  %add2.i = add i32 %add1.i, 28
  %arrayidx = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add2.i, ptr %arrayidx, align 4
  %add3 = add i32 %add1.i, 35
  %and = and i32 %add3, -8
  %min_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 91
  %13 = ptrtoint ptr %min_idx_node_sz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %min_idx_node_sz, align 8
  %mul.i = mul i32 %add1.i, %6
  %add2.i140 = add i32 %mul.i, 28
  %max_len = getelementptr %struct.ubifs_info, ptr %c, i32 0, i32 99, i32 9, i32 1
  %14 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add2.i140, ptr %max_len, align 4
  %add8 = add i32 %mul.i, 35
  %and9 = and i32 %add8, -8
  %max_idx_node_sz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 92
  %15 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and9, ptr %max_idx_node_sz, align 4
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %16 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %jhead_cnt, align 4
  %mul10 = shl i32 %17, 6
  %min_io_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 71
  %18 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_io_size, align 8
  %add11 = or i32 %mul10, 31
  %add12 = add i32 %add11, %19
  %neg = sub i32 0, %19
  %and15 = and i32 %add12, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %and15, i32 %3)
  %cmp = icmp sgt i32 %and15, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.187, i32 noundef %3, i32 noundef %and15) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 20
  %20 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %max_bud_bytes, align 8
  %add21 = add nsw i64 %conv1, -1
  %sub22 = add i64 %add21, %21
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub22)
  %cmp164.i.i = icmp ult i64 %sub22, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !445

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv169.i.i = trunc i64 %sub22 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %3
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub22) #21, !srcloc !450
  %asmresult1.i.i.i = extractvalue { i64, i64 } %22, 1
  %extract.t142 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t142, %if.else174.i.i ]
  %max_bud_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 23
  %23 = ptrtoint ptr %max_bud_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dividend.addr.0.i.i.off0, ptr %max_bud_cnt, align 8
  %ref_node_alsz = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 89
  %24 = ptrtoint ptr %ref_node_alsz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ref_node_alsz, align 8
  %mul27 = mul i32 %25, %dividend.addr.0.i.i.off0
  %add29 = add i32 %3, -1
  %sub30 = add i32 %add29, %mul27
  %div = sdiv i32 %sub30, %3
  %add32 = add i32 %div, 1
  %log_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 53
  %26 = ptrtoint ptr %log_lebs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %log_lebs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add32)
  %cmp33 = icmp slt i32 %27, %add32
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.188, i32 noundef %27, i32 noundef %add32) #13
  br label %cleanup

if.end37:                                         ; preds = %div_u64.exit
  %page_budget = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 7
  %28 = ptrtoint ptr %page_budget to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4144, ptr %page_budget, align 8
  %inode_budget = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 8
  %29 = ptrtoint ptr %inode_budget to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 160, ptr %inode_budget, align 4
  %dent_budget = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 9
  %30 = ptrtoint ptr %dent_budget to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 312, ptr %dent_budget, align 8
  %mul41 = mul i64 %21, 13
  %shr = ashr i64 %mul41, 4
  %bg_bud_bytes = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 21
  %add43 = add i32 %17, 1
  %conv44 = sext i32 %add43 to i64
  %mul47 = mul nsw i64 %conv44, %conv1
  %add48 = add nsw i64 %mul47, 1
  %31 = tail call i64 @llvm.smax.i64(i64 %shr, i64 %add48)
  %32 = ptrtoint ptr %bg_bud_bytes to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %bg_bud_bytes, align 8
  %add58 = add nsw i64 %add48, %conv1
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %add58)
  %cmp59 = icmp slt i64 %21, %add58
  br i1 %cmp59, label %if.then61, label %if.end37.if.end66_crit_edge

if.end37.if.end66_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then61:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %max_bud_bytes to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add58, ptr %max_bud_bytes, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end37.if.end66_crit_edge
  %call67 = tail call i32 @ubifs_calc_lpt_geom(ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool.not = icmp eq i32 %call67, 0
  br i1 %tobool.not, label %if.end69, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end69:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %leb_size, align 8
  %36 = ptrtoint ptr %max_idx_node_sz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_idx_node_sz, align 4
  %sub72 = sub i32 %35, %37
  %idx_leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 78
  %38 = ptrtoint ptr %idx_leb_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub72, ptr %idx_leb_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.end66.cleanup_crit_edge, %if.then35, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then35 ], [ 0, %if.end69 ], [ %call67, %if.end66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_wbufs(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %0 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %jhead_cnt, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 256) #13
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !447

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %jheads79 = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %4 = ptrtoint ptr %jheads79 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %jheads79, align 8
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #17
  %jheads = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 19
  %6 = ptrtoint ptr %jheads to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %jheads, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %jhead_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp85 = icmp sgt i32 %8, 0
  br i1 %cmp85, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %authenticated.i.i = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %jheads, align 8
  %buds_list = getelementptr %struct.ubifs_jhead, ptr %10, i32 %i.086, i32 1
  %11 = ptrtoint ptr %buds_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %buds_list, ptr %buds_list, align 4
  %prev.i = getelementptr %struct.ubifs_jhead, ptr %10, i32 %i.086, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buds_list, ptr %prev.i, align 4
  %13 = load ptr, ptr %jheads, align 8
  %arrayidx5 = getelementptr %struct.ubifs_jhead, ptr %13, i32 %i.086
  %call6 = tail call i32 @ubifs_wbuf_init(ptr noundef %c, ptr noundef %arrayidx5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %14 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %jheads, align 8
  %sync_callback = getelementptr %struct.ubifs_jhead, ptr %15, i32 %i.086, i32 0, i32 8
  %16 = ptrtoint ptr %sync_callback to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bud_wbuf_callback, ptr %sync_callback, align 8
  %17 = load ptr, ptr %jheads, align 8
  %jhead = getelementptr %struct.ubifs_jhead, ptr %17, i32 %i.086, i32 0, i32 7
  %18 = ptrtoint ptr %jhead to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.086, ptr %jhead, align 4
  %19 = load ptr, ptr %jheads, align 8
  %grouped = getelementptr %struct.ubifs_jhead, ptr %19, i32 %i.086, i32 2
  %20 = ptrtoint ptr %grouped to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %grouped, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %grouped, align 8
  %21 = ptrtoint ptr %authenticated.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i.i = load i16, ptr %authenticated.i.i, align 8
  %22 = and i16 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i, label %if.end9.ubifs_hash_get_desc.exit_crit_edge, label %cond.true.i

if.end9.ubifs_hash_get_desc.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %ubifs_hash_get_desc.exit

cond.true.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = tail call ptr @__ubifs_hash_get_desc(ptr noundef %c) #13
  br label %ubifs_hash_get_desc.exit

ubifs_hash_get_desc.exit:                         ; preds = %cond.true.i, %if.end9.ubifs_hash_get_desc.exit_crit_edge
  %cond.i = phi ptr [ %call1.i, %cond.true.i ], [ null, %if.end9.ubifs_hash_get_desc.exit_crit_edge ]
  %23 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %jheads, align 8
  %log_hash = getelementptr %struct.ubifs_jhead, ptr %24, i32 %i.086, i32 3
  %25 = ptrtoint ptr %log_hash to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cond.i, ptr %log_hash, align 4
  %26 = load ptr, ptr %jheads, align 8
  %log_hash23 = getelementptr %struct.ubifs_jhead, ptr %26, i32 %i.086, i32 3
  %27 = ptrtoint ptr %log_hash23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %log_hash23, align 4
  %cmp.i = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %for.inc

if.then25:                                        ; preds = %ubifs_hash_get_desc.exit
  %29 = ptrtoint ptr %28 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.086)
  %tobool43.not87 = icmp eq i32 %i.086, 0
  br i1 %tobool43.not87, label %if.then25.cleanup_crit_edge, label %if.then25.while.body_crit_edge

if.then25.while.body_crit_edge:                   ; preds = %if.then25
  br label %while.body

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %ubifs_hash_get_desc.exit
  %inc = add nuw nsw i32 %i.086, 1
  %30 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %jhead_cnt, align 4
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %32 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %jheads, align 8
  %no_timer = getelementptr inbounds %struct.ubifs_wbuf, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %no_timer to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load34 = load i8, ptr %no_timer, align 8
  %bf.set36 = or i8 %bf.load34, -128
  store i8 %bf.set36, ptr %no_timer, align 8
  %35 = load ptr, ptr %jheads, align 8
  %grouped39 = getelementptr inbounds %struct.ubifs_jhead, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %grouped39 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load40 = load i8, ptr %grouped39, align 8
  %bf.clear41 = and i8 %bf.load40, 127
  store i8 %bf.clear41, ptr %grouped39, align 8
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then25.while.body_crit_edge
  %i.188 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.086, %if.then25.while.body_crit_edge ]
  %dec = add nsw i32 %i.188, -1
  %37 = ptrtoint ptr %jheads to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %jheads, align 8
  %log_hash46 = getelementptr %struct.ubifs_jhead, ptr %38, i32 %dec, i32 3
  %39 = ptrtoint ptr %log_hash46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %log_hash46, align 4
  tail call void @kfree(ptr noundef %40) #13
  %tobool43.not = icmp eq i32 %dec, 0
  br i1 %tobool43.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %for.end, %if.then25.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ %29, %if.then25.cleanup_crit_edge ], [ %29, %while.body.cleanup_crit_edge ], [ %call6, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_constants_master(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ubifs_calc_min_idx_lebs(ptr noundef %c) #13
  %min_idx_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 87, i32 5
  %0 = ptrtoint ptr %min_idx_lebs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %min_idx_lebs, align 8
  %rp_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 175
  %1 = ptrtoint ptr %rp_size to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %rp_size, align 8
  %call1 = tail call i64 @ubifs_reported_space(ptr noundef %c, i64 noundef %2) #13
  %report_rp_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 176
  %3 = ptrtoint ptr %report_rp_size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call1, ptr %report_rp_size, align 8
  %main_lebs = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 62
  %4 = ptrtoint ptr %main_lebs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %main_lebs, align 4
  %jhead_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 18
  %6 = ptrtoint ptr %jhead_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %jhead_cnt, align 4
  %sub4 = add i32 %5, -3
  %add = sub i32 %sub4, %7
  %conv = sext i32 %add to i64
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %8 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %leb_size, align 8
  %conv5 = sext i32 %9 to i64
  %leb_overhead = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 95
  %10 = ptrtoint ptr %leb_overhead to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leb_overhead, align 4
  %conv6 = sext i32 %11 to i64
  %sub7 = sub nsw i64 %conv5, %conv6
  %mul = mul nsw i64 %sub7, %conv
  %call8 = tail call i64 @ubifs_reported_space(ptr noundef %c, i64 noundef %mul) #13
  %12 = lshr i64 %call8, 12
  %conv9 = trunc i64 %12 to i32
  %block_cnt = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 98
  %13 = ptrtoint ptr %block_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv9, ptr %block_cnt, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ubifs_hmac_zero(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_hmac_wkm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_idx_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_replay_journal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_calc_min_idx_lebs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_mount_orphans(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @take_gc_lnum(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %gc_lnum = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 121
  %0 = ptrtoint ptr %gc_lnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gc_lnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %c, ptr noundef nonnull @.str.189) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %2 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size, align 8
  %call = tail call i32 @ubifs_change_one_lp(ptr noundef %c, i32 noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_lprops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_debugfs_init_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ubifs_xattr_max_cnt(ptr noundef %c) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %leb_size = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 75
  %0 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %leb_size, align 8
  %div = sdiv i32 %1, 2
  %div1 = udiv i32 %div, 160
  %max_orphans = getelementptr inbounds %struct.ubifs_info, ptr %c, i32 0, i32 113
  %2 = ptrtoint ptr %max_orphans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_orphans, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1, i32 %3)
  %cmp.not = icmp slt i32 %div1, %3
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %if.then, !prof !445

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ubifs_assert_failed(ptr noundef %c, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.12, i32 noundef 283) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret i32 %div1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_is_mapped(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_calc_lpt_geom(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bud_wbuf_callback(ptr noundef %c, i32 noundef %lnum, i32 noundef %free, i32 noundef %pad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ubifs_update_one_lp(ptr noundef %c, i32 noundef %lnum, i32 noundef %free, i32 noundef %pad, i32 noundef 0, i32 noundef 0) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ubifs_hash_get_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ubifs_reported_space(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !62, !64, !66, !67, !68, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !94, !96, !97, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !169, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !225, !226, !227, !229, !231, !233, !234, !235, !237, !238, !239, !241, !242, !244, !245, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !274, !276, !277, !279, !280, !282, !283, !285, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !356, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !387, !389, !390, !392, !393, !395, !396, !398, !399, !401, !402, !404, !405, !407, !408, !410, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431}
!llvm.named.register.sp = !{!433}
!llvm.module.flags = !{!434, !435, !436, !437, !438, !439, !440, !441}
!llvm.ident = !{!442}

!0 = !{ptr @ubifs_default_version, !1, !"ubifs_default_version", i1 false, i1 false}
!1 = !{!"../fs/ubifs/super.c", i32 44, i32 5}
!2 = !{ptr @__param_default_version, !3, !"__param_default_version", i1 false, i1 false}
!3 = !{!"../fs/ubifs/super.c", i32 45, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ubifs/super.c", i32 116, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ubifs_iget.__UNIQUE_ID_ddebug276, !5, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ubifs/super.c", i32 255, i32 15}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ubifs/super.c", i32 262, i32 15}
!14 = !{ptr @ubifs_super_operations, !15, !"ubifs_super_operations", i1 false, i1 false}
!15 = !{!"../fs/ubifs/super.c", i32 2048, i32 31}
!16 = !{ptr @__UNIQUE_ID_alias316, !17, !"__UNIQUE_ID_alias316", i1 false, i1 false}
!17 = !{!"../fs/ubifs/super.c", i32 2354, i32 1}
!18 = !{ptr @__initcall__kmod_ubifs__348_2467_ubifs_init7, !19, !"__initcall__kmod_ubifs__348_2467_ubifs_init7", i1 false, i1 false}
!19 = !{!"../fs/ubifs/super.c", i32 2467, i32 1}
!20 = !{ptr @__exitcall_ubifs_exit, !21, !"__exitcall_ubifs_exit", i1 false, i1 false}
!21 = !{!"../fs/ubifs/super.c", i32 2487, i32 1}
!22 = !{ptr @__UNIQUE_ID_file349, !23, !"__UNIQUE_ID_file349", i1 false, i1 false}
!23 = !{!"../fs/ubifs/super.c", i32 2489, i32 1}
!24 = !{ptr @__UNIQUE_ID_license350, !23, !"__UNIQUE_ID_license350", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_version351, !26, !"__UNIQUE_ID_version351", i1 false, i1 false}
!26 = !{!"../fs/ubifs/super.c", i32 2490, i32 1}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__modver_attr, !26, !"__modver_attr", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_author352, !31, !"__UNIQUE_ID_author352", i1 false, i1 false}
!31 = !{!"../fs/ubifs/super.c", i32 2491, i32 1}
!32 = !{ptr @__UNIQUE_ID_description353, !33, !"__UNIQUE_ID_description353", i1 false, i1 false}
!33 = !{!"../fs/ubifs/super.c", i32 2492, i32 1}
!34 = !{ptr @ubifs_inode_slab, !35, !"ubifs_inode_slab", i1 false, i1 false}
!35 = !{!"../fs/ubifs/super.c", i32 54, i32 27}
!36 = !{ptr @__param_str_default_version, !3, !"__param_str_default_version", i1 false, i1 false}
!37 = !{ptr @ubifs_default_version_ops, !38, !"ubifs_default_version_ops", i1 false, i1 false}
!38 = !{!"../fs/ubifs/super.c", i32 39, i32 38}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ubifs/super.c", i32 79, i32 16}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ubifs/super.c", i32 85, i32 16}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ubifs/super.c", i32 99, i32 17}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ubifs/misc.h", i32 103, i32 2}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ubifs_alloc_inode.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../fs/ubifs/super.c", i32 277, i32 2}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ubifs_alloc_inode.__key.14, !52, !"__key", i1 false, i1 false}
!52 = !{!"../fs/ubifs/super.c", i32 278, i32 2}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ubifs_alloc_inode.__key.16, !55, !"__key", i1 false, i1 false}
!55 = !{!"../fs/ubifs/super.c", i32 279, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ubifs/super.c", i32 403, i32 2}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ubifs/super.c", i32 406, i32 3}
!61 = !{ptr @ubifs_dirty_inode.__UNIQUE_ID_ddebug279, !60, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ubifs/super.c", i32 302, i32 2}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ubifs/super.c", i32 323, i32 2}
!66 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ubifs_write_inode.__UNIQUE_ID_ddebug277, !65, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ubifs/super.c", i32 328, i32 17}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ubifs/super.c", i32 364, i32 2}
!72 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ubifs_evict_inode.__UNIQUE_ID_ddebug278, !71, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ubifs/super.c", i32 365, i32 2}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ubifs/super.c", i32 382, i32 16}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ubifs/super.c", i32 1925, i32 15}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ubifs/super.c", i32 1933, i32 3}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ubifs/super.c", i32 1934, i32 3}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ubifs/super.c", i32 1935, i32 3}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ubifs/super.c", i32 1984, i32 18}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/ubifs/super.c", i32 1664, i32 2}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ubifs_umount.__UNIQUE_ID_ddebug309, !89, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ubifs/super.c", i32 902, i32 16}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ubifs/super.c", i32 417, i32 2}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ubifs_statfs.__UNIQUE_ID_ddebug280, !95, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ubifs/super.c", i32 433, i32 2}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ubifs/super.c", i32 2004, i32 2}
!102 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ubifs_remount_fs.__UNIQUE_ID_ddebug311, !101, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ubifs/super.c", i32 2008, i32 16}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ubifs/super.c", i32 2014, i32 17}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ubifs/super.c", i32 2018, i32 17}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ubifs/super.c", i32 2026, i32 17}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ubifs/super.c", i32 2035, i32 3}
!114 = !{ptr @ubifs_remount_fs.__UNIQUE_ID_ddebug312, !113, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ubifs/super.c", i32 2043, i32 3}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ubifs/super.c", i32 1036, i32 31}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ubifs/super.c", i32 1077, i32 22}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ubifs/super.c", i32 1079, i32 27}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ubifs/super.c", i32 1081, i32 27}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ubifs/super.c", i32 1083, i32 27}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ubifs/super.c", i32 1086, i32 18}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ubifs/super.c", i32 1101, i32 21}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ubifs/super.c", i32 1103, i32 26}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/ubifs/super.c", i32 1105, i32 26}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ubifs/super.c", i32 1108, i32 18}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ubifs/super.c", i32 1140, i32 18}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/ubifs/super.c", i32 981, i32 21}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ubifs/super.c", i32 982, i32 21}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/ubifs/super.c", i32 983, i32 18}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ubifs/super.c", i32 984, i32 21}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/ubifs/super.c", i32 985, i32 21}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ubifs/super.c", i32 986, i32 24}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ubifs/super.c", i32 987, i32 23}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ubifs/super.c", i32 988, i32 17}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/ubifs/super.c", i32 989, i32 23}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/ubifs/super.c", i32 990, i32 15}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ubifs/super.c", i32 991, i32 15}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/ubifs/super.c", i32 992, i32 15}
!163 = !{ptr @tokens, !164, !"tokens", i1 false, i1 false}
!164 = !{!"../fs/ubifs/super.c", i32 980, i32 28}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ubifs/super.c", i32 1012, i32 2}
!167 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @parse_standard_option._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @parse_standard_option._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ubifs/super.c", i32 1013, i32 22}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/ubifs/super.c", i32 1708, i32 16}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/ubifs/super.c", i32 1709, i32 16}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/ubifs/super.c", i32 1731, i32 16}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/ubifs/super.c", i32 1748, i32 3}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/ubifs/super.c", i32 1789, i32 11}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/ubifs/super.c", i32 1793, i32 16}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ubifs/super.c", i32 1830, i32 2}
!186 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @ubifs_remount_rw.__UNIQUE_ID_ddebug310, !185, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!188 = !{ptr @.str.81, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ubifs/super.c", i32 1835, i32 16}
!190 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/ubifs/super.c", i32 1232, i32 2}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/ubifs/super.c", i32 1234, i32 16}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/ubifs/super.c", i32 1882, i32 2}
!196 = !{ptr @.str.85, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/ubifs/super.c", i32 1883, i32 2}
!198 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ubifs/super.c", i32 1201, i32 2}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/ubifs/super.c", i32 1215, i32 17}
!202 = !{ptr @.str.88, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/ubifs/super.c", i32 442, i32 15}
!204 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/ubifs/super.c", i32 444, i32 15}
!206 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/ubifs/super.c", i32 447, i32 15}
!208 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/ubifs/super.c", i32 449, i32 15}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/ubifs/super.c", i32 452, i32 15}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/ubifs/super.c", i32 454, i32 15}
!214 = !{ptr @.str.94, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/ubifs/super.c", i32 457, i32 17}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/ubifs/super.c", i32 461, i32 16}
!218 = !{ptr @.str.96, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/ubifs/super.c", i32 462, i32 16}
!220 = !{ptr @.str.97, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/ubifs/super.c", i32 2426, i32 39}
!222 = !{ptr @.str.98, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../fs/ubifs/super.c", i32 2449, i32 3}
!224 = !{ptr @.str.99, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @ubifs_init._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @ubifs_init._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @ubifs_shrinker_info, !228, !"ubifs_shrinker_info", i1 false, i1 false}
!228 = !{!"../fs/ubifs/super.c", i32 57, i32 24}
!229 = !{ptr @ubifs_fs_type, !230, !"ubifs_fs_type", i1 false, i1 false}
!230 = !{!"../fs/ubifs/super.c", i32 2348, i32 32}
!231 = !{ptr @.str.100, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ubifs/super.c", i32 2278, i32 2}
!233 = !{ptr @.str.101, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @ubifs_mount.__UNIQUE_ID_ddebug313, !232, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!235 = !{ptr @.str.102, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ubifs/super.c", i32 2288, i32 4}
!237 = !{ptr @ubifs_mount._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @ubifs_mount._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.103, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ubifs/super.c", i32 2299, i32 2}
!241 = !{ptr @ubifs_mount.__UNIQUE_ID_ddebug314, !240, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!242 = !{ptr @.str.104, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/ubifs/super.c", i32 2312, i32 3}
!244 = !{ptr @ubifs_mount.__UNIQUE_ID_ddebug315, !243, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!245 = !{ptr @.str.105, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/ubifs/super.c", i32 2324, i32 17}
!247 = !{ptr @alloc_ubifs_info.__key, !248, !"__key", i1 false, i1 false}
!248 = !{!"../fs/ubifs/super.c", i32 2133, i32 3}
!249 = !{ptr @.str.106, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @alloc_ubifs_info.__key.107, !251, !"__key", i1 false, i1 false}
!251 = !{!"../fs/ubifs/super.c", i32 2134, i32 3}
!252 = !{ptr @.str.108, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @alloc_ubifs_info.__key.109, !254, !"__key", i1 false, i1 false}
!254 = !{!"../fs/ubifs/super.c", i32 2135, i32 3}
!255 = !{ptr @.str.110, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @alloc_ubifs_info.__key.111, !257, !"__key", i1 false, i1 false}
!257 = !{!"../fs/ubifs/super.c", i32 2136, i32 3}
!258 = !{ptr @.str.112, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @alloc_ubifs_info.__key.113, !260, !"__key", i1 false, i1 false}
!260 = !{!"../fs/ubifs/super.c", i32 2137, i32 3}
!261 = !{ptr @.str.114, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @alloc_ubifs_info.__key.115, !263, !"__key", i1 false, i1 false}
!263 = !{!"../fs/ubifs/super.c", i32 2138, i32 3}
!264 = !{ptr @.str.116, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @alloc_ubifs_info.__key.117, !266, !"__key", i1 false, i1 false}
!266 = !{!"../fs/ubifs/super.c", i32 2139, i32 3}
!267 = !{ptr @.str.118, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @alloc_ubifs_info.__key.119, !269, !"__key", i1 false, i1 false}
!269 = !{!"../fs/ubifs/super.c", i32 2140, i32 3}
!270 = !{ptr @.str.120, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @alloc_ubifs_info.__key.121, !272, !"__key", i1 false, i1 false}
!272 = !{!"../fs/ubifs/super.c", i32 2141, i32 3}
!273 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @alloc_ubifs_info.__key.123, !275, !"__key", i1 false, i1 false}
!275 = !{!"../fs/ubifs/super.c", i32 2142, i32 3}
!276 = !{ptr @.str.124, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @alloc_ubifs_info.__key.125, !278, !"__key", i1 false, i1 false}
!278 = !{!"../fs/ubifs/super.c", i32 2143, i32 3}
!279 = !{ptr @.str.126, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @alloc_ubifs_info.__key.127, !281, !"__key", i1 false, i1 false}
!281 = !{!"../fs/ubifs/super.c", i32 2144, i32 3}
!282 = !{ptr @.str.128, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @alloc_ubifs_info.__key.129, !284, !"__key", i1 false, i1 false}
!284 = !{!"../fs/ubifs/super.c", i32 2145, i32 3}
!285 = !{ptr @.str.130, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/ubifs/super.c", i32 2202, i32 33}
!288 = !{ptr @.str.132, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/ubifs/super.c", i32 2223, i32 3}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/ubifs/super.c", i32 1280, i32 16}
!292 = !{ptr @.str.134, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/ubifs/super.c", i32 1281, i32 20}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/ubifs/super.c", i32 1281, i32 35}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/ubifs/super.c", i32 1287, i32 16}
!298 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../fs/ubifs/super.c", i32 1350, i32 16}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../fs/ubifs/super.c", i32 1371, i32 23}
!302 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../fs/ubifs/super.c", i32 1391, i32 16}
!304 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/ubifs/super.c", i32 1529, i32 17}
!306 = !{ptr @.str.141, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/ubifs/super.c", i32 1532, i32 17}
!308 = !{ptr @.str.142, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/ubifs/super.c", i32 1551, i32 15}
!310 = !{ptr @.str.143, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../fs/ubifs/super.c", i32 1553, i32 19}
!312 = !{ptr @.str.144, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/ubifs/super.c", i32 1553, i32 34}
!314 = !{ptr @.str.145, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../fs/ubifs/super.c", i32 1556, i32 15}
!316 = !{ptr @.str.146, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../fs/ubifs/super.c", i32 1559, i32 15}
!318 = !{ptr @.str.147, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../fs/ubifs/super.c", i32 1562, i32 15}
!320 = !{ptr @.str.148, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../fs/ubifs/super.c", i32 1564, i32 15}
!322 = !{ptr @.str.149, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/ubifs/super.c", i32 1567, i32 18}
!324 = !{ptr @.str.150, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../fs/ubifs/super.c", i32 1567, i32 38}
!326 = !{ptr @.str.151, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../fs/ubifs/super.c", i32 1569, i32 2}
!328 = !{ptr @.str.152, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug281, !327, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!330 = !{ptr @.str.153, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/ubifs/super.c", i32 1570, i32 2}
!332 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug282, !331, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!333 = !{ptr @.str.154, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../fs/ubifs/super.c", i32 1572, i32 2}
!335 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug283, !334, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!336 = !{ptr @.str.155, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/ubifs/super.c", i32 1574, i32 2}
!338 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug284, !337, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!339 = !{ptr @.str.156, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/ubifs/super.c", i32 1576, i32 2}
!341 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug285, !340, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!342 = !{ptr @.str.157, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../fs/ubifs/super.c", i32 1578, i32 2}
!344 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug286, !343, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!345 = !{ptr @.str.158, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../fs/ubifs/super.c", i32 1580, i32 2}
!347 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug287, !346, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!348 = !{ptr @.str.159, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../fs/ubifs/super.c", i32 1581, i32 2}
!350 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug288, !349, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!351 = !{ptr @.str.160, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../fs/ubifs/super.c", i32 1584, i32 2}
!353 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug289, !352, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!354 = !{ptr @.str.161, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../fs/ubifs/super.c", i32 1585, i32 2}
!356 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug290, !355, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!357 = !{ptr @.str.162, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/ubifs/super.c", i32 1586, i32 2}
!359 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug291, !358, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!360 = !{ptr @.str.163, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../fs/ubifs/super.c", i32 1587, i32 2}
!362 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug292, !361, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!363 = !{ptr @.str.164, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../fs/ubifs/super.c", i32 1588, i32 2}
!365 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug293, !364, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!366 = !{ptr @.str.165, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../fs/ubifs/super.c", i32 1589, i32 2}
!368 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug294, !367, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!369 = !{ptr @.str.166, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../fs/ubifs/super.c", i32 1591, i32 2}
!371 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug295, !370, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!372 = !{ptr @.str.167, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../fs/ubifs/super.c", i32 1593, i32 2}
!374 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug296, !373, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!375 = !{ptr @.str.168, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../fs/ubifs/super.c", i32 1595, i32 2}
!377 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug297, !376, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!378 = !{ptr @.str.169, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../fs/ubifs/super.c", i32 1598, i32 2}
!380 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug298, !379, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!381 = !{ptr @.str.170, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../fs/ubifs/super.c", i32 1599, i32 2}
!383 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug299, !382, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!384 = !{ptr @.str.171, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../fs/ubifs/super.c", i32 1600, i32 2}
!386 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug300, !385, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!387 = !{ptr @.str.172, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../fs/ubifs/super.c", i32 1602, i32 2}
!389 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug301, !388, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!390 = !{ptr @.str.173, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../fs/ubifs/super.c", i32 1604, i32 2}
!392 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug302, !391, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!393 = !{ptr @.str.174, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../fs/ubifs/super.c", i32 1607, i32 2}
!395 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug303, !394, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!396 = !{ptr @.str.175, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../fs/ubifs/super.c", i32 1610, i32 2}
!398 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug304, !397, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!399 = !{ptr @.str.176, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../fs/ubifs/super.c", i32 1612, i32 2}
!401 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug305, !400, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!402 = !{ptr @.str.177, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../fs/ubifs/super.c", i32 1613, i32 2}
!404 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug306, !403, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!405 = !{ptr @.str.178, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../fs/ubifs/super.c", i32 1614, i32 2}
!407 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug307, !406, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!408 = !{ptr @.str.179, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../fs/ubifs/super.c", i32 1615, i32 2}
!410 = !{ptr @mount_ubifs.__UNIQUE_ID_ddebug308, !409, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!411 = !{ptr @.str.180, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../fs/ubifs/super.c", i32 516, i32 17}
!413 = !{ptr @.str.181, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../fs/ubifs/super.c", i32 521, i32 16}
!415 = !{ptr @.str.182, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../fs/ubifs/super.c", i32 526, i32 16}
!417 = !{ptr @.str.183, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../fs/ubifs/super.c", i32 540, i32 3}
!419 = !{ptr @.str.184, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../fs/ubifs/super.c", i32 546, i32 3}
!421 = !{ptr @.str.185, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../fs/ubifs/super.c", i32 552, i32 3}
!423 = !{ptr @.str.186, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../fs/ubifs/super.c", i32 563, i32 3}
!425 = !{ptr @.str.187, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../fs/ubifs/super.c", i32 698, i32 16}
!427 = !{ptr @.str.188, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../fs/ubifs/super.c", i32 713, i32 16}
!429 = !{ptr @.str.189, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../fs/ubifs/super.c", i32 805, i32 16}
!431 = !{ptr @.str.190, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../fs/ubifs/misc.h", i32 283, i32 2}
!433 = !{!"sp"}
!434 = !{i32 1, !"wchar_size", i32 2}
!435 = !{i32 1, !"min_enum_size", i32 4}
!436 = !{i32 8, !"branch-target-enforcement", i32 0}
!437 = !{i32 8, !"sign-return-address", i32 0}
!438 = !{i32 8, !"sign-return-address-all", i32 0}
!439 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!440 = !{i32 7, !"uwtable", i32 1}
!441 = !{i32 7, !"frame-pointer", i32 2}
!442 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!443 = !{!"auto-init"}
!444 = !{i64 2148265265, i64 2148265270, i64 2148265283, i64 2148265327, i64 2148265361, i64 2148265382}
!445 = !{!"branch_weights", i32 2000, i32 1}
!446 = !{i64 2155192007}
!447 = !{!"branch_weights", i32 1, i32 2000}
!448 = !{i32 0, i32 33}
!449 = !{i32 0, i32 26843546}
!450 = !{i64 2148494324, i64 2148494604, i64 2148494938, i64 2148495272}
